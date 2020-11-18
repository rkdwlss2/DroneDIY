package com.example.drone.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.drone.service.MemberService;
import com.example.drone.vo.MemberPrincipalVO;
import com.example.drone.vo.MemberVO;

@Controller
public class HomeController {
	
	@Autowired
	MemberService service;
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String GetHome() {
		return "home";
	}
	@RequestMapping(value = "/homelogin", method = RequestMethod.GET)
	public String GetHomeLogin() {
		return "homelogin";
	}
}