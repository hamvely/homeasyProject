<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

    div{box-sizing: border-box;}
    div{outline:1px solid violet;}

    /* 윤곽 크기 */
    .wrap{width:1200px; height:1650px; margin:auto;}
    .wrap>div{width:100%;}

    /* 상단바 크기 */
    #mainHeader{height:250px;}
    
    #empty{height:50px;}
    
    /* 컨텐츠 크기 */
    #content{height:1150px;}
    #content div{float:left;}

    /* 본문 크기 */
    #content_1{width:1100px; height:100%;}

    /* 리모콘바 크기 */
    #content_2{width:100px; height:100%;} 

    /* 하단바 크기 */
    #footer{height:200px;}
    
    
    /* 컨텐츠 스타일 */
    p{font-size:25px; font-weight:bolder; margin-left:20px;}

    #homeVisit{height:350px; width:100%;}
    #homeVisitContent{height:349px; display: flex; width:33%;}
    #homeVisitContent img{height:380px; display: block; margin:auto;}
    
    #product{height:300px; width:100%;}
    #productContent{height:300px; display: flex; width:25%;}
    #productContent img{height:300px; display: block; margin:auto;}

    a{text-decoration:none;}

</style>
</head>
<body>   
    <!-- 전체 화면 -->
    <div class="wrap">

        <!-- 상단바 -->
        <div id="mainHeader"><%@ include file="views/common/mainHeader.jsp" %></div>

		<div id="empty"></div>

        <!-- 컨텐츠 -->
        <div id="content">
            <!-- 본문 -->
            <div id="content_1">
                
                <div id="knowHow" style="height:500px; width:100%;">
                
                
                </div>



                <div id="homeVisit">
                    <div style="height:1px; width:100%;"><p>인기노하우</p></div>
                    <div id="homeVisitContent"><img src="resources/img/sample/knowhow (1).jpeg"></div>
                    <div id="homeVisitContent"><img src="resources/img/sample/knowhow (4).jpg"></div>
                    <div id="homeVisitContent"><img src="resources/img/sample/knowhow (12).jpg"></div>
                </div>
                
                <div id="product">
                    <div style="height:1px; width:100%;"><p>인기상품</p></div>
                    <div id="productContent"><img src="resources/img/sample/popular (5).png"></div>
                    <div id="productContent"><img src="resources/img/sample/popular (1).jpg"></div>
                    <div id="productContent"><img src="resources/img/sample/popular (3).jpg"></div>
                    <div id="productContent"><img src="resources/img/sample/popular (4).jpg"></div>
                </div>


            </div>

            <!-- 리모콘바 -->
            <div id="content_2"><%@ include file="views/common/mainRight.jsp" %></div>
        </div>

        <!-- 하단바 -->
        <div id="footer"><%@ include file="views/common/footer.jsp" %></div>

    </div>
	
	
	
	<script
      src="https://kit.fontawesome.com/6478f529f2.js"
      crossorigin="anonymous"
    ></script>
</body>
</html>