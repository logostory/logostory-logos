package com.logostory.logos.common.boot;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

// xml 설정파일을 , 
@Configuration
@ComponentScan("com.logostory.logos")
@ImportResource("classpath*:spring/context-*.xml")  //스캔해서 ,mybatis설정파일 설정?
public class LogosConfiguration {

}

