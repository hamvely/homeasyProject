<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member"%> 
<%
	Member loginUser = (Member)session.getAttribute("loginUser");
%>
<% String contextPath = request.getContextPath(); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <style>
        .wrap{
            width:1100px;
            height:1150px;
            margin:auto;
            padding-left:100px;
        }

        .file{
            width:477px; 
            height:285px;
            float: left;
            margin-left:44px;
            background-color:rgb(224,224, 224); 
        }

        .file1{
           width:46px;
           height:43px;
        }
      
        .f1{
            font-size: 19px;
            text-align:center;
            margin-top:0;
            color:black;
        }

        .photoFile{
            text-align:center;        
        }

        li{
            list-style-type:none;
            text-align:center;
            padding:8px;
            font-size:14px;
        }

        .title{
            width:342px; 
            height:40px;
            border-radius:5px;
            border:1px solid rgb(186, 187, 189);
        }

        .postwrite{
            width:342px; 
            height:181px;
            border-radius:5px;
            border:1px solid rgb(186, 187, 189);
        }

        .content2{
            width:342px; 
            height:300px;
            float: left;
            margin-left:40px;
        }

        .loginbutton{
            width:100px;
            height:35px;
            border:1px;
            background-color:rgb(241, 196, 15);
            border-radius:5px;
            float:right;
            margin-right:-10px;
        }

        a{
            text-decoration:none;
            color:white;
            text-align:center;
        }
        
        #enrollForm input, #enrollForm textarea{width:342px;}
        
        #enrollForm input{height:40px;}
        #enrollForm textarea{height:181px;}
        
        #titleImg{background-color:rgb(224,224, 224);}
</style> 
</head>
<body>
    <div class="wrap">
        <div class="content1">
            <h1>집들이 글쓰기</h1>

            <form action="<%=contextPath %>/insert.ho" id="enrollForm" method="post" enctype="multipart/form-data">
                	<input type="hidden" name="userNo" value="<%=loginUser.getUserNo()%>">
                <table align="center">   
                	<tr>
 				 		<th>사진올리기</th>
 				 		<td colspan="3" align="center">
 				 			<img id="titleImg" width="477" height="285">
 				 		</td>
 				 	</tr>  
 				 	<tr>
 				 		<th>제목</th>
 				 		<td colspan="3"><input type="text" name="title" required></td>
 				 	</tr>
 				 	<tr>
 				 		<th>내용</th>
 				 		<td colspan="3">
 				 			<textarea rows="5" name="content" style="resize:none" required></textarea>
 				 		</td>
 				 	</tr>
                </table>
                
                <div id="fileArea">
                	<input type="file" name="file" id="file1" onchange="loadImg(this, 1);" required>
                </div>
                
                
                <script>
                
                	$(function(){
                		
                		$("#fileArea").hide();
                		
               			$("#titleImg").click(function(){
               				$("#file1").click();
               			});
               			
                	})
                
                	function loadImg(inputFile, num){

                		if(inputFile.files.length == 1){
                			
                			var reader = new FileReader();
                			
                			reader.readAsDataURL(inputFile.files[0]);
                			
                			reader.onload = function(e){
                				
                				switch(num){
                					case 1: $("#titleImg").attr("src", e.target.result); break;
                				}
                			}
                			
                		}else{
                			
                			switch(num){
        					case 1: $("#titleImg").attr("src", null); break;
                			}
                		}
                		
                		
                	}
                </script>
                
           
                
                <br>
                <div align="center">
                	<button type="submit">올리기</button>
                </div>
                
            </form>
                
           	
        </div>
    </div>
</body>
</html>