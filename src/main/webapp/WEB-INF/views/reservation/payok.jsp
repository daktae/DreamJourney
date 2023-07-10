<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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

	.categoryAll {
		display: inline-block;
		width: 100%;
		justify-content:center;
	}

	.category {
		display: inline-block;
		border: 1px solid black;
		padding: 20px;
		margin: 0 10px;
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
	
	.pay-container {
		display: inline-block;
		width: 1000px;
		height: 500px;
		text-align: center;
		border: 1px solid #DDD;
		margin-left: 230px;
		padding: 50px;
	}
	
	.btn {
		width: 150px;
		height: 45px;
		margin: 0 15px;
		font-weight: bold;
		border-radius: 5px;
	}
	
	.btn-secondary {
		background-color: white;
		border: 1px solid #7AB730;
	}
	
</style>
<body>
   <!-- activity.jsp > 액티비티 페이지 -->
   
    

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
                        <a href="/dreamjourney/reservation" class="nav-item nav-link active">예약/예매</a>
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
            <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 400px; text-align: center;">
                <h3 class="display-4 text-white text-uppercase">결제완료</h3>
                
            </div>
        </div>
    </div>
    <!-- Header End -->   
    
    
    
   
   <!-- 본문 -->
    <div class="container-fluid py-5" style="height: 600px; border: 1px solid black;">
    	<div class="pay-container">
    	
    	<div>
		<img alt="" src="/dreamjourney/resources/img/reservation/check.png" style="width: 100px;">
    	<h1 style="font-weight: bold; margin: 30px;">예약완료</h1>
    	<p>
    	<div style="font-weight: bold; font-size: 20px;">결제가 성공적으로 완료되었습니다.</div>
    	<div style="font-size: 17px";>기타 궁금하신 사항은 채팅 또는 전화문의로 연락주시면 성심껏 답변드리겠습니다.</div>
    	<div style="font-size: 17px";>신청하신 정보는 <span style="font-weight: bold;">예약내역(마이페이지 - 내 예매내역)</span>에서 확인 가능합니다.</div> 
    	</p>
    	</div>
    	<br>
    	<div>
    	<button type="button" class="btn btn-secondary" onclick="location.href='/dreamjourney/mypage/mypage_reserve';">결제내역 확인</button>
    	<button type="button" class="btn btn-primary" onclick="location.href='/dreamjourney/index';">메인으로</button>
    	</div>
    	
    	</div>
       
   </div>
                


    <%@ include file="/resources/inc/footer.jsp"%>
</body>

</html>





