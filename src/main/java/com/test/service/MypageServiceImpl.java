package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.domain.AccoReserveDTO;
import com.test.domain.ActivityReserveDTO;
import com.test.domain.BookmarkDTO;
import com.test.domain.PayDTO;
import com.test.domain.TranReserveDTO;
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
	public int treservedel(String treserve_seq) {

		return mapper.treservedel(treserve_seq);
	}
	
	@Override
	public int rreservedel(String rreserve_seq) {
		
		return mapper.rreservedel(rreserve_seq);
	}
	
	@Override
	public int areservedel(String areserve_seq) {

		return mapper.areservedel(areserve_seq);
	}
	
}
