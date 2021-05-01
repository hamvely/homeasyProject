<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.coupon.model.vo.Coupon"%>
    
    
<% 
ArrayList<Coupon> list = (ArrayList<Coupon>)request.getAttribute("list");
String contextPath = request.getContextPath(); 

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        table,tr,td{outline: 0px solid lightgray; font-size: 35px; padding-left: 25px;}

        .line{border-bottom: 1px solid lightgray;}

        .tbody> td { font-size: 40px; 
                    width: "900px" 
                }
        .line, th,td{border-bottom: 1px solid lightgray;}
    </style>
</head>
<body>

	

    <table width="900px" height="1150px" border-collapse:collapse; >
        
        <tr style="height: 100px;">
            <td  colspan="6"> 보유쿠폰</td>

        </tr>
        
        
		<%for(Coupon c:list){%>
        <tr style="height: 100px">
            <td ></td>
            <th colspan="4" >
                <p  style="color: darkgreen;"><%= c.getCp_memo() %></p>
                <p style="font-size: 20px;"><%= c.getCp_memo() %> <%= c.getCp_condition() %>이상 구매시 <%= c.getCp_price() %>원 할인</p>
            </th>
            <td></td>
        </tr>
		 <% } %>
   
    </table>



</body>

</html>