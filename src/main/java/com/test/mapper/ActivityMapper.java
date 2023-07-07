package com.test.mapper;

import java.util.List;

import com.test.domain.ActivityDTO;

//DAO 역할 > DB 데이터에 접근
public interface ActivityMapper {

	List<ActivityDTO> activitylist();

	ActivityDTO get(String activity_seq);

	List<ActivityDTO> review(String activity_seq);

	ActivityDTO pay(String activity_seq);

	void bookmark_on(String activity_seq);


}

