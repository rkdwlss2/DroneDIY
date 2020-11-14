package com.example.drone.vo;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

@Component
public class MemberPrincipalVO implements UserDetails {
	
	private ArrayList<MemberVO> memberVO;
	
	public MemberPrincipalVO(ArrayList<MemberVO> memberAuthes) {
		this.memberVO = memberAuthes;
	}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() { //유저가 갖고 있는 권한 목록

		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		
		for(int x=0; x < memberVO.size(); x++) {
			authorities.add(new SimpleGrantedAuthority(memberVO.get(x).getRoleName()));
		}
		
		return authorities;
	}

	@Override
	public String getPassword() { //유저 비밀번호

		return memberVO.get(0).getUserPass();
	}

	@Override
	public String getUsername() {// 유저 이름 혹은 아이디

		return memberVO.get(0).getUserName();
	}

	@Override
	public boolean isAccountNonExpired() {// 유저 아이디가 만료 되었는지

		return true;
	}

	@Override
	public boolean isAccountNonLocked() { // 유저 아이디가 Lock 걸렸는지

		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() { //비밀번호가 만료 되었는지

		return true;
	}

	@Override
	public boolean isEnabled() { // 계정이 활성화 되었는지

		return true;
	}
}
