<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member"%>
<%
	Member m = (Member)request.getAttribute("m");
	// 회원번호, 이메일, 이름, 별명, 성별, 생일, 우편번호, 주소, 폰번호, 가입일, 회원상태, 관리자여부
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

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
    .member_list {
        width: 800px;
        margin-left: 30px;
    }
    th {
        color: #2e363e;
        font-size: 17px;
        font-weight: bold;
        height: 60px;
        width: 150px;
    }
    .content_bar a {
    	width: 100px;
    	font-weight: bold;
    	color: white;
    	margin-right: 10px;
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
                <h3>회원관리</h3>

                <!-- 회원 상세 폼 -->
                <form action="<%= contextPath %>/adminDetail.me?" class="member_detail" method="post">
                	<!-- 버튼 -->
	                <div class="content_bar">
	                	<a href="<%= contextPath %>/adminlist.me?currentPage=1" class="btn btn-warning">목록가기</a>
	                    <a href="" class="btn btn-warning">삭제</a>
	                </div>
	                <br><br>
	                
                    <table class="member_list">
                        <tr>
                            <th>회원번호</th>
                            <td colspan="3"><%= m.getUserNo() %></td>
                        </tr>
                        <tr>
                            <th>회원이메일</th>
                            <td colspan="3"><%= m.getEmail() %></td>
                        </tr>
                        <tr>
                            <th>회원이름</th>
                            <td colspan="3"><%= m.getUserName() %></td>
                        </tr>
                        <tr>
                            <th>별명</th>
                            <td colspan="3"><%= m.getNickName() %></td>
                        </tr>
                        <tr>
                            <th>성별</th>
                            <td colspan="3"><%= m.getGender() %></td>
                        </tr>
                        <tr>
                            <th>생년월일</th>
                            <td colspan="3"><%= m.getBirth() %></td>
                        </tr>
                        <tr>
                            <th>우편번호</th>
                            <td colspan="3"><%= m.getPostCode() %></td>
                        </tr>
                        <tr>
                            <th>주소</th>
                            <td colspan="3"><%= m.getAddress() %></td>
                        </tr>
                        <tr>
                            <th>연락처</th>
                            <td colspan="3"><%= m.getPhone() %></td>
                        </tr>
                        <tr>
                            <th>가입일</th>
                            <td colspan="3"><%= m.getJoinDate() %></td>
                        </tr>
                        <tr>
                            <th>회원상태</th>
                            <td colspan="3"><%= m.getUserStatus() %></td>
                        </tr>
                        <tr>
                            <th>관리자여부</th>
                            <td colspan="3"><%= m.getAdmin() %></td>
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