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

<!--작성자 : 김혜미-->
<style>
    .outer{
        width: 1200px;
        margin: auto;
        padding-top: 50px;
    }

    .inner{
        width: 350px;
        margin: auto;
        border: 1px solid black;
    }

    #logo img {
        padding-top: 20px;
        padding-bottom: 20px;
        display:block; 
        margin:auto;
    }
    
    #loginForm table {
        margin: auto;
        width: 350px;
        height: 200px;
        text-align:center !important;
    }

    #snsForm table {
        padding-top: 20px;
        padding-bottom: 20px;
        margin: auto;
        width: 350px;
        height: 180px;
        text-align:center !important;
    }

    #sns img {max-width: 40px;}
    input {height:40px;}
    
    .btn-success {
    	background-color:rgb(3, 79, 6); 
    	border-color:rgb(3, 79, 6);
    }

    .btn-secondary {
    	background-color:rgb(158, 158, 158); 
    	border-color:rgb(158, 158, 158);
    }

</style>
</head>
<body>
    <div class="outer">
        <div class="inner">

            <a href="<%= request.getContextPath() %>" id="logo"><img src="resources/img/logo/logo (1).png (1).png" width="55%"></a>

            <form action="<%= request.getContextPath() %>/login.me" method="post" id="loginForm">
                <table>
                    <tr>
                        <th colspan="6"><input type="email" name="email" placeholder="이메일을 입력하세요" size="26" required></th>
                    </tr>
                    <tr>
                        <th colspan="6"><input type="password" name="userPwd" placeholder="비밀번호를 입력하세요" size="26" required></th>
                    </tr>
                    <tr>
                        <th colspan="6"><button type="submit" class="btn btn-success" style="width: 240px;">로그인</button></th>
                    </tr>
                    <tr>
                        <th colspan="6">
                            <button type="button" class="btn btn-secondary">비밀번호 재설정</button>
                            <button type="button" class="btn btn-secondary" onclick="enrollPage();">회원가입</button>
                        </th>
                    </tr>
                </table>
            </form>    

            <form action="" method="post" id="snsForm">
                <table>
                    <tr>
                        <td colspan="6">SNS계정으로 간편 로그인/회원가입</td>
                    </tr>
                    <tr id="sns">
                        <th colspan="2"><a href=""><img src="resources/img/icon/facebook.png" style="float: right;"></a></th>
                        <th colspan="2"><a href=""><img src="resources/img/icon/kakao.png"></a></th>
                        <th colspan="2"><a href=""><img src="resources/img/icon/naver.png" style="float: left;"></a></th>
                    </tr>
                    <tr>
                        <th colspan="6">
                            <button type="submit" class="btn btn-secondary" style="width: 240px;">비회원 주문 조회하기</button>
                        </th>
                    </tr>
                </table> 
            </form>
    
        </div>
    </div>
</body>
</html>