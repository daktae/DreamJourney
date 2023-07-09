package com.test.controller;

import java.text.SimpleDateFormat; 
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.test.domain.BookableReviewDTO;
import com.test.domain.MemberDTO;
import com.test.domain.UnbookableReviewDTO;
import com.test.service.MypageService;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;


@Controller
public class MypageController {

	@Autowired
	private MypageService service;
	

	@GetMapping("/mypage")
	private String mypage() {
		return "mypage/mypage";
	}

	// 회원정보
	@GetMapping("/mypage/info")
	private String info(Model model) {

		MemberDTO dto = service.getMemberInfo(5);
		model.addAttribute("dto", dto);

		return "mypage/info";
	}

	// 회원정보 수정
	@GetMapping("/mypage/editinfo")
	private String editinfo(Model model) {

		MemberDTO dto = service.getMemberInfo(5);
		model.addAttribute("dto", dto);

		return "mypage/editinfo";
	}

	// 수정 완료
	@PostMapping("/mypage/saveinfo")
	private String saveinfo(MemberDTO dto) {
		service.saveMemberInfo(dto);
		return "redirect:/mypage/info";
	}

	// 내 여행
	@GetMapping("/mypage/journey")
	private String journey() {
		return "mypage/journey";
	}

	// 내 여행 등록
	@GetMapping("/mypage/addjourney")
	private String addjourney() {
		return "mypage/addjourney";
	}
	
	// 내 여행 등록
	@PostMapping("/mypage/addjourneyok")	
	private String addjourneyok(Model model,
								String title,
								String[] nthValues,
								String[] placeInputValues,
	                            String[] memoInputValues,
	                            String startdate,
	                            String enddate) {
		
		String[] place = new String[placeInputValues.length];
	    String[] address = new String[placeInputValues.length];
	    String[] memo = new String[memoInputValues.length];
	    String[] nth = new String[memoInputValues.length];
	    
	    String begin = "";
	    String end = "";
	    
	    SimpleDateFormat inputFormat = new SimpleDateFormat("E MMM dd yyyy HH:mm:ss 'GMT'Z", Locale.ENGLISH);
	    SimpleDateFormat outputFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);

	    try {
	        // 문자열을 Date 객체로 변환합니다.
	        Date beginDate = inputFormat.parse(startdate);
	        Date endDate = inputFormat.parse(enddate);

	        // Date 객체를 원하는 형식의 문자열로 변환합니다.
	        begin = outputFormat.format(beginDate);
	        end = outputFormat.format(endDate);

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
        
        int maxNth = Integer.MIN_VALUE;
        
        for (int i = 0; i < nthValues.length; i++) {
            String numberNth = nthValues[i].substring(nthValues[i].length() - 1);
            int numberNthValue = Integer.parseInt(numberNth);

            if (numberNthValue > maxNth) {
            	maxNth = numberNthValue;
            }
        }
        
	    int tripResult = service.tripInsert(title, begin, end);
	    
	    String trip_seq = service.getTripId();
	    
	    for (int i=1; i<=maxNth; i++) {
	    	String strI = String.valueOf(i);
	    	int dayResult = service.dayInsert(strI, trip_seq);
	    }
	    
		
	    for (int i = 0; i < placeInputValues.length; i++) {
	        String[] parts = placeInputValues[i].split("_");  // 쉼표로 분리
	        String[] dParts = memoInputValues[i].split("_");
	        
	        
	        if (parts.length >= 2) {
	            place[i] = parts[0].trim();  // place 배열에 저장
	            address[i] = parts[1].trim();  // placeAddress 배열에 저장
	            
	        } else {
	            // 배열에 저장할 요소가 충분하지 않은 경우 처리
	            place[i] = placeInputValues[i];
	            address[i] = "";  // 빈 문자열로 저장하거나 다른 방식으로 처리할 수 있습니다.
	        }
	        
	        if (dParts.length >= 2) {
	            memo[i] = dParts[0].trim();  // place 배열에 저장
	            nth[i] = dParts[1].substring(dParts[1].length() - 1);  // placeAddress 배열에 저장
	        } else {
	            // 배열에 저장할 요소가 충분하지 않은 경우 처리
	            memo[i] = placeInputValues[i];
	            nth[i] = "";  // 빈 문자열로 저장하거나 다른 방식으로 처리할 수 있습니다.
	        }

	        String day_seq = service.getDaySeq(nth[i], trip_seq); 
	        
	        
	        int schResult = service.schInsert(day_seq, memo[i], place[i], address[i]);
	        
	    }
		
	    return "redirect:/mypage/journey";
	}

	// 내 여행 상세보기
	@GetMapping("/mypage/viewjourney")
	private String viewjourney() {
		return "mypage/viewjourney";
	}

	// 내 리뷰
	@GetMapping("/mypage/review")
	private String review() {

		return "mypage/review";
	}

	// 내 리뷰 조회 ajax
	// @GetMapping("/mypage/bookablereview")
	@RequestMapping(value="/mypage/bookablereview", produces="application/json;charset=UTF-8")
	@ResponseBody
	private String requestReview(String selected) {

		List<BookableReviewDTO> b = new ArrayList<BookableReviewDTO>();

		if (selected.equals("accommodate"))
			b = service.getAccommodateReview();
		else if (selected.equals("activity"))
			b = service.getActivityReview();

		ObjectMapper mapper = new ObjectMapper();
		String jsonResponse;
		try {
			jsonResponse = mapper.writeValueAsString(b);
			return jsonResponse;
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return null;

	}

	// 내 리뷰 조회 ajax - 맛집
	//@GetMapping("/mypage/unbookablereview")
	@RequestMapping(value="/mypage/unbookablereview", produces="application/json;charset=UTF-8")
	@ResponseBody
	private String requestReviewUB(String selected) {

		List<UnbookableReviewDTO> ub = new ArrayList<UnbookableReviewDTO>(); // 맛집 리뷰
		ub = service.getFoodReview();

		ObjectMapper mapper = new ObjectMapper();
		String jsonResponse;
		try {
			jsonResponse = mapper.writeValueAsString(ub);
			
			return jsonResponse;
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}

		return null;
	}
	
	// 내 리뷰 업데이트 ajax
	@RequestMapping(value="/mypage/updatereview", produces="application/json;charset=UTF-8", method = RequestMethod.POST)
	@ResponseBody
	private void updateBookableReview(String seq, String selected, String newContent) {
		
		int result = -1;
		
		if(selected.equals("accommodate")||selected.equals("activity")) result = service.updatebr(seq, newContent);
		else if(selected.equals("restaurant")) result = service.updateubr(seq, newContent);
		
		System.out.println("update result: " + result);
		
	}

	// 예약 목록
	@GetMapping("/mypage/mypage_reserve")
	private String mypage_reserve(Model model) {

		model.addAttribute("tlist", service.transList());
		model.addAttribute("alist", service.accommodateList());
		model.addAttribute("aclist", service.activityList());
		
		return "mypage/mypage_reserve";
	}

	// 예약 상세
	@GetMapping("/mypage/mypage_reserve_view")
	private String mypage_reserve_view(Model model, String trandate_seq, String rdate_seq, String adate_seq) {

		
		
		if (trandate_seq != null && trandate_seq != "") {
			model.addAttribute("tlist", service.treservedetail(trandate_seq));
			model.addAttribute("list", service.tpay(trandate_seq));
		} else if (rdate_seq != null && rdate_seq != "") {
			model.addAttribute("rlist", service.rreservedetail(rdate_seq));
			model.addAttribute("list", service.rpay(rdate_seq));
	    } else if (adate_seq != null && adate_seq != "") {
	    	model.addAttribute("alist", service.areservedetail(adate_seq));
	    	model.addAttribute("list", service.apay(adate_seq));
	    }		
		

		
		return "mypage/mypage_reserve_view";
	}
	
	@PostMapping("/mypage/mypage_reservedelok")
	private String mypage_reservedelok(Model model, String pay_seq) {


		
			int result = service.payDel(pay_seq);
		

		
		return "redirect:/mypage/mypage_reserve";
	}
	

	// 즐겨찾기
	@GetMapping("/mypage/mypage_bookmark")
	private String mypage_bookmark(Model model) {

		model.addAttribute("list", service.bookmarkList());

		return "mypage/mypage_bookmark";
	}

	// 내 작성글
	@GetMapping("/mypage/mypage_write")
	private String mypage_write() {

		return "mypage/mypage_write";

	}

	// 테스트
	@GetMapping("/mypage/mapmap")
	private String mapmap() {

		return "mypage/mapmap";

	}
	
	//테스트
	@PostMapping("/mypage/mapmapok")
	private String mapmapok(String placeName, String addressName) {
		
		return "redirect:/mypage/journey";
		
	}


	

}
