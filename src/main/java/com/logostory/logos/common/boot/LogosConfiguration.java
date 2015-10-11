package com.logostory.logos.common.boot;

import java.util.Collections;

import org.springframework.boot.autoconfigure.web.HttpMessageConverters;
import org.springframework.boot.orm.jpa.EntityScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.servlet.mvc.method.annotation.AbstractJsonpResponseBodyAdvice;


// HJ 
//
// @ComponentScan =  Controller로 사용하고자 하는 클래스에 @Controller 지정해 주면 component-scan으로 자동 등록된다.
// @ImportResource = @Configuration 클래스에서 XML 설정 정보를 사용할 때 사용
// @Configuration 어노테이션이 적용된 클래스는 @Component 어노테이션이 적용된 클래스와 마찬가지로 컴포넌트 스캔 대상이므로 스캔범위만
// 지정해주면 따로 빈을 등록할 필요가 없어짐

@Configuration
@ComponentScan("com.logostory.logos")
@ImportResource("classpath*:spring/context-*.xml")  //스캔해서 ,mybatis설정파일 설정?
@EntityScan("com.logostory.logos")
@EnableJpaRepositories("com.logostory.logos")
public class LogosConfiguration {
	
	// HJ
	// 간단하게 익셉션 발생시 작업을 처리할 수가 있다.익셉션을 처리하는 메소드는 익셉션 파라미터를 받을 수 있다. 
	// 그래서 개발자가 익셉션에 메세지를 담아서 던지면 해당 메세지를 각 핸들러 메소드에서 확인할수 있다.
	// 또한 리턴값으로는 void부터 ModelAndView까지 다양하게 리턴할수 있어 익셉션을 처리하는데 편리하게 사용할 수 있다.
	@ControllerAdvice
    static class JsonpAdvice extends AbstractJsonpResponseBodyAdvice {
        public JsonpAdvice() {
            super("callback");
        }
    }
	
	// HJ
	// HttpMessageConverters  = 스프링 MVC HTTP 요청과 응답을 사용하여 HttpMessageConverter 인터페이스 변환기
	// Internally Spring MVC uses a component called a HttpMessageConverter to convert
	// the Http request to an object representation and back.
    @Bean
    public HttpMessageConverters customConverters() {
        return new HttpMessageConverters(false, Collections.<HttpMessageConverter<?> >singleton(new MappingJackson2HttpMessageConverter()));
    }
    
    
    /*
HJ -  유용한 설명 by david.sun
LogosConfiguration 안에 보시면 @Comfiguration이라는 어노테이션이 있는데 
스프링에 설정이 필요한 부분을 이 어노테이션을 사용해서 추가 합니다.
web.xml에 많은 설정이 가능한데 일부는 spring boot기본설정에서 처리된거 같고 
spring 설정 xml을 불러오는건 @ImportResource 를 사용 했구요
HttpMessageConverter는 RestAPI로 데이터를 리턴할때 json형식으로 convert하기 위해서 사용 했습니다
@ControllerAdvice 어노테이션은 크로스브라우징 이슈를 제거하고 
다른 사이트나 파일에서 logos에서 작성될 RestAPI를 정상적으로 호출 가능하게 설정한 부분 입니다ㅋ
     */
    

}

