<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.qna.model.vo.Qna, com.kh.qna.model.vo.Attachment"%>
<%
	Qna q = (Qna)request.getAttribute("q");
    ArrayList<Attachment> list = (ArrayList<Attachment>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
        height:100px; 
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
                <h3><%=q.getPostTitle() %></h3>
            </span>
            <div class="user">
	                    <i class="far fa-user-circle fa-2x"" ></i>
                <div class="id">
                    <h3><%=q.getNickName() %></h3>
                </div>
            </div>
        </div>

        <br><br><br>
        <img class="postfile" src="<%=q.getPostFileRename()%>">
       
        <br><br>
        <div class="content">
        	<p>
        	<%=q.getPostContent() %>
        	</p>
        </div>
        <br><br>
		<table>
			<tr>
   				<th><%=q.getNickName() %></th>
   				<td><%=q.getPcomContent() %></td>
   			</tr>
   			<tr>
   				<th><%=q.getNickName() %></th>
   				<td><%=q.getPcomContent() %></td>
   			</tr>
       </table>
       
       
    </div>
</body>
</html>