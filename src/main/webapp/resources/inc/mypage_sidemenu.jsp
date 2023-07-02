<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#menucontainer {
	border: 1px solid #CCCCCC;
	width: 15%;
	height: 800px;
	margin-left: 100px;
	margin-right: 30px;
	border-radius: 20px;
	padding-left: 30px;
	padding-right: 30px;
}

#sidemenu {
	text-align: left;
	width: 100%;
	height: 100%;
}
</style>
<div id="menucontainer">
	<table id="sidemenu">
		<tr style="height: 30%; text-align: center">
			<td><img src="resources/img/마이페이지유저.png" style="max-width: 100%; max-height: 100%;"></td>
		</tr>
		<tr style="height: 10%; text-align: center">
			<td><a href="/dreamjourney/info">닉네임(아이디)</a></td>
		</tr>
		<tr style="height: 5%;">
			<td><a href="/dreamjourney/editinfo"><span class="material-symbols-outlined">person</span>내 정보수정</a></td>
		</tr>
		<tr style="height: 5%;">
			<td><a href="/dreamjourney/journey"><span class="material-symbols-outlined">travel_explore</span>내
				여행</a></td>
		</tr>
		<tr style="height: 5%;">
			<td><a href="/dreamjourney/mypage_reserve"><span class="material-symbols-outlined">event_available</span>내
				예매내역</a></td>
		</tr>
		<tr style="height: 5%;">
			<td><a href="/dreamjourney/mypage_write"><span class="material-symbols-outlined">stylus_note</span>내
				작성글</a></td>
		</tr>
		<tr style="height: 5%;">
			<td><a href="/dreamjourney/review"><span class="material-symbols-outlined">comment</span>내 리뷰</a></td>
		</tr>
		<tr style="height: 5%;">
			<td><a href="/dreamjourney/mypage_bookmark"><span class="material-symbols-outlined">star</span>즐겨찾기</a></td>
		</tr>
		<tr style="height: 55%;">
		</tr>
	</table>
</div>










