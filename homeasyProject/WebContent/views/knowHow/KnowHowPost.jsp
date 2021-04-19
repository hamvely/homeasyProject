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

    .admin{
        float:right;
        margin-top:-10px;
    }
    
    .postfile{
        width:490px;
        height:449px;
        margin-top:-20px;
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
                <h3>하나씩 쏙쏙! 넣고 빼기 쉬운 신박한 이불 수납법</h3>
            </span>
            <span class="admin">
               <p>집이지 전문가</p>
            </span>
        </div>

        <br><br><br>
        <img class="postfile" src="img/knowHow/homeParty1_main.jpg">
        <a href="">
        <img class="heart" src="img/heart (1).png">
        </a>
        <a href="">
        <img class="chat" src="img/chat-bubble.png">
        </a>

        <br><br>
        <div class="content">
        <p>내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다 내용입니다</p>
        </div>

        <br>
        <input type="text" name="comment" placeholder="댓글달기..." class="comment">
        
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