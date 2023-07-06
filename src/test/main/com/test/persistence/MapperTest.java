package com.test.persistence;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.test.mapper.AccommodateMapper;
import com.test.mapper.ActivityMapper;
import com.test.mapper.TripMapper;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MapperTest {
	
	//scan의 대상만 가상의 클래스를 spring이 만들어줌
//	@Autowired
//	public ActivityMapper amapper;
//	
//	@Autowired
//	public TripMapper tmapper;
//
//	@Test
//	public void test() { 
//		
//		System.out.println(amapper.time());
//		System.out.println(tmapper.time());
//		
//	}
	
	@Autowired
	private AccommodateMapper mapper;
	
	@Test
	public void test() {
		
		System.out.println(mapper.accommodatelist());
		
	}
	
	
}
