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

#card-area {
	display: flex;
	justify-content: space-evenly;
}

#content {
	width: auto;
}

.card {
	height: 230px;
	width: 280px;
	border-radius: 15px;
	display: inline-block;
	margin-top: 30px;
	/* 	margin-left: 30px; */
	margin-bottom: 30px;
	position: relative;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	overflow: hidden;
}

.card>table {
	margin: 10px;
	width: 100%;
}

#btn-td {
	text-align: center;
	display: flex;
	justify-content: space-evenly;
}

#btn-edit {
	border: none;
	background-color: #7AB730;
	color: white;
	border-radius: 20px;
}

#btn-delete {
	border: none;
	background-color: #EC4937;
	color: white;
	border-radius: 20px;
}

#btn-share {
	border: none;
	background-color: #FFBF00;
	color: white;
	border-radius: 20px;
}

#btn-add {
	border: none;
	background-color: #5392F9;
	color: white;
	border-radius: 20px;
	margin-left: 25px;
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
				<h3 class="display-4 text-white text-uppercase">제목</h3>

			</div>
		</div>
	</div>
	<!-- Header End -->

	<!-- Blog Start -->

	<div class="container-fluid py-5 mypagecontainer">
		<%@ include file="/resources/inc/mypage_sidemenu.jsp"%>
		<div id="mypage_content">

			<div id="card-area">

				<div class="card">
					<table>
						<tr>
							<td><img src="resources/img/mypage_gwangan.jpg"
								style="max-width: 100%; max-height: 100%;"></td>
						</tr>
						<tr>
							<td>내 생에 마지막 발리 같은 여수 여행</td>
						</tr>
						<tr>
							<td>2023.06.27</td>
						</tr>
						<tr>
							<td id="btn-td">
								<button id="btn-edit">수정</button>
								<button id="btn-delete">삭제</button>
								<button id="btn-share">공유</button>
							</td>
						</tr>
					</table>
				</div>

				<div class="card">
					<table>
						<tr>
							<td><img src="resources/img/mypage_gwangan.jpg"
								style="max-width: 100%; max-height: 100%;"></td>
						</tr>
						<tr>
							<td>내 생에 마지막 발리 같은 여수 여행</td>
						</tr>
						<tr>
							<td>2023.06.27</td>
						</tr>
						<tr>
							<td id="btn-td">
								<button id="btn-edit">수정</button>
								<button id="btn-delete">삭제</button>
								<button id="btn-share">공유</button>
							</td>
						</tr>
					</table>
				</div>

				<div class="card">
					<table>
						<tr>
							<td><img src="resources/img/mypage_gwangan.jpg"
								style="max-width: 100%; max-height: 100%;"></td>
						</tr>
						<tr>
							<td>내 생에 마지막 발리 같은 여수 여행</td>
						</tr>
						<tr>
							<td>2023.06.27</td>
						</tr>
						<tr>
							<td id="btn-td">
								<button id="btn-edit">수정</button>
								<button id="btn-delete">삭제</button>
								<button id="btn-share">공유</button>
							</td>
						</tr>
					</table>
				</div>
			</div>

			<!-- card-area end -->
			<button id="btn-add">여행 등록</button>
		</div>


	</div>
	<!-- Blog End -->
	<%@ include file="/resources/inc/footer.jsp"%>

	<script>
		
	</script>


</body>

</html>






