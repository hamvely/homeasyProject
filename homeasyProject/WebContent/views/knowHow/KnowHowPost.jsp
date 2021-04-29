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

</style>
<body>
    <div class="outer">
    
	     <table class="detailArea">
   			<tr>
   				<th width="58" height="50"><img src="<%=k.getUserFileRename()%>"></th>
   				<td colspan="3"><%=k.getNickName() %></td>
   			</tr>
   			<tr>
   				<td colspan="3">
   					<div>
   						<img src="<%=k.getPostFileRename() %>" width="500" height="500">
   					</div>
   				</td>
   			</tr>
   			<tr>
   				<th><img class="heart" src="" width="48" height="49"></th>
   				<td></td>
   				<td><img class="chat" src="" width="48" height="49"></td>
   			</tr>
   			<tr>
   				<td colspan="3">
   					<p style="height:50px;"><%=k.getPostContent() %></p>
   				</td>
   			</tr>
   			<tr>
   				<th><%=k.getNickName() %></th>
   				<td><%=k.getPcomContent() %></td>
   			</tr>
   			<tr>
   				<th><%=k.getNickName() %></th>
   				<td><%=k.getPcomContent() %></td>
   			</tr>
   		</table>
		

    </div>
</body>
</html>