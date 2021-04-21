<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	/*리모컨*/
    .main_right{
        width:60px; 
        height:270px; 
        position:sticky; 
        top:0;
        float:left;
        margin-left:20px;
    }

    #right>div{
        background-color:rgb(237,237,237); 
        text-align: center;
        font-size:11px;
        
    }

    .right_1{
        height:60px; 
        line-height:60px; 
        cursor:pointer;
    }

    a,.right_2, .right_3{
        height:60px; 
        line-height:60px; 
        margin-top:1px; 
        cursor:pointer;
    }

    .right_4, .right_5, .right_6{
        height:30px; 
        line-height:30px; 
        margin-top:1px; 
        cursor:pointer;
    }
</style>
<body>
		<div class="main_right">
			<div id="right">
				<div class="right_1" onclick="location.href='';">커뮤니티</div>	
				<div class="right_2" onclick="location.href='';">장바구니</div>
				<div class="right_3" onclick="location.href='';">스크랩북</div>	
				<div class="right_4" onclick="location.href='';">고객센터</div>
				<div class="right_5" onclick="location.href='';">1:1문의</div>	
				<div class="right_6" onclick="location.href='';">TOP</div>
			</div>
		</div>
</body>
</html>