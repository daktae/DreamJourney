package com.test.account;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.domain.MemberDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AccountController {

	@Autowired
	private IKakaoLoginService iKakaoS;
	
	
	@GetMapping("/login")
	private String login() {
		
		return "/account/login";
	}
	@GetMapping("/kakao")
	private String kakao(Model model, @RequestParam("code") String code) {
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
		    	
		    	
		    	model.addAttribute("name", name);
		    	model.addAttribute("email", email);
		    	return "redirect:/register";
		    	
		    } else {
		    	
		    	System.out.println(list);
		    	model.addAttribute("name", list.get(0).getName());
		    	model.addAttribute("email", list.get(0).getEmail());
		    	return "redirect:/index";
		    	
		    }
		    
			
			
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	
	@GetMapping("/register")
	private String register() {
		
		return "/account/register";
	}
	
}
