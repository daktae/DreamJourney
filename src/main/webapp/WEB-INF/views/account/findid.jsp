<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://me2.do/5BvBFJ57">
<style>

</style>
</head>
<body>
	<!--  -->
	<div class="mb-3" style="margin: 0 auto;">
						<label for="exampleFormControlInput1" class="form-label">이름</label>
						<input type="text" class="form-control" id="name" required name="name"
							placeholder="이름" style="width: 90%;"
							onkeyup="checkReg(event)" maxlength="8">
					</div>
	<div class="mb-3" style="margin: 0 auto;">
						<label for="exampleFormControlInput1" class="form-label">전화번호</label><button id="telcheckBtn" style="margin-left:10px; margin-bottom:10px;" class="btn btn-primary" type="button" onclick="requestCert()">전화번호 인증</button>
						<input type="text" required class="form-control" id="tel" name="tel" style="width:90%;"
							placeholder="번호를 인증하세요." readonly 
							>											
					</div>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script>
	function checkReg(event) {
		//const regExp = /[^0-9a-zA-Z]/g; // 숫자와 영문자만 허용
		const regExp = /[^ㄱ-ㅎ|가-힣]/g; // 한글만 허용
		const del = event.target;
		if (regExp.test(del.value)) {
			  alert('한글만 입력해주세요.');
		    del.value = del.value.replace(regExp, '');
		}
	}; 
	
	const userCode = "imp45442441";
	IMP.init(userCode);			
	function requestCert() {
		IMP.certification({
			pg: "inicis_unified",
			merchant_uid: "MIIiasTest", // 주문 번호
			popup: false // PC환경에서는 popup 파라미터가 무시되고 항상 true 로 적용됨
		}, function (rsp) { //callback
		    if (rsp.success) {
		        console.log(rsp);
		       	// 인증 성공 시 로직,
		        $.ajax({
		            url: "/dreamjourney/telCheck2",
		            method: "POST",
		            dataType:'json',		
		            data: { imp_uid: rsp.imp_uid },
		            success: function(data) {
		               console.log("성공");
		               location.href="/dreamjourney/findidok?tel="+data.tel;
		            },
		            error: function() {
		                alert("에러입니다");
		                document.location.reload();
		            }
		        });
		    } else {
		        // 인증 실패 시 로직,
		        alert("인증에 실패하였습니다. 에러 내용: " + rsp.error_msg);
		    }
		    });
	}

		/* 핸드폰인증을 해야만함 */
	$("#regForm").on("submit", function() {
		var telValue = $("#tel").val();
		
		if (!telValue) {
			alert("번호인증이 필요합니다.");
			return false; // 폼 제출 중지
		}
		
		// 추가 유효성 검사 로직
			
		// 폼 제출
		return true;
	});	

</script>
</body>
</html>






