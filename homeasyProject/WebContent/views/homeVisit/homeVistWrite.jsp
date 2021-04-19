<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        .wrap{
            width:1100px;
            height:1150px;
            margin:auto;
            padding-left:100px;
        }

        .file{
            width:477px; 
            height:285px;
            float: left;
            margin-left:44px;
            background-color:rgb(224,224, 224); 
        }

        .file1{
           width:46px;
           height:43px;
        }
      
        .f1{
            font-size: 19px;
            text-align:center;
            margin-top:0;
            color:black;
        }

        .photoFile{
            text-align:center;        
        }

        li{
            list-style-type:none;
            text-align:center;
            padding:8px;
            font-size:14px;
        }

        .title{
            width:342px; 
            height:40px;
            border-radius:5px;
            border:1px solid rgb(186, 187, 189);
        }

        .postwrite{
            width:342px; 
            height:181px;
            border-radius:5px;
            border:1px solid rgb(186, 187, 189);
        }

        .content2{
            width:342px; 
            height:300px;
            float: left;
            margin-left:40px;
        }

        .loginbutton{
            width:100px;
            height:35px;
            border:1px;
            background-color:rgb(241, 196, 15);
            border-radius:5px;
            float:right;
            margin-right:-10px;
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
        <div class="content1">
            <h1>집들이 글쓰기</h1>

            <a href="">
                <div class="file">
                    <br><br><br><br><br>
                        <div class="photoFile">
                            <img class="file1" src="">
                        </div>
                    <p class="f1">사진올리기</p>
                </div>
            </a>

            
            <div class="content2">
                <input class="title" type="text" name="name" placeholder="제목">
                <br><br>

                <input class="postwrite" type="text" name="postwrite" placeholder="내용을 입력해주세요" >
                <br><br>

                <div class="loginbutton">
                    <a href="">
                        <div class="loginbutton1">
                           <li>올리기</li>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>