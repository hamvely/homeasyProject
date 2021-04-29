<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.knowHow.model.vo.KnowHow"%>

    
<%
	ArrayList<KnowHow> list = (ArrayList<KnowHow>)request.getAttribute("list");
%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
<style>
        .content{
            width:1100px;
            height:1150px;
            margin:auto;
            padding-top:20px;
            padding-left:100px;
        }

        .button{
            width:100px;
            height:35px;
            border:1px;
            background-color:rgb(241, 196, 15);
            border-radius:5px;
            margin-right:-10px;
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

        .content1_1{
            width:730px;
        }

        .title, .content1_2{
            text-decoration:none;
            color:black;
        }

        .imgfile{
            width:150px; 
            height:150px; 
            float:right;
            margin:-130px 80px;
        }

        
        .imgfile1{
            width:150px; 
            height:150px; 
            float:right;
            margin:-115px 80px;
        }

        .user{
            width:38px; 
            height: 30px; 
            float:left;
        }
        
        
        h3, p, img{cursor:pointer;}
        

</style>
</head>
<body>

   <%@ include file="../common/mainHeader.jsp" %>


    <div class="content">
        
        <div class="button">
            <a href="" class="a1">
                <div class="question">
                   <li>정렬</li>
                </div>
            </a>
        </div>
        
      <div class="listArea">
        
		   
			  <% for(KnowHow k : list) {%>
			   <br><br><br>
		        <div class="thumbnail">
		        	<input type="hidden" value="<%=k.getPostNo()%>">
		        
		                 <p><%=k.getPostTitle()%><br>
		                 <%=k.getPostContent() %></p>
		                 
		           		 <img src="<%=contextPath %>/<%=k.getPostFileRename() %>" class="imgfile">
		
		              <br><br>
		              <hr>
		   
		        </div>
		      <% } %>
		</div>
	
		<script>
			$(function(){
				$(".thumbnail").click(function(){
					location.href='<%=contextPath%>/detail.kn?kno=' + $(this).children().eq(0).val();
				})
			})
		</script>
		
	</div>
</body>
</html>