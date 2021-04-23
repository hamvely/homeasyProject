<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.faq.model.vo.Faq"%>
<%
	ArrayList<Faq> list = (ArrayList<Faq>)request.getAttribute("list");

	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
    .faq{
        display: inline-block;
    }
    .topquestion{
        margin: 10px;
    }
     .listArea>tbody>tr:hover{
        background:gray;
        cursor:pointer;
    }
</style>
</head>
<body>

	<div class="outer">

        <div class="faqHeder">
            <div class="info faq">
                <h1>FAQ</h1>
                <p>
                    운영시간 : 평일 09:00 ~ 18:00(주말 & 공휴일 제외) <br>
                    이메일 문의 : homeasy@gmail.com <br>
                    전화 : xxxx-xxxxx
                </p>
            </div>
            <div class="topquestion faq">
                <a href="">배송은 얼마나 걸리나요?</a> <br>
                <a href="">배송은 얼마나 걸리나요?</a> <br>
                <a href="">배송은 얼마나 걸리나요?</a>
            </div>
        </div>

        <div class="faqNavigator">
            <table class="nav">
                <tr>
                    <td><a href="<%= contextPath %>/listAll.faq">전체</a></td>
                    <td><a href="<%= contextPath %>/listPay.faq">주문/결제</a></td>
                    <td><a href="<%= contextPath %>/listDel.faq">배송</a></td>
                    <td><a href="<%= contextPath %>/listCancel.faq">취소/환불</a></td>
                    <td><a href="<%= contextPath %>/listChange.faq">반품/교환</a></td>
                    <td><a href="<%= contextPath %>/listEtc.faq">기타/서비스</a></td>
                </tr>
            </table>
        </div>

        <hr>
		
		<table align="center" class="listArea">
            <thead>
                <tr>
                	<th width="0">
                    <th width="150">카테고리</th>
                    <th width="600">제목 </th>
                </tr>
            </thead>
            <tbody>
                <% if(list.isEmpty()) { %> <!-- 조회된 결과가 없을 경우 -->
                <tr>
                    <td colspan="3">조회된 리스트가 없습니다.</td>
                </tr>
               <% } else { %> <!-- 조회된 결과가 있을 경우 -->
               		<% for(Faq f : list) { %>
		                	<tr>
							<input type="hidden" value="<%=f.getFaqNo()%>">
                        		<td></td>
                          		<td><%= f.getFaqCate() %></td>
                         		<td><%= f.getFaqTitle() %></td>
                      		</tr>
	                <% } %>
                <% } %>
            </tbody>
    	</table> 
    	<script>
    		$(function(){
    			$('.listArea>tbody>tr').click(function(){
    				location.href = '<%=contextPath%>/detail.faq?fno=' + $(this).children().eq(0).val();
    			})
    		})
        </script> 
    </div>
    
</body>
</html>