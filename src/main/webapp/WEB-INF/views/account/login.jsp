<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">

<style>
	.form-signin {
     height: auto;
     padding: 50px;
     margin: 0;
     position: relative;
     width: 500px;
   }
   
   .form-signin .checkbox {
     font-weight: 400;
   }
   
   .form-signin .form-floating:focus-within {
     z-index: 2;
   }
   
   .form-signin input[type="email"] {
     margin-bottom: -1px;
     border-bottom-right-radius: 0;
     border-bottom-left-radius: 0;
   }
   
   .form-signin input[type="password"] {
     margin-bottom: 10px;
     border-top-left-radius: 0;
     border-top-right-radius: 0;
   }
</style>

<head>
    <meta charset="utf-8">
    <title>TRAVELER - Free Travel Website Template</title>
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
</head>

<body>
	
	
    

    <%@ include file="/resources/inc/header.jsp" %>
    
     <!-- 제목 쓰는곳 -->
    <div class="container-fluid page-header">
        <div class="container">
            <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 400px">
                <h3 class="display-4 text-white text-uppercase">로그인</h3>
                
            </div>
        </div>
    </div>
    <!-- Header End -->	

	<!-- 내용쓰는곳 -->
 	<div class="container-fluid" style="height: 700px; padding-left: 100px; padding-right: 100px;">
 		<div style="display: flex; justify-content: space-around; position: relative; top: 100px;">
	      <div style="text-align: center; display: flex; align-content: center;">
	         <img src="/dreamjourney/resources/img/Journey.png" style="width: 300px;">
	      </div>
	    <main class="form-signin">
	      <div>
		      <form action="login.jsp" method="post">
		         <h1 class="h3 mb-3 fw-normal">로그인 페이지</h1>
		         
		         <div class="form-floating">
		            <input type="text" class="form-control" id="id" placeholder="아이디 입력...">
		            <label for="id">아이디</label>
		         </div>
		         <div class="form-floating">
		            <input type="password" class="form-control" id="pwd" placeholder="Password">
		            <label for="pwd">비밀번호</label>
		         </div>
		         
		         <div class="checkbox mb-3">
		            <label>
		               <input type="checkbox" value="remember-me"> 아이디 저장
		            </label>
		         </div>
		         <button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>
		         
		      </form>
		      <div class="wrap">
			   <div class="title">로그인</div>
			     <a class="p-2" href="https://kauth.kakao.com/oauth/authorize?client_id=f98ab1de86240e7d44a67bba135eaebc&redirect_uri=	
http://localhost/dreamjourney/index&response_type=code">
			     	<!-- REST_API키 및 REDIRECT_URI는 본인걸로 수정하세요 -->
			        
			      	<div class="kakao_i"></div>
			      	<div class="kakao_txt">카카오톡으로 간편로그인 </div>
			   	</a>
			</div>

	      </div>
	   </main>
 		</div>
	</div>
                


    <%@ include file="/resources/inc/footer.jsp" %>
    
<script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.min.js" charset="utf-8"></script>
    
<script>
	window.addEventListener('scroll', function() {
		var chatcounseling = document.querySelector('.chatcounseling');
		var scrollHeight = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
		var windowHeight = window.innerHeight;
		var targetHeight = windowHeight * 0.2;

		if (scrollHeight > targetHeight) {
		  chatcounseling.classList.add('show');
		} else {
		  chatcounseling.classList.remove('show');
		}
	});
</script>
</body>

</html>






