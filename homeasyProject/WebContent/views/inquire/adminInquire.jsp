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
    div,table, tr, th{outline: 1px solid darkgreen;}
    
    .wrap{width: 900px; height: 1150px;}
    table,tr,td{height: 85px; border-bottom: 1px solid lightgray;}
  
    #a{height: 100px; }
    #b{height: 50px; }

    #h{height: 50px;}

</style>
</head>
<body>

    <div class="wrap">
        <div>
            <div id="a" ><h1><br>1:1문의 관리</h1></div>
            <div id="b"><br><button>주문조회 </button></div>
        </div>
        
        <!--문의유형 문의 상태  -->
        <div>
            <div id="b"> <br>
                <select name="option">
                    <option value="sixmonth">상품</option>
                    <option value="year">배송</option>
                    <option value="everything">교환/반품</option>
                    <option selected><p>문의유형</p></option>
                </select>
                <select name="option">
                    <option value="sixmonth">전체</option>
                    <option value="year">미답변</option>
                    <option value="everything">답변완료</option>
                    <option selected><p>문의상태</p></option>
                </select>
            </div>
        </div>

        <form action="">
            <table class="listArea" style="width: 900px;border-collapse:collapse;">
                <tr style="height: 40px;">
                    <th>No.</th>
                    <th>분류</th>
                    <th>작성일</th>
                    <th>답변여부</th>
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
	                    <th>미답</th>
	                    <th><%= n.getInqContent() %></th>
	                    <th><%= n.getEmail() %></th>
	                </tr>
	              
	             <% } %>  
	              <% } %>   
	            </tbody>     
	            </table>
	        </form>
		          
	          <tr>
                <th>
                    <th align="center" style="padding: 200px;">
						
					  <%if(currentPage !=1) {%>
                         <button onclick="location.href='<%=contextPath%>/adminInquire.one?currentPage=<%=currentPage -1%>';">이전</button>
                       <% } %>
                       <% for(int p=startPage; p<=endPage; p++) { %>
                        
                       <% if(currentPage == p){ %>
                         <button><%= p %> </button>
                       <% }else{ %>
                       	 <button onclick="location.href='<%= contextPath %>/adminInquire.one?currentPage=<%= p %>';"><%= p %></button>
                       <%  } %>
                       
                       <% } %>
                      
                      <% if(currentPage != maxPge){ %>
                        <button onclick="location.href='<%= contextPath%>/adminInquire.one?currentPage=<%=currentPage +1%>';">다음</button>
 					  <% } %>	
                    </th>
                </th>
            </tr>
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

			<div class="container">
			  <h2>상품</h2>
			  <!-- Button to Open the Modal -->
			  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
			    Open modal
			  </button>
			
			  <!-- The Modal -->
			  <div class="modal" id="myModal">
			    <div class="modal-dialog">
			      <div class="modal-content">
			      
			        <!-- Modal Header -->
			        <div class="modal-header">
			          <h1 class="modal-title">상품관련 </h1>
			          <button type="button" class="close" data-dismiss="modal">×</button>
			        </div>
			        
			        <!-- Modal body -->
			        <div class="modal-body">
			          <h3>혜미님!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</h3>
			          <p>ㅎㅖ미님 어디갔어..............흑흑흑흑흑어디어디</p>
			        
			        <!-- Modal footer -->
			        <div class="modal-footer">
			          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
			        </div>
			        
			      </div>
			    </div>
			  </div>
			  
			</div>
			
			
			
			


		        

</body>

</html>