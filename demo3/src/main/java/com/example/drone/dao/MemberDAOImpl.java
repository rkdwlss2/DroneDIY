package com.example.drone.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.drone.vo.MemberPrincipalVO;
import com.example.drone.vo.MemberVO;


@Repository
public class MemberDAOImpl implements MemberDAO {
	@Autowired
	SqlSession sql;
	@Autowired
	private static MemberPrincipalVO list;
	
	@Override
	public void register(MemberVO vo) throws Exception{
		sql.insert("query.register",vo);
	}
	

	@Override
	public MemberPrincipalVO getAllMembers() {
		return list;
	}
	
	

}
