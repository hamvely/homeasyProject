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
         border:1px solid gray;
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
        
        .thumbnail{
             border:1px solid gray; 
           width:220px;
           display:inline-block;
           float:left;
        }
        
        img:hover{cursor:pointer;}
        

</style> 
</head>
<body>

   <%@ include file="../common/mainHeader.jsp" %>
   
   <div class="outer">
         <div class="button">
            <a href="" class="a1">
                <div class="question">
                   <li>정렬</li>
                </div>
            </a>
         </div>
           
        <% if(loginUser != null){ %>
         <div class="button1">
          <a href="<%=contextPath %>/write.ho" class="a1">
             <div class="question">
                <li>글쓰기</li>
             </div>
            </a>
          </div>
        <% } %><br><br>
      
         <div class="listArea">
            <% for(HomeVisit h : list){ %>
               <div class="thumbnail" >
               <input type="hidden" value="<%=h.getPostNo()%>">
                  <div class="user" style="float:left;">
                    <img src="<%=h.getUserFileRename() %>" width="48" height="49">
                 </div>
                 <h2 style="padding-top:"><%=h.getNickName() %></h2>
                  <br><br>
                  
                  <div class="thumbnail" style="margin-top:-60px;">
                     <img src="<%=h.getPostFileRename() %>" width="220" height="220">
                  </div><br>
                  
                  <img class="heart" src="" width="48" height="49">
                  <img class="chat" src="" width="48" height="49">
                  
                  <P>
                  <%=h.getPostContent() %>
                  </P>
                  
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
>>>>>>> ac80bc78063ed29ee2324556ec4ea60a12218ee9
</body>
</html>