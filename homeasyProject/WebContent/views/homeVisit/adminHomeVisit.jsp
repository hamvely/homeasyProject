<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.homeVisit.model.vo.HomeVisit" import="com.kh.member.model.vo.Member"%>

<%
	ArrayList<HomeVisit> list = (ArrayList<HomeVisit>)request.getAttribute("list");
	Member loginUser = (Member)session.getAttribute("loginUser");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <style>
        .wrap{
            width:1000px;
            height:800px;
            margin:auto;
        }

        .content{
            margin-left:20px;
            margin-top:-5px;
        }

        .table1{
            width:960px;
            height:500px;
            text-align:center;
            border:solid #ccc;
            border-left:none;
            border-right:none;

        }

        thead{
            background-color:#eaeaea;
            font-weight:bold;   
        }
        
        td{
            border-bottom:1px solid #ccc;
        }
    </style>
</head>
<body>
	
	<table>
		  <tr>
	            <td colspan="2">
	                <%@ include file="../common/adminHeader.jsp" %>
	            </td>
	        </tr>
	        <tr>
	            <td>
	                <%@ include file="../common/adminMenubar.jsp" %>
	            </td>
	            <td>
	            
	            
    <div class="wrap">
    
    <%if(loginUser != null){ %>
        <br>
        <div class="content">
        <h3 style="font-weight:600;">집들이 관리</h3>
        <br>
        <button type="button" class="btn btn-warning" style="color:white; width:100px; height:35px;">삭제</button>
        <br><br>
  	<% } %>
    
        <table class="table1" border="0">	
        
            <thead>
                <tr>
                    <td width="50" height="40"><input type="checkbox"></td>
                    <td>No.</td>
                    <td>회원 이메일</td>
                    <td>제목</td>
                    <td>작성일</td>
                    <td>조회수</td>
                </tr>
            </thead>
            <tbody>
      		<%for(HomeVisit h : list){ %>
              <tr>
                    <td><input type="checkbox"></td>
                    <td><%=h.getPostNo() %></td>
                    <td><%=h.getEmail() %></td>
                    <td><%=h.getPostTitle() %></td>
                    <td><%=h.getPostCreateDate() %></td>
                    <td><%=h.getPostCount() %></td>
                </tr>           
        	<% } %>   
             </tbody>
        </table>

        <br>

        <div align="center" class="pageinArea">
            <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">〈</p></button>
            <button onclick="location.href='';" type="button" class="btn btn-warning" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">1</p></button>
            <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">2</p></button>
            <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">3</p></button>
            <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">4</p></button>
            <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">〉</p></button>
        </div>

   		</div>
   	</div>
   	
</table>
</body>
</html>