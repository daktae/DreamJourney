<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	border: 1px solid #CCCCCC;
	border-radius: 20px;
}

.table.reserve_list td, .table.reserve_list td {
	padding: 0.3rem;
}

table.bookmark {
	display: inline;
}

.table.bookmark td, .table.bookmark th {
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
				<button type="button" class="btn btn-primary btn-lg m-3">전체</button>
				<button type="button" class="btn btn-primary btn-lg m-3">교통</button>
				<button type="button" class="btn btn-primary btn-lg m-3">숙소</button>
				<button type="button" class="btn btn-primary btn-lg m-3">액티비티</button>
			</div>

			<c:forEach items="${list}" var="dto">
				<c:if test="${not empty dto.accommodate_name}">
					<table class="table table-borderless bookmark">
						<tr>
							<td colspan="2"><img src="../resources/img/mypage/호텔.jpg"
								width="300" height="200"></td>
						</tr>
						<tr>
							<td>${dto.accommodate_name}</td>
							<td><span class="material-symbols-outlined">star</span>4.8
								(30)</td>
						</tr>
						<tr>
							<td>호텔</td>
							<td>230,000원</td>
						</tr>
					</table>
				</c:if>
				<c:if test="${not empty dto.activity_name}">
					<table class="table table-borderless bookmark">
						<tr>
							<td colspan="2"><img src="../resources/img/mypage/호텔.jpg"
								width="300" height="200"></td>
						</tr>
						<tr>
							<td>${dto.activity_name}</td>
							<td><span class="material-symbols-outlined">star</span>4.8
								(30)</td>
						</tr>
						<tr>
							<td>${dto.activity_category}</td>
							<td><fmt:formatNumber value="${dto.activity_price}" pattern="#,###"/>원</td>
						</tr>
					</table>
				</c:if>
				<c:if test="${not empty dto.food_name}">
					<table class="table table-borderless bookmark">
						<tr>
							<td colspan="2"><img src="../resources/img/mypage/호텔.jpg"
								width="300" height="200"></td>
						</tr>
						<tr>
							<td>${dto.food_name}</td>
							<td><span class="material-symbols-outlined">star</span>4.8
								(30)</td>
						</tr>
						<tr>
							<td>맛집</td>
							<td></td>
						</tr>
					</table>
				</c:if>
				<c:if test="${not empty dto.area_name}">
					<table class="table table-borderless bookmark">
						<tr>
							<td colspan="2"><img src="../resources/img/mypage/호텔.jpg"
								width="300" height="200"></td>
						</tr>
						<tr>
							<td>${dto.area_name}</td>
							<td><span class="material-symbols-outlined">star</span>4.8
								(30)</td>
						</tr>
						<tr>
							<td>관광지</td>
							<td></td>
						</tr>
					</table>
				</c:if>
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
	<!-- Blog End -->
	<%@ include file="/resources/inc/footer.jsp"%>

	<scirpt> </scirpt>
<script>


var xhr = new XMLHttpRequest();
var url = 'http://apis.data.go.kr/1613000/ExpBusInfoService/getStrtpntAlocFndExpbusInfo'; /*URL*/
var queryParams = '?' + encodeURIComponent('serviceKey') + '='+'서비스키'; /*Service Key*/
queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /**/
queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('10'); /**/
queryParams += '&' + encodeURIComponent('_type') + '=' + encodeURIComponent('xml'); /**/
queryParams += '&' + encodeURIComponent('depTerminalId') + '=' + encodeURIComponent('NAEK010'); /**/
queryParams += '&' + encodeURIComponent('arrTerminalId') + '=' + encodeURIComponent('NAEK300'); /**/
queryParams += '&' + encodeURIComponent('depPlandTime') + '=' + encodeURIComponent('20230401'); /**/
queryParams += '&' + encodeURIComponent('busGradeId') + '=' + encodeURIComponent('1'); /**/
xhr.open('GET', url + queryParams);
xhr.onreadystatechange = function () {
    if (this.readyState == 4) {
        alert('Status: '+this.status+'nHeaders: '+JSON.stringify(this.getAllResponseHeaders())+'nBody: '+this.responseText);
    }
};

xhr.send('');

</script>


</body>

</html>






