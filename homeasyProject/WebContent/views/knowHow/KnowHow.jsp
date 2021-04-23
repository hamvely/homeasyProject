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
        
        .content1{
        	margin-top:-10px;
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
        
	   <% for(KnowHow k:list) { %>
	   <br><br><br>
        <div class="content1">
             <a href="<%=contextPath%>/post.how" class="title">
                 <h3><%=k.getPostTitle() %></h3>
                </a>
                <div class="content1_1">
                    <a href="<%=contextPath %>/post.how" class="content1_2">
                        <p><%=k.getPostContent() %></p>
                    </a>
                </div>
                <a href="<%=contextPath %>/post.how">
                    <img src="<%=k.getPostFileRename() %>" class="imgfile">
                </a>
                <br><br>
                <hr>
        </div>
		<% } %>
		
</body>
</html>