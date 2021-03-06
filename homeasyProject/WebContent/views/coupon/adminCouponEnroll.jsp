<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Homeasy Admin</title>
<style>
    div {
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
    .coupon_enroll table {
        width: 500px;
        margin-left: 30px;
    }
    th {
        color: #2e363e;
        font-size: 17px;
        font-weight: bold;
        height: 50px;
        width: 150px;
    }
    .coupon_enroll input {
        width: 100%;
        box-sizing: border-box;
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
                <h3>쿠폰등록</h3>
               

                <!-- 쿠폰 등록 폼 -->
                <form action="<%= contextPath %>/adminInsert.cp" class="coupon_enroll" method="post">
                    <!-- 버튼 -->
                    <div class="content_bar">
                        <button type="submit" class="content_btn">쿠폰등록</button>
                        <button type="reset" class="content_btn">등록취소</button>
                    </div>
                    <br><br>

                    <table>
                        <tr>
                            <th>쿠폰명</th>
                            <td><input type="text" name="cp_name" maxlength="50" required></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th>할인금액</th>
                            <td><input type="number" name="cp_price" required></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th>최소구매금액</th>
                            <td><input type="number" name="cp_condition" required></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th>쿠폰사용기간</th>
                            <td><input type="number" name="cp_limit" required></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th>쿠폰특이사항</th>
                            <td><input type="text" name="cp_memo" maxlength="100"></td>
                            <td></td>
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