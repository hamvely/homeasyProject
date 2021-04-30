<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
        width: 200px;
        height: 1150px;
        margin:auto;
    }

    .profile{
        width: 100%;
        height: 300px;
        outline: none;
        box-shadow: 0 0 0 2px;
        border-radius: 15px;
    }

    #menubar{
        width: 100%;
        height: 850px;
        outline: none;
        box-shadow: 0 0 0 2px;
        border-radius: 15px;
    }
    
    /* 프로필 메뉴바 */
    .profile-sidebar{
        width: 100%;
        height: 190px;
        padding-top: 20px;
    }
    
    .profile-userimg {
        display: block;
        margin: auto;
        width: 120px;
        height: 120px;
        border-radius: 50%;
        overflow: hidden;
    }

    .profile-userimg img{
        width: 100%;
        height: 100%;
    }

    .profile-usertitle{
        text-align: center;
        padding-top: 10px;
    }
    
    .profile-usertitle a{
        text-decoration:none;
        font-size: 20px;
        color: black;                
    }

    /* 스크랩/좋아요/쿠폰 */
    .profile-usermenu>div{
        display: block;
        margin: auto;
        float: left;
        width: 66px;
        height: 100px;
        text-align: center;
    }
    
    #scrap{
        padding-left: 2px;
    }

    .profile-usermenu img{
        width:30px;
    }

    .profile-usermenu a{
        text-decoration:none;
        color: black;
    }

     /* 메뉴바 div */
     #menubar{
        width: 100%;
        height: 850px;
        padding: 0;
    }

    #bar{
        margin-top: 10px;
    }

    .group{
        padding-top: 20px;
    }

    ul#bar{
        width: 100%;
        text-indent: 10px;
    }
    ul#bar, ul#bar ul{
        padding: 0;
        list-style: none;
    }
    li.group{
        margin-bottom: 3px; 
    }

    /* 메뉴바 타이틀 */
    li.group div.title{
        height: 35px;
        line-height: 35px;
        cursor: pointer;
        font-size: 18px;
    }

    /* 메뉴바 세부 카테고리 */
    ul.active li{
        margin-bottom: 2px;
        height: 35px;
        line-height: 35px;
        cursor: pointer;
    }
    ul.active a{
        display: block;
        width: 100%;
        height: 100%;
        text-decoration: none;
        color: black;
    }
</style>
</head>
<body>
    <div class="outer">
        <div class="profile">
            <div class="profile-sidebar">
                <div class="profile-userimg">
                    <a href=""><img src="resources/img/sample/cutie.jpg"></a>
                </div>
                <div class="profile-usertitle">
                    <a href="">지화뉴</a>
                </div>
            </div>


            <div class="profile-usermenu">
                <div id="scrap">
                    <a href="<%= contextPath %>/scrap.sc">
                        <img src="resources/img/icon/scrap (1).png"><br>
                        스크랩북<br>
                        98
                    </a>
                </div>
                <div id="heart">
                    <a href="<%=contextPath %>/Like.li">
                        <img src="resources/img/icon/heart (1).png"><br>
                        좋아요<br>
                        54
                    </a>
                </div>
                <div id="coupon">
                    <a href="<%= contextPath%>/coupon.co">
                        <img src="resources/img/icon/coupon.png"><br>
                        내 쿠폰<br>
                        0
                    </a>
                </div>
            </div>
        </div>

        <div id="menubar">
            <ul id="bar">
                <li class="group">
                    <div class="title"><b>혜택</b></div>
                    <ul class="active">
                        <li><a href="<%= contextPath%>/coupon.co">쿠폰 조회</a></li>
                    </ul>
                </li>
                <li class="group">
                    <div class="title"><b>구매 내역</b></div>
                    <ul class="active">
                        <li><a href="<%= contextPath%>/order.li">주문/배송 조회</a></li>
                        <li><a href="">취소/환불 조회</a></li>
                    </ul>
                </li>
                <li class="group">
                    <div class="title"><b>나의 활동</b></div>
                    <ul class="active">
                        <li><a href="<%=contextPath %>/Like.li"">좋아요</a></li>
                        <li><a href="<%= contextPath %>/scrap.sc"">스크랩북</a></li>
                        <li><a href="">나의 집들이</a></li>
                        <li><a href="<%= contextPath%>/review.li">">나의 리뷰</a></li>
                        <li><a href="<%= contextPath%>/inquire.my"">1:1 문의내역</a></li>
                    </ul>
                </li>
                <li class="group">
                    <div class="title"><b>회원 정보</b></div>
                    <ul class="active">
                        <li><a href="">회원정보수정</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</body>
</html>