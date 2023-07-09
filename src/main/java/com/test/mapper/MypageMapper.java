package com.test.mapper;

import java.util.List; 
import java.util.Map;

import com.test.domain.AccoReserveDTO;
import com.test.domain.ActivityReserveDTO;
import com.test.domain.BookmarkDTO;
import com.test.domain.PayDTO;
import com.test.domain.TranReserveDTO;
import com.test.domain.TripDTO;
import com.test.domain.BookableReviewDTO;
import com.test.domain.MemberDTO;
import com.test.domain.UnbookableReviewDTO;
import com.test.domain.UnwrittenReviewDTO;

public interface MypageMapper {

	List<BookmarkDTO> bookmarkList();

	List<TranReserveDTO> transList();

	List<AccoReserveDTO> accommodateList();

	List<ActivityReserveDTO> activityList();

	TranReserveDTO treservedetail(String treserve_seq);

	PayDTO tpay(String treserve_seq);

	AccoReserveDTO rreservedetail(String rreserve_seq);

	PayDTO rpay(String rreserve_seq);

	ActivityReserveDTO areservedetail(String areserve_seq);

	PayDTO apay(String areserve_seq);

	MemberDTO getMemberInfo(int seq);

	void saveMemberInfo(MemberDTO dto);

	List<BookableReviewDTO> getAccommodateReview();

	List<BookableReviewDTO> getActivityReview();

	List<UnbookableReviewDTO> getFoodReview();

	int updateBookableReview(Map<String, String> map);
	
	int updateUnbookableReview(Map<String, String> map);

	int schInsert(Map<String, String> map);

	int tripInsert(Map<String, String> map);

	String getTripId();

	int dayInsert();

	int dayInsert(Map<String, String> map);

	String getDaySeq(Map<String, String> map);

	int payDel(String pay_seq);
	
	int deletebr(String seq);

	int deleteubr(String seq);

	int setReviewStatus(String seq);

	List<UnwrittenReviewDTO> getUnwrittenAccommodate();

	List<TripDTO> getTrip();

	void journeyshar(String trip_seq);
	List<UnwrittenReviewDTO> getUnwrittenActivity();

	int writereview(Map<String, String> map);

	int updatestatus(String seq);


}
