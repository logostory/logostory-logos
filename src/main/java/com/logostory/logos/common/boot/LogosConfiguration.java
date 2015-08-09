package com.logostory.logos.common.boot;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
@ComponentScan("com.logostory.logos")
@ImportResource("classpath*:spring/context-*.xml")
public class LogosConfiguration {

}
