<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.notice.model.vo.Notice"%>
<%
	ArrayList<Notice> adminList = (ArrayList<Notice>)request.getAttribute("adminList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<title>Homeasy Admin</title>

<style>
    div {
        outline: 1px solid violet;
        box-sizing: border-box;
    }
    .wrap {
        width: 1200px;
        height: 900px;
        margin: auto;
    }
    .wrap>div {
        width: 100%;
    }
    
    #header>div, #content>div {
        float: left;
        height: 100%;
    }

    #header { /*상단바 크기*/
        height: 80px;
    }
    #content { /*본문전체 크기*/
        height: 820px;
    }
    #content_1 { /*좌측메뉴바 크기*/
        width: 200px;
    }
    #content_2 { /*우측본문 크기*/
        width: 1000px;
        padding: 20px 10px;
    } 

    /* 타이틀 */
    h3 {
        margin-bottom: 20px;
        font-weight:bold;
    }

    /* 버튼스타일 */    
    .content_bar {
        box-sizing: border-box;
        display: flex;
        /*position: absolute;*/
    }

    .btn-warning {
        background-color:rgb(241, 196, 15); 
    	border-color:rgb(241, 196, 15);
        color: white;
        width:100px; 
        margin-right: 10px;
    }

    .btn-secondary {
        background-color:rgb(158, 158, 158); 
        border-color:rgb(158, 158, 158);
        width:100px; 
    }



    table {
        width: 100%;
        text-align: center;
        margin: 20px 0 20px 0;
    }



</style>
</head>
<body>


	<!-- 전체 화면 -->
    <div class="wrap">

        <!-- 상단바 -->
        <div id="header"><%@ include file="../common/adminHeader.jsp" %></div>

        <!-- 본문 전체 -->
        <div id="content">
            <!-- 좌측 메뉴바 -->
            <div id="content_1"><%@ include file="../common/adminMenubar.jsp" %></div>
            <!-- 우측 본문 -->
            <div id="content_2">

                <h3>공지사항</h2>

                <div class="content_bar">
                    <br>
                    <button type="button" class="btn btn-warning">글 작성</button>
                    <button type="button" class="btn btn-warning">글 수정</button>
                    <button type="button" class="btn btn-secondary">글 삭제</button>
                </div>

                <table class="table table-hover">
                    <colgroup>
                        <col width="50px;"/>
                        <col width="75px;"/>
                        <col width="75px;"/>
                        <col width="500px;"/>
                        <col width="150px;"/>
                        <col width="100px;"/>
                    </colgroup>
					<thead>
	                    <tr class="table-active">
	                        <th><input type="checkbox"/></th>
	                        <th>No.</th>
	                        <th>노출</th>
	                        <th>제목</th>
	                        <th>작성일</th>
	                        <th>조회수</th>
	                    </tr>
					</thead>
					<tbody>
						<!-- 조회된 결과가 없을 경우 -->
	                	<% if(adminList.isEmpty()) { %>
	                		<tr>
	                			<td colspan="13">조회된 리스트가 없습니다.</td>
	                		</tr>
	                	<% }else { %>
						<!-- 조회된 결과가 있을 경우 -->
	                		<% for(Notice n : adminList) { %>
		                    <tr>
		                        <td><input type="checkbox" /></td>
		                        <td><%= n.getNoticeNo() %></td>
		                        <td><%= n.getStatus() %></td>
		                        <td><%= n.getNoticeTitle() %></td>
		                        <td><%= n.getCreateDate() %></td>
		                        <td><%= n.getCount() %></td>
		                    </tr>
			                <% } %>
	                    <% } %>		                    
 					</tbody>
                </table>
        
                <div align="center" class="pageinArea">
                    <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">〈</p></button>
                    <button onclick="location.href='';" type="button" class="btn btn-warning" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">1</p></button>
                    <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">2</p></button>
                    <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">3</p></button>
                    <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">4</p></button>
                    <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">5</p></button>
                    <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">〉</p></button>
                </div>
    
            </div>

        </div>

    </div>

</body>
</html>