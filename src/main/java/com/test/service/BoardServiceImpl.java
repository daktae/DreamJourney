package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.domain.BoardDTO;
import com.test.domain.CommentDTO;
import com.test.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardMapper mapper;
	
	@Override
	public List<BoardDTO> getBlist() {
		return mapper.getBlist();
	}
	
	@Override
	public BoardDTO get(String free_seq) {
		// TODO Auto-generated method stub
		return mapper.get(free_seq);
	}
	
	@Override
	public int updateReadCount(String free_seq) {
		return mapper.updateReadCount(free_seq);
	}
	
	@Override
	public void add(BoardDTO dto) {
		mapper.add(dto);
	}
	
	
	@Override
	public void edit(BoardDTO dto) {
		mapper.edit(dto);
	}
	
	@Override
	public void del(String free_seq) {
		mapper.del(free_seq);
	}
	
	@Override
	public List<CommentDTO> getClist(String free_seq) {
		return mapper.getClist(free_seq);
	}
	
	@Override
	public void addComment(CommentDTO dto) {
		mapper.addComment(dto);
	}

	

	
	
}
