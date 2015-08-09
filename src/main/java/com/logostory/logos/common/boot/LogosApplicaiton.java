package com.logostory.logos.common.boot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;

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
