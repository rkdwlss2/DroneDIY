package com.example.drone.dao;

import com.example.drone.vo.MemberPrincipalVO;
import com.example.drone.vo.MemberVO;

public interface MemberDAO {

	public void register(MemberVO vo) throws Exception;
	public MemberPrincipalVO getAllMembers() throws Exception;
}
