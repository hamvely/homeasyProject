<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    
</style>
</head>
<body>

	<div class="outer">

        <div class="inquireHeder">
            <h1>1:1 문의</h1>
            <p>
                집이지 서비스에 대해 궁금하신 점을 문의해 주시면 친절하게 답변드리겠습니다. <br>
                비회원의 경우, 문의 내용에 대한 답변을 이메일로 못 받으신 경우에는 고객센터(xxxx-xxxx)로 문의해주시기 바랍니다.
            </p>
        </div>

        <hr>

        <div class="inquireNavigator" align="center">
            <a href=""><h3>문의하기</h3></a>
        </div>

        <hr>

        <br><br>

        <form action="" id="inquireEnroll" method="POST" enctype="multipart/form-data">
            <table align="center">
                <tr>
                    <th width="70">카테고리 :</th>
                    <td width="500">
                        <select name="category" id="">
                            <option value="10">공통</option>
                            <option value="20">상품</option>
                            <option value="30">주문/결제</option>
                            <option value="40">배송/배송일</option>
                            <option value="50">반품/교환</option>
                            <option value="60">설치/AS</option>
                            <option value="70">쿠폰/등급</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>이름 :</th>
                    <td><input type="text" name="userNo" required></td>
                </tr>
                <tr>
                    <th>제목 :</th>
                    <td><input type="text" name="title" required></td>
                </tr>
                <tr>
                    <th>내용 :</th>
                    <td>
                        <textarea name="content" rows="10" style="resize: none;" required></textarea>
                    </td>
                </tr>
                <tr>
                    <th>첨부파일 :</th>
                    <td><input type="file" name="upfile"></td>
                </tr>
                <tr>
                    <th>알림선택 :</th>
                    <td><input type="checkbox">SMS 수신 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox">이메일 수신</td>
                </tr>
            </table>
            <input type="hidden" name="userNo" value="로그인한회원번호">
            <br><br>
            <div align="center">
                <button type="submit">작성하기</button>
                <button type="reset">취소하기</button>
            </div>

        </form>

        
    </div>
	
</body>
</html>