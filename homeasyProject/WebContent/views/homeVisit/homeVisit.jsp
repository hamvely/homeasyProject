<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        .content{
            width:1100px;
            height:1150px;
            margin:auto;
            padding-top:20px;
        }
        
        .button{
            width:100px;
            height:35px;
            border:1px;
            background-color:rgb(241, 196, 15);
            border-radius:5px;
            margin-right:-10px;
        }

        .button1{
            width:100px;
            height:35px;border:1px;
            background-color:rgb(241, 196, 15);
            border-radius:5px;
            margin-right:-10px;
            float:right;
            margin-top:-35px;
            margin-right:10px;
        }
        
        .a1{
            text-decoration:none;
            color:white;
            text-align:center;
        }


        li{
            list-style-type:none;
            text-align:center;
            padding:8px;
            font-size:14px;
        }
        .user{
            padding-top:10px;
        }

        .user1{
            width:38px;
            height:32px;
            float:left;
            margin-top:12px;
        }
        
        .postfile{
            width:220px;
            height:220px;
            margin-top:-20px;
        }

        .heart, .chat{
            width:38px;
            height:38px;
        }

        .heart{text-decoration:none;}

        .chat{margin-left:140px;}

        a{text-decoration:none;}

        .content1{
            width:230px;
            float:left;
            margin-right:60px;
        }

        .content2{
            width:230px;
            float:left;
        }

        table{
            width:220px;
            border-collapse:collapse;
            border:none;
        }
        
</style> 
</head>
<body>
		
    <div class="content">
        <div class="button">
            <a href="" class="a1">
                <div class="question">
                   <li>정렬</li>
                </div>
            </a>
        </div>
        
     
        <div class="button1">
	         <a href="<%=contextPath %>/write.ho" class="a1">
	                <div class="question">
	                   <li>글쓰기</li>
	                </div>
	         </a>
        </div>
    
        <br>
        
        <div class="content1">
            <div class="user">
                <img class="user1" src="">
                <div class="id">
                    <h2>user01</h2>
                </div>
            </div>
            
			<a href="<%=contextPath%>/visit.po">
            <img class="postfile" src="">
            </a>
            
            <br>
            <a href="">
            <img class="heart" src="">
            </a>
            
            <a href="">
            <img class="chat" src="">
            </a>
            
			<a href="">
            <p>내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다</p>
            </a>
            
            <table border="1" align="left">
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
            </table>
        </div>

        <div class="content1">
            <div class="user">
                <img class="user1" src="">
                <div class="id">
                    <h2>user01</h2>
                </div>
            </div>
            
			<a href="">
            <img class="postfile" src="">
            </a>
            
            <br>
            <a href="">
            <img class="heart" src="">
            </a>
            
            <a href="">
            <img class="chat" src="">
            </a>
            
			<a href="">
            <p>내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다</p>
            </a>
            
            <table border="1" align="left">
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
            </table>
        </div>
        
        <div class="content1">
            <div class="user">
                <img class="user1" src="">
                <div class="id">
                    <h2>user01</h2>
                </div>
            </div>
            
			<a href="">
            <img class="postfile" src="">
            </a>
            
            <br>
            <a href="">
            <img class="heart" src="">
            </a>
            
            <a href="">
            <img class="chat" src="">
            </a>
            
			<a href="">
            <p>내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다</p>
            </a>
            
            <table border="1" align="left">
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
            </table>
        </div>

        <div class="content2">
            <div class="user">
                <img class="user1" src="">
                <div class="id">
                    <h2>user01</h2>
                </div>
            </div>

			<a href="">
            <img class="postfile" src="">
            </a>
            <br>
            <a href="">
            <img class="heart" src="">
            </a>
            <a href="">
            <img class="chat" src="">
            </a>

            <p>내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다</p>
            
            <table border="1" align="left">
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
            </table>
        </div>

        <div class="content1">
            <div class="user">
                <img class="user1" src="">
                <div class="id">
                    <h2>user01</h2>
                </div>
            </div>
	
			<a href="">
            <img class="postfile" src="">
            </a>
            <br>
            <a href="">
            <img class="heart" src="">
            </a>
            <a href="">
            <img class="chat" src="">
            </a>

            <p>내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다</p>
            
            <table border="1" align="left">
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
            </table>
        </div>

        <div class="content1">
            <div class="user">
                <img class="user1" src="">
                <div class="id">
                    <h2>user01</h2>
                </div>
            </div>
			
			<a href="">
            <img class="postfile" src="">
            </a>
            <br>
            <a href="">
            <img class="heart" src="">
            </a>
            <a href="">
            <img class="chat" src="">
            </a>

            <p>내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다</p>
            
            <table border="1" align="left">
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
            </table>
        </div>

        <div class="content1">
            <div class="user">
                <img class="user1" src="">
                <div class="id">
                    <h2>user01</h2>
                </div>
            </div>

			<a href="">
            <img class="postfile" src="">
            </a>
            <br>
            <a href="">
            <img class="heart" src="">
            </a>
            <a href="">
            <img class="chat" src="">
            </a>

            <p>내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다</p>
            
            <table border="1" align="left">
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
            </table>
        </div>

        <div class="content2">
            <div class="user">
                <img class="user1" src="">
                <div class="id">
                    <h2>user01</h2>
                </div>
            </div>

			<a href="">
            <img class="postfile" src="">
            </a>
            <br>
            <a href="">
            <img class="heart" src="">
            </a>
            <a href="">
            <img class="chat" src="">
            </a>

            <p>내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다</p>
            
            <table border="1" align="left">
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
                <tr>
                    <td>USER01</td>
                    <td>댓글입니다**********</td>
                </tr>
            </table>
        </div>
    </div>
</body>
</html>