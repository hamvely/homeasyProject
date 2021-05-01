<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="java.util.ArrayList, com.kh.inquire.model.vo.*, com.kh.common.model.vo.PageInfo"%>
    
<%
PageInfo pi = (PageInfo)request.getAttribute("pi");
ArrayList<AdminInquire> list =(ArrayList<AdminInquire>)request.getAttribute("list");

int currentPage = pi.getCurrentPage();
int startPage = pi.getStartPage();
int endPage = pi.getEndPage();
int maxPge = pi.getMaxPage();


String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    div,table, tr, th{outline: 0px solid darkgreen;}
    table,tr,td{height: 85px; border-bottom: 1px solid lightgray;}
    button{ text-align: center;}
    .wrap{width: 900px; height: 1150px;}

    .btn-warning {
        background-color:rgb(241, 196, 15); 
    	border-color:rgb(241, 196, 15);
        color: white;
    }

    .btn-secondary {
    	background-color:rgb(158, 158, 158); 
    	border-color:rgb(158, 158, 158);
    }
  
    .line{border-bottom: 1px solid lightgray;}

	.paddingArea{padding: 10px}

    #a{height: 100px; }
    #b{height: 50px; }

    #h{height: 50px;}

</style>
</head>
<body>

  

    <div class="wrap">
        <div>
            <div class="line" id="a" ><h1><br>1:1문의 관리</h1></div>
        </div>
        
        <!--문의유형 문의 상태  -->
        <form action="">
            <table class="listArea" style="width: 900px;border-collapse:collapse;">
                <tr style="height: 40px;">
                    <th>No.</th>
                    <th>분류</th>
                    <th>작성일</th>
                    <th style="width: 200px;">제목</th>
                    <th>회원이메일</th>
                </tr>

         
            <tbody > 
				<%if(list.isEmpty()){ %>
					<tr>
						<td colspan="6">조회된 리스트가 없습니다. </td>
					</tr>
				<% }else{ %>
				 	<% for(AdminInquire n:list) {%>
				   <tr id="h">
	                    <th><%= n.getInqNo() %></th>
	                    <th><%= n.getInqCate() %></th>
	                    <th><%= n.getInqCreateDate() %></th>
	                    <th><%= n.getInqTitle() %></th>
	                    <th><%= n.getEmail() %></th>
                   </tr>
	             <% } %>  
	              <% } %>   
	            </tbody>     
	            </table>
	        </form>
		          
	          
            <div align="center" class="paddingArea">
				<%if(currentPage !=1) {%>
		            <button class="btn btn-secondary btn-sm" onclick="location.href='<%=contextPath%>/adminInquire.one?currentPage=<%=currentPage -1%>';">이전</button>
		            <% } %>
		            <% for(int p=startPage; p<=endPage; p++) { %>
		             
		            <% if(currentPage == p){ %>
		              <button class="btn btn-secondary btn-sm" ><%= p %> </button>
		            <% }else{ %>
		            	 <button class="btn btn-secondary btn-sm" onclick="location.href='<%= contextPath %>/adminInquire.one?currentPage=<%= p %>';"><%= p %></button>
		            <%  } %>
		            
		            <% } %>
		           
		           <% if(currentPage != maxPge){ %>
		             <button class="btn btn-secondary btn-sm" onclick="location.href='<%= contextPath%>/adminInquire.one?currentPage=<%=currentPage +1%>';">다음</button>
				<% } %>
			</div>
            
 
  		  </div>  

		    
		    <script>
		    $(function(){
				$(".listArea>tbody>tr").click(function(){
					// 쿼리스트링 이용해서 요청할 url 작성
					$('#myModal').modal({
				        keyboard: true,
				        backdrop: "static"
				    });
				})
			})
		   </script>
		   
		   
		   
		<!-- 모달-->	  
		<!-- The Modal -->
            <div class="modal" id="myModal">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content">
                    
                        <!-- Modal Header -->
                        <div class="modal-header">
	                        <h3 class="modal-title">1:1 문의 관리</h3>
	                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                
                       
						<form id="insertNoticeForm" action="<%= contextPath %>/adminInsert.in" method="post">
                            <!-- Modal body -->
                            <div class="modal-body">

								<table class="table table-borderless">
						
								    <tr>
								        <td><textarea name="answer" class="form-control" rows="10" style="resize:none;" placeholder="내용을 입력해주세요." required></textarea></td>
								    </tr>
								</table>

                            </div>
                                
                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-warning btn-sm">등록</button>  
                                <a href="" class="btn btn-secondary btn-sm">취소</a> 
                            </div>
						</form>
                    </div>
                </div>
            </div>
			
			
			
			


		        

</body>

</html>