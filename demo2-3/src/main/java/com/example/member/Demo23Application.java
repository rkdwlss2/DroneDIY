package com.example.member;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class Demo23Application {


	@RequestMapping("/")
	String home() {
		return "Hello World!@!@";
	}
	
	public static void main(String[] args) {
		SpringApplication.run(Demo23Application.class, args);
	}

}
