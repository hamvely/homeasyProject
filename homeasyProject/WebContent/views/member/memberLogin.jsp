<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String contextPath = request.getContextPath(); %>
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

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">

<!--작성자 : 김혜미-->
<style>
    * {font-family: 'Nanum Gothic Coding', monospace;} /* 나눔고딕코딩 */


    .outer{width: 1446px; height: 800px; margin: auto; padding-top: 180px; background-color:rgb(3, 79, 6);}

    .inner{width: 400px; height:400px; margin: auto; border: 1px solid black; background-color:rgb(248, 243, 243); border-radius:25px;
           border: 1px solid #ccc;}

    #logo img {padding-top: 30px; padding-bottom: 30px; display:block; margin:auto;}
    
    #loginForm{
        margin: auto;
        width: 260px;
        height: 200px;
        text-align:center !important;
    }
    
    /* 버튼스타일 */
    .btn-success {background-color:rgb(3, 79, 6); border-color:rgb(3, 79, 6);}
    .btn-secondary {background-color:rgb(158, 158, 158); border-color:rgb(148, 143, 143);}
    button {margin: 10px 5px 10px 0;}
    
    /* input 스타일 */
    input {height:40px;}

	/* input 네온스타일 */
    textarea.form-control:focus, input:focus, input[type]:focus, .uneditable-input:focus {
        border-color: rgb(3, 79, 6); 
        box-shadow: 0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(3, 79, 6, 0.6);
        outline: 0 none;
    }

</style>
</head>
<body>
	<!-- 작성자 : 김혜미 -->
	<script>
		var msg = "<%= session.getAttribute("alertMsg") %>";
		
		if(msg != "null"){
			alert(msg);
			<% session.removeAttribute("alertMsg"); %>
		}
	</script>

    <div class="outer">
        <div class="inner">
            <a href="<%= request.getContextPath() %>" id="logo"><img src="resources/img/logo/logo (1).png" width="55%"></a>

            <form action="<%= request.getContextPath() %>/login.me" method="post" id="loginForm">
                <div class="form-group">
                    <input type="email" class="form-control" name="email" placeholder="이메일을 입력하세요" size="25" required>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="userPwd" placeholder="비밀번호를 입력하세요" size="25" required>
                </div>
                <div class="form-group">
                </div>                
                <div class="form-group">
                    
                </div>
                
                <div align="center">
                    <button type="submit" class="btn btn-success" style="width: 250px;">로그인</button>
                </div>
                <div align="center">
                    <button type="button" class="btn btn-secondary">비밀번호 재설정</button>
                    <button type="button" class="btn btn-secondary" onclick="enrollPage();">회원가입</button>
                </div>
                <div></div>
                
                <script>
                    function enrollPage(){
                        //location.href="/homeasy/views/member/memberEnrollForm.jsp";
                        location.href="<%= request.getContextPath() %>/enrollForm.me";
                    }
                </script>
            </form>    
        </div>
    </div>
</body>
</html>