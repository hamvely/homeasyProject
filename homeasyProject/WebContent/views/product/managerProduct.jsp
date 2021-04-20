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

<title>상품관리</title>
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
    .search_bar {
        display: flex;
    }
    .search_text {
        width: 350px;
        height: 30px;
        margin-right: 320px;
    }
    .product_category {
        height: 30px;
        margin-left: 10px;
    }

    /* 상품 리스트 테이블 스타일 */
    .product_list{
        text-align: left;
        font-size: 11px;
        width: 100%;
    }
    .product_list>tbody>tr:hover{
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
                <h3>상품관리</h3>

                <!-- 버튼 -->
                <div class="content_bar">
                    <button class="content_btn">검색</button>
                    <button class="content_btn">상품추가</button>
                    <button class="content_btn">상품수정</button>
                    <button class="content_btn" data-toggle="modal" data-target="#deleteProduct">상품삭제</button>
                </div>
                <br>

                <!-- 카테고리, 상품찾기 -->
                <div class="search_bar">
                    <form class="product_search">
                        <input type="search" class="search_text" placeholder="검색할 상품명을 입력하세요.">
                    </form>
                    <select name="category" class="product_category">
                        <option value="">가구</option>
                        <option value="">패브릭</option>
                        <option value="">홈데코/조명</option>
                        <option value="">수납/정리</option>
                        <option value="">생활</option>
                        <option value="">주방</option>
                        <option value="">반려동물</option>
                    </select>
                    <select name="category" class="product_category">
                        <option value="">전체</option>
                        <option value="">품절</option>
                        <option value="">부족</option>
                    </select>
                    <select name="category" class="product_category">
                        <option value="">진열함(Y)</option>
                        <option value="">진열대기(N)</option>
                    </select>
                </div>
            
                <br>

                <!-- 상품 리스트 테이블 -->
                <table align="center" class="product_list" style="overflow-x:auto;">
                    <tr>
                        <th>선택</th>
                        <th>상품번호</th>
                        <th>분류</th><!--2차카테고리번호-->
                        <th>상품명</th>
                        <th>업체명</th>
                        <th>가격</th>
                        <th>재고</th>
                        <th>등록일</th>
                        <th>진열여부</th>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>7907211</td>
                        <td>침실가구</td>
                        <td>완전추천상품</td>
                        <td>보람가구</td>
                        <td>2000000</td>
                        <td>112</td>
                        <td>20210417</td>
                        <td>Y</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>0303931</td>
                        <td>서재가구</td>
                        <td>서재엔이책상이지</td>
                        <td>보람가구</td>
                        <td>170000</td>
                        <td>251</td>
                        <td>20210417</td>
                        <td>Y</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>666161</td>
                        <td>거실가구</td>
                        <td>푹신왕소파</td>
                        <td>보람가구</td>
                        <td>6100000</td>
                        <td>91</td>
                        <td>20210417</td>
                        <td>Y</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>777333</td>
                        <td>침구</td>
                        <td>포근해서이틀동안자도모르는이불</td>
                        <td>BORAMFAB</td>
                        <td>370000</td>
                        <td>924</td>
                        <td>20210417</td>
                        <td>Y</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>775333</td>
                        <td>커튼/블라인드</td>
                        <td>암막커튼아무것도안보임주의</td>
                        <td>BORAMFAB</td>
                        <td>60000</td>
                        <td>1097</td>
                        <td>20210417</td>
                        <td>Y</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>86754</td>
                        <td>카페트/러그</td>
                        <td>라탄카페트짱쉬원</td>
                        <td>BORAMFAB</td>
                        <td>90000</td>
                        <td>1124</td>
                        <td>20210417</td>
                        <td>Y</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>546798</td>
                        <td>쿠션/방석</td>
                        <td>버터모양쿠션</td>
                        <td>BORAMFAB</td>
                        <td>24000</td>
                        <td>244</td>
                        <td>20210417</td>
                        <td>Y</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>7878781</td>
                        <td>조명</td>
                        <td>펜던트조명</td>
                        <td>조명사보람</td>
                        <td>11111</td>
                        <td>500</td>
                        <td>20210417</td>
                        <td>Y</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>999921</td>
                        <td>식물</td>
                        <td>행운나무</td>
                        <td>보람식물</td>
                        <td>11111</td>
                        <td>500</td>
                        <td>20210417</td>
                        <td>Y</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>11182</td>
                        <td>그릇</td>
                        <td>깨지지않아요접시</td>
                        <td>보람주방</td>
                        <td>11111</td>
                        <td>500</td>
                        <td>20210417</td>
                        <td>Y</td>
                    </tr>                    
                </table>

                <br><br>

                

            </div>
        </div>
    </div>

    <!-- 상품 삭제 모달 -->
    <div class="modal" id="deleteProduct">
        <div class="modal-dialog">
            <div class="modal-content">
        
                <!-- Modal Header -->
	            <div class="modal-header">
	                <h4 class="modal-title">상품삭제</h4>
	                <button type="button" class="close" data-dismiss="modal">&times;</button>
	            </div>
	            
	            <!-- Modal body -->
	            <div class="modal-body">
	               	해당 상품을 정말 삭제하시겠습니까?
	            </div>
	            
	            <!-- Modal footer -->
	            <div class="modal-footer">
	                <button type="button" class="btn btn-success" data-dismiss="modal" style="background-color:rgb(241, 196, 15);">확인</button>
                	<button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color:darkgray;">취소</button>
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