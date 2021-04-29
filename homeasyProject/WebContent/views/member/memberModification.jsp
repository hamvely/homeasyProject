<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
    .outer{
        width: 900px;
        height: 1150px;
        margin: auto;
        padding-top: 20px;
    }

    .inner{
        width: 800px;
        margin: auto;
        border: 1px solid black;
    }

    h1 {margin-left: 85px;}

    #modificationForm table {
        padding-bottom: 20px;
        margin: auto;
        height: 350px;
    }

    input {height:30px;}
    button {height:30px; float: left; margin: 30px 0 10px 100px;}

    label {vertical-align:+9px;}
    a {
        text-decoration:none; 
        color: gray; 
        margin-top: 10px;
        margin-right: 10px;
    }

    #modificationForm input, img{margin:5px; margin-left: 20px;}

</style>
</head>
<body>

	<%@ include file="../common/mainHeader.jsp" %>
	
    <div class="outer">
        <div class="inner">    

            <a href="<%= request.getContextPath() %>/withdrawal.me" style="float: right;">탈퇴하기</a>
            <h1>회원정보수정</h1>

            <form action="" method="post" id="modificationForm">
                <table>
                    <tr>
                        <td>이메일</td>
                        <td><input type="text" name="userEmail" size="30" readonly></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>이름</td>
                        <td><input type="text" name="userName" size="30" readonly></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>별명</td>
                        <td><input type="text" name="nickName" maxlength="10" size="30" placeholder="별명(2~10자)" required></td>
                        <td></td>
                    </tr>

                    <tr>
                        <td>성별</td>
                        <td>
                            <input id="radioM" type="radio" name="gender" value="M"> <label for="radioM">남</label>
                            <input id="radioF" type="radio" name="gender" value="F"> <label for="radioF">여</label>
                        </td>                    
                    </tr>
                    <tr>
                        <td>전화번호</td>
                        <td><input type="text" name="phone" size="30" placeholder="(-포함해서 입력)"></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style="vertical-align : top;">프로필사진</td>
                        <td><img src="" width="240" height="240"></td>
                        <td style="vertical-align : bottom;"><input type="file" name="uploadFile" ></td>
                    </tr>
                    <tr>
                        <th colspan="3"><button type="submit">회원 정보 수정</button></th>
                    </tr>
                </table>
            </form>    

    
        </div>
    </div>
</body>
</html>