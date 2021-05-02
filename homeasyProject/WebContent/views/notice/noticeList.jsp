<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ page import="java.util.ArrayList, com.kh.notice.model.vo.Notice, com.kh.common.model.vo.PageInfo" %>   
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOMEASY</title>
<style>
	/* div{outline: 1px solid violet;} */

    .outer{width: 1200px; height: 1150px; margin: auto;}
    
	h1{margin-left: 30px; padding-top: 30px;}
    .noticeHeader{
		height: 110px; 
		background-color: rgba(212, 237, 218, 0.4);
		border-bottom: 3px solid dimgray;
	}
	
    table {width: 900px; font-size: 17px;}
    table hr {width: 840px;}
    td{float: left; margin: 20px 0 5px 15px;}
    

    .pagination a {color:black;}
	.pagination a:hover, 
	.pagination a:focus {
	  background: lightgrey;
	  border-color: lightgrey;
	  color:black;
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

		<table class="listArea table-hover" align="center">
			<tbody>
		
				<% if(list.isEmpty()) { %>
					<tr>
						<td>존재하는 공지사항이 없습니다.</td>
					</tr>
				<% }else { %>
					<% for(Notice n : list) { %>
					<tr>
						<td width="670px"><%= n.getNoticeTitle() %></td>
						<td width="130px"><%= n.getCreateDate() %></td>
						<td style="visibility:hidden"><%= n.getNoticeNo() %></td>
						<td><hr></td>
					</tr>
					<% } %>
				<% } %>
				
			</tbody>
		</table>
		

		
		<br><br>
			<colgroup>
				<col width="5%;"/>
				<col width="65%;"/>
				<col width="30%;"/>
			</colgroup>
		
        <ul class="pagination justify-content-center">
            <% if(currentPage != 1) { %>
                    <li class="page-item"><a class="page-link" href="<%= contextPath %>/list.no?currentPage=<%= currentPage-1 %>">이전</a></li>
            <% } %>
            
            <% for(int p=startPage; p<=endPage; p++) { %>
            
                <% if(currentPage == p) { %>
                        <li class="page-item active"><a style="background-color:rgb(3, 79, 6); border-color:rgb(3, 79, 6);" class="page-link" href="#"><%= p %></a></li>

                    <% }else { %>
                        <li class="page-item"><a class="page-link" href="<%= contextPath %>/list.no?currentPage=<%= p %>"><%= p %></a></li>
                    <% } %>
                
                <% } %>
                
                <% if(currentPage != maxPage) { %>
                    <li class="page-item"><a class="page-link" href="<%= contextPath %>/list.no?currentPage=<%= currentPage+1 %>">다음</a></li>
            <% } %>
        </ul>
    </div>
    
    <script>
    	$(function(){
			$(".listArea>tbody>tr").click(function(){
				// 쿼리스트링 이용해서 요청할 url 작성
				location.href = '<%=contextPath%>/detail.no?nno=' + $(this).children().eq(2).text();
									
			})
    	})

	</script>
	
</body>
</html>