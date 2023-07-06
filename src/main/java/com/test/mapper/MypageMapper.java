package com.test.mapper;

import java.util.List;
import java.util.Map;

import com.test.domain.BookableReviewDTO;
import com.test.domain.BookmarkDTO;
import com.test.domain.MemberDTO;
import com.test.domain.UnbookableReviewDTO;

public interface MypageMapper {

	List<BookmarkDTO> bookmarkList();

	MemberDTO getMemberInfo(int seq);

	void saveMemberInfo(MemberDTO dto);

	List<BookableReviewDTO> getAccommodateReview();

	List<BookableReviewDTO> getActivityReview();

	List<UnbookableReviewDTO> getFoodReview();

	int updateBookableReview(Map<String, String> map);


}
