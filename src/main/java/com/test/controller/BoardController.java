package com.test.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.test.domain.BoardDTO;
import com.test.domain.CommentDTO;
import com.test.service.BoardService;
@Controller
public class BoardController {
	
	@Autowired
	private BoardService service;

	@GetMapping("/board")
	public String board(Model model) {
		// 말머리 '동행'인 게시판
		//- 글목록 가져오기 (N행 N열)
		//- select * from tblFree where category = '동행'
		
		model.addAttribute("blist", service.getBlist());
		
		return "/board/board";
	}
	
	@GetMapping("/boardDetail")
	public String boardDetail(Model model, String free_seq) {
		// 게시판 '동행' 글 상세보기 했다고 가정
		
		int updateOk = service.updateReadCount(free_seq);
		BoardDTO dto = service.get(free_seq);
		List<CommentDTO> cdto = service.getClist(free_seq);
		
		model.addAttribute("bdetail", dto);
		model.addAttribute("clist", cdto);
		
		
		return "/board/boardDetail";
	}
	
	@GetMapping("/chat")
	public String chat(Model model, String free_seq) {
		// boardDetail.jsp 에서 자식창으로 chat.jsp 열기
		BoardDTO dto = service.get(free_seq);
		
		model.addAttribute("bdetail", dto);
		
		
		return "/board/chat";
	}
	
	@GetMapping("/addBoard")	// 글 등록하려는 페이지로 이동
	public String addBoard() {
		
		
		return "/board/addBoard";
	}

	@PostMapping("/addBoard")	// 최종 등록
	public String addBoard(Model model, BoardDTO dto) {
		
		service.add(dto);
		
		return "redirect:board";
	}
	
	@GetMapping("/editBoard")	// 기존 내용 불러와서 수정하는 화면 
	public String editBoard(Model model, String free_seq) {
		
		BoardDTO dto = service.get(free_seq);
		
		model.addAttribute("bdetail", dto);
		
		return "/board/editBoard";
	}

	
	@PostMapping("/editBoard")	// 최종 수정
	public String editBoard(Model model, BoardDTO dto) {
		
		service.edit(dto);
		
		return "redirect:board";
	}
	
	
	@GetMapping("/delBoard")
	public String delBoard(Model model, String free_seq) {
		
		service.del(free_seq);
		
		return "redirect:board";
	}

//	@GetMapping("/comment")
//	public String comment(Model model, String free_seq) {
//		
//		// 댓글 목록 보기
//		model.addAttribute("clist", service.getClist(free_seq));
//		
//		return "/board/boardDetail";
//	}
	
	@PostMapping("/addComment")
	public String addComment(Model model, CommentDTO dto) {
		
//		Map<String, Object> map = new HashMap<>();
		
		
//		map.put("content", dto.con);
//		map.put("free_seq", free_seq);
		System.out.println(dto);
		
		
		service.addComment(dto);
		
		return "redirect:boardDetail?free_seq=" + dto.getFree_seq();
	}
	
	
	

}