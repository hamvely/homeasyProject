<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.review.model.vo.Review"%>
<%
	Review r = (Review)request.getAttribute("r");
	// 회원이메일, 상품명, 리뷰평점, 리뷰내용
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
    .review_list {
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
                <h3>리뷰관리</h3>

                <!-- 리뷰 상세 폼 -->
                <form action="<%= contextPath %>/adminDetail.re" class="review_detail" method="post">
                	<!-- 버튼 -->
	                <div class="content_bar">
	                	<a href="">목록가기</a>
	                    <a href="">수정</a>
	                    <a href="">삭제</a>
	                </div>
	                <br><br>
	                
                    <table class="review_list">
                        <tr>
                            <th>회원이메일</th>
                            <td colspan="3"><%= r.getEmail() %></td>
                        </tr>
                        <tr>
                            <th>상품명</th>
                            <td colspan="3"><%= r.getProductName() %></td>
                        </tr>
                        <tr>
                            <th>리뷰평점</th>
                            <td colspan="3"><%= r.getReMark() %></td>
                        </tr>
                        <tr>
                            <th>리뷰내용</th>
                            <td colspan="3"><%= r.getReContent() %></td>
                        </tr>
                    </table>
                </form>
                
               
            </div>
        </div>
    </div>
    


	

    <!-- 리뷰 삭제 모달 -->
    <div class="modal" id="deleteReview">
        <div class="modal-dialog">
            <div class="modal-content">
        
                <!-- Modal Header -->
	            <div class="modal-header">
	                <h4 class="modal-title">리뷰삭제</h4>
	                <button type="button" class="close" data-dismiss="modal">&times;</button>
	            </div>
	            
	            <!-- Modal body -->
	            <div class="modal-body">
	               	리뷰를 정말 삭제하시겠습니까?
	            </div>
	            
	            <!-- Modal footer -->
	            <div class="modal-footer">
	                <button type="submit" class="btn btn-success" data-dismiss="modal" style="background-color:rgb(241, 196, 15);">확인</button>
                	<button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color:darkgray;">취소</button>
	            </div>
        
            </div>
        </div>
    </div>

	
    <script
      src="https://kit.fontawesome.com/6478f529f2.js"
      crossorigin="anonymous"
    ></script>

</body>
</html>