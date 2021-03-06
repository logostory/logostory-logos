
package com.logostory.logos.common.boot;

import java.io.File;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.actuate.system.ApplicationPidFileWriter;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;

/*
  Spring Boot의 가장 큰 장점은 설정 파일이 사실상 전무하게 프로젝트를 당장 구동할 수 있다는 점
  모든것을 어노테이션만으로 구성할 수 있습니다. 
  이미 Spring이 많은부분 이렇게 진화해왔지만 아예 시작부터 운영까지 단순화하는것이 목적
  Spring의 경량화 버전이라기 보다는 그림과 같은 손쉽게 사용할 수 있는 인터페이스를 제공
  
  @RestController는 @Controller와 @ResponseBody를 합친 기능
  					@ResponseBody 로 어노테이션이 되어 있다면 메소드에서 리턴되는 값은 View
  					 를 통해서 출력되지 않고 HTTP Response Body 에 직접 쓰여지게 됩니다.
					이때 쓰여지기 전에 리턴되는 데이터 타입에 따라 MessageConverter 에서 변환이
					 이뤄진 후 쓰여지게 됩니다.

  
@Configuration 태그는 현재의 클래스가 Spring의 설정파일임을 어플리케이션 컨텍스트에게 알려주는 역할
 
@EnableAutoConfiguration 은 Spring Boot가 클래스패스 세팅, 다른 Bean들, 다양한 설정들에 의해 
						Bean을 추가하도록 합니다.일반적으로 기존의 Spring MVC 어플리케이션에서는 
						@EnableWebMvc 태그를 사용했지만 Spring Boot는 클래스패스에서 
						spring-webmvc를 발견할 경우 자동으로 추가합니다. 이러한 플래그는 
						DispatcherServlet을 세팅하는것과 같은 개발중인 어플리케이션을 
						웹어플리케이션으로 활성화 하는 핵심 키가 됩니다.
						
@ComponentScan 은 Spring에게 hello 패키지 안에서 다른 컴포넌트, 설정, 서비스를 찾도록 합니다. 
				이 설정을 통해 HelloController를 찾는것이 가능해집니다.
  
  
@Target(ElementType.TYPE) //클래스 인터페이스 enum, 선언부
@Retention(RetentionPolicy.RUNTIME) //VM에서 유지시 필요
@Documented //javadoc에 포함
@Inherited //부모어노테이션 상속
@Configuration//환경설정임을 명시
@EnableAutoConfiguration //Spring Boot가 클래스패스 세팅, 다른 Bean들, 
							다양한 설정들에 의해	Bean을 추가하도록
@ComponentScan // 다른 컴포넌트, 설정, 서비스를 찾도록 합니다.

*/

//톰캣 임베디드 버전을 가져다 씀
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
public class LogosApplicaiton extends SpringBootServletInitializer {

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