<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        div{border: 1px solid lightgray; box-sizing: border-box;}

        .outer{width: 900px;
               height: 800px;
               margin: auto;
               margin-top: 50px;
               }
        .navi{height: 30px;}

        .thumbnail{
            width: 220px;
            display: inline-block;
            margin: 5px;
         
           
            
        }

    
   .content{margin-left:12%;}
  
        
      
    </style>
</head>
<body>

    <div class="outer">
            <br>
            <h1 style="font-size: 50px;" align="center">스크랩</h1>
            <br>

        <div class=navi align="center">
           <img style="width: 20px;" src="../resources/img/icon/user.png" alt=""> 닉네임
        </div>
        <!-- 삭제버튼  -->
        <div align=" right">
            <input type="button" value="삭제">
        </div>

      <div class="content">
        <div class="thumbnail">
        <img src="/jsp/resources/" width="200" height="150">
        </div>
        
        <div class="thumbnail">
            <img src="해당게시글이미지경로" width="200" height="150">
        </div> 

        <div class="thumbnail">
            <img src="해당게시글이미지경로" width="200" height="150">
        </div> 

        <div class="thumbnail">
            <img src="해당게시글이미지경로" width="200" height="150">
        </div>

        <div class="thumbnail">
            <img src="해당게시글이미지경로" width="200" height="150">
        </div>

        <div class="thumbnail">
            <img src="해당게시글이미지경로" width="200" height="150">
        </div>

        <div class="thumbnail">
            <img src="해당게시글이미지경로" width="200" height="150">
        </div>

        <div class="thumbnail">
            <img src="해당게시글이미지경로" width="200" height="150">
        </div> 

        <div class="thumbnail">
            <img src="해당게시글이미지경로" width="200" height="150">
        </div> 
      </div>

      
    </div>
    
</body>

</html>