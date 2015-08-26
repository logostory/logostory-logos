package com.logostory.logos.common.boot;

import java.io.File;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.actuate.system.ApplicationPidFileWriter;
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
		
		File pid = new File("logos.pid");
		pid.deleteOnExit();
		
		SpringApplication app = new SpringApplication(LogosApplicaiton.class);
		app.setShowBanner(false);
		app.addListeners(new ApplicationPidFileWriter(pid));
		app.run(args);
	}
}
