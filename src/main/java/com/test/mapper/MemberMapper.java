package com.test.mapper;

<<<<<<< HEAD
=======
import java.util.List;

import javax.naming.directory.SearchResult;

import com.test.domain.AccommodateDTO;
import com.test.domain.ActivityDTO;
>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
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
<<<<<<< HEAD
=======
	
	//회원 탈퇴
	public void unMember(MemberDTO dto);

	//숙소검색
	public List<AccommodateDTO> searchAcc(AccommodateDTO dto);

	//공항검색
	public List<AccommodateDTO> searchAirplane(AccommodateDTO dto);

	//기차검색
	public List<AccommodateDTO> searchTrain(AccommodateDTO dto);

	//버스 검색
	public List<AccommodateDTO> searchBus(AccommodateDTO dto);

	//액티비티 검색(주소로만)
	public List<ActivityDTO> searchActadr(ActivityDTO dto);

	//액티비티 검색(도시로만)
	public List<ActivityDTO> searchActtitle(ActivityDTO dto);
	
	//액티비티 검색(도시로만)
	public List<ActivityDTO> searchAct(ActivityDTO dto);



	



>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
}
