<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList, com.kh.notice.model.vo.Notice, com.kh.common.model.vo.PageInfo" %>   
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Notice> adminList = (ArrayList<Notice>)request.getAttribute("adminList");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
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
    input {height:40px;}
    
	/* input 네온스타일 */
    textarea.form-control:focus, input:focus, input[type]:focus, .uneditable-input:focus {
        border-color: rgb(3, 79, 6); 
        box-shadow: 0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(3, 79, 6, 0.6);
        outline: 0 none;
    }

    /* 테이블 스타일 */
    #content_2 table {
        width: 100%;
        text-align: center;
        margin: 20px 0 20px 0;
    }
	tr{height:45px;}
	
	.pagination a {color:black;}

	.pagination a:hover, 
	.pagination a:focus {
	  background: lightgrey;
	  border-color: lightgrey;
	  color:black;
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


                <div class="content_bar">
	                <h3>공지사항</h3>
						<div align="right">
	                    	<a class="btn btn-warning" data-toggle="modal" data-target="#insertNotice">글 작성</a>
	                    </div>
                </div>

                <table class="listArea table-bordered table-hover">
                    <colgroup>
                        <col width="10%;"/>
                        <col width="10%;"/>
                        <col width="55%;"/>
                        <col width="15%;"/>
                        <col width="10%;"/>
                    </colgroup>
					<thead>
	                    <tr class="table-active">
	                        <th>No.</th>
	                        <th>노출</th>
	                        <th>제목</th>
	                        <th>작성일</th>
	                        <th>조회수</th>
	                    </tr>
					</thead>
					<tbody>
	                	<% if(adminList.isEmpty()) { %>
	                		<tr>
	                			<td colspan="13">조회된 리스트가 없습니다.</td>
	                		</tr>
	                	<% }else { %>
	                		<% for(Notice n : adminList) { %>
		                    <tr>
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
                
                <br><br>
                
				<ul class="pagination justify-content-center ">
                	<% if(currentPage != 1) { %>
	                        <li class="page-item"><a class="page-link" href="<%= contextPath %>/adminList.no?currentPage=<%= currentPage-1 %>">이전</a></li>
	                <% } %>
	                
	                <% for(int p=startPage; p<=endPage; p++) { %>
	                
	                    <% if(currentPage == p) { %>
	                            <li class="page-item active"><a style="background-color:rgb(241, 196, 15); border-color:rgb(241, 196, 15);" class="page-link" href="#"><%= p %></a></li>
	
	                        <% }else { %>
	                            <li class="page-item"><a class="page-link" href="<%= contextPath %>/adminList.no?currentPage=<%= p %>"><%= p %></a></li>
	                        <% } %>
	                    
	                    <% } %>
	                    
	                    <% if(currentPage != maxPage) { %>
	                        <li class="page-item"><a class="page-link" href="<%= contextPath %>/adminList.no?currentPage=<%= currentPage+1 %>">다음</a></li>
	                <% } %>
	            </ul>

                               
            </div>
            
			<script>
	    	$(function(){
				$(".listArea>tbody>tr").click(function(){
					// 쿼리스트링 이용해서 요청할 url 작성
					location.href = '<%=contextPath%>/adminDetail.no?nno=' + $(this).children().eq(0).text();
										
				})
	    	})
	    	</script>
            
			<%--  
             <div align="center" class="pagingArea">
                   <% if(currentPage != 1) { %>
	            	<button onclick="location.href='<%=contextPath%>/adminList.no?currentPage=<%=currentPage-1%>';">이전</button>
					<% } %>
					
					<% for(int p=startPage; p<=endPage; p++) { %>
						
						<% if(currentPage == p){ %>
		            		<button disabled><%= p %></button>
		            	<% }else{ %>
		            		<button onclick="location.href='<%=contextPath%>/adminList.no?currentPage=<%= p %>';"><%= p %></button>
		            	<% } %>
		            	
					<% } %>
					
					<% if(currentPage != maxPage){ %>
		            	<button onclick="location.href='<%=contextPath%>/adminList.no?currentPage=<%=currentPage+1%>';">다음</button>
					<% } %>
                </div>
                --%>
<!-- ------------------------------------------------------------------------------------------------------------------- -->            
            
            <!-- 공지사항 작성 모달 -->
            <!-- The Modal -->
            <div class="modal" id="insertNotice">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content">
                    
                        <!-- Modal Header -->
                        <div class="modal-header">
	                        <h3 class="modal-title">공지사항 작성</h3>
	                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                
                       
						<form id="insertNoticeForm" action="<%= contextPath %>/adminInsert.no" method="post">
                            <!-- Modal body -->
                            <div class="modal-body">

								<table class="table table-borderless">
								    <tr>
								        <td><input type="text" name="title" class="form-control" placeholder="제목을 입력해주세요." required></td>
								    </tr>
								    <tr>
								        <td><textarea name="content" class="form-control" rows="10" style="resize:none;" placeholder="내용을 입력해주세요." required></textarea></td>
								    </tr>
								</table>

                            </div>
                                
                            <!-- Modal footer -->
                            <div class="modal-footer">
                                    <button type="submit" class="btn btn-warning">작성</button>    
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                            </div>
						</form>
                    </div>
                </div>
            </div>
            
            <!-- 
            <div>
	            <form id="insertNoticeForm" action="<%= contextPath %>/adminInsert.no" method="post">
	
	                <table class="table table-borderless">
	                    <tr>
	                        <td><input type="text" name="title" class="form-control" placeholder="제목을 입력해주세요." required></td>
	                    </tr>
	                    <tr>
	                        <td><textarea name="content" class="form-control" rows="10" style="resize:none;" placeholder="내용을 입력해주세요." required></textarea></td>
	                    </tr>
	                </table>
	
	                <button type="submit" class="btn btn-warning">작성</button>    
	                <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
	
	            </form>
            </div>
             -->
            
<!-- ------------------------------------------------------------------------------------------------------------------- -->   
	
			<!-- 공지사항 상세 모달 -->
            <!-- The Modal -->
            <div class="modal" id="detailNotice">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content">
                    
                        <!-- Modal Header -->
                        <div class="modal-header">
	                        <h3 class="modal-title">공지사항 상세보기</h3>
	                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                
                       
						<form id="insertNoticeForm" action="<%= contextPath %>/adminInsert.no" method="post">
                            <!-- Modal body -->
                            <div class="modal-body">

								<table class="table table-borderless">
								    <tr>
								        <td><textarea name="title" class="form-control" style="resize:none;" required></textarea></td>
								    </tr>
								    <tr>
								        <td><textarea name="content" class="form-control" rows="10" style="resize:none;" required></textarea></td>
								    </tr>
								</table>

                            </div>
                                
                            <!-- Modal footer -->
                            <div class="modal-footer">
                                    <button type="submit" class="btn btn-warning">수정</button>    
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">삭제</button>
                            </div>
						</form>
                    </div>
                </div>
            </div>


        </div><!--컨텐츠-->
    </div><!--본문-->




</body>
</html>