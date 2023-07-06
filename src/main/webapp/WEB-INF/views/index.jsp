<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">

<head>
   <%@ include file="/resources/inc/asset.jsp" %>

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

</style>

<body>
	<%@ include file="/resources/inc/header.jsp" %>
    <!-- Carousel Start -->
    <div class="container-fluid p-0">
        <div id="header-carousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active" >
                    <img class="w-100 w-height" src="/dreamjourney/resources/img/carousel-1.jpg" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3" style="max-width: 900px;">
                            <h4 class="text-white text-uppercase mb-md-3"></h4>
                            <h1 class="display-3 text-white mb-md-4"></h1>
                   
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="w-100 w-height" src="/dreamjourney/resources/img/carousel-2.jpg" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3" style="max-width: 900px;">
                            <h4 class="text-white text-uppercase mb-md-3"></h4>
                            <h1 class="display-3 text-white mb-md-4"></h1>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">
                <div class="btn btn-dark" style="width: 45px; height: 45px;">
                    <span class="carousel-control-prev-icon mb-n2"></span>
                </div>
            </a>
            <a class="carousel-control-next" href="#header-carousel" data-slide="next">
                <div class="btn btn-dark" style="width: 45px; height: 45px;">
                    <span class="carousel-control-next-icon mb-n2"></span>
                </div>
            </a>
        </div>
    </div>
    <!-- Carousel End -->


    <!-- Booking Start -->
    <div class="container-fluid booking mt-5 pb-5">
        <div class="container pb-5">
            <div class="bg-light shadow" style="padding: 30px;">
                <div class="row align-items-center" style="min-height: 60px;">
                    <div class="col-md-10">
                        <div class="row">
                            <div class="col-md-4" >

<input class="form-control p-4" type="text" placeholder="어디로 떠나실건가요?">
                               
                            </div>
                            
                            <div class="col-md-3">
    <input class="form-control p-4" id="startdate" pattern="\d{4}-\d{2}-\d{2}" placeholder="체크인"
           required  type="text" value="">
</div>
                            

                            <div class="col-md-3">
    <input class="form-control p-4" id="enddate" pattern="\d{4}-\d{2}-\d{2}" placeholder="체크아웃"
           required  type="text" value="">
</div>
                            
                            
                            <div class="col-md-2">
                                <div class="mb-3 mb-md-0">
                                    <input class="form-control p-4" type="text" placeholder="인원 수">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <button class="btn btn-primary btn-block" type="submit" style="height: 47px; margin-top: -2px;">검색 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                          </svg></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
                                <img class="img-fluid" src="/dreamjourney/resources/img/package-1.jpg" alt="">
                                <div class="p-4">
                                    <div class="d-flex justify-content-between mb-3">
                                        <small class="m-0"><i class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
                                        <small class="m-0"><i class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small>
                                        <small class="m-0"><i class="fa fa-user text-primary mr-2"></i>2 Person</small>
                                    </div>
                                    <a class="h5 text-decoration-none" href="">Discover amazing places of the world with us</a>
                                    <div class="border-top mt-4 pt-4">
                                        <div class="d-flex justify-content-between">
                                            <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                            <h5 class="m-0">$350</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                               <div class="col-lg-4 col-md-6 mb-4">
                            <div class="package-item bg-white mb-2">
                                <img class="img-fluid" src="/dreamjourney/resources/img/package-1.jpg" alt="">
                                <div class="p-4">
                                    <div class="d-flex justify-content-between mb-3">
                                        <small class="m-0"><i class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
                                        <small class="m-0"><i class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small>
                                        <small class="m-0"><i class="fa fa-user text-primary mr-2"></i>2 Person</small>
                                    </div>
                                    <a class="h5 text-decoration-none" href="">Discover amazing places of the world with us</a>
                                    <div class="border-top mt-4 pt-4">
                                        <div class="d-flex justify-content-between">
                                            <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                            <h5 class="m-0">$350</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                               <div class="col-lg-4 col-md-6 mb-4">
                            <div class="package-item bg-white mb-2">
                                <img class="img-fluid" src="/dreamjourney/resources/img/package-1.jpg" alt="">
                                <div class="p-4">
                                    <div class="d-flex justify-content-between mb-3">
                                        <small class="m-0"><i class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
                                        <small class="m-0"><i class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small>
                                        <small class="m-0"><i class="fa fa-user text-primary mr-2"></i>2 Person</small>
                                    </div>
                                    <a class="h5 text-decoration-none" href="">Discover amazing places of the world with us</a>
                                    <div class="border-top mt-4 pt-4">
                                        <div class="d-flex justify-content-between">
                                            <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
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
                                <img class="img-fluid" src="/dreamjourney/resources/img/package-1.jpg" alt="">
                                <div class="p-4">
                                    <div class="d-flex justify-content-between mb-3">
                                        <small class="m-0"><i class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
                                        <small class="m-0"><i class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small>
                                        <small class="m-0"><i class="fa fa-user text-primary mr-2"></i>2 Person</small>
                                    </div>
                                    <a class="h5 text-decoration-none" href="">Discover amazing places of the world with us</a>
                                    <div class="border-top mt-4 pt-4">
                                        <div class="d-flex justify-content-between">
                                            <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                            <h5 class="m-0">$350</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                               <div class="col-lg-4 col-md-6 mb-4">
                            <div class="package-item bg-white mb-2">
                                <img class="img-fluid" src="/dreamjourney/resources/img/package-1.jpg" alt="">
                                <div class="p-4">
                                    <div class="d-flex justify-content-between mb-3">
                                        <small class="m-0"><i class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
                                        <small class="m-0"><i class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small>
                                        <small class="m-0"><i class="fa fa-user text-primary mr-2"></i>2 Person</small>
                                    </div>
                                    <a class="h5 text-decoration-none" href="">Discover amazing places of the world with us</a>
                                    <div class="border-top mt-4 pt-4">
                                        <div class="d-flex justify-content-between">
                                            <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                            <h5 class="m-0">$350</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                               <div class="col-lg-4 col-md-6 mb-4">
                            <div class="package-item bg-white mb-2">
                                <img class="img-fluid" src="/dreamjourney/resources/img/package-1.jpg" alt="">
                                <div class="p-4">
                                    <div class="d-flex justify-content-between mb-3">
                                        <small class="m-0"><i class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
                                        <small class="m-0"><i class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small>
                                        <small class="m-0"><i class="fa fa-user text-primary mr-2"></i>2 Person</small>
                                    </div>
                                    <a class="h5 text-decoration-none" href="">Discover amazing places of the world with us</a>
                                    <div class="border-top mt-4 pt-4">
                                        <div class="d-flex justify-content-between">
                                            <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                            <h5 class="m-0">$350</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <a class="btn btn-dark carousel-control-prev" href="#packageSlider" role="button" data-slide="prev" style="width: 45px; height: 45px; margin-top:95px; margin-left:10px;">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">이전</span>
            </a>
            <a class="btn btn-dark carousel-control-next" href="#packageSlider" role="button" data-slide="next" style="width: 45px; height: 45px; margin-top:95px; margin-right:10px;">
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
                    <div class="destination-item position-relative overflow-hidden mb-2">
                        <img class="img-fluid" src="/dreamjourney/resources/img/destination-1.jpg" alt="">
                        <a class="destination-overlay text-white text-decoration-none" href="">
                            <h5 class="text-white">서울</h5>
                            <span>SEOUL</span>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="destination-item position-relative overflow-hidden mb-2">
                        <img class="img-fluid" src="/dreamjourney/resources/img/destination-2.jpg" alt="">
                        <a class="destination-overlay text-white text-decoration-none" href="">
                            <h5 class="text-white">부산</h5>
                            <span>BUSAN</span>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="destination-item position-relative overflow-hidden mb-2">
                        <img class="img-fluid" src="/dreamjourney/resources/img/destination-3.jpg" alt="">
                        <a class="destination-overlay text-white text-decoration-none" href="">
                            <h5 class="text-white">성심당</h5>
                            <span>BAKERY</span>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="destination-item position-relative overflow-hidden mb-2">
                        <img class="img-fluid" src="/dreamjourney/resources/img/destination-4.jpg" alt="">
                        <a class="destination-overlay text-white text-decoration-none" href="">
                            <h5 class="text-white">제주</h5>
                            <span>JEJU</span>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="destination-item position-relative overflow-hidden mb-2">
                        <img class="img-fluid" src="/dreamjourney/resources/img/destination-5.jpg" alt="">
                        <a class="destination-overlay text-white text-decoration-none" href="">
                            <h5 class="text-white">여수</h5>
                            <span>YEOSU</span>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="destination-item position-relative overflow-hidden mb-2">
                        <img class="img-fluid" src="/dreamjourney/resources/img/destination-6.jpg" alt="">
                        <a class="destination-overlay text-white text-decoration-none" href="">
                            <h5 class="text-white">강릉</h5>
                            <span>KANGLEUNG</span>
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
                                <img class="img-fluid" src="/dreamjourney/resources/img/package-1.jpg" alt="">
                                <div class="p-4">
                                    <div class="d-flex justify-content-between mb-3">
                                        <small class="m-0"><i class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
                                        <small class="m-0"><i class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small>
                                        <small class="m-0"><i class="fa fa-user text-primary mr-2"></i>2 Person</small>
                                    </div>
                                    <a class="h5 text-decoration-none" href="">Discover amazing places of the world with us</a>
                                    <div class="border-top mt-4 pt-4">
                                        <div class="d-flex justify-content-between">
                                            <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                            <h5 class="m-0">$350</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                               <div class="col-lg-4 col-md-6 mb-4">
                            <div class="package-item bg-white mb-2">
                                <img class="img-fluid" src="/dreamjourney/resources/img/package-1.jpg" alt="">
                                <div class="p-4">
                                    <div class="d-flex justify-content-between mb-3">
                                        <small class="m-0"><i class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
                                        <small class="m-0"><i class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small>
                                        <small class="m-0"><i class="fa fa-user text-primary mr-2"></i>2 Person</small>
                                    </div>
                                    <a class="h5 text-decoration-none" href="">Discover amazing places of the world with us</a>
                                    <div class="border-top mt-4 pt-4">
                                        <div class="d-flex justify-content-between">
                                            <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                            <h5 class="m-0">$350</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                               <div class="col-lg-4 col-md-6 mb-4">
                            <div class="package-item bg-white mb-2">
                                <img class="img-fluid" src="/dreamjourney/resources/img/package-1.jpg" alt="">
                                <div class="p-4">
                                    <div class="d-flex justify-content-between mb-3">
                                        <small class="m-0"><i class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
                                        <small class="m-0"><i class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small>
                                        <small class="m-0"><i class="fa fa-user text-primary mr-2"></i>2 Person</small>
                                    </div>
                                    <a class="h5 text-decoration-none" href="">Discover amazing places of the world with us</a>
                                    <div class="border-top mt-4 pt-4">
                                        <div class="d-flex justify-content-between">
                                            <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
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
                                <img class="img-fluid" src="/dreamjourney/resources/img/package-1.jpg" alt="">
                                <div class="p-4">
                                    <div class="d-flex justify-content-between mb-3">
                                        <small class="m-0"><i class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
                                        <small class="m-0"><i class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small>
                                        <small class="m-0"><i class="fa fa-user text-primary mr-2"></i>2 Person</small>
                                    </div>
                                    <a class="h5 text-decoration-none" href="">Discover amazing places of the world with us</a>
                                    <div class="border-top mt-4 pt-4">
                                        <div class="d-flex justify-content-between">
                                            <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                            <h5 class="m-0">$350</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                               <div class="col-lg-4 col-md-6 mb-4">
                            <div class="package-item bg-white mb-2">
                                <img class="img-fluid" src="/dreamjourney/resources/img/package-1.jpg" alt="">
                                <div class="p-4">
                                    <div class="d-flex justify-content-between mb-3">
                                        <small class="m-0"><i class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
                                        <small class="m-0"><i class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small>
                                        <small class="m-0"><i class="fa fa-user text-primary mr-2"></i>2 Person</small>
                                    </div>
                                    <a class="h5 text-decoration-none" href="">Discover amazing places of the world with us</a>
                                    <div class="border-top mt-4 pt-4">
                                        <div class="d-flex justify-content-between">
                                            <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                            <h5 class="m-0">$350</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                               <div class="col-lg-4 col-md-6 mb-4">
                            <div class="package-item bg-white mb-2">
                                <img class="img-fluid" src="/dreamjourney/resources/img/package-1.jpg" alt="">
                                <div class="p-4">
                                    <div class="d-flex justify-content-between mb-3">
                                        <small class="m-0"><i class="fa fa-map-marker-alt text-primary mr-2"></i>Thailand</small>
                                        <small class="m-0"><i class="fa fa-calendar-alt text-primary mr-2"></i>3 days</small>
                                        <small class="m-0"><i class="fa fa-user text-primary mr-2"></i>2 Person</small>
                                    </div>
                                    <a class="h5 text-decoration-none" href="">Discover amazing places of the world with us</a>
                                    <div class="border-top mt-4 pt-4">
                                        <div class="d-flex justify-content-between">
                                            <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                            <h5 class="m-0">$350</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <a class="btn btn-dark carousel-control-prev" href="#activitySlider" role="button" data-slide="prev" style="width: 45px; height: 45px; margin-top:95px; margin-left:10px;">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">이전</span>
            </a>
            <a class="btn btn-dark carousel-control-next" href="#activitySlider" role="button" data-slide="next" style="width: 45px; height: 45px; margin-top:95px; margin-right:10px;">
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
                    <img class="img-fluid mx-auto" src="/dreamjourney/resources/img/testimonial-1.jpg" style="width: 100px; height: 100px;" >
                    <div class="testimonial-text bg-white p-4 mt-n5">
                        <p class="mt-5">Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam
                        </p>
                        <h5 class="text-truncate">Client Name</h5>
                        <span>Profession</span>
                    </div>
                </div>
                <div class="text-center">
                    <img class="img-fluid mx-auto" src="/dreamjourney/resources/img/testimonial-2.jpg" style="width: 100px; height: 100px;" >
                    <div class="testimonial-text bg-white p-4 mt-n5">
                        <p class="mt-5">Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam
                        </p>
                        <h5 class="text-truncate">Client Name</h5>
                        <span>Profession</span>
                    </div>
                </div>
                <div class="text-center">
                    <img class="img-fluid mx-auto" src="/dreamjourney/resources/img/testimonial-3.jpg" style="width: 100px; height: 100px;" >
                    <div class="testimonial-text bg-white p-4 mt-n5">
                        <p class="mt-5">Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam
                        </p>
                        <h5 class="text-truncate">Client Name</h5>
                        <span>Profession</span>
                    </div>
                </div>
                <div class="text-center">
                    <img class="img-fluid mx-auto" src="/dreamjourney/resources/img/testimonial-4.jpg" style="width: 100px; height: 100px;" >
                    <div class="testimonial-text bg-white p-4 mt-n5">
                        <p class="mt-5">Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam
                        </p>
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
                                    <img class="img-fluid w-100" src="/dreamjourney/resources/img/blog-1.jpg" alt="">
                                </div>
                                <div class="bg-white p-4 padleft">
                                    <div class="d-flex mb-2">
                                    <div style="width:50px;"><img src="/dreamjourney/resources/img/team-1.jpg" style="width:50px; border-radius:100px; object-fit: cover;"></div>
                                    <div style="margin-top:3px; margin-left:10px;">
                                        <a style="color:#939393 !important;" class="text-primary text-uppercase text-decoration-none" href="">이동재</a>
<br>
                                        <a class="text-primary text-uppercase text-decoration-none" href="">걸어서 속초 속으로</a>
                                    </div>
                                    </div>
                                    <a class="h5 m-0 text-decoration-none" href="">내용요약 내용요약 내용요약 내용요약 ...</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 mb-4 pb-2">
                            <div class="blog-item">
                                <div class="position-relative">
                                    <img class="img-fluid w-100" src="/dreamjourney/resources/img/blog-1.jpg" alt="">
                                </div>
                                <div class="bg-white p-4 padleft">
                                    <div class="d-flex mb-2">
                                    <div style="width:50px;"><img src="/dreamjourney/resources/img/user.jpg" style="width:50px; border-radius:100px; object-fit: cover;"></div>
                                    <div style="margin-top:3px; margin-left:10px;">
                                        <a style="color:#939393 !important;" class="text-primary text-uppercase text-decoration-none" href="">이동재</a>
<br>
                                        <a class="text-primary text-uppercase text-decoration-none" href="">걸어서 속초 속으로</a>
                                    </div>
                                    </div>
                                    <a class="h5 m-0 text-decoration-none" href="">내용요약 내용요약 내용요약 내용요약 ...</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 mb-4 pb-2">
                            <div class="blog-item">
                                <div class="position-relative">
                                    <img class="img-fluid w-100" src="/dreamjourney/resources/img/blog-1.jpg" alt="">
                                </div>
                                <div class="bg-white p-4 padleft">
                                    <div class="d-flex mb-2">
                                    <div style="width:50px;"><img src="/dreamjourney/resources/img/user.jpg" style="width:50px; border-radius:100px; object-fit: cover;"></div>
                                    <div style="margin-top:3px; margin-left:10px;">
                                        <a style="color:#939393 !important;" class="text-primary text-uppercase text-decoration-none" href="">이동재</a>
<br>
                                        <a class="text-primary text-uppercase text-decoration-none" href="">걸어서 속초 속으로</a>
                                    </div>
                                    </div>
                                    <a class="h5 m-0 text-decoration-none" href="">내용요약 내용요약 내용요약 내용요약 ...</a>
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
                                    <img class="img-fluid w-100" src="/dreamjourney/resources/img/blog-1.jpg" alt="">
                                </div>
                                <div class="bg-white p-4 padleft">
                                    <div class="d-flex mb-2">
                                    <div style="width:50px;"><img src="/dreamjourney/resources/img/user.jpg" style="width:50px; border-radius:100px; object-fit: cover;"></div>
                                    <div style="margin-top:3px; margin-left:10px;">
                                        <a style="color:#939393 !important;" class="text-primary text-uppercase text-decoration-none" href="">이동재</a>
<br>
                                        <a class="text-primary text-uppercase text-decoration-none" href="">걸어서 속초 속으로</a>
                                    </div>
                                    </div>
                                    <a class="h5 m-0 text-decoration-none" href="">내용요약 내용요약 내용요약 내용요약 ...</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 mb-4 pb-2">
                            <div class="blog-item">
                                <div class="position-relative">
                                    <img class="img-fluid w-100" src="/dreamjourney/resources/img/blog-1.jpg" alt="">
                                </div>
                                <div class="bg-white p-4 padleft">
                                    <div class="d-flex mb-2">
                                    <div style="width:50px;"><img src="/dreamjourney/resources/img/user.jpg" style="width:50px; border-radius:100px; object-fit: cover;"></div>
                                    <div style="margin-top:3px; margin-left:10px;">
                                        <a style="color:#939393 !important;" class="text-primary text-uppercase text-decoration-none" href="">이동재</a>
<br>
                                        <a class="text-primary text-uppercase text-decoration-none" href="">걸어서 속초 속으로</a>
                                    </div>
                                    </div>
                                    <a class="h5 m-0 text-decoration-none" href="">내용요약 내용요약 내용요약 내용요약 ...</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 mb-4 pb-2">
                           <div class="blog-item">
                                <div class="position-relative">
                                    <img class="img-fluid w-100" src="/dreamjourney/resources/img/blog-1.jpg" alt="">
                                </div>
                                <div class="bg-white p-4 padleft">
                                    <div class="d-flex mb-2">
                                    <div style="width:50px;"><img src="/dreamjourney/resources/img/user.jpg" style="width:50px; border-radius:100px; object-fit: cover;"></div>
                                    <div style="margin-top:3px; margin-left:10px;">
                                        <a style="color:#939393 !important;" class="text-primary text-uppercase text-decoration-none" href="">이동재</a>
<br>
                                        <a class="text-primary text-uppercase text-decoration-none" href="">걸어서 속초 속으로</a>
                                    </div>
                                    </div>
                                    <a class="h5 m-0 text-decoration-none" href="">내용요약 내용요약 내용요약 내용요약 ...</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <a class="btn btn-dark carousel-control-prev" href="#travelSlider" role="button" data-slide="prev" style="width: 45px; height: 45px; margin-top:200px; margin-left:10px;">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">이전</span>
            </a>
            <a class="btn btn-dark carousel-control-next" href="#travelSlider" role="button" data-slide="next" style="width: 45px; height: 45px; margin-top:200px; margin-right:10px;">
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


    <!-- Blog End -->
	<%@ include file="/resources/inc/footer.jsp" %>
	       <script src="/dreamjourney/resources/js/wanjinindex.js"></script>
    <script>

    </script>
</body>

</html>






