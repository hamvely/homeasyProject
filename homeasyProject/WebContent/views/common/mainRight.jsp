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
    	margin-top:30px;
        width:60px; 
        height:360px; 
        position:sticky; 
        top:0;
        float:left;
        margin-left:20px;
    }

    #right>div{
    	width:60px;
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
        height:60px; 
        line-height:30px; 
        margin-top:1px; 
        cursor:pointer;
    }
    
    a{text-decoration:none;}
    
    
</style>
<body>
      <div class="main_right">
         <div id="right">
            <div class="right_1"><a href="">커뮤니티</a></div>      
            <div class="right_2"><a href="">장바구니</a></div>
            <div class="right_3"><a href="">스크랩북</a></div>   
            <div class="right_4"><a href="">고객센터</a></div>
            <div class="right_5"><a href="">1:1문의</a></div>   
            <div class="right_6"><a href="">TOP</a></div>
         </div>
      </div>
</body>
</html>