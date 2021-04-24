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

        #file{
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
</style> 
</head>
<body>
    <div class="wrap">
        <div class="content1">
            <h1>질문하기</h1>

            
                <div id="file">
                     <!-- <br><br><br><br><br>
                        <div class="photoFile">
                            <img class="file1" src="">
                        </div>
                    <p class="f1">사진올리기</p> --> 
                       <img id="titleImg" width="477" height="285">
                </div>
                
            <div id="fileArea">
            <input type="file" name="file2" id="file2" onchange="loadImg(this, 1);" required>
			</div>
			
			<script>
				
				$(function(){
					
					$("#fileArea").hide();
					
					$("#titleImg").click(function(){
						$("#file2").click();
					});
					
				})
				
				
				function loadImg(inputFile, num){
					
					//console.log(inputFile.files);
					
					if(inputFile.files.length == 1) { //선택된 파일 있을경우
						
						// 파일 읽어들일 FileReader
						var reader = new FileReader();
						
						// 선택된 파일 읽어들이기 / 읽어들이는 순간 해당 그 파일만의 고유한 url
						reader.readAsDataURL(inputFile.files[0]);
						
						// 파일 읽어들이기 완료된 순간 실행할 함수 정의
						reader.onload = function(e){
							//각 영역에 맞춰서 이미지 미리보기
							switch(num){
								case 1: $("#titlImg").attr("src", e.target.result); break;
							}
						}
					} else{ //선택된 파일이 사라졌을 경우
						
						switch(num){
						case 1: $("#titleImg").attr("src", null); break;
						}
						
					}
					
				}
			</script>

            <form action="<%=contextPath %>/insert.qna" id="enrollForm" method="post" enctype="multipart/form-data">
            	<input type="hidden" name="userNo" value="<%=loginUser.getUserNo()%>">
	            <div class="content2">
	                <input class="title" type="text" name="name" placeholder="제목">
	                <br><br>
	
	                <input class="postwrite" type="text" name="postwrite" placeholder="내용을 입력해주세요" >
	                <br><br>
					<div align="right">
	                <button type="submit" class="btn btn-warning">올리기</button>
	                </div>
	            </div>
           	</form>
            
            
        </div>
    </div>
</body>
</html>