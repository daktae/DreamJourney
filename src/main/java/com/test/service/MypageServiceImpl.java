package com.test.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.domain.AccoReserveDTO;
import com.test.domain.ActivityReserveDTO;
import com.test.domain.BookableReviewDTO;
import com.test.domain.BookmarkDTO;
import com.test.domain.MemberDTO;
import com.test.domain.PayDTO;
import com.test.domain.ScheduleDTO;
import com.test.domain.TranReserveDTO;
import com.test.domain.TripDTO;
import com.test.domain.UnbookableReviewDTO;
import com.test.domain.UnwrittenReviewDTO;
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
	
	@Override
	public int updateubr(String seq, String newContent) {
		
		Map<String,String> map = new HashMap<String,String>();
		map.put("seq", seq);
		map.put("newContent", newContent);
		
		return mapper.updateUnbookableReview(map);
		
	}
	
	@Override
	public List<TranReserveDTO> transList() {

		return mapper.transList();
	}
	
	@Override
	public List<AccoReserveDTO> accommodateList() {

		return mapper.accommodateList();
	}
	
	@Override
	public List<ActivityReserveDTO> activityList() {

		return mapper.activityList();
	}
	
	@Override
	public TranReserveDTO treservedetail(String treserve_seq) {

		return mapper.treservedetail(treserve_seq);
	}
	
	@Override
	public PayDTO tpay(String treserve_seq) {

		return mapper.tpay(treserve_seq);
	}
	
	@Override
	public AccoReserveDTO rreservedetail(String rreserve_seq) {

		return mapper.rreservedetail(rreserve_seq);
	}
	
	@Override
	public PayDTO rpay(String rreserve_seq) {

		return mapper.rpay(rreserve_seq);
	}
	
	@Override
	public ActivityReserveDTO areservedetail(String areserve_seq) {

		return mapper.areservedetail(areserve_seq);
	}
	
	@Override
	public PayDTO apay(String areserve_seq) {

		return mapper.apay(areserve_seq);
	}
	
	@Override
	public int payDel(String pay_seq) {

		return mapper.payDel(pay_seq);
	}
	
	@Override
	public int schInsert(String nth, String memo, String place, String address) {

		Map<String,String> map = new HashMap<String,String>();
		map.put("nth", nth);
		map.put("memo", memo);
		map.put("place", place);
		map.put("address", address);
		
		return mapper.schInsert(map);
	}
	
	@Override
	public int tripInsert(String title, String begin, String end) {
		
		Map<String,String> map = new HashMap<String,String>();
		map.put("title", title);
		map.put("begin", begin);
		map.put("end", end);
		
		
		return mapper.tripInsert(map);
	}
	
	@Override
	public String getTripId() {

		return mapper.getTripId();
	}
	
	@Override
	public int dayInsert(String nth, String trip_seq) {

		Map<String,String> map = new HashMap<String,String>();
		map.put("nth", nth);
		map.put("trip_seq", trip_seq);
		
		return mapper.dayInsert(map);
	}

	@Override
	public int deletebr(String seq) {
		return mapper.deletebr(seq);
	}

	@Override
	public int deleteubr(String seq) {
		return mapper.deleteubr(seq);
	}

	@Override
	public int setReviewStatus(String seq) {
		return mapper.setReviewStatus(seq);
	}

	@Override
	public List<UnwrittenReviewDTO> getUnwrittenAccommodate() {
		return mapper.getUnwrittenAccommodate();
	}
	
	@Override
	public String getDaySeq(String nth, String trip_seq) {

		Map<String,String> map = new HashMap<String,String>();
		map.put("nth", nth);
		map.put("trip_seq", trip_seq);
		
		return mapper.getDaySeq(map);
	}

	@Override
	public List<UnwrittenReviewDTO> getUnwrittenActivity() {
		return mapper.getUnwrittenActivity();
	}

	@Override
	public int writereview(Map<String, String> map) {
		return mapper.writereview(map);
	}

	@Override
	public int updatestatus(String seq) {
		return mapper.updatestatus(seq);
	}
	
	@Override
	public List<TripDTO> getTrip() {

		return mapper.getTrip();
	}
	
	@Override
	public void journeyshar(String trip_seq) {

		mapper.journeyshar(trip_seq);
		
	}

	@Override
	public TripDTO gettripview(String trip_seq) {
		return mapper.gettripview(trip_seq);
	}

	@Override
	public String getDayButtons(String seq) {
		return mapper.getDayButtons(seq);
	}

	@Override
	public List<ScheduleDTO> getSchedule(Map<String, String> map) {
		return mapper.getSchedule(map);
	}

	
	@Override
	public int[] getDay_seq(String trip_seq) {

		return mapper.getDay_seq(trip_seq);
	}
	
	@Override
	public void scheduledel(int day_seq) {
		mapper.scheduledel(day_seq);
	}
	
	@Override
	public void journeydel(String trip_seq) {
		mapper.journeydel(trip_seq);
	}
	
	@Override
	public void daydel(String trip_seq) {
		mapper.daydel(trip_seq);
	}
	
	@Override
	public List<TripDTO> tripList() {

		return mapper.tripList();
	}

	@Override
	public int plusrecommend(String seq) {
		return mapper.plusrecommend(seq);
	}
	
}
