<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.homeVisit.model.vo.HomeVisit" import="com.kh.member.model.vo.Member"%>
<%
   ArrayList<HomeVisit> list = (ArrayList<HomeVisit>)request.getAttribute("list");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
<style>
      .outer{
         border:px solid gray;
            width:1200px;
            height:900px;
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
        
        .thumbnail{
             border:1px solid gray; 
           width:220px;
           display:inline-block;
           float:left;
           margin:20px;

        }
        
        img:hover{cursor:pointer;}
        
        .listArea{margin-left:7%;}

</style> 
</head>
<body>

   <%@ include file="../common/mainHeader.jsp" %>
   
   <div class="outer">
  	<br>
         <div class="listArea">
            <% for(HomeVisit h : list){ %>
               <div class="thumbnail" >
	               <input type="hidden" value="<%=h.getPostNo()%>">
	                 
	                  <div class="user" style="float:left;">
	                    <i class="far fa-user-circle fa-2x"" ></i>
	                 </div>
	                 <h3 style="padding-top:"><%=h.getNickName() %></h3>
	                  <br><br>
	                  
	                  <div class="thumbnail" style="margin-top:-60px; margin-left:-1px;">
	                     <img src="/resources/img/sample/artRoom1_main.jpg" width="220" height="220">
	                  </div>
	                  
	                  <P><br><br><%=h.getPostContent() %></P>
	                  
	                  <p><%=h.getNickName() %> <%=h.getPcomContent() %></p>
	           </div>
            <% } %>   
      </div>
      
      <script>
         $(function(){
            $(".thumbnail").click(function(){
               location.href='<%=contextPath%>/detail.ho?pno=' + $(this).children().eq(0).val();
            })
         })
      </script>
      
   </div>
</body>
</html>