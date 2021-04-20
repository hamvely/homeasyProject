<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>Insert title here</title>

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
        position: absolute;
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
    .content_btn:nth-child(2) {
        margin-right: 400px;
    }

    /* 쿠폰 목록 */
    .coupon_list{
        text-align: left;
        font-size: 11px;
        width: 100%;
    }
    .coupon_list>tbody>tr:hover{
        background:lightgray;
        cursor:pointer;
    }
    th, td {
        padding: 5px;
        border-bottom: 1px solid #ddd;
    }
    th {
        height: 40px;
        background-color: lightgray;
    }

</style>
</head>
<body>

<!-- 전체 화면 -->
    <div class="wrap">
        <!-- 상단바 -->
        <div id="header"></div>

        <!-- 본문 전체 -->
        <div id="content">
            <!-- 좌측 메뉴바 -->
            <div id="content_1"></div>

            <!-- 우측 본문 -->
            <div id="content_2">

                <!-- 페이지 제목 -->
                <h3>쿠폰관리</h3>

                <!-- 버튼 -->
                <div class="content_bar">
                    <button class="content_btn">추가</button>
                    <button class="content_btn" data-toggle="modal" data-target="#deleteCoupon">삭제</button>
                </div>
            
                <br><br><br>

                <!-- 쿠폰 리스트 테이블 -->
                <table align="center" class="coupon_list" style="overflow-x:auto;">
                    <tr>
                        <th>선택</th>
                        <th>쿠폰번호</th>
                        <th>쿠폰명</th>
                        <th>할인금액(원)</th>
                        <th>최소구매금액(원)</th>
                        <th>사용기간</th>
                        <th>특이사항</th>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>45673389</td>
                        <td>봄맞이 무료배송 쿠폰</td>
                        <td><!--배송비전액--></td>
                        <td>3000</td>
                        <td>20210531</td>
                        <td>결제금액 상관없이 전 회원 무료배송</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>10001000</td>
                        <td>1000원 할인쿠폰</td>
                        <td>1000</td>
                        <td>10000</td>
                        <td>20210531</td>
                        <td>1만원 결제시 전회원 1천원 할인</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>22222222</td>
                        <td>2000원 할인쿠폰</td>
                        <td>2000</td>
                        <td>15000</td>
                        <td>20210631</td>
                        <td>1만5천원 결제시 전회원 2천원 할인</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>33333333</td>
                        <td>3000원 할인쿠폰</td>
                        <td>3000</td>
                        <td>20000</td>
                        <td>20210731</td>
                        <td>2만원 결제시 전회원 3천원 할인</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>55555555</td>
                        <td>5000원 할인쿠폰</td>
                        <td>5000</td>
                        <td>30000</td>
                        <td>20210831</td>
                        <td>3만원 결제시 전회원 3천원 할인</td>
                    </tr>
                    
                </table>

                <br><br>

                <div align="center" class="pagingArea">
                    <!--
                    <% if(currentPage != 1) { %>
                        <button onclick="location.href='<%=contextPath%>/list.bo?currentPage=<%=currentPage-1%>';">이전</button>
                    <% } %>
                    
                    <% for(int p=startPage; p<=endPage; p++) { %>
                        
                        <% if(currentPage == p){ %>
                            <button disabled><%= p %></button>
                        <% }else{ %>
                            <button onclick="location.href='<%=contextPath%>/list.bo?currentPage=<%= p %>';"><%= p %></button>
                        <% } %>
                        
                    <% } %>
                    
                    <% if(currentPage != maxPage){ %>
                        <button onclick="location.href='<%=contextPath%>/list.bo?currentPage=<%=currentPage+1%>';">다음</button>
                    <% } %>
                    -->
                </div>

                <!-- 쿠폰삭제 모달 -->
                <div class="modal" id="deleteCoupon">
                    <div class="modal-dialog">
                        <div class="modal-content">
                    
                            <!-- Modal Header -->
	                        <div class="modal-header">
	                            <h4 class="modal-title">쿠폰삭제</h4>
	                            <button type="button" class="close" data-dismiss="modal">&times;</button>
	                        </div>
	                        
	                        <!-- Modal body -->
	                        <div class="modal-body">
	                        	해당 쿠폰을 정말 삭제하시겠습니까?
	                        </div>
	                        
	                        <!-- Modal footer -->
	                        <div class="modal-footer">
	                            <button type="button" class="btn btn-success" data-dismiss="modal">삭제</button>
	                            <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
	                        </div>
                    
                        </div>
                    </div>
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