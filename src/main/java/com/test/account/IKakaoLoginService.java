package com.test.account;

import java.util.HashMap;
import java.util.List;

import com.test.domain.MemberDTO;

public interface IKakaoLoginService {

	String getAccessToken(String authorize_code) throws Throwable;

	HashMap<String, Object> getUserInfo(String access_Token) throws Throwable;

<<<<<<< HEAD
	List<MemberDTO> login(MemberDTO dto);


=======

	List<MemberDTO> login(MemberDTO dto);

>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
}
