<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>TRAVELER - Free Travel Website Template</title>
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

#sidemenu {
	text-align: left;
	width: 100%;
	height: 100%;
}

#mypage_reserve_search {
	margin-top: 30px;
	margin-left: 30px;
}

table.reserve_list {
	border-collapse: collapse;
	border-radius: 20px;
	border-style: hidden;
	box-shadow: 0 0 0 1px #CCC;
}

.table.reserve_list td, .table.reserve_list td {
	padding: 0.3rem;
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







			<div id="mypage_reserve_search">
				<button type="button" class="btn btn-primary btn-lg m-3"
					id="btn-transport">교통</button>
				<button type="button" class="btn btn-primary btn-lg m-3"
					id="btn-accommodate">숙소</button>
				<button type="button" class="btn btn-primary btn-lg m-3"
					id="btn-activity">액티비티</button>
			</div>

			<div class="container-fluid mt-5">
				<c:forEach items="${tlist}" var="tdto">
					<table
						class="table table-borderless reserve_list table-height table-transport">
						<tr>
							<td style="width: 10%; text-align: center; vertical-align: middle;">예약완료</td>
							<td style="width: 70%;" colspan="3">${tdto.regdate}</td>
							<td rowspan="3"
								style="text-align: center; vertical-align: middle; width: 20%"><a
								href="mypage_reserve_view?treserve_seq=${tdto.treserve_seq}&rreserve_seq=&areserve_seq=" class="btn btn-primary">상세보기</a>
								<button type="button" class="btn btn-danger">예매취소</button></td>
						</tr>
						<tr>
							<td rowspan="2"
								style="text-align: center; vertical-align: middle;">교통</td>
							<td style="width: 25%;">${tdto.type}</td>
							<td style="width: 25%;">${tdto.tran_date}${tdto.begin}</td>
							<td style="width: 10%;">1명</td>

						</tr>
						<tr>
							<td style="width: 25%;">LJE123</td>
							<td style="width: 25%;">${tdto.departure}> ${tdto.destination}</td>
							<td style="width: 10%;">${tdto.price}원</td>
						</tr>
					</table>
				</c:forEach>
				<c:forEach items="${alist}" var="adto">
					<table
						class="table table-borderless reserve_list table-height table-accommodate">
						<tr>
							<td style="width: 10%; text-align: center; vertical-align: middle;">예약완료</td>
							<td colspan="3" style="width: 60%">${adto.regdate}</td>
							<td rowspan="3"
								style="text-align: center; vertical-align: middle; width:30%;"><a
								href="mypage_reserve_view?treserve_seq=&rreserve_seq=${adto.rreserve_seq}&areserve_seq=" class="btn btn-primary">상세보기</a>
								<button type="button" class="btn btn-danger">예매취소</button></td>
						</tr>
						<tr>
							<td rowspan="2"
								style="text-align: center; vertical-align: middle;">숙소</td>
							<td style="width: 25%;">${adto.type}</td>
							<td style="width: 25%;">${adto.rdate}</td>
							<td style="width: 10%;">${adto.limit}명</td>

						</tr>
						<tr>
							<td style="width: 25%;">LJE123</td>
							<td style="width: 25%;">${adto.address}</td>
							<td style="width: 10%;">${adto.price}원</td>
						</tr>
					</table>
				</c:forEach>
				<c:forEach items="${aclist}" var="acdto">
					<table
						class="table table-borderless reserve_list table-height table-activity">
						<tr>
							<td style="width: 10%;text-align: center; vertical-align: middle;">예약완료</td>
							<td style="width: 70%;" colspan="3">${acdto.regdate}</td>
							<td rowspan="3"
								style="text-align: center; vertical-align: middle; width:20%;"><a
								href="mypage_reserve_view?treserve_seq=&rreserve_seq=&areserve_seq=${acdto.areserve_seq}" class="btn btn-primary">상세보기</a>
								<button type="button" class="btn btn-danger">예매취소</button></td>
						</tr>
						<tr>
							<td rowspan="2"
								style="text-align: center; vertical-align: middle;">숙소</td>
							<td style="width: 25%;">${acdto.category}</td>
							<td style="width: 25%;">${acdto.adate}</td>
							<td style="width: 10%;">1명</td>

						</tr>
						<tr>
							<td style="width: 25%;">${acdto.title}</td>
							<td style="width: 25%;">${acdto.address}</td>
							<td style="width: 10%;">${acdto.price}원</td>
						</tr>
					</table>
				</c:forEach>
				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="#">Previous</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul>
				</nav>

			</div>









		</div>
	</div>
	<!-- Blog End -->
	<%@ include file="/resources/inc/footer.jsp"%>

	<script>
		$(document).ready(function() {
			// Hide all tables initially
			$(".table-accommodate").hide();
			$(".table-activity").hide();
			$(".table-transport").show();

			$("#btn-accommodate").click(function() {
				$(".table-accommodate").show();
				$(".table-activity").hide();
				$(".table-transport").hide();
			});

			$("#btn-activity").click(function() {
				$(".table-accommodate").hide();
				$(".table-activity").show();
				$(".table-transport").hide();
			});

			$("#btn-transport").click(function() {
				$(".table-accommodate").hide();
				$(".table-activity").hide();
				$(".table-transport").show();
			});

		});
	</script>


</body>

</html>






