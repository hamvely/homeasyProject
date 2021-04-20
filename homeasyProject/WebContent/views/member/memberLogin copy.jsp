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
        background-color: lightyellow;
        width: 1200px;
        height: 800px;
        margin: auto;
    }

    form {
        padding-top: 30px;
        padding-bottom: 30px;
        margin: auto;
    }


    table{
        padding-top: 30px;
        padding-bottom: 30px;
        margin: auto;
        width: 350px;
        height: 500px;

        border: 1px solid black;
        text-align:center !important;
    }

    td {

    }

    #sns img {
        max-width: 40px;        
    }



</style>
</head>
<body>
    <div class="outer">

        <form action="<%= request.getContextPath() %>/login.me" method="post" id="loginForm">
            <table>
                <tr>
                    <th colspan="6"><a href=""><img src="resources/img/logo/logo (1).png" width="55%"></a></th>
                </tr>
                <tr>
                    <th colspan="6"><input type="email" name="userId" placeholder="이메일을 입력하세요" size="25" required></th>
                </tr>
                <tr>
                    <th colspan="6"><input type="password" name="userPwd" placeholder="비밀번호를 입력하세요" size="25" required></tdn=>
                </tr>
                <tr>
                    <th colspan="6"><button type="submit" class="btn btn-warning" >로그인</button></th>
                </tr>
                <tr>
                    <th colspan="6">
                        <button type="submit" class="btn btn-success">비밀번호찾기</button>
                        <button type="submit" class="btn btn-secondary" onclick="enrollPage();">회원가입</button>
                    </th>
                </tr>
                <tr>
                    <th colspan="6">SNS계정으로 간편 로그인/회원가입</th>
                </tr>
                <tr id="sns">
                    <th colspan="2"><a href=""><img src="resources/img/icon/facebook.png" ></a></th>
                    <th colspan="2"><a href=""><img src="resources/img/icon/kakao.png"></a></th>
                    <th colspan="2"><a href=""><img src="resources/img/icon/naver.png"></a></th>
                </tr>
                <tr>
                    <th colspan="6">
                        <button type="submit" class="btn btn-secondary">비회원 주문 조회하기</button>
                    </th>
                </tr>
            </table>
        </form>    
    
    </div>
</body>
</html>