<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.notice.model.vo.Notice" %>
<%
	Notice n = (Notice)request.getAttribute("n");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOMEASY</title>
<style>
    
    .outer{
        width: 1200px;
        height: 1150px;
        margin: auto;
    }
    

    h1{margin-left: 30px; padding-top: 30px;}
    .noticeHeader{
		height: 110px; 
		background-color: rgba(212, 237, 218, 0.4);
		border-bottom: 3px solid dimgray;
	}


    table { width: 900px; font-size: 17px;}
    td{padding-left: 20px; height: 55px;}
    .table-active{text-align: center;}

    .atag{text-align: center; margin-top: 25px;}
    .btn-secondary {
        background-color:rgb(158, 158, 158); 
        border-color:rgb(158, 158, 158);
        width:150px; 
    }

</style>
<body>

	<%@ include file="../common/mainHeader.jsp" %>
    <hr>

	<div class="outer">

        <div class="noticeHeader">
            <h1>공지사항</h1>
        </div>

        <br><br>

        <table id="detailArea" class="table-bordered" align="center">
            <colgroup>
                <col width="15%;"/>
                <col width="35%;"/>
                <col width="15%;"/>
                <col width="50%;"/>
            </colgroup>
            <tr>
                <th class="table-active">제목</th>
                <td colspan="3"><%= n.getNoticeTitle() %></td>
            </tr>
            <tr>
                <th class="table-active">작성일</th>
                <td><%= n.getCreateDate() %></td>
                <th class="table-active">조회수</th>
                <td><%= n.getCount() %></td>
            </tr>
            <tr>
                <th class="table-active">내용</th>
                <td colspan="3" style="height: 400px;"><%= n.getNoticeContent() %></td>
            </tr>
        </table>

        <div class="atag"><a onclick="history.back();" class="btn btn-secondary">목록으로</a></div>
        
    </div>
	
</body>
</html>