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

    #logo {margin-left: 15px;}

    h1 {text-align: center;}

    #snsJoinForm table {
        margin: auto;
        width: 400px;
        height: 100px;
        font-size: 13px;
        text-align:center !important;
    }

    #enrollForm {
        padding-top: 30px;
        padding-bottom: 20px;
        width: 400px;
        margin: auto;
    }

    #enrollForm div {
        padding-bottom: 20px;
        margin: auto;
    }

    #sns img {max-width: 40px; margin-bottom: 20px;}


    
    /* 버튼스타일 */
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
        margin-bottom: 4px;
    }

    /* input 스타일 */
    input {height:40px;}
    
    .terms input {vertical-align: -13px;}


	/* input 네온스타일 */
    textarea:focus, input:focus, input[type]:focus, .uneditable-input:focus {
        border-color: rgb(3, 79, 6); 
        box-shadow: 0 1px 1px rgba(229, 103, 23, 0.075) inset, 0 0 8px rgba(3, 79, 6, 0.6);
        outline: 0 none;
    }

    

/* 이용약관 스타일 */
*{margin: 0; padding: 0; box-sizing: border-box}
ul>li{list-style: none}
a{text-decoration: none;}
.clearfix::after{content: "";display: block;clear: both;}

#join{width: 400px; margin:auto;}

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

        <a href="<%= request.getContextPath() %>" id="logo"><img src="resources/img/logo/logo (1).png" width="10%"></a>

        <div class="inner">
            
            <h1>회원가입</h1>

            <form action="" method="post" id="snsJoinForm">
                <table>
                    <tr>
                        <td colspan="6"><p>SNS계정으로 간편 로그인/회원가입</p></td>
                    </tr>
                    <tr id="sns">
                        <th colspan="2"><a href=""><img src="resources/img/icon/facebook.png" style="float: right;"></a></th>
                        <th colspan="2"><a href=""><img src="resources/img/icon/kakao.png"></a></th>
                        <th colspan="2"><a href=""><img src="resources/img/icon/naver.png" style="float: left;"></a></th>
                    </tr>
                </table>
            </form>

            <hr style="margin: auto; width: 400px;">


            <form action="<%= request.getContextPath() %>/insert.me" method="post" id="enrollForm">
                <div class="form-group">
                    <button type="button" onclick="emailCheck();" style="float: right;" class="btn btn-secondary btn-sm">중복확인</button>
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
</body>
</html>
            

<!--
<div class="user-sign-up-form__form-group">
    <div class="user-sign-up-form__form-group__label">약관 동의</div>
    <div class="user-sign-up-form__form-group__input">
        <div class="user-sign-up__form__terms-agree">

            <div class="user-sign-up__form__terms-agree__all">
                <div class="form-check checkbox-input">
                    <label class="form-check-label">
                        <input class="form-check" type="checkbox">
                        </span><span class="user-sign-up__form__terms-agree__all__text">전체동의</span>
                    </label>
                </div>
            </div>

            <div>
                <div>
                    <div class="form-check checkbox-input">
                        <label class="form-check-label">
                            <input class="form-check" type="checkbox">
                            <span>만 14세 이상입니다.</span>
                            <span class="user-sign-up__form__terms-agree__required">(필수)</span>
                        </label>
                    </div>
                </div>

                <div>
                    <div class="form-check checkbox-input">
                        <label class="form-check-label">
                            <input class="form-check" type="checkbox">
                            <a class="user-sign-up__form__terms-agree__link" href="" target="_blank">이용약관</a>
                            <span class="user-sign-up__form__terms-agree__required">(필수)</span>
                        </label>
                    </div>
                </div>

                <div>
                    <div class="form-check checkbox-input">
                        <label class="form-check-label">
                            <input class="form-check" type="checkbox">
                            <a class="user-sign-up__form__terms-agree__link" href="" target="_blank">개인정보수집 및 이용동의</a>
                            <span class="user-sign-up__form__terms-agree__required">(필수)</span>
                        </label>
                    </div>
                </div>
                
                <div>
                    <div class="form-check checkbox-input">
                        <label class="form-check-label">
                            <input class="form-check" type="checkbox"
                            <span>이벤트, 프로모션 알림 메일 및 SMS 수신</span>
                            <span class="user-sign-up__form__terms-agree__chose">(선택)</span>
                        </label>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
-->

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