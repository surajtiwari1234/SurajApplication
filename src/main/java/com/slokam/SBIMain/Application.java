package com.slokam.SBIMain;

import org.apache.log4j.Logger;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.orm.jpa.EntityScan;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;

@SpringBootApplication
@ComponentScan({"com.slokam.SBIController","com.slokam.SBIServices","com.slokam.SBITestAspect","com.slokam.Audit.util","com.slokam.Aop"})
@EntityScan({"com.slokam.SBIPojo"})
@EnableJpaRepositories({"com.slokam.SBIDao"})
public class Application  extends WebMvcConfigurerAdapter {

	
	
			
	public static void main(String[] args) {
		

		SpringApplication.run(Application.class, args);
	}
	
	@Bean
	public MessageSource  messageSource()
	{
		ReloadableResourceBundleMessageSource messageSource=new ReloadableResourceBundleMessageSource();
		messageSource.setBasename("classpath:messages");
		
		return messageSource;
	}
	
	@Bean
	public LocaleResolver localeResolver()
	{
		CookieLocaleResolver localeResolver=new CookieLocaleResolver();
		
		return localeResolver;
	}
	
	@Bean
	public LocaleChangeInterceptor localeChangeInterceptor ()
	{
		LocaleChangeInterceptor lci=new LocaleChangeInterceptor();
		
		lci.setParamName("lang");
		
		return lci;
	}
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		
		registry.addInterceptor(localeChangeInterceptor());
	}
	
	
}
