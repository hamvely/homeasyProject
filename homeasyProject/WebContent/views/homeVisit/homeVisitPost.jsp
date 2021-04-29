<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.homeVisit.model.vo.HomeVisit, com.kh.qna.model.vo.Attachment"  %>
<%
	HomeVisit h = (HomeVisit)request.getAttribute("h");
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
	
    <div class="outer">
    
    	<div class="content">
	     <table class="detailArea">
   			<tr>
   				<th width="58" height="50"><i class="far fa-user-circle fa-3x"" ></i></th>
   				<td colspan="3"><%=h.getNickName() %></td>
   			</tr>
   			<tr>
   				<td colspan="3">
   					<div>
   						<img src="" width="500" height="500">
   					</div>
   				</td>
   			</tr>
   			<tr>
   				<td colspan="3">
   					<p style="height:50px;"><br><%=h.getPostContent() %></p>
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

    </div>
</body>
</html>