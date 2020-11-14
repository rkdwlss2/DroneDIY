package com.example.drone.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.drone.vo.MemberVO;

@Mapper
public interface MemberMapper {
		//유저 정보
		ArrayList<MemberVO> findByMemberId(@Param("userId") String id);

		//유저 저장
		int memberSave(MemberVO memberVO);

		//유저 권한 저장
		int memberRoleSave(@Param("userId") String memberNo,@Param("roleId") String roleNo);

		//유저 FK번호 알아내기
		String findMemberNo(@Param("userId") String id);

		//권한 FK번호 알아내기
		String findRoleNo(@Param("roleName") String roleName);
}
