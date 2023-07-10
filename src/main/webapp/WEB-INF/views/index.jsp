<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@ include file="/resources/inc/asset.jsp"%>

</head>
<style>
.form-control:disabled, .form-control[readonly] {
	background-color: #fff;
	opacity: 1;
}

.pb-5, .py-5 {
	padding-bottom: 0px !important;
}

.padleft {
	padding-left: 2.5rem !important;
}

h6 {
<<<<<<< HEAD
display: inline;
    position: relative;
    top: -8px;
    left: -20px;
}

.material-symbols-outlined {
	font-size:30px;
}

.col2 {
	display:flex; 
	align-items:center;
	flex-basis: 0;
    flex-grow: 1;
    max-width: 100%;
}

a:hover { color:#7AB730 !important; }

.active {
	color:#7AB730 !important;
}

=======
	display: inline;
	position: relative;
	top: -8px;
	left: -20px;
}

.material-symbols-outlined {
	font-size: 30px;
}

.col2 {
	display: flex;
	align-items: center;
	flex-basis: 0;
	flex-grow: 1;
	max-width: 100%;
}

a:hover {
	color: #7AB730 !important;
}

.active {
	color: #7AB730 !important;
}
>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
</style>

<body>
	<%@ include file="/resources/inc/header.jsp"%>
	<!-- Carousel Start -->
<<<<<<< HEAD
=======

	
>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
	<div class="container-fluid p-0">
		<div id="header-carousel" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="w-100 w-height"
						src="/dreamjourney/resources/img/carousel-1.jpg" alt="Image">
					<div
						class="carousel-caption d-flex flex-column align-items-center justify-content-center">
						<div class="p-3" style="max-width: 900px;">
							<h4 class="text-white text-uppercase mb-md-3"></h4>
							<h1 class="display-3 text-white mb-md-4"></h1>

						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img class="w-100 w-height"
						src="/dreamjourney/resources/img/carousel-2.jpg" alt="Image">
					<div
						class="carousel-caption d-flex flex-column align-items-center justify-content-center">
						<div class="p-3" style="max-width: 900px;">
							<h4 class="text-white text-uppercase mb-md-3"></h4>
							<h1 class="display-3 text-white mb-md-4"></h1>
						</div>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#header-carousel"
				data-slide="prev">
				<div class="btn btn-dark" style="width: 45px; height: 45px;">
					<span class="carousel-control-prev-icon mb-n2"></span>
				</div>
			</a> <a class="carousel-control-next" href="#header-carousel"
				data-slide="next">
				<div class="btn btn-dark" style="width: 45px; height: 45px;">
					<span class="carousel-control-next-icon mb-n2"></span>
				</div>
			</a>
		</div>
	</div>
	<!-- Carousel End -->


	<!-- Booking Start -->
<<<<<<< HEAD
	<div class="container-fluid booking mt-5 pb-5">
		<div class="container pb-5">
			<div class="bg-light shadow" style="padding: 30px; margin:0 auto; width:800px;">
  <div class="row" style="margin-left:30px;">
    <div class="col2">
    <a href="" onclick="searchLod(this)" class="active" style="color:black;">
      <span class="material-symbols-outlined">
apartment <h6 style="display:inline;">숙소</h6>
</span>
	</a>
    </div>
    <div class="col2">
    <a href="#" onclick="searchLod2(this)" style="color:black;">
      <span class="material-symbols-outlined">
flight_takeoff
	<h6 style="display:inline;">항공</h6>
</span>
</a>
    </div>
    <div class="col2">
    <a href="#" onclick="searchLod2(this)" style="color:black;">
<span class="material-symbols-outlined">
directions_bus
	<h6 style="display:inline;">버스</h6>
</span>
</a>
    </div>
     <div class="col2">
     <a href="#" onclick="searchLod2(this)" style="color:black;">
<span class="material-symbols-outlined">
tram
<h6 style="display:inline;">기차</h6>
</span>
</a>
    </div>
     <div class="col2">
     <a href="#" onclick="searchLod3(this)" style="color:black;">
            <span class="material-symbols-outlined">
attractions
<h6 style="display:inline;">액티비티</h6>
</span>
</a>
    </div>
  </div>
			</div>
			<div class="bg-light shadow" id="searchbar1" style="padding: 30px; ">
				<div class="row align-items-center" style="min-height: 60px;">
					<div class="col-md-10">
						<div class="row">
							<div class="col-md-4">



								<input class="form-control p-4" type="text"
									placeholder="어디로 떠나실건가요?">

							</div>

							<div class="col-md-3">
								<input class="form-control p-4" id="checkin"
									pattern="\d{4}-\d{2}-\d{2}" placeholder="체크인" required
									type="text" value="">
							</div>


							<div class="col-md-3">
								<input class="form-control p-4" id="checkout"
									pattern="\d{4}-\d{2}-\d{2}" placeholder="체크아웃" required
									type="text" value="">
=======
<!-- 전체 검색바 시작 -->
	<div class="container-fluid booking mt-5 pb-5">
		<div class="container pb-5">
			<div class="bg-light shadow"
				style="padding: 30px; margin: 0 auto; width: 800px;">
				<div class="row" style="margin-left: 30px;">
					<div class="col2">
						<a href="" onclick="searchLod(this)" class="active"
							style="color: black;"> <span
							class="material-symbols-outlined"> apartment
								<h6 style="display: inline;">숙소</h6>
						</span>
						</a>
					</div>
					<div class="col2">
						<a href="#" onclick="searchLod2(this)" style="color: black;">
							<span class="material-symbols-outlined"> flight_takeoff
								<h6 style="display: inline;">항공</h6>
						</span>
						</a>
					</div>
					<div class="col2">
						<a href="#" onclick="searchLod3(this)" style="color: black;">
							<span class="material-symbols-outlined"> directions_bus
								<h6 style="display: inline;">버스</h6>
						</span>
						</a>
					</div>
					<div class="col2">
						<a href="#" onclick="searchLod4(this)" style="color: black;">
							<span class="material-symbols-outlined"> tram
								<h6 style="display: inline;">기차</h6>
						</span>
						</a>
					</div>
					<div class="col2">
						<a href="#" onclick="searchLod5(this)" style="color: black;">
							<span class="material-symbols-outlined"> attractions
								<h6 style="display: inline;">액티비티</h6>
						</span>
						</a>
					</div>
				</div>
			</div>
			
<!-- 숙소검색 검색바 -->
			<form action="/dreamjourney/search" method="GET">
				<div class="bg-light shadow" id="searchbar1" style="padding: 30px;">
					<div class="row align-items-center" style="min-height: 60px;">
						<div class="col-md-10">
							<div class="row">
								<div class="col-md-4">



									<input class="form-control p-4" type="text" name="address"
										required placeholder="어디로 떠나실 건가요?">

								</div>

								<div class="col-md-3">
									<input class="form-control p-4" id="checkin"
										pattern="\d{4}-\d{2}-\d{2}" placeholder="체크인" required
										type="text" value="">
								</div>


								<div class="col-md-3">
									<input class="form-control p-4" id="checkout"
										pattern="\d{4}-\d{2}-\d{2}" placeholder="체크아웃" required
										type="text" value="">
								</div>


								<div class="col-md-2">
									<div class="mb-3 mb-md-0">
										<input class="form-control p-4" type="text" required
											placeholder="인원 수" name="limit"
											oninput="this.value = this.value.replace(/\D/g, '')">
									</div>
								</div>
							</div>
						</div>


						<div class="col-md-2">
							<button class="btn btn-primary btn-block" type="submit"
								id="searchsubmit" style="height: 47px; margin-top: -2px;">
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
			</form>
<!-- 숙소검색 검색바 끝 -->
<!-- 액티비티 검색바 -->			
			<form method="get" action="/dreamjourney/activitywj" onsubmit="return checkInputs(event);">
			<div class="bg-light shadow" id="searchbar5"
				style="padding: 30px; display: none;">
				<div class="row align-items-center" style="min-height: 60px;">
					<div class="col-md" style="max-width: 80%;">
						<div class="row" style="width: 60rem;">
							<div class="col-md" style="width: 70%;">

								<input class="form-control p-4" style="width: 50em;" type="text"
									placeholder="도시 검색" id="searchcity" name="address">
									<input class="form-control p-4" style="width: 50em;" type="text"
									placeholder="액티비티 검색" id="searchactivity" name="title">

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
			</form>
<!-- 액티비티 검색바 끝 -->	
<!-- 항공권 검색바 -->	
						<form action="/dreamjourney/searchairplane" method="GET">
			<div class="bg-light shadow" id="searchbar2"
				style="padding: 30px; width:100%; display: none;">
				<div class="row align-items-center" style="min-height: 60px;">
					<div class="col-md-10">
						<div class="row">
							<div class="col-md-3">

								<input class="form-control p-4" type="text" required placeholder="출발지" name="departure">

							</div>
														<div class="col-md-3">

								<input class="form-control p-4" type="text" required placeholder="도착지" name="destination">

							</div>

							<div class="col-md-4">
								<input class="form-control p-4" id="startdate"
									pattern="\d{4}-\d{2}-\d{2}" placeholder="출발일" required
									type="text" value="" name="tran_date"> 
>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
							</div>


							<div class="col-md-2">
								<div class="mb-3 mb-md-0">
<<<<<<< HEAD
									<input class="form-control p-4" type="text" placeholder="인원 수">
=======
									<input class="form-control p-4" type="text" placeholder="인원 수" name="limit">
>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-2">
<<<<<<< HEAD
						<button class="btn btn-primary btn-block" type="submit"
=======
						<button class="btn btn-primary btn-block searchtrans" type="submit"
>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
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
<<<<<<< HEAD
			<div class="bg-light shadow" id="searchbar3" style="padding: 30px; display:none;">
				<div class="row align-items-center" style="min-height: 60px;">
					<div class="col-md" style="max-width:80%;">
						<div class="row" style="width:60rem;">
							<div class="col-md" style="width:70%;">

								<input class="form-control p-4" style="width:50em;" type="text" 
									placeholder="도시/액티비티 검색">

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
			<div class="bg-light shadow" id="searchbar2" style="padding: 30px; display:none;">
				<div class="row align-items-center" style="min-height: 60px;">
					<div class="col-md-10">
						<div class="row">
							<div class="col-md-4">

								<input class="form-control p-4" type="text"
									placeholder="서울">

							</div>

							<div class="col-md-3">
								<input class="form-control p-4" id="startdate"
									pattern="\d{4}-\d{2}-\d{2}" placeholder="출발일" required
									type="text" value="">
							</div>


							<div class="col-md-3">
								<input class="form-control p-4" id="enddate"
									pattern="\d{4}-\d{2}-\d{2}" placeholder="도착일" required
									type="text" value="">
=======
			</form>
<!-- 항공권 검색바 끝-->		
<!-- 버스 검색바 -->	
			<form action="/dreamjourney/searchbus" method="GET">
			<div class="bg-light shadow" id="searchbar3"
				style="padding: 30px; width:100%; display: none;">
				<div class="row align-items-center" style="min-height: 60px;">
					<div class="col-md-10">
						<div class="row">
							<div class="col-md-3">

								<input class="form-control p-4" type="text" required placeholder="출발지" name="departure">

							</div>
														<div class="col-md-3">

								<input class="form-control p-4" type="text" required placeholder="도착지" name="destination">

							</div>

							<div class="col-md-4">
								<input class="form-control p-4" id="startdate3" 
									pattern="\d{4}-\d{2}-\d{2}" placeholder="출발일" required
									type="text" value="" name="tran_date"> 
							</div>


							<div class="col-md-2">
								<div class="mb-3 mb-md-0">
									<input class="form-control p-4" type="text" placeholder="인원 수" name="limit">
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-2">
						<button class="btn btn-primary btn-block searchtrans3" type="submit"
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
			</form>
<!-- 버스 검색바 끝-->				
<!-- 기차 검색바 -->	
			<form action="/dreamjourney/searchtrain" method="GET">
			<div class="bg-light shadow" id="searchbar4"
				style="padding: 30px; width:100%; display: none;">
				<div class="row align-items-center" style="min-height: 60px;">
					<div class="col-md-10">
						<div class="row">
							<div class="col-md-3">

								<input class="form-control p-4" type="text" required placeholder="출발지" name="departure">

							</div>
														<div class="col-md-3">

								<input class="form-control p-4" type="text" required placeholder="도착지" name="destination">

							</div>

							<div class="col-md-4">
								<input class="form-control p-4" id="startdate4"
									pattern="\d{4}-\d{2}-\d{2}" placeholder="출발일" required
									type="text" value="" name="tran_date"> 
>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
							</div>


							<div class="col-md-2">
								<div class="mb-3 mb-md-0">
<<<<<<< HEAD
									<input class="form-control p-4" type="text" placeholder="인원 수">
=======
									<input class="form-control p-4" type="text" placeholder="인원 수" name="limit">
>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-2">
<<<<<<< HEAD
						<button class="btn btn-primary btn-block" type="submit"
=======
						<button class="btn btn-primary btn-block searchtrans4" type="submit"
>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
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
<<<<<<< HEAD
		</div>
	</div>
=======
			</form>
<!-- 기차 검색바 끝-->			
		</div>
	</div>
<!-- 전체 검색바 끝 -->
>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
	<!-- Booking End -->


	<!-- Package Start -->
	<div class="container-fluid py-5">
		<div class="container pt-5 pb-3">
			<div class="text-center mb-3 pb-3">
				<h1>추천 투어 패키지</h1>
			</div>
			<div id="packageSlider" class="carousel slide" data-ride="false">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="row">
							<div class="col-lg-4 col-md-6 mb-4">
								<div class="package-item bg-white mb-2">
									<img class="img-fluid"
										src="/dreamjourney/resources/img/package-1.jpg" alt="">
									<div class="p-4">
										<div class="d-flex justify-content-between mb-3">
											<small class="m-0"><i
												class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
											<small class="m-0"><i
												class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small> <small
												class="m-0"><i class="fa fa-user text-primary mr-2"></i>2
												Person</small>
										</div>
										<a class="h5 text-decoration-none" href="">Discover
											amazing places of the world with us</a>
										<div class="border-top mt-4 pt-4">
											<div class="d-flex justify-content-between">
												<h6 class="m-0">
													<i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small>
												</h6>
												<h5 class="m-0">$350</h5>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 mb-4">
								<div class="package-item bg-white mb-2">
									<img class="img-fluid"
										src="/dreamjourney/resources/img/package-1.jpg" alt="">
									<div class="p-4">
										<div class="d-flex justify-content-between mb-3">
											<small class="m-0"><i
												class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
											<small class="m-0"><i
												class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small> <small
												class="m-0"><i class="fa fa-user text-primary mr-2"></i>2
												Person</small>
										</div>
										<a class="h5 text-decoration-none" href="">Discover
											amazing places of the world with us</a>
										<div class="border-top mt-4 pt-4">
											<div class="d-flex justify-content-between">
												<h6 class="m-0">
													<i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small>
												</h6>
												<h5 class="m-0">$350</h5>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 mb-4">
								<div class="package-item bg-white mb-2">
									<img class="img-fluid"
										src="/dreamjourney/resources/img/package-1.jpg" alt="">
									<div class="p-4">
										<div class="d-flex justify-content-between mb-3">
											<small class="m-0"><i
												class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
											<small class="m-0"><i
												class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small> <small
												class="m-0"><i class="fa fa-user text-primary mr-2"></i>2
												Person</small>
										</div>
										<a class="h5 text-decoration-none" href="">Discover
											amazing places of the world with us</a>
										<div class="border-top mt-4 pt-4">
											<div class="d-flex justify-content-between">
												<h6 class="m-0">
													<i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small>
												</h6>
												<h5 class="m-0">$350</h5>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="row">
							<div class="col-lg-4 col-md-6 mb-4">
								<div class="package-item bg-white mb-2">
									<img class="img-fluid"
										src="/dreamjourney/resources/img/package-1.jpg" alt="">
									<div class="p-4">
										<div class="d-flex justify-content-between mb-3">
											<small class="m-0"><i
												class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
											<small class="m-0"><i
												class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small> <small
												class="m-0"><i class="fa fa-user text-primary mr-2"></i>2
												Person</small>
										</div>
										<a class="h5 text-decoration-none" href="">Discover
											amazing places of the world with us</a>
										<div class="border-top mt-4 pt-4">
											<div class="d-flex justify-content-between">
												<h6 class="m-0">
													<i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small>
												</h6>
												<h5 class="m-0">$350</h5>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 mb-4">
								<div class="package-item bg-white mb-2">
									<img class="img-fluid"
										src="/dreamjourney/resources/img/package-1.jpg" alt="">
									<div class="p-4">
										<div class="d-flex justify-content-between mb-3">
											<small class="m-0"><i
												class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
											<small class="m-0"><i
												class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small> <small
												class="m-0"><i class="fa fa-user text-primary mr-2"></i>2
												Person</small>
										</div>
										<a class="h5 text-decoration-none" href="">Discover
											amazing places of the world with us</a>
										<div class="border-top mt-4 pt-4">
											<div class="d-flex justify-content-between">
												<h6 class="m-0">
													<i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small>
												</h6>
												<h5 class="m-0">$350</h5>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 mb-4">
								<div class="package-item bg-white mb-2">
									<img class="img-fluid"
										src="/dreamjourney/resources/img/package-1.jpg" alt="">
									<div class="p-4">
										<div class="d-flex justify-content-between mb-3">
											<small class="m-0"><i
												class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
											<small class="m-0"><i
												class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small> <small
												class="m-0"><i class="fa fa-user text-primary mr-2"></i>2
												Person</small>
										</div>
										<a class="h5 text-decoration-none" href="">Discover
											amazing places of the world with us</a>
										<div class="border-top mt-4 pt-4">
											<div class="d-flex justify-content-between">
												<h6 class="m-0">
													<i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small>
												</h6>
												<h5 class="m-0">$350</h5>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<a class="btn btn-dark carousel-control-prev" href="#packageSlider"
					role="button" data-slide="prev"
					style="width: 45px; height: 45px; margin-top: 95px; margin-left: 10px;">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">이전</span>
				</a> <a class="btn btn-dark carousel-control-next" href="#packageSlider"
					role="button" data-slide="next"
					style="width: 45px; height: 45px; margin-top: 95px; margin-right: 10px;">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">다음</span>
				</a>
			</div>
		</div>
	</div>



	<!-- Package End -->


	<!-- Destination Start -->
	<div class="container-fluid py-5">
		<div class="container pt-5 pb-3">
			<div class="text-center mb-3 pb-3">
				<h1>베스트 여행지</h1>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6 mb-4">
					<div
						class="destination-item position-relative overflow-hidden mb-2">
						<img class="img-fluid"
							src="/dreamjourney/resources/img/destination-1.jpg" alt="">
						<a class="destination-overlay text-white text-decoration-none"
							href="">
							<h5 class="text-white">서울</h5> <span>SEOUL</span>
						</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-4">
					<div
						class="destination-item position-relative overflow-hidden mb-2">
						<img class="img-fluid"
							src="/dreamjourney/resources/img/destination-2.jpg" alt="">
						<a class="destination-overlay text-white text-decoration-none"
							href="">
							<h5 class="text-white">부산</h5> <span>BUSAN</span>
						</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-4">
					<div
						class="destination-item position-relative overflow-hidden mb-2">
						<img class="img-fluid"
							src="/dreamjourney/resources/img/destination-3.jpg" alt="">
						<a class="destination-overlay text-white text-decoration-none"
							href="">
							<h5 class="text-white">성심당</h5> <span>BAKERY</span>
						</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-4">
					<div
						class="destination-item position-relative overflow-hidden mb-2">
						<img class="img-fluid"
							src="/dreamjourney/resources/img/destination-4.jpg" alt="">
						<a class="destination-overlay text-white text-decoration-none"
							href="">
							<h5 class="text-white">제주</h5> <span>JEJU</span>
						</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-4">
					<div
						class="destination-item position-relative overflow-hidden mb-2">
						<img class="img-fluid"
							src="/dreamjourney/resources/img/destination-5.jpg" alt="">
						<a class="destination-overlay text-white text-decoration-none"
							href="">
							<h5 class="text-white">여수</h5> <span>YEOSU</span>
						</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-4">
					<div
						class="destination-item position-relative overflow-hidden mb-2">
						<img class="img-fluid"
							src="/dreamjourney/resources/img/destination-6.jpg" alt="">
						<a class="destination-overlay text-white text-decoration-none"
							href="">
							<h5 class="text-white">강릉</h5> <span>KANGLEUNG</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Destination Start -->

	<!-- Packages Start -->
	<div class="container-fluid py-5">
		<div class="container pt-5 pb-3">
			<div class="text-center mb-3 pb-3">
				<h1>베스트 액티비티</h1>
			</div>
			<div id="activitySlider" class="carousel slide" data-ride="false">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="row">
							<div class="col-lg-4 col-md-6 mb-4">
								<div class="package-item bg-white mb-2">
									<img class="img-fluid"
										src="/dreamjourney/resources/img/package-1.jpg" alt="">
									<div class="p-4">
										<div class="d-flex justify-content-between mb-3">
											<small class="m-0"><i
												class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
											<small class="m-0"><i
												class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small> <small
												class="m-0"><i class="fa fa-user text-primary mr-2"></i>2
												Person</small>
										</div>
										<a class="h5 text-decoration-none" href="">Discover
											amazing places of the world with us</a>
										<div class="border-top mt-4 pt-4">
											<div class="d-flex justify-content-between">
												<h6 class="m-0">
													<i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small>
												</h6>
												<h5 class="m-0">$350</h5>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 mb-4">
								<div class="package-item bg-white mb-2">
									<img class="img-fluid"
										src="/dreamjourney/resources/img/package-1.jpg" alt="">
									<div class="p-4">
										<div class="d-flex justify-content-between mb-3">
											<small class="m-0"><i
												class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
											<small class="m-0"><i
												class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small> <small
												class="m-0"><i class="fa fa-user text-primary mr-2"></i>2
												Person</small>
										</div>
										<a class="h5 text-decoration-none" href="">Discover
											amazing places of the world with us</a>
										<div class="border-top mt-4 pt-4">
											<div class="d-flex justify-content-between">
												<h6 class="m-0">
													<i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small>
												</h6>
												<h5 class="m-0">$350</h5>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 mb-4">
								<div class="package-item bg-white mb-2">
									<img class="img-fluid"
										src="/dreamjourney/resources/img/package-1.jpg" alt="">
									<div class="p-4">
										<div class="d-flex justify-content-between mb-3">
											<small class="m-0"><i
												class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
											<small class="m-0"><i
												class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small> <small
												class="m-0"><i class="fa fa-user text-primary mr-2"></i>2
												Person</small>
										</div>
										<a class="h5 text-decoration-none" href="">Discover
											amazing places of the world with us</a>
										<div class="border-top mt-4 pt-4">
											<div class="d-flex justify-content-between">
												<h6 class="m-0">
													<i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small>
												</h6>
												<h5 class="m-0">$350</h5>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="row">
							<div class="col-lg-4 col-md-6 mb-4">
								<div class="package-item bg-white mb-2">
									<img class="img-fluid"
										src="/dreamjourney/resources/img/package-1.jpg" alt="">
									<div class="p-4">
										<div class="d-flex justify-content-between mb-3">
											<small class="m-0"><i
												class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
											<small class="m-0"><i
												class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small> <small
												class="m-0"><i class="fa fa-user text-primary mr-2"></i>2
												Person</small>
										</div>
										<a class="h5 text-decoration-none" href="">Discover
											amazing places of the world with us</a>
										<div class="border-top mt-4 pt-4">
											<div class="d-flex justify-content-between">
												<h6 class="m-0">
													<i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small>
												</h6>
												<h5 class="m-0">$350</h5>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 mb-4">
								<div class="package-item bg-white mb-2">
									<img class="img-fluid"
										src="/dreamjourney/resources/img/package-1.jpg" alt="">
									<div class="p-4">
										<div class="d-flex justify-content-between mb-3">
											<small class="m-0"><i
												class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
											<small class="m-0"><i
												class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small> <small
												class="m-0"><i class="fa fa-user text-primary mr-2"></i>2
												Person</small>
										</div>
										<a class="h5 text-decoration-none" href="">Discover
											amazing places of the world with us</a>
										<div class="border-top mt-4 pt-4">
											<div class="d-flex justify-content-between">
												<h6 class="m-0">
													<i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small>
												</h6>
												<h5 class="m-0">$350</h5>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 mb-4">
								<div class="package-item bg-white mb-2">
									<img class="img-fluid"
										src="/dreamjourney/resources/img/package-1.jpg" alt="">
									<div class="p-4">
										<div class="d-flex justify-content-between mb-3">
											<small class="m-0"><i
												class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
											<small class="m-0"><i
												class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small> <small
												class="m-0"><i class="fa fa-user text-primary mr-2"></i>2
												Person</small>
										</div>
										<a class="h5 text-decoration-none" href="">Discover
											amazing places of the world with us</a>
										<div class="border-top mt-4 pt-4">
											<div class="d-flex justify-content-between">
												<h6 class="m-0">
													<i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small>
												</h6>
												<h5 class="m-0">$350</h5>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<a class="btn btn-dark carousel-control-prev" href="#activitySlider"
					role="button" data-slide="prev"
					style="width: 45px; height: 45px; margin-top: 95px; margin-left: 10px;">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">이전</span>
				</a> <a class="btn btn-dark carousel-control-next"
					href="#activitySlider" role="button" data-slide="next"
					style="width: 45px; height: 45px; margin-top: 95px; margin-right: 10px;">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">다음</span>
				</a>
			</div>
		</div>
	</div>
	<!-- Packages End -->

	<!-- Team Start -->



	<!-- Testimonial Start -->
	<div class="container-fluid py-5">
		<div class="container py-5">
			<div class="text-center mb-3 pb-3">
				<h1>전국 여행객의 생생 이용후기</h1>
			</div>
			<div class="owl-carousel testimonial-carousel">
				<div class="text-center pb-4">
					<img class="img-fluid mx-auto"
						src="/dreamjourney/resources/img/testimonial-1.jpg"
						style="width: 100px; height: 100px;">
					<div class="testimonial-text bg-white p-4 mt-n5">
						<p class="mt-5">Dolor et eos labore, stet justo sed est sed.
							Diam sed sed dolor stet amet eirmod eos labore diam</p>
						<h5 class="text-truncate">Client Name</h5>
						<span>Profession</span>
					</div>
				</div>
				<div class="text-center">
					<img class="img-fluid mx-auto"
						src="/dreamjourney/resources/img/testimonial-2.jpg"
						style="width: 100px; height: 100px;">
					<div class="testimonial-text bg-white p-4 mt-n5">
						<p class="mt-5">Dolor et eos labore, stet justo sed est sed.
							Diam sed sed dolor stet amet eirmod eos labore diam</p>
						<h5 class="text-truncate">Client Name</h5>
						<span>Profession</span>
					</div>
				</div>
				<div class="text-center">
					<img class="img-fluid mx-auto"
						src="/dreamjourney/resources/img/testimonial-3.jpg"
						style="width: 100px; height: 100px;">
					<div class="testimonial-text bg-white p-4 mt-n5">
						<p class="mt-5">Dolor et eos labore, stet justo sed est sed.
							Diam sed sed dolor stet amet eirmod eos labore diam</p>
						<h5 class="text-truncate">Client Name</h5>
						<span>Profession</span>
					</div>
				</div>
				<div class="text-center">
					<img class="img-fluid mx-auto"
						src="/dreamjourney/resources/img/testimonial-4.jpg"
						style="width: 100px; height: 100px;">
					<div class="testimonial-text bg-white p-4 mt-n5">
						<p class="mt-5">Dolor et eos labore, stet justo sed est sed.
							Diam sed sed dolor stet amet eirmod eos labore diam</p>
						<h5 class="text-truncate">Client Name</h5>
						<span>Profession</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Testimonial End -->


	<!-- Blog Start -->
	<div class="container-fluid py-5">
		<div class="container pt-5 pb-3">
			<div class="text-center mb-3 pb-3">
				<h1>드림저니 인기 여행기</h1>
			</div>
			<div id="travelSlider" class="carousel slide" data-ride="false">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="row">
							<div class="col-lg-4 col-md-6 mb-4 pb-2">
								<div class="blog-item">
									<div class="position-relative">
										<img class="img-fluid w-100"
											src="/dreamjourney/resources/img/blog-1.jpg" alt="">
									</div>
									<div class="bg-white p-4 padleft">
										<div class="d-flex mb-2">
											<div style="width: 50px;">
												<img src="/dreamjourney/resources/img/team-1.jpg"
													style="width: 50px; border-radius: 100px; object-fit: cover;">
											</div>
											<div style="margin-top: 3px; margin-left: 10px;">
												<a style="color: #939393 !important;"
													class="text-primary text-uppercase text-decoration-none"
													href="">이동재</a> <br> <a
													class="text-primary text-uppercase text-decoration-none"
													href="">걸어서 속초 속으로</a>
											</div>
										</div>
										<a class="h5 m-0 text-decoration-none" href="">내용요약 내용요약
											내용요약 내용요약 ...</a>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 mb-4 pb-2">
								<div class="blog-item">
									<div class="position-relative">
										<img class="img-fluid w-100"
											src="/dreamjourney/resources/img/blog-1.jpg" alt="">
									</div>
									<div class="bg-white p-4 padleft">
										<div class="d-flex mb-2">
											<div style="width: 50px;">
												<img src="/dreamjourney/resources/img/user.jpg"
													style="width: 50px; border-radius: 100px; object-fit: cover;">
											</div>
											<div style="margin-top: 3px; margin-left: 10px;">
												<a style="color: #939393 !important;"
													class="text-primary text-uppercase text-decoration-none"
													href="">이동재</a> <br> <a
													class="text-primary text-uppercase text-decoration-none"
													href="">걸어서 속초 속으로</a>
											</div>
										</div>
										<a class="h5 m-0 text-decoration-none" href="">내용요약 내용요약
											내용요약 내용요약 ...</a>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 mb-4 pb-2">
								<div class="blog-item">
									<div class="position-relative">
										<img class="img-fluid w-100"
											src="/dreamjourney/resources/img/blog-1.jpg" alt="">
									</div>
									<div class="bg-white p-4 padleft">
										<div class="d-flex mb-2">
											<div style="width: 50px;">
												<img src="/dreamjourney/resources/img/user.jpg"
													style="width: 50px; border-radius: 100px; object-fit: cover;">
											</div>
											<div style="margin-top: 3px; margin-left: 10px;">
												<a style="color: #939393 !important;"
													class="text-primary text-uppercase text-decoration-none"
													href="">이동재</a> <br> <a
													class="text-primary text-uppercase text-decoration-none"
													href="">걸어서 속초 속으로</a>
											</div>
										</div>
										<a class="h5 m-0 text-decoration-none" href="">내용요약 내용요약
											내용요약 내용요약 ...</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="row">
							<div class="col-lg-4 col-md-6 mb-4 pb-2">
								<div class="blog-item">
									<div class="position-relative">
										<img class="img-fluid w-100"
											src="/dreamjourney/resources/img/blog-1.jpg" alt="">
									</div>
									<div class="bg-white p-4 padleft">
										<div class="d-flex mb-2">
											<div style="width: 50px;">
												<img src="/dreamjourney/resources/img/user.jpg"
													style="width: 50px; border-radius: 100px; object-fit: cover;">
											</div>
											<div style="margin-top: 3px; margin-left: 10px;">
												<a style="color: #939393 !important;"
													class="text-primary text-uppercase text-decoration-none"
													href="">이동재</a> <br> <a
													class="text-primary text-uppercase text-decoration-none"
													href="">걸어서 속초 속으로</a>
											</div>
										</div>
										<a class="h5 m-0 text-decoration-none" href="">내용요약 내용요약
											내용요약 내용요약 ...</a>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 mb-4 pb-2">
								<div class="blog-item">
									<div class="position-relative">
										<img class="img-fluid w-100"
											src="/dreamjourney/resources/img/blog-1.jpg" alt="">
									</div>
									<div class="bg-white p-4 padleft">
										<div class="d-flex mb-2">
											<div style="width: 50px;">
												<img src="/dreamjourney/resources/img/user.jpg"
													style="width: 50px; border-radius: 100px; object-fit: cover;">
											</div>
											<div style="margin-top: 3px; margin-left: 10px;">
												<a style="color: #939393 !important;"
													class="text-primary text-uppercase text-decoration-none"
													href="">이동재</a> <br> <a
													class="text-primary text-uppercase text-decoration-none"
													href="">걸어서 속초 속으로</a>
											</div>
										</div>
										<a class="h5 m-0 text-decoration-none" href="">내용요약 내용요약
											내용요약 내용요약 ...</a>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 mb-4 pb-2">
								<div class="blog-item">
									<div class="position-relative">
										<img class="img-fluid w-100"
											src="/dreamjourney/resources/img/blog-1.jpg" alt="">
									</div>
									<div class="bg-white p-4 padleft">
										<div class="d-flex mb-2">
											<div style="width: 50px;">
												<img src="/dreamjourney/resources/img/user.jpg"
													style="width: 50px; border-radius: 100px; object-fit: cover;">
											</div>
											<div style="margin-top: 3px; margin-left: 10px;">
												<a style="color: #939393 !important;"
													class="text-primary text-uppercase text-decoration-none"
													href="">이동재</a> <br> <a
													class="text-primary text-uppercase text-decoration-none"
													href="">걸어서 속초 속으로</a>
											</div>
										</div>
										<a class="h5 m-0 text-decoration-none" href="">내용요약 내용요약
											내용요약 내용요약 ...</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<a class="btn btn-dark carousel-control-prev" href="#travelSlider"
					role="button" data-slide="prev"
					style="width: 45px; height: 45px; margin-top: 200px; margin-left: 10px;">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">이전</span>
				</a> <a class="btn btn-dark carousel-control-next" href="#travelSlider"
					role="button" data-slide="next"
					style="width: 45px; height: 45px; margin-top: 200px; margin-right: 10px;">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">다음</span>
				</a>
			</div>
		</div>
	</div>
	</div>
	</div>
	</div>
	</div>

<form method="post" action="/dreamjourney/unresi">
  <input type="hidden" name="email" value="${param.email}">
  <button type="submit">회원탈퇴</button>
</form>

	<!-- Blog End -->
	<%@ include file="/resources/inc/footer.jsp"%>
	<script src="/dreamjourney/resources/js/wanjinindex.js"></script>
	<script>
<<<<<<< HEAD
	 function searchLod(element) {
		 event.preventDefault();
		 $("#searchbar1").css("display", "inline-block")
		 $("#searchbar2").css("display", "none");
		 $("#searchbar3").css("display", "none");
		    $("a").removeClass("active");
		    $(element).addClass("active");
		  }
	 
	 function searchLod2(element) {
		 event.preventDefault();
		 $("#searchbar1").css("display", "none");
		 $("#searchbar3").css("display", "none");
		 $("#searchbar2").css("display", "inline-block");
		    $("a").removeClass("active");
		    $(element).addClass("active");
		  }
	 
	 function searchLod3(element) {
		 event.preventDefault();
		 $("#searchbar1").css("display", "none");
		 $("#searchbar2").css("display", "none");
		 $("#searchbar3").css("display", "inline-block");
		    $("a").removeClass("active");
		    $(element).addClass("active");
		  }
=======
	/* 숙박시 체크인,체크아웃 확인 */
		$('#searchsubmit').click(function() {
			if ($('#checkin').val() == '') {
				alert('체크인 날짜를 입력하세요');
				$('#checkin').val('');
				return false;

			} else if ($('#checkout').val() == '') {
				alert('체크아웃 날짜를 입력하세요');
				$('#checkout').val('');
				return false;
			}
		});
		
	/* 항공 출발일 확인 */
		$('.searchtrans').click(function() {
			if ($('#startdate').val() == '') {
				alert('출발 날짜를 입력하세요');
				$('#startdate').val('');
				return false;
			}
		});
	
	/* 버스 출발일 확인 */
		$('.searchtrans2').click(function() {
			if ($('#startdate2').val() == '') {
				alert('출발 날짜를 입력하세요');
				$('#startdate2').val('');
				return false;
			}
		});
		
	/* 기차 출발일 확인 */
		$('.searchtrans3').click(function() {
			if ($('#startdate3').val() == '') {
				alert('출발 날짜를 입력하세요');
				$('#startdate3').val('');
				return false;
			}
		});
	

		/* 숙박검색 */
		function searchLod(element) {
			event.preventDefault();
			$("#searchbar1").css("display", "inline-block")
			$("#searchbar2").css("display", "none");
			$("#searchbar3").css("display", "none");
			$("#searchbar4").css("display", "none");
			$("#searchbar5").css("display", "none");
			$("a").removeClass("active");
			$(element).addClass("active");
		}

		/* 항공검색 */
		function searchLod2(element) {
			event.preventDefault();
			$("#searchbar1").css("display", "none");
			$("#searchbar3").css("display", "none");
			$("#searchbar4").css("display", "none");
			$("#searchbar5").css("display", "none");
			$("#searchbar2").css("display", "inline-block");
			$("a").removeClass("active");
			$(element).addClass("active");
		}
		
		/* 버스검색 */
		function searchLod3(element) {
			event.preventDefault();
			$("#searchbar1").css("display", "none");
			$("#searchbar3").css("display", "inline-block");
			$("#searchbar4").css("display", "none");
			$("#searchbar5").css("display", "none");
			$("#searchbar2").css("display", "none");
			$("a").removeClass("active");
			$(element).addClass("active");
		}
		
		/* 기차검색 */
		function searchLod4(element) {
			event.preventDefault();
			$("#searchbar1").css("display", "none");
			$("#searchbar3").css("display", "none");
			$("#searchbar4").css("display", "inline-block");
			$("#searchbar5").css("display", "none");
			$("#searchbar2").css("display", "none");
			$("a").removeClass("active");
			$(element).addClass("active");
		}

		/* 액티비티 */
		function searchLod5(element) {
			event.preventDefault();
			$("#searchbar1").css("display", "none");
			$("#searchbar2").css("display", "none");
			$("#searchbar3").css("display", "none");
			$("#searchbar4").css("display", "none");
			$("#searchbar5").css("display", "inline-block");
			$("a").removeClass("active");
			$(element).addClass("active");
		}
		
		function checkInputs(event) {
		    var searchCityValue = document.querySelector('#searchcity').value;
		    var searchActivityValue = document.querySelector('#searchactivity').value;

		    if (!searchCityValue && !searchActivityValue) {
		        alert("검색할 도시 또는 액티비티를 입력하세요.");
		        event.preventDefault(); // submit 이벤트 중지
		        return false;
		    }
		}
>>>>>>> d220c106aa61afbc62d00ea25ff1b2f301afe183
	</script>
</body>

</html>






