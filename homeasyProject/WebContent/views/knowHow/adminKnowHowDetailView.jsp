<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.knowHow.model.vo.*"%>
<%
	KnowHow k = (KnowHow)request.getAttribute("k");
	// 노하우번호, 제목, 생성일, 조회수, 상태, 파일리네임, 내용
	KnowHowFile kf = (KnowHowFile)request.getAttribute("kf");
	// null or 파일번호, 파일리네임(실제 서버에 업로드된이름)
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

<title>노하우 상세조회</title>
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
    h3 {
    font-weight: bold;
    color: #2e363e;
    }
    
    #header>div, #content>div {
        float: left;
        height: 100%;
    }

    #header {
        height: 80px;
    }
    #content {
        height: 820px;
    }
    #content_1 {
        width: 200px;
    }
    #content_2 {
        width: 1000px;
        padding: 20px 10px;
    }
    .content_bar {
        box-sizing: border-box;
        display: flex;
    }
    .content_btn {
        background-color: rgb(241, 196, 15);
        width: 90px;
        height: 35px;
        font-size: 13px;
        font-weight: bold;
        color: white;
        border-radius: 3px;
        margin-right: 10px;
        border: none;
    }

    /* 등록 폼 스타일 */
    .knowhow_list {
        width: 800px;
    }
    .knowhow_enroll table {
        margin-left: 30px;
    }
    th {
        color: #2e363e;
        font-size: 17px;
        font-weight: bold;
        height: 60px;
        width: 150px;
    }
</style>
</head>
<body>
    <!-- 전체 화면 -->
    <div class="wrap">
        <!-- 상단바 -->
        <div id="header">
        	<%@ include file="../common/adminHeader.jsp" %>
        </div>

        <!-- 본문 전체 -->
        <div id="content">
            <!-- 좌측 메뉴바 -->
            <div id="content_1">
            	<%@ include file="../common/adminMenubar.jsp" %>
            </div>

            <!-- 우측 본문 -->
            <div id="content_2">

                <!-- 페이지 제목 -->
                <h3>노하우 등록</h3>

                <!-- 노하우 상세 폼 -->
                <form action="<%= contextPath %>/adminDetail.kh" class="knowhow_enroll" method="post" enctype="multipart/form-data">
                	<!-- 버튼 -->
	                <div class="content_bar">
	                    <%--<a href="<%= contextPath %>/adminlist.kh?currentPage=1" class="btn btn-warning">목록가기</a>
	                    <a href="<%= contextPath %>/adminDelete.kh?kno=<%= k.getPostNo() %>" class="btn btn-warning">삭제</a> --%>
	                </div>
	                <br><br>
	                
                    <table class="knowhow_list">
                        <tr>
                            <th>제목</th>
                            <td colspan="3"><%= k.getPostTitle() %></td>
                        </tr>
                        <tr>
                            <th>작성일</th>
                            <td colspan="3"><%= k.getPostCreateDate() %></td>
                        </tr>
                        <tr>
                            <th>조회수</th>
                            <td colspan="3"><%= k.getPostCount() %></td>
                        </tr>
                        <tr>
                            <th>노출상태</th>
                            <td colspan="3"><%= k.getPostStatus() %></td>
                        </tr>
                        <tr>
                            <th>첨부사진</th>
                            <td colspan="3">
                            	<!-- 첨부파일 없을 경우 -->
                            	<% if(kf == null) { %>
                            		첨부파일이 없습니다.
                            	<% }else { %>
                            		<a href="<%= contextPath %>/resources/post_upfiles/<%= kf.getPostFileRename() %>"><%= k.getPostFileRename() %></a>
                            	<% } %>
                            </td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td colspan="3">
                                <p><%= k.getPostContent() %></p>
                            </td>
                        </tr>
                    </table>
                </form>


            </div>
        </div>
    </div>


    <script
      src="https://kit.fontawesome.com/6478f529f2.js"
      crossorigin="anonymous"
    ></script>
</body>
</html>