<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.*"%>
<%
   Product p = (Product)request.getAttribute("p");
   ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list");
   ProductOption po = (ProductOption)request.getAttribute("po");
   ArrayList<ProductOption> optionList = (ArrayList<ProductOption>)request.getAttribute("optionList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    div {
        outline: 1px solid violet;
        box-sizing: border-box;
    }

    .wrap {
        width: 1200px;
        height: 2000px;
        margin: auto;
    }

    .wrap>div {
        width: 100%;
    }

    .header { /*상단바 크기*/
        height: 250px;
    }

    .content { /*본문전체 크기*/
        height: 1750px;
    }


    .detailHeader{
        display: flex;
        justify-content: space-between;
        width: 1100px;
        height: 380px;
        margin: auto;
    }



    .detailBody{
        width: 1100px;
        height: 300px;
        margin: auto;
    }

    .option{
        margin: 20px;
    }
    
    #selectOption{
    	width:300px;
    }

</style>
</head>
<body>

   <!-- 전체 화면 -->
   <div class="wrap">

        <!-- 상단바 -->
        <div class="header"><%@ include file="../common/mainHeader.jsp" %></div>

        <!-- 본문 전체 -->
        <div class="content">

            <div class="detailHeader">
                
                <div class="img">
                    <img src="<%= contextPath %>/<%= p.getTitleImg() %>" width="300" height="300">
                </div>   
                <div class="content">
                    <form action="<%= contextPath %>/insert.cart" id="enrollForm" method="post" enctype="multipart/form-data">
                    <span name="productBrand"><%= p.getProductBrand() %></span> <br>
                    <span name="productName"><%= p.getProductName() %></span> <br>
                    <span id="productPrice" name="productPrice"><%= p.getProductPrice() %></span> <br>
                        
                    <select id="selectOption" name="selectOption" onchange="optionSelect()">
                    <option selected>옵션을 선택하세요</option>
                    <% for(int i=0; i<optionList.size(); i++) {%>
                    	<% if(optionList.get(i).getOptionStock() == 0) { %>
                           <option value="<%= optionList.get(i).getOptionPrice() %>" disabled>
                               <%= optionList.get(i).getOptionName() %>(+<%= optionList.get(i).getOptionPrice() %>원)
                            </option>
                            <% } else { %>
                           		<option value="<%= optionList.get(i).getOptionPrice() %>">
                              		<%= optionList.get(i).getOptionName() %>(+<%= optionList.get(i).getOptionPrice() %>원)
                       			</option>
                            <% } %>
                       <% } %>
                       </select>
                 
			        <br>
                                        수량 : <input type="number" id="amount" name="amount">  
                    <br>
                    <span>총가격 :</span> 
                    <span id="totalPrice" name="totalPrice"></span>
                    <span>원</span> <br>
                    </form>
                    <button>장바구니 담기</button>
                    <button>결제하기</button> 
                    <hr><hr>
                    <button>리뷰</button>
                </div>
            </div>
            
            <div class="detailBody">
                <span><%= p.getProductDetail() %></span>
            </div>

        </div>

		<script> 
			var optionPrice = 0;
			var totalPrice = 0;
			var amount = 0;
			
			function optionSelect(){
				optionPrice = parseInt($("#selectOption option:selected").val());
				totalPrice = parseInt($("#productPrice").text());
				console.log(optionPrice);
				console.log(productPrice);
				totalPrice += optionPrice;
				console.log(totalPrice);
				
				$("#amount").focusout(function() {
				  	amount = parseInt(document.getElementById("amount").value);
				  	console.log(amount);
				  	totalPrice *= amount;
					console.log(totalPrice);
					document.getElementById("totalPrice").innerHTML = totalPrice;
				});
				
			}
		</script>
		
    </div>
        
</body>
</html>