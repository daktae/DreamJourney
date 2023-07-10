package com.test.emailwj;

<<<<<<< HEAD
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
=======
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

<<<<<<< HEAD
=======
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.Certification;
import com.siot.IamportRestClient.response.IamportResponse;
>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
import com.test.mapper.MemberMapper;

@Controller
public class EmailController {
	@Autowired
	private MailSendService mailService;

	@Autowired
	private MemberMapper memberService;

	// 이메일 인증
	@GetMapping("/mailCheck")
	@ResponseBody
	public String mailCheck(String email) {
		System.out.println("이메일 인증 요청이 들어옴!");
		System.out.println("이메일 인증 이메일 : " + email);
		return mailService.joinEmail(email);

	}

	// 아이디 중복체크
	@PostMapping("/emailCheck")
	@ResponseBody
	public int emailCheck(@RequestParam("email") String email) {
		int cnt = memberService.emailCheck(email);
		return cnt;
	}

	// 닉네임 중복체크
	@PostMapping("/nickCheck")
	@ResponseBody
	public int nickCheck(@RequestParam("nick") String nick) {
		int cnt = memberService.nickCheck(nick);
		return cnt;
	}



}