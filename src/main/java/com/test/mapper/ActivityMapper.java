package com.test.mapper;

import java.util.List;

import com.test.domain.ActivityDTO;
import com.test.domain.ReviewDTO;

//DAO 역할 > DB 데이터에 접근
public interface ActivityMapper {

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


}
