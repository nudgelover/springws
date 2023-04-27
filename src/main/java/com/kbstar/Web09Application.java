package com.kbstar;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@SpringBootApplication
public class Web09Application {

    public static void main(String[] args) {
        SpringApplication.run(Web09Application.class, args);
    }
    @Bean
    public InternalResourceViewResolver setupViewResolver() {

        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/views/");
        resolver.setSuffix(".jsp");
        return resolver;
    }

    @Configuration
    public static class WebMvcConfig implements WebMvcConfigurer {


        @Value("${imgdir}")
        String imgdir;
        @Value("${logdir}")
        String logdir;

        @Override
        public void addResourceHandlers(ResourceHandlerRegistry registry) {
            registry.addResourceHandler("/uimg/**").addResourceLocations(imgdir);
            registry.addResourceHandler("/logs/**").addResourceLocations(logdir);
        }

    }
}
