<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.qna.model.vo.Qna"%>
    
<% String contextPath = request.getContextPath(); %>  

<%
	ArrayList<Qna> list = (ArrayList<Qna>)request.getAttribute("list");
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
            margin:-170px 80px;
        }

        
        .imgfile1{
            width:150px; 
            height:150px; 
            float:right;
            margin:-146px 80px;
        }

        .user{
            width:38px; 
            height: 30px; 
            float:left;
        }

        .id1{padding-bottom:-1px;}
</style>
</head>
<body>
    <div class="content">
        <div class="button">
            <a href="" class="a1">
                <div class="question">
                   <li>질문하기</li>
                </div>
            </a>
        </div>
        <br>

		<% for(Qna q : list){ %>
        <div class="content1">
                <a href="" class="title">
                    <h3><%=q.getPostTitle()%></h3>
                </a>
                <div class="content1_1">
                <a href="" class="content1_2">
                    <p><%=q.getPostContent() %></p>
                </a>
                <img src="" class="user">
                <div class="id1">
                    <h3><%=q.getNickName() %></h3>
                </div>
                </div>
                <a href="">
                    <img src="" class="imgfile">
                </a>
                <hr>
        </div>
		<% } %>
        
        <div class="content1">
                <a href="" class="title">
                    <h3>현관 옆 화장실 어떻게 해야 할까요?</h3>
                </a>
                <div class="content1_1">
                <a href="" class="content1_2">
                    <p>철조망? 예전에 쓰던 걸 둘곳이 없어서 일단 뒀는데 애매하네요 예쁜 인테리어 공간 하고픈데 어떻게 해야 좋을까요?</p>
                </a>
                <img src="" class="user">
                <div class="id">
                    <h3>user01</h3>
                </div>
            </div>
            <a href="">
                <img src="" class="imgfile1">
            </a>
            <br>
            <hr>
        </div>
        
        <div class="content1">
                <a href="" class="title">
                    <h3>현관 옆 화장실 어떻게 해야 할까요?</h3>
                </a>
                <div class="content1_1">
                <a href="" class="content1_2">
                    <p>철조망? 예전에 쓰던 걸 둘곳이 없어서 일단 뒀는데 애매하네요 예쁜 인테리어 공간 하고픈데 어떻게 해야 좋을까요?</p>
                </a>
                <img src="" class="user">
                <div class="id">
                    <h3>user01</h3>
                </div>
            </div>
            <a href="">
                <img src="" class="imgfile1">
            </a>
            <br>
            <hr>
        </div>

        <div class="content1">
                <a href="" class="title">
                    <h3>현관 옆 화장실 어떻게 해야 할까요?</h3>
                </a>
                <div class="content1_1">
                <a href="" class="content1_2">
                    <p>철조망? 예전에 쓰던 걸 둘곳이 없어서 일단 뒀는데 애매하네요 예쁜 인테리어 공간 하고픈데 어떻게 해야 좋을까요?</p>
                </a>
                <img src="" class="user">
                <div class="id">
                    <h3>user01</h3>
                </div>
            </div>
            <a href="">
                <img src="" class="imgfile1">
            </a>
            <br>
            <hr>
        </div>

        <div class="content1">
                <a href="" class="title">
                    <h3>현관 옆 화장실 어떻게 해야 할까요?</h3>
                </a>
                <div class="content1_1">
                <a href="" class="content1_2">
                    <p>철조망? 예전에 쓰던 걸 둘곳이 없어서 일단 뒀는데 애매하네요 예쁜 인테리어 공간 하고픈데 어떻게 해야 좋을까요?</p>
                </a>
                <img src="" class="user">
                <div class="id">
                    <h3>user01</h3>
                </div>
            </div>
            <a href="">
                <img src="" class="imgfile1">
            </a>
            <br>
            <hr>
        </div>
    </div>
</body>
</html>