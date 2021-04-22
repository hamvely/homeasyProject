<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<title>노하우 관리</title>
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

    /* 노하우 목록 */
    .knowhow_list{
        text-align: left;
        font-size: 11px;
        width: 100%;
    }
    .knowhow_list>tbody>tr:hover{
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
                <h3>노하우 관리</h3>

                <!-- 버튼 -->
                <div class="content_bar">
                    <button class="content_btn">등록</button>
                    <button class="content_btn" data-toggle="modal" data-target="#deleteKnowhow">삭제</button>
                </div>
            
                <br><br><br>

                <!-- 노하우 리스트 테이블 -->
                <table align="center" class="knowhow_list" style="overflow-x:auto;">
                    <tr>
                        <th>선택</th>
                        <th>노하우 게시글 제목</th>
                        <th>작성일</th>
                        <th>조회수</th>
                        <th>노출상태</th>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td data-toggle="modal" data-target="#updateKnowhow">봄처럼 따스한 인테리어 노하우</td>
                        <td>2020-04-20</td>
                        <td>244</td>
                        <td>Y</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>봄처럼 따스한 인테리어 노하우</td>
                        <td>2020-04-20</td>
                        <td>244</td>
                        <td>Y</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>봄처럼 따스한 인테리어 노하우</td>
                        <td>2020-04-20</td>
                        <td>244</td>
                        <td>Y</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>봄처럼 따스한 인테리어 노하우</td>
                        <td>2020-04-20</td>
                        <td>244</td>
                        <td>Y</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>봄처럼 따스한 인테리어 노하우</td>
                        <td>2020-04-20</td>
                        <td>244</td>
                        <td>Y</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>봄처럼 따스한 인테리어 노하우</td>
                        <td>2020-04-20</td>
                        <td>244</td>
                        <td>Y</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>봄처럼 따스한 인테리어 노하우</td>
                        <td>2020-04-20</td>
                        <td>244</td>
                        <td>Y</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>봄처럼 따스한 인테리어 노하우</td>
                        <td>2020-04-20</td>
                        <td>244</td>
                        <td>Y</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>봄처럼 따스한 인테리어 노하우</td>
                        <td>2020-04-20</td>
                        <td>244</td>
                        <td>Y</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>봄처럼 따스한 인테리어 노하우</td>
                        <td>2020-04-20</td>
                        <td>244</td>
                        <td>Y</td>
                    </tr>
                    
                </table>

                <br><br>

                
                <!-- 노하우 조회 모달 -->
                <div class="modal" id="updateKnowhow">
                    <div class="modal-dialog">
                        <div class="modal-content">
                    
                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">노하우 조회/수정</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            
                            <!-- Modal body -->
                            <div class="modal-body">
                                <form class="knowhow_content">
                                    <table>
                                        <tr>
                                            <th>제목</th>
                                            <td><input type="text" name="post_title" required></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>첨부사진</th>
                                            <td><img src="#" alt="" required></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>내용</th>
                                            <td><input type="text" name="post_content" maxlength="2000" required></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                </form>
                            </div>
                            
                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-success" data-dismiss="modal" style="background-color:rgb(241, 196, 15);">저장</button>
                                <button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color:darkgray;">취소</button>
                            </div>
                    
                        </div>
                    </div>
                </div>


                <!-- 노하우 삭제 모달 -->
                <div class="modal" id="deleteKnowhow">
                    <div class="modal-dialog">
                        <div class="modal-content">
                    
                            <!-- Modal Header -->
	                        <div class="modal-header">
	                            <h4 class="modal-title">노하우 삭제</h4>
	                            <button type="button" class="close" data-dismiss="modal">&times;</button>
	                        </div>
	                        
	                        <!-- Modal body -->
	                        <div class="modal-body">
								해당 노하우를 정말 삭제하시겠습니까?
	                        </div>
	                        
	                        <!-- Modal footer -->
	                        <div class="modal-footer">
	                            <button type="button" class="btn btn-success" data-dismiss="modal" style="background-color:rgb(241, 196, 15);">확인</button>
	                            <button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color:darkgray;">취소</button>
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