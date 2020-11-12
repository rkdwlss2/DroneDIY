package com.example.demo;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class test {
	@Autowired
	private dao apiDao;

	@GetMapping(path = "/helloworld")
	public String helloWorld() {
		return String.format("%s %s", apiDao.selectName(), LocalDateTime.now().format(DateTimeFormatter.ISO_LOCAL_DATE_TIME));
	}
}
