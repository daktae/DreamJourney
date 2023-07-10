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
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/dreamjourney/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/dreamjourney/resources/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/dreamjourney/resources/css/style.css" rel="stylesheet">
    
    <!-- Google Icon -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>
<style>

	.pay_container {
		justify-content: center;
		display: inline-block;
		width: 1500px;
	}

	.detail {
		width: 800px;
	
	}

	.sub {
		font-weight: bold;
	}

	.p1-4, .px-4, .p-4 {
		padding-left : none;
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
		text-decoration:none;
	}
	
	.row {
		justify-content:center;
	}
	
	.team-img {
		width: 255px;
		height: 210px;
	}
	
</style>
<body>
   <!-- pay.jsp > 결제 페이지 -->
   
    

    <!-- Topbar Start -->
    <div class="container-fluid bg-light pt-3 d-none d-lg-block">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 text-center text-lg-left mb-2 mb-lg-0">
                    <div class="d-inline-flex align-items-center">
                       
                    </div>
                </div>
                <div class="col-lg-6 text-center text-lg-right">
                    <div class="d-inline-flex align-items-center">
                        <p><a href="*">로그인</a></p>
                        <p class="text-body px-3">|</p>
                        <p><a href="*">회원가입</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->
    


    <!-- Navbar Start -->
    <div class="container-fluid position-relative nav-bar p-0">
        <div class="container-lg position-relative p-0 px-lg-3" style="z-index: 9;">
            <nav class="navbar navbar-expand-lg bg-light navbar-light shadow-lg py-3 py-lg-0 pl-3 pl-lg-5">
                <a href="" class="navbar-brand">
                    <h1 class="m-0 text-primary"><span class="text-dark">Dream</span>Journey</h1>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between px-5" id="navbarCollapse">
                    <div class="navbar-nav ml-auto py-0">
                        <a href="index.html" class="nav-item nav-link ">홈</a>
                        <a href="about.html" class="nav-item nav-link active">예약/예매</a>
                        <a href="service.html" class="nav-item nav-link">추천 여행지</a>
                        <a href="single.html" class="nav-item nav-link">커뮤니티</a>
                        
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Contact</a>
                            <div class="dropdown-menu border-0 rounded-0 m-0">
                                
                                <a href="single.html" class="dropdown-item">공지사항</a>
                                <a href="single.html" class="dropdown-item">FAQ/문의</a>
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
            <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 400px">
                <h3 class="display-4 text-white text-uppercase">예약하기</h3>
                
            </div>
        </div>
    </div>
    <!-- Header End -->   
    
    
    
    
    

   <!-- 내용쓰는곳 -->
   
   <div class="pay_container">
   <h1>예약하기</h1>
   <div class="detail">
   <h2>상품정보</h2>
   <hr>
   <img src="">
   <div>액티비티 명</div>
   <div>액티비티 주소</div>
   <div>액티비티 사용 일자</div>
   <div style="background-color: #AAA;">가격</div>
   </div>
   <div></div>
   <h2>예약자</h2>
   <hr>
   <div style="background-color: #AAA;">
   		예약자 이름 : 
   		아이디 : 
   		연락처 : 
   </div>
   <div>
   <h2>결제 방법</h2>
   <hr>
   <input type="radio" name="pay_radio" value="card">신용카드
   <input type="radio" name="pay_radio" value="kakao">카카오페이
   <input type="radio" name="pay_radio" value="naver">네이버페이
   <input type="radio" name="pay_radio" value="bank">무통장입금
   </div>
   </div>
   
   <div>
   <h1>결제정보</h1>
   <hr>
   <div>
   <h2>주문금액</h2>
   얼마 X 몇 명
   <h2>총 결제금액</h2>
   총 얼마
   </div>
   <h2>약관 안내</h2>
   <input type="checkbox">전체 약관 동의
   <input type="checkbox">개인정보 제공 동의[필수]
   <input type="checkbox">개인정보 수집 및 이용 동의[필수]
   </div>
	<h2>예약 취소 규정</h2>
	<div>
	- 체크인 8일 전 : 무료 취소
	- 체크인 7일 전 : 취소 수수료 10%
	- 체크인 6일 전 : 취소 수수료 20%
	- 체크인 5일 전 : 취소 수수료 30%
	- 체크인 4일 전 : 취소 수수료 50%
	- 체크인 3일 전 : 취소 수수료 70%
	- 체크인 2일 전 : 취소 수수료 90%
	- 체크인 1일 전 ~ 당일 : 취소 환불 불가
	- 취소요청 이후에는 취소의 철회가 불가능합니다.
	- 구매당일 취소시에도 환불 규정에 따라 취소 수수료가 부과됩니다. 
	</div>   
	<input type="button">
   
   <!-- 내용 작성 -->
    <div class="container-fluid py-5" style="height: 100px;">
       
   </div>
                


    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-white-50 px-sm-3   px-lg-5" >
        <div class="row pt-5">
            <div class="col-lg-3 col-md-6 mb-5">
                <a href="" class="navbar-brand">
                    <h1 class="text-primary"><span class="text-white">Dream</span>Journey</h1>
                </a>
                <p style="margin-bottom: 0px; font-weight: bold;">고객지원실 운영안내</p>
                <p style="margin-bottom: 0px;">02-3482-4632</p>
                <p style="margin-bottom: 0px;">전화 상담: 09:00 ~ 18:00</p>
                <p style="margin-bottom: 0px;">채팅 상담: 09:00 ~ 20:00</p>

                <h6 class="text-white text-uppercase mt-4 mb-3" style="letter-spacing: 5px;">Follow Us</h6>
                <div class="d-flex justify-content-start">
                    <a class="btn btn-outline-primary btn-square mr-2" href="#"><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-outline-primary btn-square mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-outline-primary btn-square mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                    <a class="btn btn-outline-primary btn-square" href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-5">
                <h5 class="text-white text-uppercase mb-4" >소개</h5>
                <div class="d-flex flex-column justify-content-start">
                    <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>회사소개</a>
                    <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>채용</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-5">
                <h5 class="text-white text-uppercase mb-4" >제휴 업체</h5>
                <div class="d-flex flex-column justify-content-start">
                    <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>늘봄 실버타운</a>
                    <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>늘봄 요양원</a>
                    <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>쌍용교육센터</a>
                    
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-5">
                <h5 class="text-white text-uppercase mb-4" >지원</h5>
                <div class="d-flex flex-column justify-content-start">
                    <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>자주 묻는 질문</a>
                    <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>최저가 보장제</a>
                    
                </div>
            </div>
            
        </div>
    </div>
    


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="/dreamjourney/resources/lib/easing/easing.min.js"></script>
    <script src="/dreamjourney/resources/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="/dreamjourney/resources/lib/tempusdominus/js/moment.min.js"></script>
    <script src="/dreamjourney/resources/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="/dreamjourney/resources/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="/dreamjourney/resources/mail/jqBootstrapValidation.min.js"></script>
    <script src="/dreamjourney/resources/mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="/dreamjourney/resources/js/main.js"></script>
</body>

</html>





