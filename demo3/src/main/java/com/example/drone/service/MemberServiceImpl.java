package com.example.drone.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.drone.dao.MemberDAO;
import com.example.drone.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDAO dao;
	
	@Override
	public void register(MemberVO vo) throws Exception{
		dao.register(vo);
	}
}
