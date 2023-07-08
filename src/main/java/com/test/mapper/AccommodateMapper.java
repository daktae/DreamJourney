package com.test.mapper;

import java.util.List;

import com.test.domain.AccommodateDTO;
import com.test.domain.RoomDTO;

public interface AccommodateMapper {

	
	List<AccommodateDTO> accommodatelist();

	AccommodateDTO get(String acco_seq);

	List<RoomDTO> view(String acco_seq);
}
