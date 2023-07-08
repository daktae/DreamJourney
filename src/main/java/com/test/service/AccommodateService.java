package com.test.service;

import java.util.List;

import com.test.domain.AccommodateDTO;
import com.test.domain.RoomDTO;

import com.test.domain.TransportDTO;


public interface AccommodateService {

	List<AccommodateDTO> accommodatelist();

	AccommodateDTO get(String acco_seq);

	List<RoomDTO> view(String acco_seq);


	List<TransportDTO> transportlist();

	List<TransportDTO> trainlist();

	List<TransportDTO> airplanelist();

}