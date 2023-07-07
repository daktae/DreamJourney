package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.domain.ActivityDTO;
import com.test.mapper.ActivityMapper;

@Service
public class ActivityServiceImpl implements ActivityService {
	
	@Autowired
	private ActivityMapper mapper;
	
	@Override
	public List<ActivityDTO> activitylist() {
		return mapper.activitylist();
	}
	
	@Override
	public ActivityDTO get(String activity_seq) {
		return mapper.get(activity_seq);
	}
	
	@Override
	public List<ActivityDTO> review(String activity_seq) {
		return mapper.review(activity_seq);
	}

	@Override
	public ActivityDTO pay(String activity_seq) {
		return mapper.pay(activity_seq);
	}
	
	
	@Override
	public void bookmark_on(String activity_seq) {
		mapper.bookmark_on(activity_seq);
		System.out.println(activity_seq);
	}
	


}
