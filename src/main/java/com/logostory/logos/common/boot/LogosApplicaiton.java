package com.logostory.logos.common.boot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;

/*
	마누 스터디
	
  **@SpringBootApplication 어노테이션의 사용
	
	@Configuration, @EnableAutoConfiguration, @ComponentScan을 하나로 합쳐놓은것과 같은 역할을 해준다.
	SpringBoot에서 편의를 위해 제공하는 어노테이션이다. (디폴트 속성)
	
  **@Override
  
  	jdk5에서부터 추가된 어노테이션.
  	상위 클래스에서 오버라이드한 메소드라는 것을 지칭한다.

	
 */

@SpringBootApplication
public class LogosApplicaiton extends SpringBootServletInitializer{
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(LogosApplicaiton.class);
	}

	public static void main(String[] args) throws Exception {
		SpringApplication.run(LogosApplicaiton.class, args);
	}
}
