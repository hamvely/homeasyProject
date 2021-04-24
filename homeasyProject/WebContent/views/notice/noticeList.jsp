<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.notice.model.vo.Notice"%>
<%
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    
    .outer{
        width: 1100px;
        height: 1150px;
        margin: auto;
        padding-top: 50px;
    }
    
    table {
        margin-left: ;
        width: 900px;
        height: 700px;
    }

    th{float: left; margin: 15px 0 0 15px; font-size: 15px;}
    td{float: left; margin: 10px 0 20px 20px;}
    table hr {width: 840px;}

</style>
<body>

    <%@ include file="../common/mainHeader.jsp" %>

	<div class="outer">

        <div class="noticeHeader">
            <br>
            <h1>공지사항</h1>
            <br><hr>
        </div>
        <br><br>

		<table class="listArea" align="center">

			<% if(list.isEmpty()) { %>
				<tr><td>존재하는 공지사항이 없습니다.</td></tr>
			<% }else{ %>
			
				<% for(Notice n:list){ %>
				
					 <tr><td><%= n.getNoticeTitle() %></td></tr>
					 <tr><td><%= n.getCreateDate() %></td></tr>
					 <tr><td><hr></td></tr>
					 
				<% } %>
			<% } %>
		
		</table>
    </div>
	
</body>
</html>