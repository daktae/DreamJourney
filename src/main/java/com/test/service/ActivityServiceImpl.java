package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.domain.ActivityDTO;
import com.test.domain.ReviewDTO;
import com.test.mapper.ActivityMapper;

@Service
public class ActivityServiceImpl implements ActivityService {
	
	@Autowired
	private ActivityMapper mapper;
	
	//액티비티 전체 목록
	@Override
	public List<ActivityDTO> activitylist() {
		return mapper.activitylist();
	}
	
	//상세보기
	@Override
	public ActivityDTO get(String activity_seq) {
		return mapper.get(activity_seq);
	}
	
	//리뷰 출력
	@Override
	public List<ActivityDTO> review(String activity_seq) {
		return mapper.review(activity_seq);
	}
	
	//리뷰 작성
	@Override
	public void addReview(ReviewDTO rdto) {
		mapper.addReview(rdto);
		System.out.println(rdto);
	}

	//결제 
	@Override
	public ActivityDTO pay(String activity_seq) {
		return mapper.pay(activity_seq);
	}
	
	
	//즐겨찾기 추가
	@Override
	public void bookmark_on(String activity_seq) {
		mapper.bookmark_on(activity_seq);
		System.out.println(activity_seq);
	}
	
	//댓글 개수
	@Override
	public String reviewCount(String activity_seq) {
		// TODO Auto-generated method stub
		return mapper.reviewCount(activity_seq);
	}
	
	//결제 성공
	@Override
	public void payok(String totalPrice) {
		mapper.payok(totalPrice);
		System.out.println(totalPrice);
	}

}
