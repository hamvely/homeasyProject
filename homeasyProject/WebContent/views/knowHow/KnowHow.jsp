<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.knowHow.model.vo.KnowHow"%>
    
<% String contextPath = request.getContextPath(); %>  

<%
	ArrayList<KnowHow> list = (ArrayList<KnowHow>)request.getAttribute("list");
%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        .content{
            width:1100px;
            height:1150px;
            margin:auto;
            padding-top:20px;
            padding-left:100px;
        }

        .button{
            width:100px;
            height:35px;
            border:1px;
            background-color:rgb(241, 196, 15);
            border-radius:5px;
            margin-right:-10px;
        }

        .a1{
            text-decoration:none;
            color:white;
            text-align:center;
        }


        li{
            list-style-type:none;
            text-align:center;
            padding:8px;
            font-size:14px;
        }

        .content1_1{
            width:730px;
        }

        .title, .content1_2{
            text-decoration:none;
            color:black;
        }

        .imgfile{
            width:150px; 
            height:150px; 
            float:right;
            margin:-130px 80px;
        }

        
        .imgfile1{
            width:150px; 
            height:150px; 
            float:right;
            margin:-115px 80px;
        }

        .user{
            width:38px; 
            height: 30px; 
            float:left;
        }

</style>
</head>
<body>
    <div class="content">
        <div class="button">
            <a href="" class="a1">
                <div class="question">
                   <li>정렬</li>
                </div>
            </a>
        </div>
        <br>

        <div class="content1">
             <a href="<%=contextPath %>/post.how" class="title">
                 <h3>w4tw</h3>
                </a>
                <div class="content1_1">
                    <a href="" class="content1_2">
                        <p>wtt4wt</p>
                    </a>
                </div>
                <a href="">
                    <img src="" class="imgfile">
                </a>
                <br><br>
                <hr>
        </div>

        <br>
        <div class="content1">
                <a href="" class="title">
                    <h3>하나씩 쏙쏙! 넣고 빼기 쉬운 신박한 이불 수납법</h3>
                </a>
                <div class="content1_1">
                <a href="" class="content1_2">
                    <p>벌써 봄날씨가 완연해졌는데요. 슬슬 이불을 바꿀 때죠? 오늘은 이불을 정리하는 저만의 방법을 소개 해보려고 해요.</p>
                </a>
                </div>
                <a href="">
                <img src="" class="imgfile1">
            </a>
            <br><br>
            <hr>
        </div>

        <br>
        <div class="content1">
                <a href="" class="title">
                    <h3>하나씩 쏙쏙! 넣고 빼기 쉬운 신박한 이불 수납법</h3>
                </a>
                <div class="content1_1">
                    <a href="" class="content1_2">
                        <p>벌써 봄날씨가 완연해졌는데요. 슬슬 이불을 바꿀 때죠? 오늘은 이불을 정리하는 저만의 방법을 소개 해보려고 해요.</p>
                    </a>
                </div>
                <a href="">
                <img src="" class="imgfile1">
            </a>
            <br><br>
            <hr>
        </div>

        <br>
        <div class="content1">
                <a href="" class="title">
                    <h3>하나씩 쏙쏙! 넣고 빼기 쉬운 신박한 이불 수납법</h3>
                </a>
                <div class="content1_1">
                    <a href="" class="content1_2">
                        <p>벌써 봄날씨가 완연해졌는데요. 슬슬 이불을 바꿀 때죠? 오늘은 이불을 정리하는 저만의 방법을 소개 해보려고 해요.</p>
                    </a>
                </div>
                <a href="">
                <img src="" class="imgfile1">
            </a>
            <br><br>
            <hr>
        </div>

        <br>
        <div class="content1">
                <a href="" class="title">
                    <h3>하나씩 쏙쏙! 넣고 빼기 쉬운 신박한 이불 수납법</h3>
                </a>
                <div class="content1_1">
                    <a href="" class="content1_2">
                        <p>벌써 봄날씨가 완연해졌는데요. 슬슬 이불을 바꿀 때죠? 오늘은 이불을 정리하는 저만의 방법을 소개 해보려고 해요.</p>
                    </a>
                </div>
                <a href="">
                <img src="" class="imgfile1">
            </a>
            <br><br>
            <hr>
        </div>
    </div>
</body>
</html>