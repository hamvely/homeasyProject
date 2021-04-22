<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member loginMember = (Member)session.getAttribute("loginMember");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

        .login{
            outline:1px solid darkgray;
            width:385px;
            height:551px;
            margin:auto;
        }

        .logo img{
            padding-top:25px;
            display:block; 
            margin:auto;
        }

        .id, .password{
            margin-left:23%;
            border:1px solid lightgray;
            width:210px;
            height:38px;
            border-radius:5px 5px 5px 5px;
        }


        .img1, .img2{
            width:23px;
            margin:8px 0px 0px 10px;
            float:left;
        }
        
        .password{
            margin-top:10px;
        }

        .id1{
            width:165px;
            height:35px;
            float:left;
            border:none;
        }

        .password1{
            width:165px;
            height:35px;
            float:right;
            border:none;
        }

        .loginbutton, .password_find, .nonUser{
            margin-left:23%;
            padding-top:10px;
            float:left;
        }

        .signup{
            float:left;
            margin-left:10px;
            padding-top:10px;
        }
        
        .loginbutton1, .nonUser1{
            width:213px;
            height:35px;
            border:1px;
            background-color:rgb(241, 196, 15);
            border-radius:5px;
        }

        
        a{
            text-decoration:none;
            color:white;
            text-align:center;
        }
        
        li{
            list-style:none;
            padding:9px;
            font-size:11px;
        }

        .password_find1, .signup1{
            width:100px;
            height:35px;
            border:1px;
            background-color:rgb(158, 158, 158);
            border-radius:5px;
        }

        .text1{margin-left:25%; margin-top:-10px;}


        .sns{margin-left:25%;}
        .sns img {max-width: 40px; margin-left: 20px; float: left;}
</style> 
</head>
<body>
		<div class="login">

            <div class="logo">
                <a href=""><img src="resources/img/logo/logo (1).png" style="width:246px;"></a>
            </div>
            <br><br>
            
            <div class="id">
                    <img class="img1" src="resources/img/icon/user (2).png">
                    <input class="id1" type="text" name="id">
            </div>

            <div class="password">
                    <img class="img2" src="resources/img/icon/key (1).png">
                    <input class="password1" type="password" name="password">
            </div>

            <div class="loginbutton">
                <a href="">
                    <div class="loginbutton1">
                       <li>로그인</li>
                    </div>
                </a>
            </div>

            <div class="password_find">
                <a href="">
                    <div class="password_find1">
                       <li>비밀번호 찾기</li>
                    </div>
                </a>
            </div>

            <div class="signup">
                <a href="">
                    <div class="signup1">
                       <li>회원가입</li>
                    </div>
                </a>
            </div>
            <br><br><br><br><br><br>
            <div class="text1">
                <li>SNS계정으로 간편 로그인/회원가입</li>
            </div>
            
            <div class="sns">
                <div class="facebook">
                    <a href=""><img src="resources/img/icon/facebook.png"></a>
                </div>

                <div class="kakao">
                    <a href=""><img src="resources/img/icon/kakao.png"></a>
                </div>

                <div class="naver">
                    <a href=""><img src="resources/img/icon/naver.png"></a>
                </div>
            </div>


            <div class="nonUser">
                <a href="">
                    <div class="nonUser1">
                       <li>비회원 주문 조회하기</li>
                    </div>
                </a>
            </div>
        </div>
</body>
</html>