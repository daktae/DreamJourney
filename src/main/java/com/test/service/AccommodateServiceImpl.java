package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.domain.AccommodateDTO;
import com.test.domain.RoomDTO;
import com.test.domain.TransportDTO;
import com.test.mapper.AccommodateMapper;

@Service
public class AccommodateServiceImpl implements AccommodateService{

	
	@Autowired
	private AccommodateMapper mapper;
	
	@Override
	public List<AccommodateDTO> accommodatelist() {

		
		return mapper.accommodatelist();
	}

	@Override
	public AccommodateDTO get(String acco_seq) {

		return mapper.get(acco_seq);
	}

	@Override
	public List<RoomDTO> view(String acco_seq) {

		return mapper.view(acco_seq);
	}

	@Override
	public List<TransportDTO> transportlist() {
		
		return  mapper.transportlist();
	}

	@Override
	public List<TransportDTO> trainlist() {
		return  mapper.trainlist();
	}

	@Override
	public List<TransportDTO> airplanelist() {
		return  mapper.airplanelist();
	}


	//DAO 데이터를 주고 받으며 비즈니스 로직 수행
	
}
