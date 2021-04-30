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

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">

<style>
    * {font-family: 'Nanum Gothic Coding', monospace;} /* 나눔고딕코딩 */

    .outer{width: 1446px; height: 1500px; margin: auto; padding-top: 20px; background-color:rgb(3, 79, 6);}
    .inner{width: 800px; height:1230px; margin: auto; border: 1px solid black; background-color:rgb(248, 243, 243); border-radius:25px;}
    .inner2{width: 500px; margin: auto;}

    #logo {margin-left: 25px;}
    h1 {text-align: center;}

    #enrollForm {
        padding-top: 30px;
        padding-bottom: 20px;
        margin: auto;
    }

    #enrollForm div {padding-bottom: 20px; margin: auto;}
    
    /* 버튼스타일 */
    .btn-success {background-color:rgb(3, 79, 6); border-color:rgb(3, 79, 6);}
    .btn-warning {background-color:rgb(241, 196, 15); border-color:rgb(241, 196, 15);}
    .btn-secondary {background-color:rgb(158, 158, 158); border-color:rgb(158, 158, 158); margin-bottom: 4px;}

    /* input 스타일 */
    input {height:40px;}
    
    .terms input {vertical-align: -13px;}

	/* input 네온스타일 */
    textarea.form-control:focus, input:focus, input[type]:focus, .uneditable-input:focus {
        border-color: rgb(3, 79, 6); 
        box-shadow: 0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(3, 79, 6, 0.6);
        outline: 0 none;
    }

    

/* 이용약관 스타일 */
*{margin: 0; padding: 0; box-sizing: border-box}
ul>li{list-style: none}
a{text-decoration: none;}
.clearfix::after{content: "";display: block;clear: both;}

#join{width: 500px; margin:auto;}

ul.join_box{border: 1px solid #ddd;background-color: #fff;}
.checkBox,.checkBox>ul{position: relative;}
.checkBox>ul>li{float: left;}
.checkBox>ul>li:first-child{width: 85%;padding: 15px;font-weight: 600;color: dimgray;}
.checkBox>ul>li:nth-child(2){position: absolute; top: 50%; right: 30px; margin-top: -12px;}
.checkBox textarea{width: 96%;height: 70px; margin: 0 2%;background-color: #f7f7f7;color: #888; border: none;}

</style>
</head>

<body>
    <div class="outer">

        <a href="<%= request.getContextPath() %>" id="logo"><img src="resources/img/logo/logo (3).png" width="10%"></a>

        <div class="inner">
            <div class="inner2">
                
                <br><br>
                <h1>회원가입</h1>
                <hr style="margin: auto; width: 500px;">


                <form action="<%= request.getContextPath() %>/insert.me" method="post" id="enrollForm">
                    <div class="form-group">
                        <button type="button" onclick="idCheck();" style="float: right;" class="btn btn-secondary btn-sm">중복확인</button>
                        <label for="userEmail">이메일</label>
                        <input type="email" class="form-control" name="email" id="email" maxlength="20" placeholder="이메일" required>
                    </div>
                    <div class="form-group">
                        <label for="userPwd">비밀번호</label>
                        <input type="password" class="form-control" name="userPwd" id="userPwd" minlength="8" placeholder="8자 이상 입력해주세요" required>
                    </div>
                
                    <div class="form-group">
                        <label for="userPwd">비밀번호 재확인</label>
                        <input type="password" class="form-control" id="userPwd" maxlength="15" placeholder="비밀번호 확인" required>
                    </div>
                
                    <div class="form-group">
                        <label for="userName">이름</label>
                        <input type="text" class="form-control" name="userName" id="userName" placeholder="이름을 입력해주세요" maxlength="50" required>
                    </div>
                
                    <div class="form-group">
                        <label for="nickName">닉네임</label>
                        <input type="text" class="form-control" name="nickName" id="nickName" placeholder="별명(2~10자)" required>
                    </div>
                    
                    
                    <div id="join">
                        <ul class="join_box">
                            <li class="checkBox check01">
                                <ul class="clearfix">
                                    <li style="font-weight: bolder; color: black;">이용약관</li>
                                </ul>
                            </li>
                            <li class="checkBox check02">
                                <ul class="clearfix">
                                    <li>이용약관 동의(필수)</li>
                                    <li class="checkBtn">
                                        <input type="checkbox" name="chk" required> 
                                    </li>
                                </ul>
                                <textarea name="" id=""> 여러분을 환영합니다. 집이지 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 집이지 서비스의 이용과 관련하여 집이지 서비스를 제공하는 집이지 주식회사(이하 ‘집이지’)와 이를 이용하는 집이지 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 집이지 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.</textarea>
                            </li>
                            <li class="checkBox check03">
                                <ul class="clearfix">
                                    <li>개인정보 수집 및 이용에 대한 안내(필수)</li>
                                    <li class="checkBtn">
                                        <input type="checkbox" name="chk" required>
                                    </li>
                                </ul>
                                
                                <textarea name="" id="">여러분을 환영합니다. 집이지 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 집이지 서비스의 이용과 관련하여 집이지 서비스를 제공하는 집이지 주식회사(이하 ‘집이지’)와 이를 이용하는 집이지 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 집이지 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.</textarea>
                            </li>
                            <li class="checkBox check03">
                                <ul class="clearfix">
                                    <li>위치정보 이용약관 동의(선택)</li>
                                    <li class="checkBtn">
                                        <input type="checkbox" name="chk">
                                    </li>
                                </ul>
                                
                                <textarea name="" id="">여러분을 환영합니다. 집이지 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 집이지 서비스의 이용과 관련하여 집이지 서비스를 제공하는 집이지 주식회사(이하 ‘집이지’)와 이를 이용하는 집이지 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 집이지 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.</textarea>
                            </li>
                            <li class="checkBox check04">
                                <ul class="clearfix">
                                    <li>이벤트 등 프로모션 알림 메일 수신(선택)</li>
                                    <li class="checkBtn">
                                        <input type="checkbox" name="chk">
                                    </li>
                                </ul>
                                
                            </li>
                        </ul>
                    </div>
                    
                    <div align="center">
                        <button type="submit" class="btn btn-success" style="width: 300px;">회원가입 완료</button>
                    </div>
                </form>
            </div>
        </div>   
    </div>
    
    <script>
		function idCheck(){
			
			// 아이디 입력하는 input요소객체
			var $email = $("#enrollForm input[name=email]");
			
			$.ajax({
				url:"idCheck.me",
				type:"get",
				data:{checkId:$email.val()},
				success:function(result){
					
					//console.log(result);
					if(result == 'NNNNN'){ // 사용불가능
						alert("이미 존재하거나 탈퇴한 회원의 아이디입니다.");
						$userId.focus();					
					}else{ // 사용가능
						
						if(confirm("사용가능한 아이디입니다. 정말로 사용하시겠습니까?")){
							// 사용하겠다 => 더이상 변경불가, 회원가입버튼 활성화
							$userId.attr("readonly", true);
							$("#enrollForm :submit").removeAttr("disabled");							
						}else{
							// 다시입력하겠다
							$userId.focus();
						}
					}	
				},error:function(){
					console.log("아이디 중복체크용 ajax 통신 실패");
				}
			});
			
		}
	</script>
    
    
</body>
</html>


<!--
<tr>
    <td class="terms">
        <div style="border: 1px solid; padding-left: 7px; width: 400px;">
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
        </div>
    </td>
</tr>
-->


 <!--
<label for="userEmail">이메일</label>

<div class="input-group email-input">
    <span><input class="form-control" placeholder="이메일" size="10"></span>
    <span>@</span>
    <span>
        <select class="form-control empty">
            <option value="" disabled="">선택해주세요</option>
            <option value="naver.com">naver.com</option>
            <option value="hanmail.net">hanmail.net</option>
            <option value="daum.net">daum.net</option>
            <option value="gmail.com">gmail.com</option>
            <option value="nate.com">nate.com</option>
            <option value="hotmail.com">hotmail.com</option>
            <option value="outlook.com">outlook.com</option>
            <option value="icloud.com">icloud.com</option>
            <option value="_manual">직접입력</option>
        </select>
    </span>
    
</div>
 -->