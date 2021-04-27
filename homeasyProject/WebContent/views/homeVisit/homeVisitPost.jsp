<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.homeVisit.model.vo.HomeVisit" %>
<%
    ArrayList<HomeVisit> list = (ArrayList<HomeVisit>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    
    
</style>
<body>
    <div class="outer">
    
	     <table class="detailArea">
   			<tr>
   				<th width="58" height="50"><img src="<%=h.getUserFileRename()%>"></th>
   				<td colspan="3"><%=h.getNickName() %></td>
   			</tr>
   			<tr>
   				<td colspan="3">
   					<div>
   						<img src="<%=h.getPostFileRename() %>" width="500" height="500">
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
   					<p style="height:50px;"><%=h.getPostContent() %></p>
   				</td>
   			</tr>
   			<tr>
   				<th><%=h.getNickName() %></th>
   				<td><%=h.getPcomContent() %></td>
   			</tr>
   			<tr>
   				<th><%=h.getNickName() %></th>
   				<td><%=h.getPcomContent() %></td>
   			</tr>
   		</table>
		

    </div>
</body>
</html>