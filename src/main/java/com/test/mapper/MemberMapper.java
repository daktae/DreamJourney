package com.test.mapper;

import java.util.List;

import javax.naming.directory.SearchResult;

import com.test.domain.AccommodateDTO;
import com.test.domain.MemberDTO;

public interface MemberMapper {
	//이메일 중복체크
	public int emailCheck(String id);

	//번호 중복체크
	public int telCheck2(String tel);

	//닉네임 중복체크
	public int nickCheck(String nick);

	//회원가입
	public void addMember(MemberDTO dto);

	//숙소검색
	public List<SearchResult> searchAcc(AccommodateDTO dto);

	//항공 검색
	public List<SearchResult> serachAirplnae(AccommodateDTO dto);

	//버스 검색
	public List<SearchResult> searchBus(AccommodateDTO dto);

	//기차 검색
	public List<SearchResult> searchTrain(AccommodateDTO dto);

	//액티비티 검색
	public List<SearchResult> searchActivity(AccommodateDTO dto);
	

}
