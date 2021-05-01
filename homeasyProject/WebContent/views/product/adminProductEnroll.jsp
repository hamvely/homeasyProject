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
        /*margin: auto;*/
        margin-left: 30px;
    }
    th {
        color: #2e363e;
        font-size: 17px;
        font-weight: bold;
        height: 50px;
        width: 150px;
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
                <h3>상품등록</h3>

                <!-- 버튼 -->
                <div class="content_bar">
                    <button type="submit" class="content_btn">상품등록</button>
                    <button type="reset" class="content_btn">등록취소</button>
                </div>
                <br><br>

                <!-- 상품 등록 폼 -->
                <form action="<%= contextPath %>/adminInsert.pd" class="product_enroll" method="post" enctype="multipart/form-data">
                    <table>
                        <tr>
                            <th>진열여부</th>
                            <td><input type="radio" name="product_status" value="Y" required>진열함(Y)</td>
                            <td><input type="radio" name="product_status" value="Y" required>진열대기(N)</td>
                        </tr>
                        <tr>
                            <th>카테고리</th>
                            <td>
                                <select id="category1" onchange="cate1select" required>
                                    <option value="1">가구</option>
                                    <option value="2">패브릭</option>
                                    <option value="3">홈데코/조명</option>
                                    <option value="4">수납/정리</option>
                                    <option value="5">생활</option>
                                    <option value="6">주방</option>
                                    <option value="7">반려동물</option>
                                </select>
                            </td>
                            <td>
                                <select id="category2" required>
                                    <option value="1">침실가구</option>
                                    <option value="2">서재가구</option>
                                    <option value="3">거실가구</option>
                                    <option value="4">주방가구</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>상품명</th>
                            <td colspan="3"><input type="text" name="product_name" maxlength="50" required></td>
                        </tr>
                        <tr>
                            <th>상품가격</th>
                            <td colspan="3"><input type="number" name="product_price" required>원</td>
                        </tr>
                        <tr>
                            <th>옵션명</th>
                            <td colspan="3"><input type="text" name="option_name" maxlength="50" required></td>
                        </tr>
                        <tr>
                            <th>옵션가격</th>
                            <td colspan="3"><input type="number" name="option_price" required>원</td>
                        </tr>
                        <tr>
                            <th>수량</th>
                            <td colspan="3"><input type="number" name="option_stock" required>개</td>
                        </tr>
                        <tr>
                            <th>업체명</th>
                            <td colspan="3"><input type="email" name="product_brand" required></td>
                        </tr>
                        <tr>
                            <th>상품이미지</th>
                            <td colspan="3">
                            	<!-- 대표이미지 미리보기 할 img -->
                            	<img id="titleImg" width="100" height="100">
                            </td>
                        </tr>
                        <tr>
                            <th>상세이미지</th>
                            <td colspan="3">
                            	<!-- 상세이미지 미리보기할 img -->
                            	<img id="detailImg" width="100" height="100">
                            </td>
                        </tr>
                    </table>

                    <div id="fileArea">
                        <input type="file" name="file1" id="file1" onchange="loadImg(this, 1);" required>
                        <input type="file" name="file2" id="file2" onchange="loadImg(this, 2);">
                    </div>

                    <script>
                    
                        $(function() {
                        	
                        	$("#fileArea").hide(); // 하단 파일선택버튼 안보이게
                        	
                            $("#titleImg").click(function() {
                                $("#file1").click();
                            });

                            $("#detailImg").click(function() {
                                $("#file2").click();
                            });
                        })

                        function loadImg(inputFile, num) {
                            // inputFile : 현재 변화가 생간 input type="file" 요소객체
                            // num : 몇번재째 input 요소인지 확인후 해당 영역에 미리보기하기 위해

                            // 파일 선택하는 순간 inputFile.files라는 속성배열에 0인덱스에 파일 담김
                            if(inputFile.files.length == 1) { // 선택된 파일 있을 경우

                                // 파일읽어들일 FileReader 객체 생성
                                var reader = new FileReader();

                                // 선택된 파일을 읽어들이기
                                // => 읽어들이는 순간 해당 파일의 고유url 부여됨
                                reader.readAsDataURL(inputFile.files[0]);

                                // 파일 읽어들이기가 다 완료된 순간 실행할 함수 정의
                                reader.onload = function(e) { // 고유한 url
                                    // 각 영역에 맞춰서 이미지 미리보기
                                    switch(num) {
                                        case 1: $("#titleImg").attr("src", e.target.result); break; 
                                        case 2: $("#detailImg").attr("src", e.target.result); break;
                                    }
                                }

                            } else { // 선택된 파일이 사라졌을 경우

                                switch(num) {
                                    case 1: $("#titleImg").attr("src", null); break; 
                                    case 2: $("#detailImg").attr("src", null); break;
                                }

                            }

                        }
                        
                    </script>
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