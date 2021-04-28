<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

    div{box-sizing: border-box;}

    /* 윤곽 크기 */
    .wrap{width:1200px; height:1650px; margin:auto;}
    .wrap>div{width:100%;}

    /* 상단바 크기 */
    #mainHeader{height:300px;}
    
    /* 컨텐츠 크기 */
    #content{height:1150px;}
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
        <div id="mainHeader"><%@ include file="views/common/mainHeader.jsp" %></div>

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