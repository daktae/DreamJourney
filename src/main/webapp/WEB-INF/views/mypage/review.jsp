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
	padding: 15px;
}

#content {
	width: auto;
}

#reviews-container {
	margin-top: 20px;
	/* Adjust the margin-top value to set the desired vertical spacing */
}

.review-box {
	border: 1px solid #CCCCCC;
	border-radius: 20px;
	margin-right: 30px;
	margin-left: 30px;
	margin-top: 15px;
}

.review-box>table {
	width: 100%;
	height: 80px;
	margin: 15px;
}

.review-box>table>tr>td {
	padding: 30px;
}

.btn-edit {
	background-color: #5392F9;
	border: none;
	border-radius: 10px;
	color: white;
}

.btn-delete {
	background-color: #757575;
	border: none;
	border-radius: 10px;
	color: white;
}

textarea {
	border: none;
	resize: none;
}

.reply {
	background-color: #D9D9D9;
}

#btn-accommodate {	
	width: 45px;
	height: 30px;
	background-color: #FFBF00;
	border: none;
	border-radius: 20px;
	color: white;
}

#btn-activity {
	background-color: #7AB730;
	border: none;
	border-radius: 20px;
	color: white;
}

#btn-restaurant {
	background-color: #5F8D4E;
	border: none;
	border-radius: 20px;
	color: white;
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

			<div style="margin-top: 15px; margin-left: 15px;">내 리뷰</div>

			<div>
				<button id="btn-accommodate">숙박</button>
				<button id="btn-activity">액티비티</button>
				<button id="btn-restaurant">맛집</button>
			</div>

			<div id="reviews-container"></div>

		</div>
	</div>

	<%@ include file="/resources/inc/footer.jsp"%>

	<script>
	
	
		// default
		$(document).ready(function() {
			updateData('accommodate');
		});

		
		
		// 버튼 핸들링
		$("#btn-accommodate").click(function() {
			updateData('accommodate');
		});
		$("#btn-restaurant").click(function() {
			updateData('restaurant');
		});
		$("#btn-activity").click(function() {
			updateData('activity');
		});

		
		
		// 리뷰 데이터 호출
		function updateData(selected) {

			var url = '';

			if (selected === 'accommodate' || selected === 'activity') {
				url = 'bookablereview';
			} else {
				url = 'unbookablereview';
			}

			$.ajax({
				url : url,
				type : 'GET',
				dataType : 'json',
				data : {
					selected : selected
				},
				success : function(response) {
					tablehandling(selected, response);
				},
				error : function(a, b, c) {
					console.log(a, b, c);
				}
			});

		} // updateData()
 
		
		

		// 리뷰 데이터로 테이블 형성
		function tablehandling(selected, result) {

			// 컨테이너 형성
			var container = $('#reviews-container');
			container.empty();

			for (var i = 0; i < result.length; i++) {

				(function() {

					var review = result[i];

					// 테이블 형성
					var table = $('<table>');
					var editButton = $('<button class="btn-edit">수정</button>');
					var deleteButton = $('<button class="btn-delete">삭제</button>');

					// column 너비 조정
					var colgroup = $('<colgroup>');
					colgroup.append('<col width="20%">');
					colgroup.append('<col width="35%">');
					colgroup.append('<col width="20%">');
					colgroup.append('<col width="20%">');
					table.append(colgroup);

					var tbody = $('<tbody>');

					var row = $('<tr>');

					// 리뷰 정보 appending
					row.append('<td>' + review.score + '</td>'); //평점
					row.append('<td>' + review.name + '</td>'); //장소명

					var rdate = review.rdate.substring(0, 10);
					row.append('<td>' + rdate + '</td>'); //작성일

					// 수정, 삭제 버튼 appending
					row.append($('<td>').append(editButton).append(deleteButton));

					tbody.append(row);

					// 리뷰 내용 appending
					var contentrow = $('<tr>');
					var contentcell = $('<td colspan="3">' + review.content	+ '</td>');

					contentrow.append(contentcell);
					tbody.append(contentrow);

					table.append(tbody);
					container.append(table);

					var seq = '';

					switch (selected) {
					case 'accommodate':
					case 'activity':
						seq = review.review_seq;
						break;
					case 'restaurant':
						seq = review.freview_seq;
						break;
					}

					editButton.click(function() {
						 onedit(seq, selected, editButton, deleteButton);
					});

				})();
			}
		} // tablehandling()
		
		
		
		function onedit(seq, selected, editButton, deleteButton) {
			
			console.log('edit');

			var contentCell = editButton.closest('tr').next('tr').find('td');
			var content = contentCell.text();
			var rowspan = contentCell.prop('rowspan'); 
			  
			contentCell.empty();

			var textarea = $('<textarea style="width:100%;">' + content + '</textarea>');
			textarea.val(content); 
			  
			textarea.attr('rows', Math.ceil(content.length / 50)); // textarea 길이 조절
			contentCell.append(textarea);
			
			// 버튼 교환
			editButton.hide();
			deleteButton.hide();
			
			var confirmButton = $('<button class="btn-edit">확인</button>');
			var cancelButton = $('<button class="btn-delete">취소</button>');
			
			var buttonCell = editButton.parent();
			buttonCell.append(confirmButton);
			buttonCell.append(cancelButton);
			
			confirmButton.click(function() {
				var newContent = textarea.val();
				onconfirm(seq, selected, newContent);
			});

				
		} // onedit()

		
		
		// 수정 완료
		
		function onconfirm(seq, selected, newContent) {
			
			$.ajax({
				 url: 'updatereview',
				 type: 'POST', 
				 data: {
					 seq: seq,
					 selected: selected,
				 	newContent: newContent
				 },
				 success: function (response) {
				 	console.log('Data updated successfully');
				 },
				 error: function (a, b, c) {
					 console.log(a, b, c);
				 }
				 });
			
		} // onconfirm()
		
	</script>


</body>

</html>






