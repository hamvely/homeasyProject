<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .post{
        width:490px;
        height:1150px;
        margin:auto;
        padding-left:100px;
    }
    .title{padding-top:10px;}

    .title1{
        text-align:center;
    }

    .user{
        padding-top:10px;
    }

    .user1{
        width:58px;
        height:50px;
        float:left;
        margin-top:12px;
    }
    
    
    .postfile{
        width:490px;
        height:449px;
        margin-top:-89px;
    }

    .heart, .chat{
        width:58px;
        height:50px;
    }

    .chat{float:right;}

    .content{
        border:1px solid rgb(186, 187, 189);
        width:490px; 
        height:200px; 
        border-radius:5px;
        
    }

    .comment{
        width:484px; 
        height:30px; 
        border-radius:5px;
        border:1px solid rgb(186, 187, 189);
    }

    a{text-decoration:none;}

    li{
        list-style:none;
        font-size:12px;
    }

    .submit{
        width:60px;
        height:26px;
        border-radius:5px;
        background-color:rgb(241, 196, 15);
        float:right;
    }

    .submit1{
        color:black;
        text-align:center;
        padding-top:5px;
    }
</style>
</head>
<body>
    <div class="post">
        <div class="title">
            <span class="title1">
                <h3>현관 옆 화장실 어떻게 해야 할까요?</h3>
            </span>
            <div class="user">
                <img class="user1" src="">
                <div class="id">
                    <h1>user01</h1>
                </div>
            </div>
        </div>

        <br><br><br>
        <img class="postfile" src="">
        <a href="">
        <img class="heart" src="">
        </a>
        <a href="">
        <img class="chat" src="">
        </a>

        <br><br>
        <div class="content">
        	<p>
        	내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 
        	내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 
        	내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 
        	내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 
        	내용입니다 내용입니다 내용입니다 내용입니다 내용입니다
        	</p>
        </div>

        <br>
        <input type="text" name="comment" placeholder="답변 달기..." class="comment">
        
        <br><br>
        <div class="submit">
        <a href="">
            <div class="submit1">
               <li>게시</li>
            </div>
        </a>
        </div>
    </div>
</body>
</html>