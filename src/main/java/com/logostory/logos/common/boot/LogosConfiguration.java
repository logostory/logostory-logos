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

// xml 설정파일을 , 
@Configuration
@ComponentScan("com.logostory.logos")
@ImportResource("classpath*:spring/context-*.xml")  //스캔해서 ,mybatis설정파일 설정?
@EntityScan("com.logostory.logos")
@EnableJpaRepositories("com.logostory.logos")
public class LogosConfiguration {
	
	@ControllerAdvice
    static class JsonpAdvice extends AbstractJsonpResponseBodyAdvice {
        public JsonpAdvice() {
            super("callback");
        }
    }

    @Bean
    public HttpMessageConverters customConverters() {
        return new HttpMessageConverters(false, Collections.<HttpMessageConverter<?> >singleton(new MappingJackson2HttpMessageConverter()));
    }

}

