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

div{outline: 1px solid violet;}

    div {box-sizing: border-box;}

    .outer{width: 1200px; height: 1150px; margin: auto;}
    .outer div{float: left;}

    .mypageMenubar{width:200px; height:100%; clear: both;}
    .content{width:1000px; height:100%;}
    /*
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
    */

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
    button {float: center;}

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
	
	<%
	String email = loginUser.getEmail();
	String userName = loginUser.getUserName();
	String nickName = loginUser.getNickName();
	String phone = (loginUser.getPhone() == null) ? "" : loginUser.getPhone();
	String birth = (loginUser.getBirth() == null) ? "" : loginUser.getBirth();
	%>
    <br><br>
	
    <div class="inner">    

        <a href="<%= request.getContextPath() %>/withdrawal.me" style="float: right;">탈퇴하기</a>
        <h1>회원정보수정</h1>

        <form action="<%= request.getContextPath() %>/update.me" method="post" id="modificationForm">
            <table>
                <tr>
                    <td>이메일</td>
                    <td><input type="text" name="userEmail" size="30" value="<%= email %>" readonly></td>
                    <td></td>
                </tr>
                <tr>
                    <td>이름</td>
                    <td><input type="text" name="userName" size="30" value="<%= userName %>" readonly></td>
                    <td></td>
                </tr>
                <tr>
                    <td>별명</td>
                    <td><input type="text" name="nickName" maxlength="10" size="30" placeholder="별명(2~10자)" value="<%= nickName %>" required></td>
                    <td></td>
                </tr>
                <tr>
                    <td>전화번호</td>
                    <td><input type="text" name="phone" size="30" placeholder="(-포함해서 입력)" value="<%= phone %>"></td>
                    <td></td>
                </tr> 
                <tr>
                	<td>생년월일</td>
                    <td><input type="date" name="birth" size="30" value="<%= birth %>"></td>
                    <td></td>
                </tr>
            </table>
            
            <br>
            <div align="center">
                <button type="submit" class="btn btn-secondary">회원 정보 수정</button>
            </div>
            
            
        </form>    

    </div>

</body>
</html>