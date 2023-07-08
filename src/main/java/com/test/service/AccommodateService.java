package com.test.service;

import java.util.List;

import com.test.domain.AccommodateDTO;
import com.test.domain.RoomDTO;


public interface AccommodateService {

	List<AccommodateDTO> accommodatelist();

	AccommodateDTO get(String acco_seq);

	List<RoomDTO> view(String acco_seq);



}