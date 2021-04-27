<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.notice.model.vo.Notice"%>
<%
	ArrayList<Notice> adminList = (ArrayList<Notice>)request.getAttribute("adminList");
%>
<% String contextPath = request.getContextPath(); %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
        .admin_main{
            border:0px solid;
            width:1000px;
            height:820px;
            margin:auto;
        }
        .content1, .content2{
            width:470px;
            height:329px;
            background-color:rgb(244, 244, 244);
            float: left;
        }
        .content1{margin:20px;}

        .content2{margin-top:20px;}

        .content3{
            width:960px;
            height:331px;
            background-color:rgb(244, 244, 244);
            float:left;
            margin-left:19px;
        }

        .title{
            list-style:none;
            margin-left:15px;
            float: left;
        }

        .plus{
            float:right;
            padding-top:13px;
            margin-right:26px;
        }

        .notice{
            padding:10px 24px;
            
        }

        .qna{
            margin-left:20px;
        }

        thead{
            background-color:#eaeaea;
            font-weight:bold;
        }

        td{
            text-align:center;
            font-size:12px;
        }

        .table1{
            border:1px solid #ccc;
            width:420px;
            height:240px;
            border-collapse:collapse;
            border-left-width:2px;
            border-top-width:2px;
            border-right-width:2px;
            border-bottom-width:2px;
        }

        .table2{
            border:1px solid #ccc;
            width:920px;
            height:249px;
            border-collapse:collapse;
            border-left-width:2px;
            border-top-width:2px;
            border-right-width:2px;
            border-bottom-width:2px;  
        }

        .salesimg{
            width:420px;
            height:240px;
            margin-left:16px;
        }
</style>
</head>
<body>
    <div class="admin_main">
        <div class="content1">
            <div class="title">
                <h3>공지사항</h3>
            </div>

            <div class="plus">
                <a href=""><img src=""></a>
            </div>

            <div class="notice">
                <table class="table1" border="1" >
                    <thead>
                        <tr>
                            <td width="50" height="40">No.</td>
                            <td>공지사항</td>
                            <td>등록일</td>
                        </tr>
                    </thead>
                    <tbody>
                      <% for(Notice n : adminList){ %>
                        <tr>
                            <td><%= n.getNoticeNo() %></td>
                            <td><%= n.getNoticeTitle() %></td>
                            <td><%= n.getCreateDate() %></td>
                        </tr>
                      <% } %>
                    </tbody>
                    
                </table>
            </div>
        </div>

        <div class="content2">
            <div class="title">
                <h3>매출통계</h3>
            </div>

            <div class="plus">
                <a href=""><img src=""></a>
            </div>
            <img class="salesimg" src="">
        </div>

        <div class="content3">
            <div class="title">
                <h3>최근 미답변 문의</h3>
            </div>
            
            <div class="plus">
                <a href="">  <img src=""></a>
            </div>

            <br><br><br>
            <div class="qna">
                <table class="table2" border="1">
                    <thead>
                        <tr>
                            <td height="40" width="30">No.</td>
                            <td>분류</td>
                            <td>회원 이메일</td>
                            <td>문의 제목</td>
                            <td>작성일</td>
                            <td>조회수</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>4</td>
                            <td>상품</td>
                            <td>user04@naver.com</td>
                            <td>언제 입고되나요?</td>
                            <td>2021.02.24</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>배송</td>
                            <td>user03@naver.com</td>
                            <td>배송 문의합니다.</td>
                            <td>2021.10.14</td>
                            <td>2</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>교환/반품</td>
                            <td>user02@naver.com</td>
                            <td>반품 신청합니다.</td>
                            <td>2021.04.23</td>
                            <td>6</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>배송</td>
                            <td>user01@naver.com</td>
                            <td>배송 문의합니다.</td>
                            <td>2021.03.28</td>
                            <td>1</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        
        <script>
			$(function(){
				$(".table1").click(function(){
					location.href = '<%=contextPath%>/adminDetail.no?nno=' + $(this).children().eq(0).text();
				})
			})
		</script>
           
    </div>
    
</body>
</html>