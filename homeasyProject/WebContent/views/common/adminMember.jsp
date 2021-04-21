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
<title>회원관리</title>
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
    .search_text {
        width: 350px;
        height: 35px;
    }
    .member_search i {
        position: relative;
        top: 5px;
        left: 340px;
        width: 15px;
        height: 15px;
        font-size: 22px;
        color: rgb(3, 79, 6);
    }

    /* 멤버 목록 */
    .member_list{
        text-align: left;
        font-size: 11px;
        width: 100%;
    }
    .member_list>tbody>tr:hover{
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
                <h3>회원관리</h3>

                <!-- 버튼 -->
                <div class="content_bar">
                    <button class="content_btn" data-toggle="modal" data-target="#updateMember">수정</button>
                    <button class="content_btn" data-toggle="modal" data-target="#deleteMember">삭제</button>
                    <form class="member_search">
                        <a class="search_btn" href="#"><i class="fas fa-search fa-2x"></i></a>
                        <input class="search_text" type="search" placeholder="회원 이메일/회원명 입력">
                    </form>
                </div>
            
                <br><br><br>
                
                <!-- 회원 리스트 테이블 -->
                <table align="center" class="member_list" style="overflow-x:auto;">
                    <tr>
                        <th>선택</th>
                        <th>회원번호</th>
                        <th>회원이메일</th>
                        <th>회원이름</th>
                        <th>별명</th>
                        <th>성별</th>
                        <th>생년월일</th>
                        <th>우편번호</th>
                        <th>주소</th>
                        <th>연락처</th>
                        <th>가입일</th>
                        <th>회원<br>상태</th>
                        <th>관리자<br>유무</th>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>12345</td>
                        <td>user01@never.com</td>
                        <td>김혜미</td>
                        <td>미미</td>
                        <td>F</td>
                        <td>021116</td>
                        <td>78912</td>
                        <td>서울시 강남구 대치동 999</td>
                        <td>01011112222</td>
                        <td>20200917</td>
                        <td>Y</td>
                        <td>U</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>23456</td>
                        <td>user02@never.com</td>
                        <td>김지환</td>
                        <td>지화뉴</td>
                        <td>M</td>
                        <td>021116</td>
                        <td>78912</td>
                        <td>서울시 강남구 대치동 999 dkdkdkdkdkdkdkdk</td>
                        <td>01011112222</td>
                        <td>20200917</td>
                        <td>Y</td>
                        <td>U</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>34567</td>
                        <td>user03@never.com</td>
                        <td>이선빈</td>
                        <td>seonbin</td>
                        <td>F</td>
                        <td>021116</td>
                        <td>78912</td>
                        <td>서울시 강남구 대치동 999</td>
                        <td>01011112222</td>
                        <td>20200917</td>
                        <td>Y</td>
                        <td>U</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>22444</td>
                        <td>user04@never.com</td>
                        <td>임지우</td>
                        <td>lim</td>
                        <td>F</td>
                        <td>021116</td>
                        <td>78912</td>
                        <td>서울시 강남구 대치동 999</td>
                        <td>01011112222</td>
                        <td>20200917</td>
                        <td>Y</td>
                        <td>U</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>78945</td>
                        <td>user05@never.com</td>
                        <td>장아영</td>
                        <td>아영이</td>
                        <td>F</td>
                        <td>021116</td>
                        <td>78912</td>
                        <td>서울시 강남구 대치동 999</td>
                        <td>01011112222</td>
                        <td>20200917</td>
                        <td>Y</td>
                        <td>U</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>66666</td>
                        <td>user06@never.com</td>
                        <td>홍희나</td>
                        <td>희나홍</td>
                        <td>F</td>
                        <td>021116</td>
                        <td>78912</td>
                        <td>서울시 강남구 대치동 999</td>
                        <td>01011112222</td>
                        <td>20200917</td>
                        <td>Y</td>
                        <td>U</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>88888</td>
                        <td>user07@never.com</td>
                        <td>김개똥</td>
                        <td>개똥스</td>
                        <td>F</td>
                        <td>021116</td>
                        <td>78912</td>
                        <td>서울시 강남구 대치동 999</td>
                        <td>01011112222</td>
                        <td>20200917</td>
                        <td>Y</td>
                        <td>U</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>77777</td>
                        <td>user08@never.com</td>
                        <td>홍길동</td>
                        <td>길동스</td>
                        <td>M</td>
                        <td>021116</td>
                        <td>78912</td>
                        <td>서울시 강남구 대치동 999</td>
                        <td>01011112222</td>
                        <td>20200917</td>
                        <td>N</td>
                        <td>U</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>55555</td>
                        <td>user09@never.com</td>
                        <td>손중기</td>
                        <td>빈센조</td>
                        <td>F</td>
                        <td>021116</td>
                        <td>78912</td>
                        <td>서울시 강남구 대치동 999</td>
                        <td>01011112222</td>
                        <td>20200917</td>
                        <td>N</td>
                        <td>U</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>33333</td>
                        <td>user11@never.com</td>
                        <td>오택연</td>
                        <td>쭌우</td>
                        <td>M</td>
                        <td>021116</td>
                        <td>78912</td>
                        <td>서울시 강남구 대치동 999</td>
                        <td>01011112222</td>
                        <td>20200917</td>
                        <td>N</td>
                        <td>U</td>
                    </tr>
                </table>

                <br><br>

                

                <!-- 회원 조회 및 수정 모달 -->
                <div class="modal" id="updateMember">
                    <div class="modal-dialog">
                        <div class="modal-content">
                    
                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">회원 조회/수정</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            
                            <!-- Modal body -->
                            <div class="modal-body">
                                <form class="member_update">
                                    <table>
                                        <tr>
                                            <th>회원번호</th>
                                            <td><input type="number" name="user_no" required></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>회원이메일</th>
                                            <td><input type="email" name="email" maxlength="50" required></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>회원명</th>
                                            <td><input type="text" name="name" maxlength="10" required></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>별명</th>
                                            <td><input type="text" name="nickname" maxlength="50" required></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>성별</th>
                                            <td><input type="gender" name="gender" maxlength="1"></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>생년월일</th>
                                            <td><input type="text" name="birth"></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>우편번호</th>
                                            <td><input type="number" name="post_code"></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>주소</th>
                                            <td><input type="text" name="address"></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>연락처</th>
                                            <td><input type="text" name="phone"></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>가입일</th>
                                            <td><input type="date" name="join_date" required></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>회원상태</th>
                                            <td><input type="text" name="user_status" maxlength="1" required></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th>관리자유무</th>
                                            <td><input type="text" name="admin" maxlength="1" required></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                </form>
                            </div>
                            
                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-success" data-dismiss="modal">저장</button>
                                <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
                            </div>
                    
                        </div>
                    </div>
                </div>

                <!-- 회원 삭제 모달 -->
                <div class="modal" id="deleteMember">
                    <div class="modal-dialog">
                        <div class="modal-content">
                    
                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">회원삭제</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            
                            <!-- Modal body -->
                            <div class="modal-body">
                            	해당 회원을 정말 삭제하시겠습니까?
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