package com.test.domain;

import lombok.Data;

@Data
public class UnwrittenReviewDTO {
	
	String pay_seq;
	String name;
	String begindate;
	
	public void setBegindate(String begindate) {
		
		begindate = begindate.substring(0, 10);
	
		this.begindate = begindate;
	}

}
