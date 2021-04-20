<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    .outer{
        width: 1200px;
        height: 520px;
        margin: auto;
        padding-top: 20px;
    }

    .inner{
        width: 350px;
        margin: auto;
        border: 1px solid black;
    }

    #logo { margin-left: 15px;}

    h1 {text-align: center;}

    #SearchPwdForm table {
        padding-bottom: 20px;
        margin: auto;
        height: 220px;
    }

    input {height:30px;}
    button {height:30px; margin-top: 10px;}

</style>
</head>
<body>
    <div class="outer">
        <a href="" id="logo"><img src="resources/img/logo/logo (1).png" width="10%"></a>

        <div class="inner">    

            <h1>비밀번호 찾기</h1>

            <form action="" method="post" id="SearchPwdForm">
                <table>
                    <tr>
                        <td>이름</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="userName" placeholder="이름을 입력하세요" size="30" required></td>
                    </tr>
                    <tr>
                        <td>이메일</td>
                    </tr>
                    <tr>
                        <td><input type="email" name="userEmail" placeholder="이메일을 입력하세요" size="30" required></td>
                    </tr>
                    <tr>
                        <th><button type="submit">이메일로 비밀번호 찾기</button></th>
                    </tr>
                </table>
            </form>    

    
        </div>
    </div>
</body>
</html>