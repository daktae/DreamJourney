package com.test.domain;

import lombok.Data;

@Data
public class BookableReviewDTO {
	
	String review_seq;
	String content;
	String score;
	int thread;
	int depth;
	String pay_seq;
	String rreserve_seq;
	String areserve_seq;
	String rdate;
	
	String name;

}
