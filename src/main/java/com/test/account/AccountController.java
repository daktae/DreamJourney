package com.test.account;

import java.util.HashMap;
import java.util.List;

<<<<<<< HEAD
import javax.servlet.http.HttpSession;

=======
>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.domain.MemberDTO;
import com.test.emailwj.MailSendService;
=======
import org.springframework.web.bind.annotation.RequestParam;

import com.test.domain.MemberDTO;
>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183

@Controller
public class AccountController {

	@Autowired
	private IKakaoLoginService iKakaoS;
	
<<<<<<< HEAD
	@Autowired
	private LoginService gLoginS;
	
	@Autowired
	private FindPwEmailService mailService;

=======
>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
	
	@GetMapping("/login")
	private String login() {
		
		return "/account/login";
	}
	@GetMapping("/kakao")
<<<<<<< HEAD
	private String kakao(Model model, @RequestParam("code") String code, HttpSession session) {
=======
	private String kakao(Model model, @RequestParam("code") String code) {
>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
		String name="";
		String email="";
		String access_Token;
		try {
			access_Token = iKakaoS.getAccessToken(code);
			
			HashMap<String, Object> userInfo = iKakaoS.getUserInfo(access_Token);
			MemberDTO dto = new MemberDTO();
			
			name=(String) userInfo.get("nickname");
			email=(String) userInfo.get("email");
			
			dto.setName(name);
			dto.setEmail(email);
			
			System.out.println(name);
			System.out.println(email);
		    
			
		    List<MemberDTO> list = iKakaoS.login(dto);
		    
		    
		    if(list.isEmpty()) {
		    	
<<<<<<< HEAD
=======
		    	
>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
		    	model.addAttribute("name", name);
		    	model.addAttribute("email", email);
		    	return "redirect:/register";
		    	
		    } else {
<<<<<<< HEAD
		    	session.setAttribute("name", list.get(0).getName());
		    	session.setAttribute("nickname", list.get(0).getNickname());
		    	session.setAttribute("email", list.get(0).getEmail());
		    	session.setAttribute("seq", list.get(0).getMember_seq());
		    	
		    	
		    	model.addAttribute("name", list.get(0).getName());
		    	model.addAttribute("email", list.get(0).getEmail());
		    	model.addAttribute("nickname", list.get(0).getNickname());
=======
		    	
		    	System.out.println(list);
		    	model.addAttribute("name", list.get(0).getName());
		    	model.addAttribute("email", list.get(0).getEmail());
>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
		    	return "redirect:/index";
		    	
		    }
		    
			
			
		} catch (Throwable e) {
<<<<<<< HEAD
=======
			// TODO Auto-generated catch block
>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
			e.printStackTrace();
		}
		
		return null;
		
	}
	
<<<<<<< HEAD
	@GetMapping("/glogin")
	private String gLogin() {
		
		return "/account/glogin";
	}
	
	@PostMapping("/gloginok") 
	private String gLoginok(Model model, MemberDTO dto, HttpSession session) {
		List<MemberDTO> name = gLoginS.glogin(dto, session);
		
		
		if (!name.isEmpty()) {
			session.setAttribute("name", name.get(0).getName());
			session.setAttribute("nickname", name.get(0).getNickname());
			session.setAttribute("email", name.get(0).getEmail());
			session.setAttribute("seq", name.get(0).getMember_seq());
			
			model.addAttribute("name", name.get(0).getName());
			model.addAttribute("nickname", name.get(0).getNickname());
			model.addAttribute("email", name.get(0).getEmail());
			return "redirect:/index";
		} else {
			model.addAttribute("message", "에러");
			return "/account/glogin";
		}
	}
	
	
	
	// 이메일 인증
	@GetMapping("/findpwcheck")
	@ResponseBody
	public String mailCheck(String email) {
		System.out.println("이메일 인증 요청이 들어옴!");
		System.out.println("이메일 인증 이메일 : " + email);
		return mailService.joinEmail(email);

	}
	
	
	@GetMapping("/findpw")
	private String findpw() {
		
		return "/account/findpw";
	}
	
	@GetMapping("/updatepw")
	private String updatepw() {
		
		return "/account/updatepw";
	}
	
	@PostMapping("/updatepwok")
	private String updatepwok(MemberDTO dto) {
		System.out.println(dto.getEmail());
		System.out.println(dto.getPw());
		gLoginS.updatepw(dto);
		return "/account/updatepwok";
	}
=======
>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
	
	@GetMapping("/register")
	private String register() {
		
		return "/account/register";
	}
<<<<<<< HEAD
=======
	
>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
}
