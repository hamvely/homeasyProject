<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

        .logo{
            width:246px;
            height:85px;
            margin:auto;
        }

        .id, .password{
            margin-left:23%;
            border:1px solid lightgray;
            width:210px;
            height:38px;
            border-radius:5px 5px 5px 5px;
        }
        
        .password{
            margin-top:10px;
        }

        .img1, .img2{
            width:40px; 
            height:38px;
            border-radius:5px 0px 0px 5px;
            margin-left:-0.8px;
        }
      
        .img1{
            margin-top:-0.3px;
            float:left;
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

        .loginbutton, .password_find, .nonuser{
            margin-left:23%;
            padding-top:10px;
            float:left;
        }

        .signup{
            float:left;
            margin-left:10px;
            padding-top:10px;
        }
        .loginbutton1, .nonuser1{
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

        .facebook, .kakao, .naver{float: left;}

        .sns{margin-left:22%;}

        .kakao{
            margin-left:20px;
            padding-top:3px;
        }

        .naver{
            margin-left:20px;
            padding-top:4px;
        }
        .facebook img{width:60px; height:58px;}
        .kakao img{width:60px; height:55px;}
        .naver img{width:60px; height:51px;}   
</style> 
</head>
<body>
		<div class="login">
            <br>
            <div class="logo">
                <a href="">
                    <img src="" style="width:246px; height:85px;">
                </a>
            </div>
            <br>
            <br>
            <div class="id">
                    <img class="img1" src="">
                    <input class="id1" type="text" name="id">
            </div>

            <div class="password">
                    <img class="img2"src="">
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
                    <a href="">
                        <img src="">
                    </a>
                </div>

                <div class="kakao">
                    <a href="">
                        <img src="" >
                    </a>
                </div>

                <div class="naver">
                    <a href="">
                        <img src="">
                    </a>
                </div>
            </div>

            <div class="nonuser">
                <a href="">
                    <div class="nonuser1">
                       <li>비회원 주문 조회하기</li>
                    </div>
                </a>
            </div>
        </div>
</body>
</html>