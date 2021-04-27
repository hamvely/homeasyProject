<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.notice.model.vo.Notice" %>
<%
	Notice n = (Notice)request.getAttribute("n");
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
    h3 {font-weight:bold;}

    /* 버튼스타일 */    
    .content_bar {
    	margin-bottom: 20px;
        box-sizing: border-box;
        /*display: flex;*/
        /*position: absolute;*/
    }
    .btn-success {
    	background-color:rgb(3, 79, 6); 
    	border-color:rgb(3, 79, 6);
        width:100px; 
    }
    .btn-warning {
        background-color:rgb(241, 196, 15); 
    	border-color:rgb(241, 196, 15);
        color: white;
        width:100px; 
    }
    .btn-secondary {
        background-color:rgb(158, 158, 158); 
        border-color:rgb(158, 158, 158);
        width:100px; 
    }

    a, button{margin-left:10px;}

    /* input 스타일 */
    input {width:700px; height:40px; border:none; outline: none;}
    textarea {width:800px; height:511px; border:none; outline: none; padding-top:15px;}    
	#title {width:700px}
    
    /* 테이블 스타일 */
    #content_2 table {
        width: 100%;
        margin: 20px 0 20px 0;
    }

    tr{height:45px;}
    th{text-align: center;}
    td{padding-left:15px;}
    p{padding-top:15px; height:500px;}
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


                <div class="content_bar">
	                <h3>공지사항 상세보기</h3>
                	<div align="right">
						<a href="<%= contextPath %>/adminUpdateForm.no?nno=<%= n.getNoticeNo() %>" class="btn btn-warning">수정하기</a>
	                	<a href="<%= contextPath %>/adminDelete.no?nno=<%= n.getNoticeNo() %>" class="btn btn-secondary">삭제하기</a>
	                	<a href="<%= contextPath %>/adminList.no" class="btn btn-secondary">뒤로가기</a>
	                </div>
                </div>

                <table id="detailArea" class="table-bordered">
                    <colgroup>
                        <col width="15%;"/>
                        <col width="35%;"/>
                        <col width="15%;"/>
                        <col width="35%;"/>
                    </colgroup>
                    <tr>
                        <th class="table-active">제목</th>
						<td colspan="3"><input readonly value="<%=n.getNoticeTitle()%>"></td>
                    </tr>
                    <tr>
                        <th class="table-active">작성일</th>
						<td><input readonly value="<%= n.getCreateDate() %>"></td>
                    </tr>
                    <tr>
                        <th class="table-active">내용</th>
                        <td colspan="3"><textarea readonly style="resize:none;"><%= n.getNoticeContent() %></textarea></td>
                    </tr>
                </table>
            </div>
            
<!-- ------------------------------------------------------------------------------------------------------------------- -->   

			<!-- 공지사항 삭제 모달 -->
            <div class="modal" id="deleteNotice">
                <div class="modal-dialog">
                    <div class="modal-content">
                
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h3 class="modal-title">공지사항 삭제</h3>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        
                        <!-- Modal body -->
                        <div class="modal-body">
                        	해당 공지사항을 정말 삭제하시겠습니까?
                        </div>
                        
                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-warning" data-dismiss="modal">확인</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                        </div>                    
                    </div>
                </div>
            </div>         




        </div><!--컨텐츠-->
    </div><!--본문-->




</body>
</html>