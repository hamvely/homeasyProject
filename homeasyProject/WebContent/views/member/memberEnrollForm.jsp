<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
    .outer{
        width: 1200px;
        height: 800px;
        margin: auto;
        padding-top: 20px;
    }

    .inner{
        width: 400px;
        margin: auto;
    }
    
    #logo { margin-left: 15px;}

    h1 { text-align: center;}

    #snsJoinForm table {
        margin: auto;
        width: 350px;
        height: 100px;
        text-align:center !important;
    }

    #enrollForm table {
        padding-top: 10px;
        padding-bottom: 20px;
        margin: auto;
        height: 700px;
    }

    #enrollForm div {
        padding-bottom: 20px;
        margin: auto;
    }

    #sns img {max-width: 40px;}

    input {height:40x;}
    fieldset input {vertical-align:-8px;}

    .btn-success {
    	background-color:rgb(3, 79, 6); 
    	border-color:rgb(3, 79, 6);
    }

    .btn-warning {
        background-color:rgb(241, 196, 15); 
    	border-color:rgb(241, 196, 15);
    }

    .btn-secondary {
    	background-color:rgb(158, 158, 158); 
    	border-color:rgb(158, 158, 158);
    }

    
</style>
</head>

<body>
    <div class="outer">

        <a href="" id="logo"><img src="resources/img/logo/logo (1).png" width="10%"></a>

        <div class="inner">
            
            <h1>회원가입</h1>

            <form action="" method="post" id="snsJoinForm">
                <table>
                    <tr>
                        <td colspan="6">SNS계정으로 간편 로그인/회원가입</td>
                    </tr>
                    <tr id="sns">
                        <th colspan="2"><a href=""><img src="resources/img/icon/facebook.png" style="float: right;"></a></th>
                        <th colspan="2"><a href=""><img src="resources/img/icon/kakao.png"></a></th>
                        <th colspan="2"><a href=""><img src="resources/img/icon/naver.png" style="float: left;"></a></th>
                    </tr>
                </table>
            </form>

            <hr>


            <form action="" method="post" id="enrollForm">
                <table>
                    <tr>
                        <td>이메일<button type="button" onclick="emailCheck();" style="float: right;" class="btn btn-secondary">중복확인</button></td>
                    </tr>
                    <tr>
                        <td><input type="email" name="userEmail" maxlength="20" placeholder="이메일" size="40" required></td>
                    </tr>
                    <tr>
                        <td>비밀번호</td>
                    </tr>
                    <tr>
                        <td><input type="password" name="userPwd" maxlength="15" placeholder="8자 이상 입력해주세요" size="40" required></td>
                    </tr>
                    <tr>
                        <td>비밀번호 재확인</td>
                    </tr>
                    <tr>
                        <td><input type="password" maxlength="15" placeholder="비밀번호 확인" size="40" required></td>
                    </tr>
                    <tr>
                        <td>이름</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="userName" placeholder="이름을 입력해주세요" maxlength="5" size="40" required></td>
                    </tr>
                    <tr>
                        <td>닉네임</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="nickName" placeholder="별명(2~10자)" size="40" required></td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td>약관동의</td>
                    </tr>
                    <tr>
                        <td><fieldset>
                            <input type="checkbox" name="terms" value="check1" id="check1" required>
                            <label for="check1">만 14세 이상입니다 (필수)</label>
                            <br>
                            
                            <input type="checkbox" name="terms" value="check2" id="check2" required>
                            <label for="check2">이용약관 (필수)</label>
                            <br>

                            <input type="checkbox" name="terms" value="check3" id="check3" required>
                            <label for="check3">개인정보 수집 및 이용동의 (필수)</label>
                            <br>
                            
                            <input type="checkbox" name="terms" value="check4" id="check4">
                            <label for="check4">이벤트 열람 메일 및 SMS 수신</label>
                            <br>
                        </fieldset></td>
                    </tr>
                </table>

                <div align="center">
                    <button type="submit" class="btn btn-success">회원가입</button>
                    <button type="reset" class="btn btn-warning">초기화</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>