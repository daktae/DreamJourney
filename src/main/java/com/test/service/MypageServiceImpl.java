package com.test.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.domain.BookableReviewDTO;
import com.test.domain.BookmarkDTO;
import com.test.domain.MemberDTO;
import com.test.domain.UnbookableReviewDTO;
import com.test.mapper.MypageMapper;

@Service
public class MypageServiceImpl implements MypageService {

	@Autowired
	private MypageMapper mapper;
	
	@Override
	public List<BookmarkDTO> bookmarkList() {

		
		return mapper.bookmarkList();
	}

	@Override
	public MemberDTO getMemberInfo(int seq) {
		return mapper.getMemberInfo(seq);
	}

	@Override
	public void saveMemberInfo(MemberDTO dto) {
		mapper.saveMemberInfo(dto);
	}

	@Override
	public List<BookableReviewDTO> getAccommodateReview() {
		return mapper.getAccommodateReview();
	}

	@Override
	public List<BookableReviewDTO> getActivityReview() {
		return mapper.getActivityReview();
	}

	@Override
	public List<UnbookableReviewDTO> getFoodReview() {
		return mapper.getFoodReview();
	}

	@Override
	public int updatebr(String seq, String newContent) {
		
		Map<String,String> map = new HashMap<String,String>();
		map.put("seq", seq);
		map.put("newContent", newContent);
		
		return mapper.updateBookableReview(map);
	}
	
}
