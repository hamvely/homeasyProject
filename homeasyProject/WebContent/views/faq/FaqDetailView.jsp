<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.faq.model.vo.*"%>
<%
	Faq f = (Faq)request.getAttribute("f");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

        <table id="detailArea" align="center" border="1">
            <tr>
                <th width="70">카테고리</th>
                <td width="70"><%= f.getFaqCate() %></td>
                <th width="70">질문</th>
                <td width="350"><%= f.getFaqTitle() %></td>
            </tr>
            <tr>
                <th>답변</th>
                <td colspan="3">
                    <p><%= f.getFaqAnswer() %></p>
                </td>
            </tr>
        </table>	

</body>
</html>