package com.test.account;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.domain.MemberDTO;
import com.test.mapper.KakaoMapper;

@Service
public class LoginService implements LoginServiceImpl {
	
	@Autowired
	private KakaoMapper mapper;

	@Override
	public List<MemberDTO> glogin(MemberDTO dto, HttpSession session) {

		List<MemberDTO> name = mapper.glogin(dto);
		
		if (name != null) {
			session.setAttribute("email", dto.getEmail());
			session.setAttribute("pw", dto.getPw());
			session.setAttribute("seq", name);
		}
		
		
		return name;
	}

	@Override
	public void updatepw(MemberDTO dto) {
		mapper.updatepw(dto);
	}

	

	
	
}
