<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
   <%@ include file="/resources/inc/asset.jsp" %>
<style>
	
</style>
</head>
<body>
	<%@ include file="/resources/inc/header.jsp" %>
	
	    <div class="container-fluid page-header">
        <div class="container">
            <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 400px">
                <h3 class="display-4 text-white text-uppercase">회원가입</h3>
            </div>
        </div>
    </div>
    
	 <div class="container_wj">
	 	<div class="container_regi">
	 		<h2 style="text-align:center; padding-top:30px;">회원가입</h2>
	 		<div style= "max-width:100%; height:65vh; display:flex;">
	 		<div class="regicon_wj">
	 		<div class="mb-3" style="margin:0 auto;">
  <label for="exampleFormControlInput1" class="form-label">이름</label>
  <input type="text" class="form-control" id="uname" placeholder="이름(10자 이내)" style="width:90%;">
</div>
	 		<div class="mb-3" style="margin:0 auto;">
  <label for="exampleFormControlInput1" class="form-label">닉네임</label>
  <input type="text" class="form-control" id="uname" placeholder="닉네임(3~15자 이내)" style="width:90%;">
</div>
	 		<div class="mb-3" style="margin:0 auto;">
  <label for="exampleFormControlInput1" class="form-label">이메일</label>
  <input type="email" class="form-control" id="uname" placeholder="example001@naver.com" style="width:90%;">
</div>
	 		<div class="mb-3" style="margin:0 auto;">
  <label for="exampleFormControlInput1" class="form-label">비밀번호</label><span> </span>
  <input type="password" class="form-control" id="uname" placeholder="비밀번호(6~12자 이내, 영문/숫자/특수문자 최소 1개 포함)" style="width:90%;">
</div>

	 		<div class="mb-3" style="margin:0 auto;">
  <label for="exampleFormControlInput1" class="form-label">비밀번호 확인</label>
  <input type="password" class="form-control" id="uname" placeholder="비밀번호는 동일하게 입력하세요" style="width:90%;">
</div>

	 		<div class="mb-3" style="margin:0 auto;">
  <label for="exampleFormControlInput1" class="form-label">전화번호</label>
  <input type="text" class="form-control" id="uname" placeholder="전화번호" style="width:90%;">
</div>
	 		</div>
	 		<div class="regicon_wj">
	 		<div>
	 		<b style="color:#000000">
	 		개인정보 처리방침
	 		</b>
	 		</div>
	 		<div style="border-top:1px solid #b3b3b3; width:80%; margin-top:10px;">
	 		<div>
	 		회원가입을 위해 모든 개인정보 처리방침에 동의해 주시기 바랍니다.
	 		</div>
	 		<div class="form-check" style="margin-top:20px;">
  <input class="form-check-input" type="checkbox" value="" id="allcheck">
  <label class="form-check-label" for="flexCheckDefault">
    <b style="color:#000000;">본인은 아래의 모든 개인정보 처리방침에 동의합니다</b>
  </label>
</div>
<div style="margin-top:10px; background-color:#EDF1FC;">
	 		<div class="form-check" style="margin-top:20px;">
  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
  <label class="form-check-label" for="flexCheckDefault">
    본인은 본 서비스 약관에 동의하며 18세 이상임을 확인합니다. <span style="color:#6268FF;">[필수]</span>
  </label>
</div>
	 		<div class="form-check" style="margin-top:20px;">
  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
  <label class="form-check-label" for="flexCheckDefault">
    본인은 개인정보 처리방침에 따라 본인의 개인 정보를 사용하고 수집하는 것에 동의합니다. <span style="color:#6268FF;">[필수]</span>
  </label>
</div>
	 		<div class="form-check" style="margin-top:20px;">
  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
  <label class="form-check-label" for="flexCheckDefault">
    본인은 개인정보 처리방침에 따라 제 3자에게 본인의 개인 정보를 제공하는 것에 동의합니다. <span style="color:#6268FF;">[필수]</span>
  </label>
</div>
</div>
	 		</div>
	 		</div>
	 		</div>
	 		<div style="display:flex; justify-content:center;">
	 <button type="button" class="btn btn-primary">회원가입</button>
<button type="button" class="btn btn-secondary" style="margin-left:30px; background-color:#dcdcdc" onclick="history.back()">돌아가기</button>
</div>
	 	</div>
	 </div>
	<%@ include file="/resources/inc/footer.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
var allcheck = document.querySelector('#allcheck');
var checkboxes = document.querySelectorAll('input[type="checkbox"]:not(#allcheck)');

allcheck.addEventListener('change', function() {
  checkboxes.forEach(function(checkbox) {
    checkbox.checked = allcheck.checked;
  });
});
</script>
</body>
</html>






