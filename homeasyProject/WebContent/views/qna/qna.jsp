<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.qna.model.vo.Qna" import="com.kh.member.model.vo.Member"%>

<%
	ArrayList<Qna> list = (ArrayList<Qna>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
            margin:-138px 80px;
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
        
        h3, p, img{cursor:pointer;}
        
       
</style>
</head>
<body>

   <%@ include file="../common/mainHeader.jsp" %>

    <div class="content">
    
        <br>
	
		<% for(Qna q : list){ %>
        <div class="thumbnail">
        	<input type="hidden" value="<%=q.getPostNo() %>">
        			<br>
                    <h3><%=q.getPostTitle()%></h3>
            
                <div class="content1_1">
                    <p><%=q.getPostContent() %></p>
                </div>
                
                <div class="id1">
                     <i class="far fa-user-circle fa-2x" style="float:left;"></i>
                    <h3 style="float:left;"><%=q.getNickName() %></h3>
                    <br><br>
                </div>
                
                    <img src="<%=contextPath %>/<%=q.getPostFileRename() %>" class="imgfile">
                <br>
                <hr>
        </div>
		<% } %>
		
		<script>
			$(function(){
				$(".thumbnail").click(function(){
					location.href='<%=contextPath%>/detail.qna?qno=' + $(this).children().eq(0).val();
				})
			})
		</script>
     </div>
</body>
</html>