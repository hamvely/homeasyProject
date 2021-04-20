<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

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
        margin-right: 355px;
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
                <h3>리뷰관리</h3>

                <!-- 버튼 -->
                <div class="content_bar">
                    <button class="content_btn" data-toggle="modal" data-target="#deleteReview">삭제</button>
                </div>
                <br><br>

                <!-- 리뷰 리스트 테이블 -->
                <table align="center" class="product_list" style="overflow-x:auto;">
                    <tr>
                        <th>선택</th>
                        <th>리뷰 번호</th>
                        <th>상품명</th>
                        <th>회원이메일</th><!--2차카테고리번호-->
                        <th>리뷰 내용</th>
                        <th>리뷰 평점</th>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>11111</td>
                        <td>상품명001</td>
                        <td>user01@never.com</td>
                        <td data-toggle="modal" data-target="#detailReview">정말 좋아요 정말 추천해요 정말 좋아요 정말 추천해요정말 좋아요 정말 추천해요정말 좋아요 정말 추천해요</td>
                        <td>5</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>2222</td>
                        <td>상품명002</td>
                        <td>user02@never.com</td>
                        <td>구냥 그래요.................................................................................</td>
                        <td>3</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>3333</td>
                        <td>상품명003</td>
                        <td>user03@never.com</td>
                        <td>정말 좋아요 정말 추천해요 정말 좋아요 정말 추천해요정말 좋아요 정말 추천해요정말 좋아요 정말 추천해요</td>
                        <td>5</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>4444</td>
                        <td>상품명004</td>
                        <td>user04@never.com</td>
                        <td>정말 좋아요 정말 추천해요 정말 좋아요 정말 추천해요정말 좋아요 정말 추천해요정말 좋아요 정말 추천해요</td>
                        <td>5</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>5555</td>
                        <td>상품명005</td>
                        <td>user05@never.com</td>
                        <td>정말 좋아요 정말 추천해요 정말 좋아요 정말 추천해요정말 좋아요 정말 추천해요정말 좋아요 정말 추천해요</td>
                        <td>5</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>6666</td>
                        <td>상품명006</td>
                        <td>user06@never.com</td>
                        <td>실망했어요ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ</td>
                        <td>1</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>77777</td>
                        <td>상품명007</td>
                        <td>user07@never.com</td>
                        <td>이게 뭐야잇</td>
                        <td>1</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>88888</td>
                        <td>상품명008</td>
                        <td>user08@never.com</td>
                        <td>정말 좋아요 정말 추천해요 정말 좋아요 정말 추천해요정말 좋아요 정말 추천해요정말 좋아요 정말 추천해요</td>
                        <td>5</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>9999</td>
                        <td>상품명009</td>
                        <td>user09@never.com</td>
                        <td>정말 좋아요 정말 추천해요 정말 좋아요 정말 추천해요정말 좋아요 정말 추천해요정말 좋아요 정말 추천해요</td>
                        <td>3</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>101010</td>
                        <td>상품명010</td>
                        <td>user10@never.com</td>
                        <td>정말 좋아요 정말 추천해요 정말 좋아요 정말 추천해요정말 좋아요 정말 추천해요정말 좋아요 정말 추천해요</td>
                        <td>5</td>
                    </tr>                                    
                </table>
                <br><br>                

            </div>
        </div>
    </div>


	<!-- 리뷰 조회 모달 -->
    <div class="modal" id="detailReview">
        <div class="modal-dialog">
            <div class="modal-content">
        
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">리뷰 조회</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form class="Review_content">
                        <table>
                            <tr>
                                <th>회원이메일</th>
                                <td><input type="text" name="email" required></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th>상품명</th>
                                <td><input type="text" name="product_name" required></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th>리뷰평점</th>
                                <td><input type="number" name="re_mark" required></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th>리뷰내용</th>
                                <td><input type="text" name="re_content" required></td>
                                <td></td>
                            </tr>
                        </table>
                    </form>
                </div>
                
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-dismiss="modal" style="background-color:darkgray;">취소</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal" data-toggle="modal" data-target="#deleteReview" style="background-color:rgb(241, 196, 15);">삭제</button>
                </div>
        
            </div>
        </div>
    </div>

    <!-- 리뷰 삭제 모달 -->
    <div class="modal" id="deleteReview">
        <div class="modal-dialog">
            <div class="modal-content">
        
                <!-- Modal Header -->
	            <div class="modal-header">
	                <h4 class="modal-title">리뷰삭제</h4>
	                <button type="button" class="close" data-dismiss="modal">&times;</button>
	            </div>
	            
	            <!-- Modal body -->
	            <div class="modal-body">
	               	리뷰를 정말 삭제하시겠습니까?
	            </div>
	            
	            <!-- Modal footer -->
	            <div class="modal-footer">
	                <button type="submit" class="btn btn-success" data-dismiss="modal" style="background-color:rgb(241, 196, 15);">확인</button>
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