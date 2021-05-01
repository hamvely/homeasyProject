<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.knowHow.model.vo.KnowHow, com.kh.qna.model.vo.Attachment" %>
<%
	KnowHow k = (KnowHow)request.getAttribute("k");
	ArrayList<Attachment> list = (ArrayList<Attachment>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<style>
	.outer{width:1200px; height:900px;}
	
	.content{margin-left:43%;}
</style>
<body>

   <%@ include file="../common/mainHeader.jsp" %>
	<hr><br>
    <div class="outer">
    
       <div class="content">
	     <table class="detailArea">
	     	<div class="title" style="margin-left:25%">
	     	<h5><%=k.getPostTitle() %></h5>
	     	</div>
	     	<br>
   			<tr>
   				<td colspan="3"><%=k.getNickName() %></td>
   			</tr>
   			<tr>
   				<td colspan="3">
   					<div>
   						<img src="./resources/img/sample/knowhow (10).jpg" width="500" height="500">
   					</div>
   				</td>
   			</tr>
   			<tr>
   				<td colspan="3"><br><br>
   					<p style="height:50px;"><%=k.getPostContent() %></p>
   				</td>
   			</tr>
   			<tr>
   				<td><%=k.getNickName() %> <%=k.getPcomContent() %></td>
   			</tr>
   			<tr>
   				<td><%=k.getNickName() %> <%=k.getPcomContent() %></td>
   			</tr>
   		</table>
		</div>

    </div>
</body>
</html>