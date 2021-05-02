<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        .wrap{
            width:1200px;
            height:800px;
            background-image: url("#");
            margin:auto;
        }

        .login{
            width:431px;
            height:431px;
            background-color:rgb(216, 216, 216);
            border-radius:25%;
            margin-left:33%;
            margin-top:14%;
        }

        .logo{
            width:224px;
            height:78px;
            padding-left:21%;
            padding-top:40px;
        }

        .text1{
            color:rgb(100, 100, 100);
            text-align:center;
        }
        
        .id, .password{
            margin-left:15%;
            border:1px solid lightgray;
            width:310px;
            height:46px;
        }

        .password{margin-top:10px;}

        .id1, .password1{
            width:257px;
            height:46px;
            float:left;
            border:none;
            border:1px solid rgb(189, 185, 185);
            border-radius:5px;;
        }

        .img1, .img2{
            float:left;
            width:42px; 
            height:46px;
        }

        .check{
            width:20px;
            height:20px;
            margin-left:35%; 
            float: left;   
        }

        .remember_email{
            text-align: center;
            float:left;
            margin-top:2px;
            margin-left:9px;
            font-size:13px;}
        
        .loginbutton{
            width:146px;
            height:50px;
            background-color: darkgreen;
            border-radius:5px;
            margin:auto;
            margin-top:10%;
        }

        li{
            list-style:none;
            font-size:18px;
            padding-top:12px;
        }

        a{
            text-decoration:none;
            color:white;
            text-align:center;
        }
    </style>
</head>
<body>
    <div class="wrap">
        <div class="login">
            <div class="logo">
                <a href="">
                    <img src="">
                </a>
            </div>
        
            <div class="text1">
                <h4>통합 관리 홈페이지</h4>
            </div>

            
            <div class="id">
                    <img class="img1" src="">
                    <input class="id1" type="text" name="id" placeholder="이메일 입력">
            </div>
            
            <div class="password">
                    <img class="img2" src="">
                    <input class="password1" type="password" name="password" placeholder="비밀번호 입력">
            </div>

            <br>
            <input class="check" type="checkbox">
            <p class="remember_email">이메일 기억하기</p>
            
            <div class="loginbutton">
                <a href="">
                    <div class="loginbutton1">
                       <li>로그인</li>
                    </div>
                </a>
            </div>

        </div>

    </div>
</body>
</html>