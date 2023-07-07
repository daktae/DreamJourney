package com.test.mapper;

import com.test.domain.MemberDTO;

public interface MemberMapper {
	//이메일 중복체크
	public int emailCheck(String id);

	//번호 중복체크
	public int telCheck2(String tel);

	//닉네임 중복체크
	public int nickCheck(String nick);

	//회원가입
	public void addMember(MemberDTO dto);
}
