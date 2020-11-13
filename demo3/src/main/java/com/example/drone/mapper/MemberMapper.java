package com.example.drone.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.example.drone.vo.MemberVO;

@Repository
public interface MemberMapper {
		//유저 정보
		ArrayList<MemberVO> findByMemberId(@Param("id") String id);

		//유저 저장
		int memberSave(MemberVO memberVO);

		//유저 권한 저장
		String memberRoleSave(@Param("memberNo") String memberNo,@Param("roleNo") String roleNo);

		//유저 FK번호 알아내기
		String findMemberNo(@Param("id") String id);

		//권한 FK번호 알아내기
		String findRoleNo(@Param("roleName") String roleName);
}
