<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>

<style>
    div{
    box-sizing:border-box;
    }
    /*메뉴바전체*/
    #navigator{ 
        background-color: rgb(3, 79, 6);
        width:200px; 
        height:820px;
        border:10px solid rgb(3, 79, 6);
   }
   /*content영역*/
    #navi{
        padding:0;
        height:80%;
        list-style-type:none;
    }
    /*1차 메뉴*/
    #navi>li{
        width:100%;
        padding-bottom:50px;
        padding-left:10px;
    }
    /*1,2차 각 메뉴탭*/
    #navi a{
        text-decoration:none;
        font-size:20px;
        color:white;
        font-weight:900;
        height:20%;
        line-height:30px;
    }
    /*2차 메뉴*/
    #navi>li>ul{
        list-style-type:none;
        padding-top: 10px;
        padding-left:2px;
        font-size:14px;
    }
    /*2차 메뉴탭*/
    #navi>li>ul a{font-size:14px;}
</style>
</head>
<body>


	<div id="navigator">
		<ul id="navi">
           <li><a href="">회원관리</a>
               <ul>
                   <li><a href="<%= contextPath %>/list.me?currentPage=1">회원조회/수정/삭제</a></li>
                   <li><a href="<%= contextPath %>/list.co?currentPage=1">쿠폰 관리</a></li>
               </ul>
           </li>

           <li><a href="">상품관리</a>
               <ul>
                   <li><a href="">상품조회/수정/삭제</a></li>
                   <li><a href="">재고관리</a></li>
                   <li><a href="<%= contextPath %>/list.re?currentPage=1">리뷰관리</a></li>
               </ul>
           </li>

           <li><a href="">커뮤니티 관리</a>
               <ul>
                   <li><a href="">집들이 관리</a></li>
                   <li><a href="">노하우 관리</a></li>
                   <li><a href="">질문과답변 관리</a></li>
               </ul>
           </li>

           <li><a href="">고객센터 관리</a>
               <ul>
                   <li><a href="">공지사항 관리</a></li>
                   <li><a href="">fAQ 관리</a></li>
                   <li><a href="">1:1문의 관리</a></li>
               </ul>
           </li>
       </ul>
   </div>


</body>
</html>

