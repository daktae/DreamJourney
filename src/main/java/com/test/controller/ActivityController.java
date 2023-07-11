package com.test.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.domain.ActivityDTO;
import com.test.domain.MemberDTO;
import com.test.domain.ReviewDTO;
import com.test.service.ActivityService;


@Controller      //호출된 URL을 통한 데이터 입출력
public class ActivityController {
   
   //쓸 객체에 대해 컴포넌트는 보내고 오토와이어드는 받음
   @Autowired
   public ActivityService service;
   
   //액티비티 글 리스트
   @GetMapping("/reservation/activity")
   public String activity(Model model, HttpSession session) {
      model.addAttribute("list", service.activitylist());
      
      return "/reservation/activity";
   }
   
   
   //액티비티 글 상세보기
   @GetMapping("/reservation/viewactivity")
   public String viewactivity(Model model, String activity_seq) {
      
      ActivityDTO dto = service.get(activity_seq);               	//게시글
      List<ReviewDTO> rdto = service.review(activity_seq);  	//리뷰
      String rcount = service.reviewCount(activity_seq);      	//리뷰 수 
      String address = dto.getAddress().substring(0, 2);         	//타이틀에 넣을 주소 2글자
      
      List<String> cal = new ArrayList<String>();
      cal = service.cal(activity_seq);

      for (int i=0; i<cal.size(); i++) {
    	  String value = cal.get(i);
    	  cal.set(i,  "\"" + value + "\"");
      }
      System.out.println(cal);

      model.addAttribute("adetail", dto);
      model.addAttribute("review", rdto);
      model.addAttribute("reviewCount", rcount);
      model.addAttribute("address", address);
      model.addAttribute("cal", cal);
      
      return "/reservation/viewactivity";
   }
   
   
   //결제하기
   @PostMapping("/reservation/pay")
   public String pay(Model model, String activity_seq, String dates, ActivityDTO dto, HttpSession session) {
      
      dto.setTotalPeople(dto.getTotalPeople().replace(",",""));
      
      MemberDTO mdto = new MemberDTO();
      
      mdto.setMember_seq(session.getAttribute("seq").toString());
      mdto.setName(session.getAttribute("name").toString());
      mdto.setEmail(session.getAttribute("email").toString());
      mdto.setNickname(session.getAttribute("nickname").toString());
      mdto.setTel(session.getAttribute("tel").toString());
      mdto.setPw(session.getAttribute("pw").toString());
      
      ActivityDTO pdto = new ActivityDTO();
      pdto.setActivity_seq(activity_seq);
      pdto.setDates(dates);
            
      ActivityDTO pdto2 = service.pay(pdto);
      
      model.addAttribute("pdetail", pdto2);
      model.addAttribute("dto", dto);
      model.addAttribute("mdto", mdto);
      
      
//      if (activity_seq != null) {
//			dto.setTotalPeople(dto.getTotalPeople().replace(",",""));
//			
//			ActivityDTO pdto = service.pay(activity_seq);
//			
//			model.addAttribute("pdetail", pdto);
//			model.addAttribute("dto", dto);
//		} else {
//			RoomDTO rpdto = service.rpay(acco_seq);
//			
//			System.out.println(rpdto.getTotalPeople());
//			System.out.println(rpdto.getDates());
//			System.out.println(rpdto.getTotalPrice());
//			
//			System.out.println(rpdto);
//			model.addAttribute("rdetail", rpdto);
//			model.addAttribute("rdto", rdto);
//		}
      
      return "/reservation/pay";
   }
   
   //결제성공
   @PostMapping("/reservation/payok")
   @ResponseBody
   public String payok(@RequestParam("totalPrice") String totalPrice, @RequestParam("dates") String dates, @RequestParam("activity_seq") String activity_seq) {
       
       ActivityDTO dto = new ActivityDTO();
       dto.setTotalPrice(totalPrice);
       dto.setDates(dates);
       dto.setActivity_seq(activity_seq);
       
       String payday = service.paydate(dto);
       dto.setAdate_seq(payday);
       
       service.payok(dto);
       
       return "/reservation/payok";
   }
   
   
   //즐겨찾기
   @PostMapping("/reservation/viewactivity")
   @ResponseBody
   public void bookmark_on(@RequestParam("activity_seq") String activity_seq) {
       
       service.bookmark_on(activity_seq);
   }
   
   @GetMapping("/reservation/payok")
   public String payok() {
      
      return "/reservation/payok";
   }
   
   
}