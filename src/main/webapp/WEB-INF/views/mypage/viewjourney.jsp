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
	padding: 30px;
}

#content {
	width: auto;
}

#journey {
	width: 800px;
	margin-right: 20px;
	margin-left: 20px;
}

#info {
	text-align: right;
	padding-right: 10px;
}

#info>span {
	margin-left: 5px;
}

#visited>div {
	display: flex;
	justify-content: space-evenly;
}

#order {
	display: inline-block;
	background-color: #7487E9;
	color: white;
	border-radius: 20px;
	width: 20px;
	height: 20px;
	text-align: center;
}

#category {
	font-size: 10px;
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

			<h3>내생애 마지막 발리 같은 여수 여행</h3>
			<hr>
			<table id="journey">
				<tr>
					<td>고슴도치 ・ 2023.06.30</td>
					<td id="info"><span>조회수 600,000</span> <span>︎♥6</span> <span>★3</span></td>
				</tr>
				<tr>
					<td colspan="2">여행 일자: 2023.06.27 - 2023.06.29</td>
				</tr>
				<tr>
					<td colspan="2"><h6>1일차 06.27</h6></td>
				</tr>
				<tr>
					<td colspan="2"><img src="../resources/img/mypage/map.png" width="480" 
							height="260"></td>
				</tr>
				<tr>
					<td colspan="2">
						<div id="visited" style="background-color: #F0F0F0;">
							<div>
								<span id="order"> 1 </span> <span>아쿠아플래닛 여수</span> <span
									id=category>테마/체험</span>
							</div>
							<div>
								<span id="order"> 2 </span> <span>아쿠아플래닛 여수</span> <span
									id=category>테마/체험</span>
							</div>
							<div>
								<span id="order"> 3 </span> <span>아쿠아플래닛 여수</span> <span
									id=category>테마/체험</span>
							</div>
						</div>
					</td>
				</tr>
			</table>

		</div>
	</div>
	<!-- Blog End -->
	<%@ include file="/resources/inc/footer.jsp"%>

	<scirpt> </scirpt>


</body>

</html>






