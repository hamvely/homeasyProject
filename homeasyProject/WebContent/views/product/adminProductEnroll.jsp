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
<title>상품 등록</title>
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
    .product_enroll table {
        margin: auto;
    }
    th {
        color: #2e363e;
        font-size: 17px;
        font-weight: bold;
        height: 50px;
        width: 100px;
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
                <h3>상품등록</h3>

                <!-- 버튼 -->
                <div class="content_bar">
                    <button class="content_btn">상품등록</button>
                    <button class="content_btn">등록취소</button>
                </div>
                <br><br>

                <!-- 상품 등록 폼 -->
                <form class="product_enroll">
                    <table>
                        <tr>
                            <th>진열여부</th>
                            <td><input type="radio" name="product_status" required>진열함(Y)</td>
                            <td><input type="radio" name="product_status" required>진열대기(N)</td>
                        </tr>
                        <tr>
                            <th>카테고리</th>
                            <td>
                                <select name="category1" class="cate1_no" required>
                                    <option value="">가구</option>
                                    <option value="">패브릭</option>
                                    <option value="">홈데코/조명</option>
                                    <option value="">수납/정리</option>
                                    <option value="">생활</option>
                                    <option value="">주방</option>
                                    <option value="">반려동물</option>
                                </select>
                            </td>
                            <td>
                                <select name="category2" class="cate2_no" required>
                                    <option value="">2차 분류</option>
                                    <option value="">종류1</option>
                                    <option value="">종류2</option>
                                    <option value="">종류3</option>
                                    <option value="">종류4</option>
                                    <option value="">종류5</option>
                                    <option value="">종류6</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>상품명</th>
                            <td><input type="text" name="product_name" maxlength="50" required></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th>상품가격</th>
                            <td><input type="number" name="product_price" required>원</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th>옵션명</th>
                            <td><input type="text" name="option_name" maxlength="50" required></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th>옵션가격</th>
                            <td><input type="number" name="option_price" required>원</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th>수량</th>
                            <td><input type="number" name="option_stock" required>개</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th>업체명</th>
                            <td><input type="email" name="product_brand" required></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th>상품이미지</th>
                            <td><input type="file" name="product_file_no" required></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th>상세정보</th>
                            <td><input type="file" name="product_file_no" required></td>
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