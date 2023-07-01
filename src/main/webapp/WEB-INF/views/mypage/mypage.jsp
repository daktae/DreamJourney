<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">

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
    <link href="/dreamjourney/resources/css/wanjin.css" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>
<style>
	.mypagecontainer {
        display: flex;
        flex-direction: row;
    }

    #menucontainer {
    	border: 1px solid #CCCCCC;
        width: 15%;
        height: 800px; 
        margin-left: 100px; 
        margin-right: 30px;
        border-radius: 20px;
        padding-left: 30px;
        padding-right: 30px;
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
    
    #sidemenu {
    	text-align: left; 
    	width: 100%; 
    	height: 100%;
    }
</style>
<body>
    <!-- Topbar Start -->
    <%@ include file="/resources/inc/header.jsp" %>
    
     <!-- Header Start -->
    <div class="container-fluid page-header">
        <div class="container">
            <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 400px">
                <h3 class="display-4 text-white text-uppercase">제목</h3>
                
            </div>
        </div>
    </div>
    <!-- Header End -->   

    <!-- Blog Start -->
    
    <div class="container-fluid py-5 mypagecontainer">
        <%@ include file="/resources/inc/mypage_sidemenu.jsp" %>
        <div id="mypage_content">내용 만들기</div>
    </div>
    <!-- Blog End -->
    <%@ include file="/resources/inc/footer.jsp" %>
    
<scirpt>
</scirpt>


</body>

</html>






