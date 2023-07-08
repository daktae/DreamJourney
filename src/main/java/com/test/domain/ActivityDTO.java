package com.test.domain;

import lombok.Data;

@Data
public class ActivityDTO {
	
	private String activity_seq;	//액티비티 번호
	private String title;			//제목
	private String content;		//내용
	private String address;		//주소
	private String limit;			//정원
	private String price;			//가격
	private String category;		//카테고리

}
