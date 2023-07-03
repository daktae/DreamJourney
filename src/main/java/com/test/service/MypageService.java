package com.test.service;

import java.util.List; 

import com.test.domain.BookmarkDTO;

public interface MypageService {

	// 즐겨찾기 목록
	List<BookmarkDTO> bookmarkList();

}
