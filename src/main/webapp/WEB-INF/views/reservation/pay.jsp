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
img {
	width: 250px;
	float: left;
	margin-right: 20px;
}

.info {
	display: inline-block;
	margin: 5px 0;
	width: 430px;
}

p {
	padding: 10px;
}

h3 {
	margin: 10px 0;
}

.pay_way {
	vertical-align: middle;
}

.pay_info {
	border: 1px solid #DDD;
	background-color: #EEE;
	float: right;
	width: 650px;
	height: 800px;
	margin-right: 30px;
	padding: 20px;
}

.pay_container {
	float: left;
	border: 1px solid #DDD;
	background-color: #EEE;
	margin-left: 30px;
	justify-content: center;
	display: inline-block;
	width: 750px;
	height: 800px;
	padding: 20px;
}

.detail {
	width: 800px;
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
	<!-- pay.jsp > 결제 페이지 -->



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
				<h3 class="display-4 text-white text-uppercase">예약하기</h3>

			</div>
		</div>
	</div>
	<!-- Header End -->





	<!-- 내용 작성 -->
	<div class="container-fluid py-5" style="height: 1000px;">

		<div class="pay_container">
			<div style="height: 270px;">
			<h3>상품정보</h3>
			<hr>
			<img src="/dreamjourney/resources/img/reservation/${pdetail.image1 }" >
			<div style="font-weight: bold; font-size: 18px;" id="title" class="info">${pdetail.title}</div>
			<div class="info"><span class="material-symbols-outlined">location_on</span> ${pdetail.address}</div>
			<div class="info"><span class="material-symbols-outlined">calendar_month</span> ${dto.dates }</div>
			<div class="info"><span class="material-symbols-outlined">person</span> ${dto.totalPeople}명</div>
			</div>
			<div style="height: 200px;">
			<h3 style="margin-top: 30px;">예약자</h3>
			<hr>
			<div style="background-color: #DDD; padding: 15px;">
				<div>예약자 이름 :</div>
				<div>아이디 :</div>
				<div>연락처 :</div>
			</div>
			</div>
			<div style="height: 230px;">
				<h3 style="margin-top: 30px;">결제 방법</h3>
				<hr>
				<input type="radio" name="pay_radio" value="card" id="card"> 신용카드 <select
					style="width: 200px;" class="pay_way">
					<option value>카드를 선택해주세요</option>
					<option value="samsung">삼성카드</option>
					<option value="shinhan">신한카드</option>
					<option value="hyundai">현대카드</option>
					<option value="lotte">롯데카드</option>
					<option value="woori">우리카드</option>
					<option value="hana">하나카드</option>
					<option value="bc">비씨카드</option>
				</select> <br> <input type="radio" name="pay_radio" value="kakao"
					class="pay_way"> 카카오페이 <br> <input type="radio"
					name="pay_radio" value="naver" class="pay_way"> 네이버페이 <br>
				<input type="radio" name="pay_radio" value="bank" class="pay_way">
				무통장입금
			</div>
		</div>

		<div class="pay_info">
			<h3>결제정보</h3>
			<hr>
			<div>
				<div id="totalprice"	style="background-color: #F5FBFF; color: #2B96ED; padding: 15px; margin: 10px 0;">
					<h3 style="color: #2B96ED;">총 결제금액</h3>
					<div id="totalPrice"><span style="font-weight: bold; font-size: 20px;">${dto.totalPrice }원</span> (${pdetail.price }원 * ${dto.totalPeople }명)</div>
				</div>
			</div>
			<h4 style="margin: 20px 0;">약관 안내</h4>
			<input type="checkbox" name="ckall" id="allcheck"> 전체 약관 동의 <br>
			<input type="checkbox"> 개인정보 제공 동의[필수] <br> <input
				type="checkbox"> 개인정보 수집 및 이용 동의[필수]

			<h4 style="margin: 20px 0;">예약 취소 규정</h4>
			<p style="background-color: #DDD;">
				- 체크인 8일 전 : 무료 취소<br> - 체크인 7일 전 : 취소 수수료 10%<br> - 체크인
				6일 전 : 취소 수수료 20%<br> - 체크인 5일 전 : 취소 수수료 30%<br> - 체크인 4일
				전 : 취소 수수료 50%<br> - 체크인 3일 전 : 취소 수수료 70%<br> - 체크인 2일 전
				: 취소 수수료 90%<br> - 체크인 1일 전 ~ 당일 : 취소 환불 불가<br> - 취소요청
				이후에는 취소의 철회가 불가능합니다.<br> - 구매당일 취소시에도 환불 규정에 따라 취소 수수료가 부과됩니다.<br>
			</p>
			<div style="text-align: center; margin: 10px 0;">
				<button type="submit"  id="check_module" class="btn btn-primary pay")'>결제하기</button>
			</div>
		</div>


	</div>



	<%@ include file="/resources/inc/footer.jsp"%>



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
	
<!-- 결제API -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</body>
<script>

var allcheck = document.querySelector('#allcheck');
var checkboxes = document.querySelectorAll('input[type="checkbox"]:not(#allcheck)');

allcheck.addEventListener('change', function() {
  	checkboxes.forEach(function(checkbox) {
    	checkbox.checked = allcheck.checked;
  	});
});

$(document).ready(function() {
	$('.pay').prop('disabled', true);
	
	$('input[type=checkbox]').change(function() {
		var allChecked = true;	//체크박스 상태 확인 전에 초기화
		
		$('input[type=checkbox]').each(function() {
			if (!$(this).is(':checked')) {	//체크박스가 체크 안된게 있으면
				allChecked = false;	
				return false;	//반복문 종료
			}
		});
		
		if(allChecked) {		//모두 체크됐으면
				$('.pay').prop('disabled', false);	//버튼 활성화
			} else {
				$('.pay').prop('disabled', true);
			}
	});
});
	
	
	
/* 결제 API */
$('#check_module').click(function() {
	var IMP = window.IMP;	//생략 가능
	IMP.init('imp44006286');	//가맹점 식별코드
	IMP.request_pay({
	    pg : 'html5_inicis',		//pg사 선택 시 결제할 곳
	    pay_method : 'card',		//지불 수단
	    merchant_uid: 'merchant_' + new Date().getTime(), //상점에서 생성한 고유 주문번호
	    name : "${pdetail.title}",			//상품명
	    amount : 100,		//가격
	    
	    buyer_email : 'iamport@siot.do',	//구매자 이메일
	    buyer_name : '구매자이름',			//구매자 이름
	    buyer_tel : '010-1234-5678',		//구매자 전화번호
	    buyer_addr : '서울특별시 강남구 삼성동',	//구매자 주소
	    buyer_postcode : '123-456',			//구매자 우편번호
	    m_redirect_url : 'http://www.naver.com' // 모바일에서 결제 완료 후 리디렉션 될 URL
	}, function(rsp) {		//결제 후 호출되는 callback 함수
		console.log(rsp);
		if (rsp.success) {
			var msg = '결제가 완료되었습니다.';
			msg += '고유ID : 	' + rsp.imp_uid;
			msg += '상점 거래 ID : ' + rsp.merchant_uid;
			msg += '결제 금액 : ' + rsp.paid_amount;
			msg += '카드 승인번호 : ' + rsp.apply_num;  
			
				$.ajax({
					url: "/dreamjourney/reservation/payok",
					type: "POST",
					dataType: "json",
					data: {
						totalPrice : "${dto.totalPrice}"
					},
					success: function(result) {
							console.log('성공');
						},
					error: function(a, b, c) {
						console.log(a, b, c);
					}
				});
			
		} else {
			var msg = '결제에 실패하였습니다.';
		}
		alert(msg);
		});
});
	
	
</script>


</html>





