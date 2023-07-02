<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Dream Journey</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

<!-- Favicon -->
<link href="../asset/img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link
	href="/dreamjourney/resources/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="/dreamjourney/resources/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="/dreamjourney/resources/css/style.css" rel="stylesheet">
<link href="/dreamjourney/resources/css/wanjin.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>
<style>
.mypagecontainer {
	display: flex;
	flex-direction: row;
}

#mypage_content {
	border: 1px solid #CCCCCC;
	width: 75%;
	height: auto;
	border-radius: 20px;
	margin-right: 100px;
}

#content {
	width: auto;
}

.review-box {
	border: 1px solid #CCCCCC;
	border-radius: 20px;
	margin-right: 30px;
	margin-left: 30px;
	margin-top: 15px;
}

.review-box>table {
	width: 100%;
	height: 80px;
	margin: 15px;
}

.review-box>table>tr>td {
	padding: 30px;
}

#btn-edit {
	background-color: #5392F9;
	border: none;
	border-radius: 10px;
	color: white;
}

#btn-delete {
	background-color: #757575;
	border: none;
	border-radius: 10px;
	color: white;
}

.reply {
	background-color: #D9D9D9;
}
</style>
<body>
	<!-- Topbar Start -->
	<%@ include file="/resources/inc/header.jsp"%>

	<!-- Header Start -->
	<div class="container-fluid page-header">
		<div class="container">
			<div
				class="d-flex flex-column align-items-center justify-content-center"
				style="min-height: 400px">
				<h3 class="display-4 text-white text-uppercase">마이페이지</h3>

			</div>
		</div>
	</div>
	<!-- Header End -->

	<!-- Blog Start -->

	<div class="container-fluid py-5 mypagecontainer">
		<%@ include file="/resources/inc/mypage_sidemenu.jsp"%>
		<div id="mypage_content">
			<div style="margin-top: 15px; margin-left: 15px;">내 리뷰</div>

			<div class="review-box">
				<table>
					<colgroup>
						<col width=20%>
						<col width=30%>
						<col width=15%>
						<col width=15%>
						<col width=15%>
					</colgroup>
					<tr>
						<td>★★★★★ 5</td>
						<td>[숙소]휘닉스평창스카이콘도</td>
						<td>23/06/13</td>
						<td>♥︎36</td>
						<td rowspan="2">
							<button id="btn-edit">수정</button>
							<button id="btn-delete">삭제</button>
						</td>
					</tr>
					<tr>
						<td colspan="4">정말좋아요싫어하는부장님께추천어쩌구ipsum</td>
					</tr>
				</table>
			</div>

			<div class="review-box reply">
				<table>
					<tr>
						<td><span class="material-symbols-outlined">
								subdirectory_arrow_right </span>휘닉스평창스카이콘도</td>
					</tr>
					<tr>
						<td>님이만족못하신게 저희탓은아닌것같아요 ^^ 유감</td>
					</tr>
				</table>
			</div>

			<div class="review-box">
				<table>
					<colgroup>
						<col width=20%>
						<col width=30%>
						<col width=15%>
						<col width=15%>
						<col width=15%>
					</colgroup>
					<tr>
						<td>★★★★★ 5</td>
						<td>[숙소]휘닉스평창스카이콘도</td>
						<td>23/06/13</td>
						<td>♥︎36</td>
						<td rowspan="2">
							<button id="btn-edit">수정</button>
							<button id="btn-delete">삭제</button>
						</td>
					</tr>
					<tr>
						<td colspan="4">정말좋아요싫어하는부장님께추천어쩌구ipsum</td>
					</tr>
				</table>
			</div>


		</div>
	</div>
	<!-- Blog End -->
	<%@ include file="/resources/inc/footer.jsp"%>

	<script> </script>


</body>

</html>






