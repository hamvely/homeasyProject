<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOMEASY</title>

<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>

    /* div{outline: 1px solid violet;} */

    div {box-sizing: border-box;}

    .inner{
        width: 1200px;
        margin: auto;
    }
    .content{width:1000px; height:100%;}


    h1{margin-left: 30px; padding-top: 30px;}
    .noticeHeader{
		height: 110px; 
		background-color: rgba(212, 237, 218, 0.4);
		border-bottom: 3px solid dimgray;
	}

    /* input 스타일 */
    input {height:40px;}
    
	/* input 네온스타일 */
    textarea.form-control:focus, input:focus, input[type]:focus, .uneditable-input:focus {
        border-color: rgb(3, 79, 6); 
        box-shadow: 0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(3, 79, 6, 0.6);
        outline: 0 none;
    }


    #modificationForm table {
        padding-bottom: 20px;
        margin: auto;
        height: 350px;
    }

    button {float: center;}

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
    <hr>

	
    <div class="inner">    

        <div class="noticeHeader">
            <a href="<%= request.getContextPath() %>/withdrawal.me" style="float: right;">탈퇴하기</a>
            <h1>회원정보수정</h1>
        </div>
        <br>

        <form action="<%= request.getContextPath() %>/update.me" method="post" id="modificationForm">
            <table>
                <tr>
                    <td>이메일</td>
                    <td><input type="text" name="userEmail" class="form-control" size="30" value="<%= email %>" readonly></td>
                    <td></td>
                </tr>
                <tr>
                    <td>이름</td>
                    <td><input type="text" name="userName" class="form-control" size="30" value="<%= userName %>" readonly></td>
                    <td></td>
                </tr>
                <tr>
                    <td>별명</td>
                    <td><input type="text" id="nickName" name="nickName" class="form-control" maxlength="10" size="30" placeholder="별명(2~10자)" value="<%= nickName %>" required></td>
                    <td></td>
                </tr>
                <tr>
                    <td>전화번호</td>
                    <td><input type="text" name="phone" class="form-control" size="30" placeholder="(-포함해서 입력)" value="<%= phone %>"></td>
                    <td></td>
                </tr> 
                <tr>
                	<td>생년월일</td>
                    <td><input type="date" name="birth" class="form-control" size="30" value="<%= birth %>"></td>
                    <td></td>
                </tr>
            </table>
            
            <br>
            <div align="center">
                <button type="submit" class="btn btn-secondary">회원 정보 수정</button>
            </div>
            
            
        </form>    

    </div>

    <script>
        var len = $('#nickName').val().length;
        $('#nickName').focus();
        $('#nickName')[0].setSelectionRange(len, len);
        
    </script>

</body>
</html>