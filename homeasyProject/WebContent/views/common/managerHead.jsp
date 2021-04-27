<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member"%>

<% 
	String contextPath = request.getContextPath(); 
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        div{
            height: 80px; 
            width: 1200px;
            background-color: rgb(6, 77, 11); 
            color: white; 
            box-sizing:border-box;}

        #header{height:80px; width: 1200px;}

        #header>div {height:100%; float:left;}
        #header_1{
            width:35%; 
            padding:7px; 
            margin-left: 10px;
            }
        #header_2{
            width:64%; 
            padding: 20px;
            }
        #header_2 a{
            display:block;
            float:right;
            margin-left: 20px;}

    </style>
</head>
<body>
	<!-- 작성자 : 김혜미 -->
	<script>
		var msg = "<%= session.getAttribute("alertMsgAdmin") %>";
		
		if(msg != "null"){
			alert(msg);
			<% session.removeAttribute("alertMsgAdmin"); %>
		}
	</script>


    <div class="wrap">
        <div id="header">
            <div id="header_1">
                <a href=""><img src="logo4.png" art= "ì§ì´ì§ ê´ë¦¬ì ë¡ê³ " width="70%" height="90%"></a> 
            </div>
            <div id="header_2">
                <a href=""><img src="user (3).png" art= "ë¡ê·¸ìì" height="30px" ></a> 
                <a href=""><img src="home (1).png" art= "ê´ë¦¬ì ë©ì¸" height="30px" ></a> 
            </div>
            
        </div>
       
    </div>
</body>
</html>