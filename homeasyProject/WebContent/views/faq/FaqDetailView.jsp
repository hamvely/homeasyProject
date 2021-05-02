<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.faq.model.vo.*"%>
<%
	Faq f = (Faq)request.getAttribute("f");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOMEASY</title>
<style>

    table{width: 900px; margin: auto;}
    th{height: 55px;}
    td{height: 55px; padding-left: 20px;}
    .table-active{text-align: center;}

    .atag{text-align: center; margin-top: 25px;}
    .btn-secondary {
        background-color:rgb(158, 158, 158); 
        border-color:rgb(158, 158, 158);
        width:150px; 
    }

</style>
</head>
<body>

	<%@ include file="../common/mainHeader.jsp" %>
	<hr><br>

        <table id="detailArea" class="listArea table-bordered" border="1">
            <colgroup>
                <col width="15%;"/>
                <col width="20%;"/>
                <col width="15%;"/>
                <col width="50%;"/>
            </colgroup>
            <tr>
                <th class="table-active">카테고리</th>
                <td><%= f.getFaqCate() %></td>
                <th class="table-active">질문</th>
                <td><%= f.getFaqTitle() %></td>
            </tr>
            <tr>
                <th class="table-active">답변</th>
                <td colspan="3" style="height: 400px;">
                    <p><%= f.getFaqAnswer() %></p>
                </td>
            </tr>
        </table>	
        <div class="atag"><a href="<%= contextPath %>/listAll.faq" class="btn btn-secondary btn-lg">목록으로</a></div>
</body>
</html>