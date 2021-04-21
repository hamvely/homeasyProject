<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member"%>
    
<% 
	Member loginUser = (Member)session.getAttribute("loginUser");

	String contextPath = request.getContextPath(); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
    div {
        outline: 1px solid orangered;
        box-sizing: border-box;
    }
    .wrap {
        width: 1200px;
        height: 250px;
        margin: auto;
        color: #2e363e;
    }

    #wrap>div {width: 100%;}
    #header {height: 150px;}
    #navigator {height: 100px;}
    #content {height: 1150px;}
    #footer {height: 200px;}

    #header>div, #content>div {float: left; height: 100%;}
    #header_column {
        display: flex;
        align-items: center;
        justify-content: center;
    }
    #header_column:first-child {width: 300px;}
    #header_column:nth-child(2) {width: 600px;}
    #header_column:nth-child(3) {
        width: 300px;
        display: flex;
        justify-content: space-between;
        font-weight: bold;
        padding: 0 70px;
    }

    a {
        text-decoration: none;
        color: #2e363e;
    }
    
    .header_column_logo {
        width: 200px;
    }

    .search_form {
        position: relative;
    }
    .search_form_text>input {
        width: 500px;
        height: 45px;
        border: 3px solid green /*rgb(3, 79, 6);*/;
        border-radius: 5px;
    }
    .search_form_btn {
        position: absolute;
        bottom: 9px;
        right: 10px;
        color: rgb(3, 79, 6);
        font-size: 20px;
    }
    .header_column_cart a:hover,
    .header_column_login a:hover,
    .header_column_join a:hover {
        color: green;
    }
    .container, .mt-3{
        margin: 0;
        padding: 0;
    }
    .mt-3, .my-3 {
        margin: 0;
    }
    .nav-tabs{
        height: 50px;
        font-size: 20px;
        font-weight: bold;
    }
    .container {
        height: 50px;
        font-size: 15px;
        font-weight: bold;
        
    }
    .nav-tabs .nav-link{
        border: none;
    }
    .container a{
        margin-left: 15px;
        text-decoration: none;
    }
    .container a:hover {
        color: green;
    }
</style>
</head>
<body>


	<div class="wrap">

        <div id="header">
        
			<!-- 로고 -->        
            <div id="header_column">
                <a href="<%= request.getContextPath() %>"><img src="resources/img/logo/logo (1).png" class="header_column_logo"></a>
            </div>

			<!-- 검색 -->   
            <div id="header_column">
                <form class="search_form" action="">
                    <div class="search_form_text">
                        <input type="search">
                    </div>
                    <div class="search_form_btn">
                        <a href="#"><i class="fas fa-search"></i></a>
                    </div>
                </form>
            </div>

			<!-- 로그인 -->   
            <div id="header_column">
            
                <% if(loginUser == null) { %>

	                <div class="header_column_cart">
	                    <a href="#"><img src="resources/img/icon/shopping-cart (1).png" width="25px"></a>
	                </div>
	                <div class="header_column_login">
	                    <a href="#">로그인</a>
	                </div>
	                <div class="header_column_join">
	                    <a href="#">회원가입</a>
	                </div>
	                
                <% }else { %>

	                <div class="header_column_likd">
	                    <a href="#"><img src="resources/img/icon/heart (1).png" width="25px"></a>
	                </div>
	                <div class="header_column_cart">
	                    <a href="#"><img src="resources/img/icon/shopping-cart (1).png" width="25px"></a>
	                </div>
	                <div class="header_column_profile">
	                    <a href="#"><img src="resources/img/icon/user (1).png" width="25px"></a>
	                </div>
	                <div class="header_column_join">
	                    <b><%= loginUser.getNickName() %>님</b>
	                </div>
           		<% } %>
           
            </div>
        </div>
		
		<!-- 네비게이션 -->   
        <div class="container mt-3">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs">
              <li class="nav-item">
                <a class="nav-link" href="#home">커뮤니티</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#menu1">스토어</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#menu2">고객센터</a>
              </li>
            </ul>
          
            <!-- Tab panes -->
            <div class="tab-content">
              <div id="home" class="container tab-pane active"><br>
                <a href="#">집들이</a>
                <a href="#">노하우</a>
                <a href="#">질문과답변</a>
              </div>
              <div id="menu1" class="container tab-pane fade"><br>
                <a href="#">가구</a>
                <a href="#">패브릭</a>
                <a href="#">홈데코/조명</a>
                <a href="#">수납/정리</a>
                <a href="#">생활</a>
                <a href="#">주방</a>
                <a href="#">반려동물</a>
              </div>
              <div id="menu2" class="container tab-pane fade"><br>
                <a href="#">공지사항</a>
                <a href="#">FAQ</a>
                <a href="#">1:1문의</a>
              </div>
            </div>
          </div>
          
          <script>
          $(document).ready(function(){
            $(".nav-tabs a").click(function(){
              $(this).tab('show');
            });
          });
          </script>


        
</div>

    <script
      src="https://kit.fontawesome.com/6478f529f2.js"
      crossorigin="anonymous"
    ></script>


</body>
</html>

