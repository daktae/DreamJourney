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
<!-- Googleicon -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

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
</head>

<body>




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
				<!-- <h3 class="display-4 text-white text-uppercase">제목</h3> -->

			</div>
		</div>
	</div>




	<!-- Header End -->

	<!-- 내용쓰는곳 -->
	<!-- Blog Start -->
	<div class="container-fluid py-5">
		<div class="container py-5">
			<div class="row">
				<div class="col-lg-8">
					<!-- Blog Detail Start -->
					<div class="pb-3">
						<div class="blog-item">
							<div class="position-relative">
								<img class="img-fluid w-100"
									src="/dreamjourney/resources/img/accommodate/${dto.acco_img}.jpg"
									alt="">
								<div class="blog-date">
									<!-- <h6 class="font-weight-bold mb-n1">01</h6>
                                    <small class="text-white text-uppercase">Jan</small> -->
								</div>
							</div>
						</div>
						<div class="bg-white mb-3" style="padding: 30px;">
							<div class="d-flex mb-3">
								<a class="text-primary text-uppercase text-decoration-none"
									href="">${dto.type}</a>
								<!-- <span class="text-primary px-2">|</span>
                                <a class="text-primary text-uppercase text-decoration-none" href="">Tours & Travel</a> -->
							</div>
							<h2 class="mb-3">${dto.name}</h2>
							<p>${dto.address}</p>
							<p>${dto.note}</p>
							<hr>
							<c:forEach items="${list}" var="list">
								<h4 class="mb-3">${list.name}</h4>
								<img class="img-fluid w-100"
									src="/dreamjourney/resources/img/accommodate/${list.room_img}.jpg"
									alt="">
								<h5 class="mb-3">
									<br>수용인원 : ${list.limit}
								</h5>
								<h5 class="mb-3">
									<br>가격 : ${list.price}
								</h5>
								<h5 class="mb-3">
									<br>상세내용
								</h5>
								<p>${list.note}</p>
								<button class="btn btn-primary btn-block" type="submit"
									style="height: 47px; margin-top: -2px;">예약하기</button>
								<hr>
							</c:forEach>
						</div>
					</div>
					<!-- Blog Detail End -->

					<!-- Comment List Start -->
					<div class="bg-white" style="padding: 30px; margin-bottom: 30px;">
						<h4 class="text-uppercase mb-4" style="letter-spacing: 5px;">2
							Comments</h4>
						<div class="media mb-4">
							<span class="material-symbols-outlined"> person </span>
							<div class="media-body">
								<h6>
									<a href="">양진영</a> <small><i>01 Jan 2022</i></small>
								</h6>
								<p>소피텔 앰배서더 서울 호텔은 훌륭한 서비스와 아름다운 전망이 인상적이었습니다. 정말로 편안하고 품위
									있는 숙박을 즐길 수 있었습니다.</p>
							</div>
						</div>
						<div class="media">
							<span class="material-symbols-outlined"> person </span>
							<div class="media-body">
								<h6>
									<a href="">오소엽</a> <small><i>01 Jan 2023</i></small>
								</h6>
								<p>서비스드 레지던스는 넓은 객실과 편리한 시설을 갖춘 곳으로, 장기간의 숙박에 최적입니다. 자유로운
									생활을 즐기면서도 호텔 수준의 서비스를 받을 수 있어서 만족스러웠습니다.</p>
							</div>
						</div>
					</div>
					<!-- Comment List End -->

					<!-- Comment Form Start -->
					<div class="bg-white mb-3" style="padding: 30px;">
						<h4 class="text-uppercase mb-4" style="letter-spacing: 5px;">Leave
							a comment</h4>
						<form>
							<div class="form-group">
								<label for="message">Message</label>
								<textarea id="message" cols="30" rows="5" class="form-control"></textarea>
							</div>
							<div class="form-group mb-0">
								<input type="submit" value="Leave a comment"
									class="btn btn-primary font-weight-semi-bold py-2 px-3">
							</div>
						</form>
					</div>
					<!-- Comment Form End -->
				</div>

				<div class="col-lg-4 mt-5 mt-lg-0">
					<div class="d-flex flex-column text-center bg-white mb-5 py-5 px-4">
						<div class="col-md-10">
							<div class="mb-3 mb-md-0">
								<!-- <span class="sub">출발일</span> -->
								<div class="date" id="date1" data-target-input="nearest">
									<input type="text"
										class="form-control p-4 datetimepicker-input"
										placeholder="출발 일" data-target="#date1"
										data-toggle="datetimepicker" />
								</div>
							</div>
						</div>
						<div class="col-md-10">
							<div class="mb-3 mb-md-0">
								<!-- <span class="sub">도착일</span> -->
								<div class="date" id="date2" data-target-input="nearest">
									<input type="text"
										class="form-control p-4 datetimepicker-input"
										placeholder="도착 일" data-target="#date2"
										data-toggle="datetimepicker" />
								</div>
							</div>
						</div>
						<div class="col-md-10">
							<div class="mb-3 mb-md-0">
								<!-- <span class="sub">숙박인원</span> -->
								<input class="form-control  px-4" type="text"
									style="height: 47px;" placeholder="인원 수"> </input>
							</div>
						</div>
						<div class="col-md-10">
							<div class="mb-3 mb-md-0">
								<select class="form-control  px-4" type="select"
									style="height: 47px;">
									<option value="">방 이름 선택하세요</option>
									<option value="option1">프리미어 코너룸</option>
									<option value="option2">스위트 룸</option>
									<option value="option3">어쩌구 룸</option>
								</select>
							</div>
							<br>
						</div>
						<button class="btn btn-primary btn-block" type="submit"
							style="height: 47px; ">예약하기</button>
						<button class="btn btn-primary btn-block" type="submit"
							style="height: 47px; margin-top: 5px;">즐겨찾기 추가</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Blog End -->



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
</body>

</html>





