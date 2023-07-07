package com.test.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
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
								String nth,
								String[] placeInputValues,
	                            String[] memoInputValues) {
		
		String[] place = new String[placeInputValues.length];
	    String[] address = new String[placeInputValues.length];
	    
	    String begin = "2023-07-07";
	    String end = "2023-07-08";
	    
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date beginDate = dateFormat.parse(begin);
            Date endDate = dateFormat.parse(end);

            long diffInMillies = Math.abs(endDate.getTime() - beginDate.getTime());
            long diffInDays = (TimeUnit.DAYS.convert(diffInMillies, TimeUnit.MILLISECONDS)) + 1;

            System.out.println("날짜 차이: " + diffInDays + "일");
        } catch (ParseException e) {
            e.printStackTrace();
        }
        
        
	    
	    System.out.println("title: " + title);
	    
	    //int tripResult = service.tripInsert(title, begin, end);
	    
	    //String trip_seq = service.getTripId();
	    
	    //int dayResult = service.dayInsert(nth, trip_seq);
		
	    for (int i = 0; i < placeInputValues.length; i++) {
	        String[] parts = placeInputValues[i].split("_");  // 쉼표로 분리
	        
	        
	        if (parts.length >= 2) {
	            place[i] = parts[0].trim();  // place 배열에 저장
	            address[i] = parts[1].trim();  // placeAddress 배열에 저장
	        } else {
	            // 배열에 저장할 요소가 충분하지 않은 경우 처리
	            place[i] = placeInputValues[i];
	            address[i] = "";  // 빈 문자열로 저장하거나 다른 방식으로 처리할 수 있습니다.
	        }
	        
	        
	        System.out.println("memo: " + memoInputValues[i]);
	        System.out.println("Place: " + place[i]);
	        System.out.println("Place Address: " + address[i]);
	        
	        //int schResult = service.schInsert(nth, memoInputValues[i], place[i], address[i]);
	        
	    }
		
		
		
	    return null;
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
			System.out.println(b.toString());
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
			
			System.out.println(jsonResponse);
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
		
		System.out.println("seq: " + seq);
		System.out.println("selected: " + selected);
		//여기까진 잘 넘어오는데 어째서...? new Content not found...?
		
		if(selected.equals("accommodate")||selected.equals("activity")) {
			System.out.println("newContent: " + newContent);
			int result = service.updatebr(seq, newContent);
			System.out.println("result: " + result);
			}
	//	else if(selected.equals("restaurant")) service.updateubr(seq, newContent);
		
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
	private String mypage_reserve_view(Model model, String treserve_seq, String rreserve_seq, String areserve_seq) {

		
		
		if (treserve_seq != null && treserve_seq != "") {
			model.addAttribute("tlist", service.treservedetail(treserve_seq));
			model.addAttribute("list", service.tpay(treserve_seq));
		} else if (rreserve_seq != null && rreserve_seq != "") {
			model.addAttribute("rlist", service.rreservedetail(rreserve_seq));
			model.addAttribute("list", service.rpay(rreserve_seq));
	    } else if (areserve_seq != null && areserve_seq != "") {
	    	model.addAttribute("alist", service.areservedetail(areserve_seq));
	    	model.addAttribute("list", service.apay(areserve_seq));
	    }		
		

		
		return "mypage/mypage_reserve_view";
	}
	
	@PostMapping("/mypage/mypage_reservedelok")
	private String mypage_reservedelok(Model model, String treserve_seq, String rreserve_seq, String areserve_seq) {


		System.out.println(treserve_seq);
		
		if (treserve_seq != null && treserve_seq != "") {
			int result = service.treservedel(treserve_seq);
		} else if (rreserve_seq != null && rreserve_seq != "") {
			int result = service.rreservedel(rreserve_seq);
	    } else if (areserve_seq != null && areserve_seq != "") {
	    	int result = service.areservedel(areserve_seq);
	    }		
		

		
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
