package com.test.mapper;

import java.util.List;

import com.test.domain.BookmarkDTO;
import com.test.domain.TranReserveDTO;

public interface MypageMapper {

	List<BookmarkDTO> bookmarkList();

	List<TranReserveDTO> transList();

}
