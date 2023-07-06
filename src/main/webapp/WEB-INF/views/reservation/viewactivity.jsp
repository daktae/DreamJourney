<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> <!-- 천단위 콤마 라이브러리 -->
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>DreamJourney > 예약/예매 > 액티비티 > 상세보기</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">


	<!-- datePicker 사용 -->
	<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

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
</head>
<style>
body {
	padding-bottom: 50px;
}

.btn {
	width: 200px;
	margin: 5px 30px;
}

.img {
	width: 800px;
}

footer {
	margin: 0;
	width: 100%:
}

</style>
<body>
	<%@ include file="/resources/inc/header.jsp"%>
	<!-- 본문 -->
	<div style="height: 3000px; margin-top: 100px;">
		<form method="POST" action="/dreamjourney/reservation/pay">
			<div style="width: 800px; float: left; margin-left: 200px;">
				<div style="text-align: center;">
					<h1>${adetail.title }</h1>
				</div>
				<div style="text-align: right;">
					<h4>${adetail.title }(댓글)</h4>
				</div>
				<hr>
				<div>${adetail.address }<div id="price" style="float: right;">
						1인
						<fmt:formatNumber value="${adetail.price }" pattern="#,###" />
						원
					</div>
				</div>
				<hr>
				<div><img class="img" src="/dreamjourney/resources/img/reservation/${adetail.image1 }" alt=""></div>
				<div><img class="img" src="/dreamjourney/resources/img/reservation/${adetail.image2 }" alt=""></div>
				<div><img class="img" src="/dreamjourney/resources/img/reservation/${adetail.image3 }" alt=""></div>

				<div>${adetail.content }</div>



				
				<hr>
				<div>주소 : ${adetail.address }</div>
				<div id="map" style="width: 500px; height: 400px;"></div>
				<hr>
				<div>
					리뷰
					<hr>
					<c:forEach items="${review }" var="rdto">
						<div>${rdto.score }${rdto.nickname }</div>
						<div>${rdto.rdate }</div>
						<div>${rdto.content }</div>
						<hr>
					</c:forEach>
				</div>

			</div>

			<div
				style="border: 1px solid #DDD; background-color: #FFF;display: inline-block; width: 300px; padding: 20px; text-align: center; margin: 0 10px; position: fixed;">
				<div>티켓 선택 날짜
					<input type="date" name="dates">
				</div>
				<div>
					인원 선택<input type="number" id="numberInput" min="1"
						max="${adetail.limit }" oninput="displayNumber()" value="1" name="totalPeople">
				</div>
				<div style="font-weight: bold; margin-bottom: 10px;">
					총 가격 <span id="totalPrice" name="totalPrice"><fmt:formatNumber value="${adetail.price }" pattern="#,###" /></span>원
				</div>
				<div>
					(
					<fmt:formatNumber value="${adetail.price }" pattern="#,###" />
					원 * <span id="numberDisplay">1 명</span>)
				</div>
				<br>
				<div>
					<button type="submit" class="btn btn-primary reservation" onclick="/dreamjourney/reservation/pay?activity_seq=${adetail.activity_seq}">예약하기</button>
					<input type="hidden" value="${adetail.activity_seq }" name="activity_seq">
					<button type="submit" class="btn btn-primary" id="bookmark">즐겨찾기 추가</button>
				</div>
			</div>
			<input type="hidden" name="totalPrice"> 
			<input type="hidden" name="totalPeople"> 
		</form>
	</div>





	<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=399d3a29656e06f5e50372ac6e9c718a&libraries=services,clusterer,drawing"></script>
	<!-- 카카오맵.api -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=399d3a29656e06f5e50372ac6e9c718a"></script>
	
	
</body>
<footer> 	<%@ include file="/resources/inc/footer.jsp"%>		</footer>
<script>

	/* 즐겨찾기 */
	$(document).ready(function() {
		$('#bookmark').on('click', function() {
			$.ajax({
				url: ""
				
				
			});
		});
	});

	/* 캘린더 */
	$('input[name="dates"]').daterangepicker({
   		singleDatePicker: true
	});

	/* 인원 수 */
	function displayNumber() {
		var input = document.getElementById("numberInput");
		var display = document.getElementById("numberDisplay");

		var number = event.target.value;
		display.textContent = number + "명";

		/* 총 가격 */
		const price = ${adetail.price};
		const totalPrice = price * number;
		
		/* 날짜 선택 */

		document.getElementById("totalPrice").innerText = totalPrice.toLocaleString();
/* 		$("input[name=totalPrice]").val(totalPrice.toLocaleString());
		$("input[name=totalPeople]").val(number); */
		document.querySelector("input[name=totalPrice]").value = totalPrice;
		document.querySelector("input[name=totalPeople]").value = number;
	}

	/* Kakao Maps API & 지오코딩 */
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 

	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();

	// 주소로 좌표를 검색합니다
	geocoder.addressSearch("${adetail.address }", function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">"${adetail.title}"</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});  
	
	

	/* 버튼 활성화 */
	/* $(document).ready(function() {
		$('.reservation').prop('disabled', true);

		$('input[type=number]').change(function() {
			var checked = true; //인풋 상태 확인 전에 초기화
			if ($(this).val() == 0) { //체크박스가 체크 안된게 있으면
				checked = false;
				return false; //반복문 종료
			}
		if(checked) {		//모두 체크됐으면
			$('.reservation').prop('disabled', false);	//버튼 활성화
		} else {
			$('.reservation').prop('disabled', true);
		}
		});
	});  */
	
	
	
	
</script>
</html>





