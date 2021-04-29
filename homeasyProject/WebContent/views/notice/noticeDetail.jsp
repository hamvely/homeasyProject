<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.notice.model.vo.Notice" %>
<%
	Notice n = (Notice)request.getAttribute("n");
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


    th{float: left; margin: 20px 0 0 20px; font-size: 15px;}
    td{float: left; margin: 10px 0 20px 20px;}
    table hr {width: 840px;}

</style>
<body>

	<%@ include file="../common/mainHeader.jsp" %>

	<div class="outer">

        <div class="noticeHeader">
            <h1>공지사항</h1>
            <hr>
        </div>

        <br><br>

        <table id="detailArea" align="center">
            <tr>
                <th><%=n.getNoticeTitle()%></th>
            </tr>
            <tr>
                <td><%= n.getCreateDate() %></td>
            </tr>
            <tr>
                <td style="height: 500px;"><%= n.getNoticeContent() %></td>
            </tr>
        </table>
        <hr>
    </div>
	
</body>
</html>