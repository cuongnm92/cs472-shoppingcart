package edu.mum.cs472;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;

@SpringBootApplication
public class ShoppingCartApplication {
	
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(ShoppingCartApplication.class);
    }
	
	public static void main(String[] args) {
		SpringApplication.run(ShoppingCartApplication.class, args);
	}
}
