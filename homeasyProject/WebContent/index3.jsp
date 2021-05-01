<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member"%>
<% 
	Member loginUser = (Member)session.getAttribute("loginUser"); 
	String contextPath = request.getContextPath();
%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOMEASY</title>
<style>

    div{outline: 1px solid violet; box-sizing: border-box;}

    /* 윤곽 크기 */
    .wrap{width:1200px; height:1650px; margin:auto;}
    .wrap>div{width:100%;}

    /* 상단바 크기 */
    #header{height:150px;}

    /*#navigator{height:100px;}*/

    /* 컨텐츠 크기 */
    #content{height:1200px;}
    #content div{float:left;}

    /* 본문 크기 */
    #content_1{width:1100px; height:100%;}

    /* 리모콘바 크기 */
    #content_2{width:100px; height:100%;} 

    /* 하단바 크기 */
    #footer{height:200px;}

</style>
</head>
<body>   
    <!-- 전체 화면 -->
    <div class="wrap">

        <!-- 상단바 -->
        <div id="header"><%@ include file="views/common/header.jsp" %></div>
        
        <!-- 네비게이션바 -->
        <<div id="navigator"></div>

        <!-- 컨텐츠 -->
        <div id="content">
            <!-- 본문 -->
            <div id="content_1"></div>

            <!-- 리모콘바 -->
            <div id="content_2"><%@ include file="views/common/mainRight.jsp" %></div>
        </div>

        <!-- 하단바 -->
        <div id="footer"><%@ include file="views/common/footer.jsp" %></div>

    </div>
	
</body>
</html>