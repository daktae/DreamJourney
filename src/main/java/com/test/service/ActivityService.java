package com.test.service;

import java.util.List;

import com.test.domain.ActivityDTO;
import com.test.domain.ReviewDTO;

//DAO 데이터를 주고 받으며 비즈니스 로직 수행
public interface ActivityService {

   List<ActivityDTO> activitylist();

   ActivityDTO get(String activity_seq);

   List<ReviewDTO> review(String activity_seq);

   ActivityDTO pay(ActivityDTO pdto);

   void bookmark_on(String activity_seq);

   String reviewCount(String activity_seq);

   void addReview(ReviewDTO rdto);

   String paydate(ActivityDTO dto);

   void payok(ActivityDTO dto);

List<String> cal(String activity_seq);

//RoomDTO rpay(RoomDTO rdto);





}