package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.domain.BookmarkDTO;
import com.test.mapper.MypageMapper;

@Service
public class MypageServiceImpl implements MypageService {

	@Autowired
	private MypageMapper mapper;
	
	@Override
	public List<BookmarkDTO> bookmarkList() {

		
		return mapper.bookmarkList();
	}
	
}
