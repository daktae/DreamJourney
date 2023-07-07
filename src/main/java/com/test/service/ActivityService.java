package com.test.service;

import java.util.List;

import com.test.domain.ActivityDTO;

//DAO 데이터를 주고 받으며 비즈니스 로직 수행
public interface ActivityService {

	List<ActivityDTO> activitylist();

	ActivityDTO get(String activity_seq);

	List<ActivityDTO> review(String activity_seq);

	ActivityDTO pay(String activity_seq);

	void bookmark_on(String activity_seq);



}
