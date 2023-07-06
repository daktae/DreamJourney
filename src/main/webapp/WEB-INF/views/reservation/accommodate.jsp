<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>DreamJourney > 예약/예매 > 액티비티</title>
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

<!-- Google Icon -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>
<style>
.categoryAll {
	display: flex;
	width: 100%;
	justify-content: center;
}

.category {
	display: flex;
	/* border: 1px solid black; */
	padding: 20px;
	margin: 0 10px;
}

.categoryname {
	font-weight: bold;
	font-size: 25px;
	/* 		margin: 0px 0px 15px 0px; */
	margin: 10px;
}

.sub {
	font-weight: bold;
}

.p1-4, .px-4, .p-4 {
	padding-left: none;
}

.text-truncate {
	font-weight: bold;
	font-size: 25px;
}

.btn-square {
	width: 100px;
}

.text-truncate {
	font-weight: bold;
}

img {
	width: 500px;
}

a:hover {
	text-decoration: none;
}

.row {
	justify-content: center;
}

.team-img {
	width: 255px;
	height: 210px;
}
</style>
<body>
	<!-- accommodate.jsp > 액티비티 페이지 -->

	<!-- http://localhost/dreamjourney/reservation/accommodate -->

	<!-- Topbar Start -->
	<div class="container-fluid bg-light pt-3 d-none d-lg-block">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 text-center text-lg-left mb-2 mb-lg-0">
					<div class="d-inline-flex align-items-center"></div>
				</div>
				<div class="col-lg-6 text-center text-lg-right">
					<div class="d-inline-flex align-items-center">
						<p>
							<a href="*">로그인</a>
						</p>
						<p class="text-body px-3">|</p>
						<p>
							<a href="*">회원가입</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Topbar End -->



	<!-- Navbar Start -->
	<div class="container-fluid position-relative nav-bar p-0">
		<div class="container-lg position-relative p-0 px-lg-3"
			style="z-index: 9;">
			<nav
				class="navbar navbar-expand-lg bg-light navbar-light shadow-lg py-3 py-lg-0 pl-3 pl-lg-5">
				<a href="" class="navbar-brand">
					<h1 class="m-0 text-primary">
						<span class="text-dark">Dream</span>Journey
					</h1>
				</a>
				<button type="button" class="navbar-toggler" data-toggle="collapse"
					data-target="#navbarCollapse">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-between px-5"
					id="navbarCollapse">
					<div class="navbar-nav ml-auto py-0">
						<a href="index.html" class="nav-item nav-link ">홈</a> <a
							href="about.html" class="nav-item nav-link active">예약/예매</a> <a
							href="service.html" class="nav-item nav-link">추천 여행지</a> <a
							href="single.html" class="nav-item nav-link">커뮤니티</a>

						<div class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle"
								data-toggle="dropdown">Contact</a>
							<div class="dropdown-menu border-0 rounded-0 m-0">

								<a href="single.html" class="dropdown-item">공지사항</a> <a
									href="single.html" class="dropdown-item">FAQ/문의</a>
							</div>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</div>
	<!-- Navbar End -->



	<!-- 제목 쓰는곳 -->
	<div class="container-fluid page-header">
		<div class="container">
			<div
				class="d-flex flex-column align-items-center justify-content-center"
				style="min-height: 400px">
				<h3 class="display-4 text-white text-uppercase">숙소</h3>

			</div>
		</div>
	</div>
	<!-- Header End -->

	<!-- Booking Start 검색 바 -->
	<div class="container-fluid booking mt-5 pb-5">
		<div class="container pb-5">
			<div class="bg-light shadow" style="padding: 30px;">
				<div class="row align-items-center" style="min-height: 60px;">
					<div class="col-md-10">
						<div class="row">
							<div class="col-md-4">
								<div class="mb-3 mb-md-0">
									<span class="sub">여행지</span> <input type="text"
										class="form-control  px-4" style="height: 47px;"
										placeholder="어디로 떠나시나요?">
								</div>
							</div>
							<div class="col-md-3">
								<div class="mb-3 mb-md-0">
									<span class="sub">출발일</span>
									<div class="date" id="date1" data-target-input="nearest">
										<input type="text"
											class="form-control p-4 datetimepicker-input"
											placeholder="출발 일" data-target="#date1"
											data-toggle="datetimepicker" />
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="mb-3 mb-md-0">
									<span class="sub">도착일</span>
									<div class="date" id="date2" data-target-input="nearest">
										<input type="text"
											class="form-control p-4 datetimepicker-input"
											placeholder="도착 일" data-target="#date2"
											data-toggle="datetimepicker" />
									</div>
								</div>
							</div>
							<div class="col-md-2">
								<div class="mb-3 mb-md-0">
									<span class="sub">숙박인원</span> <input class="form-control  px-4"
										type="text" style="height: 47px;" placeholder="인원 수">
									</input>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-2">
						<button class="btn btn-primary btn-block" type="submit"
							style="height: 47px; margin-top: -2px;">
							검색
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                            <path
									d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                          </svg>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Booking End -->


	<!-- 카테고리 버튼 -->
	<div class="categoryAll">
	<a class="d-flex align-items-center text-decoration-none bg-white mb-3">
		<div class="categoryname">지역별 인기숙소 보기</div>
		</a>
		<a class="d-flex align-items-center text-decoration-none bg-white mb-3" href="">
		 <div class="category">서울</div>
		</a>
		<a class="d-flex align-items-center text-decoration-none bg-white mb-3" href="">
		<div class="category">제주</div>
		</a>
		<a class="d-flex align-items-center text-decoration-none bg-white mb-3" href="">
		<div class="category">강릉</div>
		</a>
		<a class="d-flex align-items-center text-decoration-none bg-white mb-3" href="">
		<div class="category">부산</div>
		</a>
		<a class="d-flex align-items-center text-decoration-none bg-white mb-3" href="">
		<div class="category">속초</div>
		</a>
		<a class="d-flex align-items-center text-decoration-none bg-white mb-3" href="">
		<div class="category">경주</div>
		</a>
		<a class="d-flex align-items-center text-decoration-none bg-white mb-3" href="">
		<div class="category">그 외 다른 지역</div>
		</a>


	</div>




	<!-- 내용쓰는곳 -->

	<!-- Blog Start -->
	<div class="container-fluid py-5">
		<div class="container py-5">
			<div class="row">
				<div class="col-lg-8">
					<div class="row pb-3">
						<c:forEach items="${list}" var="dto">
							<div class="col-md-6 mb-4 pb-2" >
								<div class="blog-item">
									<div class="position-relative">

										<img class="img-fluid w-100" src="/dreamjourney/resources/img/accommodate/${dto.acco_img}.jpg">

										<%-- <c:forEach items="${imagePaths}" var="i">
											<img class="img-fluid w-100" src="${imagePath}" />
										</c:forEach>  DB에 넣어보기--%>

										<div class="blog-date">
											<h6 class="font-weight-bold mb-n1">최저가</h6>
										</div>
									</div>
									<div class="bg-white p-4">
										<div class="d-flex mb-2">
											<span class="text-primary px-2">|</span> <a
												class="text-primary text-uppercase text-decoration-none"
												href="/dreamjourney/reservation/accommodate_detail?acco_seq=${dto.acco_seq}">${dto.type}</a> <span class="text-primary px-2">|</span>
										</div>
										<a class="h5 m-0 text-decoration-none" href="/dreamjourney/reservation/accommodate_detail?acco_seq=${dto.acco_seq}">${dto.name}</a>
										<a class="text-primary text-uppercase text-decoration-none"
											href="/dreamjourney/reservation/accommodate_detail?acco_seq=${dto.acco_seq}"><br>${dto.address}</a>
									</div>
								</div>
							</div>
						</c:forEach>
						<div class="col-12">
							<nav aria-label="Page navigation">
								<ul
									class="pagination pagination-lg justify-content-center bg-white mb-0"
									style="padding: 30px;">
									<li class="page-item disabled"><a class="page-link"
										href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
											<span class="sr-only">Previous</span>
									</a></li>
									<li class="page-item active"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Next"> <span aria-hidden="true">&raquo;</span>
											<span class="sr-only">Next</span>
									</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>

				<div class="col-lg-4 mt-5 mt-lg-0">

					<!-- Best Post -->
					<div class="mb-5">
						<h4 class="text-uppercase mb-4" style="letter-spacing: 5px;">Best
							</h4>
						<a
							class="d-flex align-items-center text-decoration-none bg-white mb-3"
							href=""> <!-- <img class="img-fluid" src="img/blog-100x100.jpg"
							alt=""> -->
							<div class="pl-3">
								<h6 class="m-1">시그니엘 부산</h6>
								<small>부산 해운대구 달맞이길 30</small>
							</div>
						</a> <a
							class="d-flex align-items-center text-decoration-none bg-white mb-3"
							href=""> <!-- <img class="img-fluid" src="img/blog-100x100.jpg"
							alt=""> -->
							<div class="pl-3">
								<h6 class="m-1">제주 미소 게스트하우스</h6>
								<small>제주특별자치도 제주시 관덕로 41 (일도1동)</small>
							</div>
						</a> <a
							class="d-flex align-items-center text-decoration-none bg-white mb-3"
							href=""> <!-- <img class="img-fluid" src="img/blog-100x100.jpg"
							alt=""> -->
							<div class="pl-3">
								<h6 class="m-1">메리어트 호텔</h6>
								<small>대구 동구 동부로 26길 6</small>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Blog End -->






	<!-- 내용 작성 -->
	<div class="container-fluid py-5" style="height: 100px;"></div>



	<!-- Footer Start -->
	<div class="container-fluid bg-dark text-white-50 px-sm-3   px-lg-5">
		<div class="row pt-5">
			<div class="col-lg-3 col-md-6 mb-5">
				<a href="" class="navbar-brand">
					<h1 class="text-primary">
						<span class="text-white">Dream</span>Journey
					</h1>
				</a>
				<p style="margin-bottom: 0px; font-weight: bold;">고객지원실 운영안내</p>
				<p style="margin-bottom: 0px;">02-3482-4632</p>
				<p style="margin-bottom: 0px;">전화 상담: 09:00 ~ 18:00</p>
				<p style="margin-bottom: 0px;">채팅 상담: 09:00 ~ 20:00</p>

				<h6 class="text-white text-uppercase mt-4 mb-3"
					style="letter-spacing: 5px;">Follow Us</h6>
				<div class="d-flex justify-content-start">
					<a class="btn btn-outline-primary btn-square mr-2" href="#"><i
						class="fab fa-twitter"></i></a> <a
						class="btn btn-outline-primary btn-square mr-2" href="#"><i
						class="fab fa-facebook-f"></i></a> <a
						class="btn btn-outline-primary btn-square mr-2" href="#"><i
						class="fab fa-linkedin-in"></i></a> <a
						class="btn btn-outline-primary btn-square" href="#"><i
						class="fab fa-instagram"></i></a>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 mb-5">
				<h5 class="text-white text-uppercase mb-4">소개</h5>
				<div class="d-flex flex-column justify-content-start">
					<a class="text-white-50 mb-2" href="#"><i
						class="fa fa-angle-right mr-2"></i>회사소개</a> <a
						class="text-white-50 mb-2" href="#"><i
						class="fa fa-angle-right mr-2"></i>채용</a>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 mb-5">
				<h5 class="text-white text-uppercase mb-4">제휴 업체</h5>
				<div class="d-flex flex-column justify-content-start">
					<a class="text-white-50 mb-2" href="#"><i
						class="fa fa-angle-right mr-2"></i>늘봄 실버타운</a> <a
						class="text-white-50 mb-2" href="#"><i
						class="fa fa-angle-right mr-2"></i>늘봄 요양원</a> <a
						class="text-white-50 mb-2" href="#"><i
						class="fa fa-angle-right mr-2"></i>쌍용교육센터</a>

				</div>
			</div>
			<div class="col-lg-3 col-md-6 mb-5">
				<h5 class="text-white text-uppercase mb-4">지원</h5>
				<div class="d-flex flex-column justify-content-start">
					<a class="text-white-50 mb-2" href="#"><i
						class="fa fa-angle-right mr-2"></i>자주 묻는 질문</a> <a
						class="text-white-50 mb-2" href="#"><i
						class="fa fa-angle-right mr-2"></i>최저가 보장제</a>

				</div>
			</div>

		</div>
	</div>



	<!-- Back to Top -->
	<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
		class="fa fa-angle-double-up"></i></a>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="/dreamjourney/resources/lib/easing/easing.min.js"></script>
	<script
		src="/dreamjourney/resources/lib/owlcarousel/owl.carousel.min.js"></script>
	<script
		src="/dreamjourney/resources/lib/tempusdominus/js/moment.min.js"></script>
	<script
		src="/dreamjourney/resources/lib/tempusdominus/js/moment-timezone.min.js"></script>
	<script
		src="/dreamjourney/resources/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

	<!-- Contact Javascript File -->
	<script src="/dreamjourney/resources/mail/jqBootstrapValidation.min.js"></script>
	<script src="/dreamjourney/resources/mail/contact.js"></script>

	<!-- Template Javascript -->
	<script src="/dreamjourney/resources/js/main.js"></script>


	<script>
		/* API 시도 흔적 */
		/*  let result = ${result};
		 
		 let temp = '';
		 
		 $(result.response.body.items).each((index, item) => {
		 	
		 	//console.log(item.romsNm);
		 	temp += `
		 		<div></div>    		
		 		<div class="col-md-6 mb-4 pb-2">
		         <div class="blog-item">
		             <div class="position-relative">
		                 <img class="img-fluid w-100" src="img/blog-1.jpg" alt="">
		                 <div class="blog-date">
		                     <h6 class="font-weight-bold mb-n1">01</h6>
		                     <small class="text-white text-uppercase">Jan</small>
		                 </div>
		             </div>
		             <div class="bg-white p-4">
		                 <div class="d-flex mb-2">
		                     <a class="text-primary text-uppercase text-decoration-none" href="">\${item.romsNm}</a>
		                     <span class="text-primary px-2">|</span>
		                     <a class="text-primary text-uppercase text-decoration-none" href="">Tours & Travel</a>
		                 </div>
		                 <a class="h5 m-0 text-decoration-none" href="">Dolor justo sea kasd lorem clita justo diam amet</a>
		             </div>
		         </div>
		     </div>
		 	`;
		 	
		 });
		 
		 $('.row.pb-3').html(temp); */
	</script>
</body>

</html>





