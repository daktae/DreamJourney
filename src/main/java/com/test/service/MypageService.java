package com.test.service;

import java.util.List;

import com.test.domain.BookableReviewDTO;
import com.test.domain.BookmarkDTO;
import com.test.domain.MemberDTO;
import com.test.domain.UnbookableReviewDTO;

public interface MypageService {

	// 즐겨찾기 목록
	List<BookmarkDTO> bookmarkList();

	MemberDTO getMemberInfo(int member_seq);

	void saveMemberInfo(MemberDTO dto);

	List<BookableReviewDTO> getAccommodateReview();

	List<BookableReviewDTO> getActivityReview();

	List<UnbookableReviewDTO> getFoodReview();

	int updatebr(String seq, String newContent);

}
