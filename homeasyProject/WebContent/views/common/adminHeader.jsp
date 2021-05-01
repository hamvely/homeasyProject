<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Insert title here</title>

<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap');
* {font-family: 'Noto Sans KR', sans-serif;}

	#header { /*상단바 크기*/
	    width: 1200px;
	    height: 80px;
	    background-color: rgb(5, 50, 5);
	    display: flex;
	    justify-content: space-between;
	}
	.header_column {
	    display: flex;
	    align-items: center;
	}
	.header_column a {
	    color: whitesmoke;
	    margin-right: 15px;
	}
	.header_column img {
	    width: 300px;
	    margin-left: 10px;
	}
</style>
</head>
<body>

	<!-- 상단바 -->
    <div id="header">
        <div class="header_column">
            <a href="<%= request.getContextPath() %>/index.admin"><img src="resources/img/logo/logo (4).png" class="header_column_logo"></a>
        </div>
        <div class="header_column">
            <a href="<%= request.getContextPath() %>"><i class="fas fa-home fa-2x"></i></a>
        </div>
    </div>
	
    <script
      src="https://kit.fontawesome.com/6478f529f2.js"
      crossorigin="anonymous"
    ></script>
</body>
</html>

