<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.faq.model.vo.Faq"%>
<%
	ArrayList<Faq> list = (ArrayList<Faq>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
    /* div{outline: 1px solid violet;} */

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
   
    .listArea{
        font-size: 20px;
    }
    table{
        text-align: center;
        margin: auto;
    }
    th, td{height: 55px;}

    .outer{
        margin: auto;
    }
    .faqNavigator{
        text-align: center;
        margin: auto;
        height: 50px;
        padding-top: 18px;
    }
    .faqNavigator a{
        margin-right: 20px;
        font-size: 20px;
    }
    .info{
        margin-left: 820px;
        padding-bottom: 7px;
    }
    
    .faqHeder{border-bottom: 1px solid black; background-color: rgb(212, 237, 218);}

    h1{margin-left: 30px; padding-top: 25px;}
</style>
</head>
<body>

	<%@ include file="../common/mainHeader.jsp" %>
    <hr>
	
	<div class="outer" style="width: 1200px;">

        <div class="faqHeder"><!-- 텍스트크기 늘리면 여기 줄여-->
            <h1>FAQ</h1>
            <div class="info">
                <p>
                    운영시간 : 평일 09:00 ~ 18:00(주말 & 공휴일 제외) <br>
                    이메일 문의 : homeasy@gmail.com <br>
                    전화 : 0318-0505
                </p>
            </div>
        </div>

        <div class="faqNavigator">
                    <a href="<%= contextPath %>/listAll.faq">전체</a>
                    <a href="<%= contextPath %>/listPay.faq">주문/결제</a>
                    <a href="<%= contextPath %>/listDel.faq">배송</a>
                    <a href="<%= contextPath %>/listCancel.faq">취소/환불</a>
                    <a href="<%= contextPath %>/listChange.faq">반품/교환</a>
                    <a href="<%= contextPath %>/listEtc.faq">기타/서비스</a>
        </div>

        <hr><br>
		
		<table class="listArea table-bordered table-hover"> <!-- 텍스트크기 늘리면 여기 줄여-->
            <thead>
                <tr class="table-active">
                	<th width="0">
                    <th width="250">카테고리</th>
                    <th width="750">제목 </th>
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
        
        <br><br><br>
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