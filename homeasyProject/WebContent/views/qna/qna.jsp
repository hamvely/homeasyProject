<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.qna.model.vo.Qna" import="com.kh.member.model.vo.Member"%>
    
<% String contextPath = request.getContextPath(); %>  

<%
	Member loginUser = (Member)session.getAttribute("loginUser");
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
            margin:-150px 80px;
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
        
        .content1{padding-top:30px;}
        
       
</style>
</head>
<body>
    <div class="content">
    
    	<% if(loginUser != null){ %>
        <div class="button">
            <a href="<%=contextPath%>/enrollForm.qna" class="a1">
                <div class="question">
                   <li>질문하기</li>
                </div>
            </a>
        </div>
        <% } %>
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
                </a><br>
                <hr>
        </div>
		<% } %>
     </div>
</body>
</html>