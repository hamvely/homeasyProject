
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.review.model.vo.*"%>
    
<%
	Review r = (Review)request.getAttribute("r");

	String contextPath = request.getContextPath();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    div{outline: 0px solid gray; box-sizing: border-box;}

    .wrap>div{width: 900px; height: 1150px; float: left; }

    .line{border-bottom: 1px solid lightgray;}

    img{width: 130px;
        text-align: center;}

    #content_1{width: 900px; 
          height: 90px;
          font-size: 20px;
          font-weight: 800;
          padding: 30px;
          }

    #con_1>div{height: 150px; float: left;}
    #p_1, #p_3{width: 175px; padding: 5px;}
    #p_2{width: 550px;}
    #p_4, #p_6{width: 175px;}
    #p_5{width: 550px;}


    #p_2>a{ text-decoration: none;
            letter-spacing: 1px;
            padding: 30px;
            
            }

    #p_5>a{ text-decoration: none;
            letter-spacing: 1px;
            padding: 30px;
            
            }

   </style>
</head>
<body>

    <div class="wrap">
        <div class="line" id="content_1">
            <!-- 상단 리뷰내역 -->
            나의 리뷰 내역                             
        </div>
        
        <div  id="con_1">

            <div class="line" id="p_1">
                <img  src="../resources/img/toy/toy1-main.jpg" alt=""  
                                    style="max-width: 90%; height: auto; padding: 10px" >
            </div>
             <div class="line" id="p_2">
                 <br><a href="" style="color: black;"><%= r.getBrand() %></a> <br>
                 <a href="" style="color: black;"><%=r.getName() %></a><br>
                 <p style="color: darkgreen; font-weight: 700; font-size: 17px; margin:30px;" ><%= r.getPrice() %></p>
            </div>
             <div class="line" id="p_3"></div>

             <div class="line" id="p_4">
                 <img src="../resources/img/toy/toy1-main.jpg" alt=""
                 style="max-width: 80%; height: auto; padding: 17px">
             </div>
             <div class="line" id="p_5">
                 <br><a href="" style="color: black">이노크에든</a><br>
                 <a href="" style="color: black;">EMF인증 환경호르몬 제로 주방 도구 세트 </a> 
                 <p style="color: darkgreen; font-weight: 700; font-size: 17px; margin:30px;" >35,000원</p>
             </div>
             <div class="line" id="p_6"></div>
         </div>


  
</div>

</body>

</html>