<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member"%>
    
<% 
   Member loginUser = (Member)session.getAttribute("loginUser"); 
   String contextPath = request.getContextPath(); 
%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


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
  div {box-sizing: border-box;}
  .wrap {width: 1200px; margin: auto;}

  #mainHeader {height: 250px;}
  #header {height: 150px;}
  #navigator {height: 100px;}


  #wrap>div {width: 100%;}
  #header>div {float: left; height: 100%;}
  #content>div {float: left; height: 100%;}




  #header_column {
      display: flex;
      align-items: center;
      justify-content: center;
  }
  
  #header_column:first-child {width:300px;}
  #header_column:nth-child(2) {width:600px;}
  #header_column:nth-child(3) {width:300px;}

  a {text-decoration: none; color: #2e363e;}

  /* 검색창 */
  .search_form {position: relative;}

  .search_form_text>input {
      width: 500px;
      height: 45px;
      border: 3px solid rgb(3, 79, 6);
      border-radius: 5px;
  }
  .search_form_btn {
      position: absolute;
      bottom: 9px;
      right: 10px;
      color: rgb(3, 79, 6);
      font-size: 20px;
  }

  /* 네비게이션 */
  .container, .mt-3{
      margin: 0;
      padding: 0;
  }
  .mt-3, .my-3 {
      margin-top: 0!important; 
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
  .nav-tabs .nav-link{border: none; }
  .container a{
      margin-left: 15px;
      text-decoration: none;
  }
  .container a:hover {color: rgb(3, 79, 6);}

  /* 로그인 */
  .beforeLogin a {color:black; text-decoration:none; font-weight: bold; padding: 0px 5px 0px 5px;}
  .beforeLogin a:hover {color: rgb(3, 79, 6);}

  .afterLogin {position:absolute;}
  .afterLogin div {margin: 10px 10px;}
  .afterLogin div a {color:black; text-decoration:none; font-weight: bold; padding: 0px 5px 0px 5px;}
  .afterLogin a:hover {color: rgb(3, 79, 6);}
  
  .mypage{text-align:center; font-size: 13px;}
  
  /* 버튼스타일 */
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
   <!-- 작성자 : 김혜미 -->
   <script>
      var msg = "<%= session.getAttribute("alertMsg") %>";
      
      if(msg != "null"){
         alert(msg);
         <% session.removeAttribute("alertMsg"); %>
      }
  </script>



  <div class="wrap">

    <div id="mainHeader">
      
      <!-- 헤더 -->
      <div id="header">
      
          <!-- 로고 -->        
          <div id="header_column">
              <a href="<%= request.getContextPath() %>"><img src="resources/img/logo/logo (1).png" class="header_column_logo" width="200px;"></a>
          </div>

          <!-- 검색 -->   
          <div id="header_column">
              <form class="search_form" action="">
                  <div class="search_form_text">
                      <input type="search">
                  </div>
                  <div class="search_form_btn">
                      <a href="<%= contextPath %>/index.admin"><i class="fas fa-search"></i></a>
                  </div>
              </form>
          </div>

          <!-- 로그인 -->   
          <div id="header_column">
          
              <% if(loginUser == null) { %>

                  <div class="beforeLogin">
                      <a href="#"><i class="fas fa-shopping-cart fa-lg"></i></a>
                      <a href="<%= request.getContextPath() %>/loginForm.me">로그인</a>
                      <a href="<%= request.getContextPath() %>/enrollForm.me">회원가입</a>
                  </div>
                  
              <% }else { %>
                  <div class="afterLogin">
                      <div class="">
                          <a href="#"><i class="fas fa-shopping-cart fa-lg"></i></a>
                          <a href="#"><i class="far fa-heart fa-lg"></i></a>
                          <a href="#"><i class="far fa-user-circle fa-lg"></i></a>
                          <a href="" style="font-size: 18px;"><%= loginUser.getNickName() %>님</a>
                      </div>

                      <div class="mypage">
                          <a href="<%= contextPath %>/modification.me">마이페이지</a>
                          <a href="<%= contextPath %>/logout.me" style="">로그아웃</a>
                      </div>
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
            <a href="<%=contextPath%>/list.ho">집들이</a>
            <a href="<%=contextPath%>/list.how">노하우</a>
            <a href="<%=contextPath%>/list.qna">질문과답변</a>
          </div>
          <div id="menu1" class="container tab-pane fade"><br>
            <a href="<%= contextPath %>/list.st?cate1No=1">가구</a>
            <a href="<%= contextPath %>/list.st?cate1No=2">패브릭</a>
            <a href="<%= contextPath %>/list.st?cate1No=3">홈데코/조명</a>
            <a href="<%= contextPath %>/list.st?cate1No=4">수납/정리</a>
            <a href="<%= contextPath %>/list.st?cate1No=5">생활</a>
            <a href="<%= contextPath %>/list.st?cate1No=6">주방</a>
            <a href="<%= contextPath %>/list.st?cate1No=7">반려동물</a>
          </div>
          <div id="menu2" class="container tab-pane fade"><br>
            <a href="<%= contextPath %>/list.no?currentPage=1">공지사항</a>
            <a href="<%= contextPath %>/listAll.faq">FAQ</a>
            <a href="<%= contextPath %>">1:1문의</a>
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

  </div>

  <script
  src="https://kit.fontawesome.com/6478f529f2.js"
  crossorigin="anonymous"
></script>


</body>
</html>