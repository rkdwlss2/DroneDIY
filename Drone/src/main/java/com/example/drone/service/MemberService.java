package com.example.drone.service;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.example.drone.vo.MemberVO;

public interface MemberService extends UserDetailsService {
	
	public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException;
	public String InsertUser(MemberVO userVO);
}
