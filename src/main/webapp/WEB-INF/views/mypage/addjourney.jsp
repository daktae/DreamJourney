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
						<td colspan="2"><input type="text" placeholder="여행 제목"></td>
					</tr>
					<tr>
						<td>여행 시작일<span class="material-symbols-outlined">calendar_month</span></td>
						<td>여행 종료일<span class="material-symbols-outlined">calendar_month</span></td>
					</tr>
					<tr>
						<td colspan="2"><img src="../resources/img/mypage/map.png"
							width="480" height="260"></td>
					</tr>
					<tr>
						<td><b>day1</b> 07.02</td>
						<td></td>
					</tr>
					<tr class="temp">
						<td><input type="text" name="placeInput" class="placeInput"
							placeholder="장소 추가">
							<button type="button" class="btn-search" onclick="openPopup(this)">
								검색<span class="material-symbols-outlined"> search </span>
							</button></td>
						<td><input type="text" name="memoInput" class="memoInput" placeholder="메모 추가">
							<button type="button" class="btn-add" onclick="addTableRow()">
								<span class="material-symbols-outlined">add</span>
							</button></td>
					</tr>
					<tr>
						<td colspan="2">
							<button id="btn-submit" type="submit">등록하기</button>
							<button id="btn-cancel">취소하기</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<!-- Blog End -->
	<%@ include file="/resources/inc/footer.jsp"%>

	<script>
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
			var memoInput = $("<input>").addClass("memoInput").attr("type", "text").attr(
					"placeholder", "메모 추가");
			var addBtn = $("<button>").addClass("btn-add").attr("type", "button").html(
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
			var placeInput = window.clickedButton.parentElement
					.getElementsByClassName('placeInput')[0];
			placeInput.value = placeName + ', ' + address;
		}

		$(document).ready(function() {
		    $('#btn-submit').click(function() {
		        var placeInputs = $('.placeInput'); // Get all placeInput fields
		        var memoInputs = $('.memoInput');

		        var placeInputValues = []; // Array to store the values
		        var memoInputValues = [];

		        placeInputs.each(function() {
		            placeInputValues.push($(this).val()); // Add the value to the array
		            console.log($(this).val());
		        });
		        
		        memoInputs.each(function() {
		            memoInputValues.push($(this).val());
		            console.log($(this).val());
		        });

		        // Send the data to the server
		        $.ajax({
		            type: "POST",
		            url: "/dreamjourney/mypage/addjourneyok",
		            data: {
		                placeInputValues: placeInputValues,
		                memoInputValues: memoInputValues
		            },
		            success: function(response) {
		                console.log(response);
		                // Handle the success response here
		            },
		            error: function(error) {
		                console.log(error);
		                // Handle the error response here
		            },
		            complete: function() {
		                // This block will be executed regardless of success or error
		            }
		        });
		    });
		});



	</script>


</body>

</html>






