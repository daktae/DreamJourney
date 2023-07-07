<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Dream Journey</title>
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

form>table {
	margin: 30px;
	width: 100%;
	height: 400px;
}

input {
	border: none;
	width: 70%;
}

button {
	border: none;
}

.btn-search {
	background-color: #5392F9;
	color: white;
	border-radius: 20px;
}

.btn-add {
	border: 1px solid #CCCCCC;
	border-radius: 20px;
}

#btn-submit {
	background-color: #5392F9;
	color: white;
	border-radius: 20px;
}

#btn-cancel {
	background-color: #CED4DA;
	color: white;
	border-radius: 20px;
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
				<h3 class="display-4 text-white text-uppercase">마이페이지</h3>

			</div>
		</div>
	</div>
	<!-- Header End -->

	<!-- Blog Start -->

	<div class="container-fluid py-5 mypagecontainer">
		<%@ include file="/resources/inc/mypage_sidemenu.jsp"%>
		<div id="mypage_content">
			<form method="POST" action="/dreamjourney/mypage/addjourneyok">
				<table id="journey-table">
					<tr>
						<td colspan="2"><input id="title" type="text"
							placeholder="여행 제목"></td>
					</tr>
					<tr>
						<td>여행 시작일<span class="material-symbols-outlined">calendar_month</span></td>
						<td>여행 종료일<span class="material-symbols-outlined">calendar_month</span></td>
					</tr>
					<tr>
						<td colspan="2"><p style="margin-top: -12px"></p>
							<div id="map" style="width: 80%; height: 350px;"></div></td>
					</tr>
					<tr>
						<td><b>day1</b> 07.02</td>
						<td></td>
					</tr>
					<tr class="temp">
						<td><input type="text" class="placeInput" placeholder="장소 추가">
							<button type="button" class="btn-search"
								onclick="openPopup(this)">
								검색<span class="material-symbols-outlined"> search </span>
							</button></td>
						<td><input type="text" class="memoInput" placeholder="메모 추가">
							<button type="button" class="btn-add" onclick="addTableRow()">
								<span class="material-symbols-outlined">add</span>
							</button></td>
					</tr>
					<tr>
						<td colspan="2">
							<button id="btn-submit" type="button">등록하기</button>
							<button id="btn-cancel">취소하기</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<!-- Blog End -->
	<%@ include file="/resources/inc/footer.jsp"%>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=015fae8b95c2d0f2c4d727e44d11a138&libraries=services"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);
		
		// 마커와 선을 담을 배열
		var markers = [];
		var lines = [];

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
		
		function createMarkerAndLine(position, title) {
			 	var marker = new kakao.maps.Marker({
			    	position: position,
			    	map: map
			  	});
			 	
				var linePath = [position];
				
				  // 이전 마커가 있을 경우 이전 마커와 현재 마커 사이에 선을 생성합니다
				  if (markers.length > 0) {
				    var prevMarker = markers[markers.length - 1];
				    var prevPosition = prevMarker.getPosition();
				    linePath.unshift(prevPosition);

				    var line = new kakao.maps.Polyline({
				      path: linePath,
				      strokeWeight: 3,
				      strokeColor: '#ff0000',
				      strokeOpacity: 0.7,
				      strokeStyle: 'solid'
				    });

				    line.setMap(map);
				    lines.push(line);
				  }

				  markers.push(marker);
				}


		function addTableRow() {
			var table = $("#journey-table");

			// Create a new row element
			var newRow = $("<tr>");

			// Create the first cell with input and search button
			var cell1 = $("<td>");
			var input = $("<input>").attr("type", "text")
					.addClass("placeInput").attr("placeholder", "장소 추가");
			var searchBtn = $("<button>")
					.attr("type", "button")
					.addClass("btn-search")
					.html(
							"검색<span class='material-symbols-outlined'> search </span>");
			searchBtn.on("click", function() {
				openPopup(this);
			});

			// Create the second cell with input and add button
			var cell2 = $("<td>");
			var memoInput = $("<input>").addClass("memoInput").attr("type",
					"text").attr("placeholder", "메모 추가");
			var addBtn = $("<button>").addClass("btn-add").attr("type",
					"button").html(
					"<span class='material-symbols-outlined'>add</span>");
			addBtn.on("click", addTableRow);

			// Append input and buttons to the cells
			cell1.append(input, searchBtn);
			cell2.append(memoInput, addBtn);

			// Append cells to the new row
			newRow.append(cell1, cell2);

			// Find the row with btn-submit and btn-cancel
			var submitCancelRow = table.find("tr:has(#btn-submit)");

			// Insert the new row before the submitCancelRow
			newRow.insertBefore(submitCancelRow);
		}

		function openPopup(button) {
			window.open("mapmap.do", "Map Popup", "width=800,height=500");

			// Store the clicked button element in a global variable
			window.clickedButton = button;
		}

		function receiveValues(placeName, address) {
			var placeInput = window.clickedButton.parentElement.getElementsByClassName('placeInput')[0];
			placeInput.value = placeName + '_' + address;
			
			// 주소로 좌표를 검색합니다
			  geocoder.addressSearch(address, function(result, status) {
			    // 정상적으로 검색이 완료됐으면 
			    if (status === kakao.maps.services.Status.OK) {
			      var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

			      // 결과값으로 받은 위치를 마커로 표시합니다
			      var marker = new kakao.maps.Marker({
			        map: map,
			        position: coords
			      });

			      createMarkerAndLine(coords, placeName);
			      
			      // 인포윈도우로 장소에 대한 설명을 표시합니다
			      var infowindow = new kakao.maps.InfoWindow({
			        content: '<div style="width:150px;text-align:center;padding:6px 0;">' + placeName + '</div>'
			      });
			      infowindow.open(map, marker);

			      // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			      map.setCenter(coords);
			    }
			  });
		}

		$(document).ready(function() {

			var placeInputValues = []; // Array to store the values
			var memoInputValues = [];

			$('#btn-submit').click(function() {
				var placeInputs = $('.placeInput'); // Get all placeInput fields
				var memoInputs = $('.memoInput');

				var title = $('#title').val();

				placeInputs.each(function() {
					placeInputValues.push($(this).val()); // Add the value to the array
					console.log($(this).val());
				});

				memoInputs.each(function() {
					memoInputValues.push($(this).val());
					console.log($(this).val());
				});

				console.log(placeInputValues);
				console.log(memoInputValues);

				// Send the data to the server
				$.ajax({
					type : "POST",
					url : "/dreamjourney/mypage/addjourneyok",
					traditional : true,
					data : {
						placeInputValues : placeInputValues,
						memoInputValues : memoInputValues,
						title : title
					},
					success : function(response) {
						console.log(response);
						// Handle the success response here
					},
					error : function(error) {
						console.log(error);
						// Handle the error response here
					},
					complete : function() {
						// This block will be executed regardless of success or error
					}
				});
			});
		});
	</script>


</body>

</html>






