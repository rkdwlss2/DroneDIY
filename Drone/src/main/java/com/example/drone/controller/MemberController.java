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
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	MemberService service;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String GetLogin() {
		return "login";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String getRegisterPage() throws Exception {
		return "register";
	}
	
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String saveUserInfo( MemberVO vo) {
		return service.InsertUser(vo);
	}
	
	@GetMapping("/")
	public String loadExceptionPage(ModelMap model) throws Exception{
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		MemberPrincipalVO userPrincipalVO = (MemberPrincipalVO) auth.getPrincipal();
		
		model.addAttribute("name",userPrincipalVO.getUsername());
		model.addAttribute("auth",userPrincipalVO.getAuthorities());
		
		return "index";
	}
	
	@GetMapping("/access-denied")
	public String loadAccessdeniedPage() throws Exception{
		return "index";
	}
	
}
