package com.logostory.logos.common.boot;

import java.util.Collections;

import org.springframework.boot.autoconfigure.web.HttpMessageConverters;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;
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
@ImportResource("classpath*:spring/context-*.xml")
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

}

