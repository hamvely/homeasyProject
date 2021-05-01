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
        margin: auto;
        justify-content: center;
        width: 1100px;
        height: 380px;
        padding: 0 50px;
    }

    .img {
        width: 500px;
        text-align: center;
    }
    .product_info {
        border: 1px solid lightgrey;
        width: 400px;
        height: 380px;
        padding: 20px 20px;
    }
    #brand_info{
        color: darkgray;
    }
    #name_info {
        font-size: 25px;
    }
    #productPrice {
        font-size: 20px;
        font-weight: bold;
    }
    #selectOption {
        width: 360px;
        height: 40px;
    }
    #amount {
        width: 300px;
        height: 40px;
    }
    .price_info {
        font-size: 23px;
    }
    .product_buy {
        width: 100px;
        height: 40px;
        background-color: green;
        color: white;
        border-radius: 5px;
        float: right;
    }
    .detailBody{
        display: flex;
        flex-direction:column;
        width: 1100px;
        margin: auto;
        padding: 30px 0;
    }
    .detailbar {
        text-align: center;
        width: 1100px;
        height: 40px;
        font-size: 20px;
        border-top: 1px solid lightgrey;
        border-bottom: 1px solid lightgrey;
        color: gray;
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
        <br><br>
        <!-- 본문 전체 -->
        <div class="content">

            <div class="detailHeader">
                
                <div class="img">
                    <img src="<%= contextPath %>/<%= p.getTitleImg() %>" height="380">
                </div>   
                <div class="product_info">
                    <form action="<%= contextPath %>/insert.cart" id="enrollForm" method="post" enctype="multipart/form-data">
                        <span id="brand_info" name="productBrand"><%= p.getProductBrand() %></span> <br>
                        <span id="name_info" name="productName"><%= p.getProductName() %></span> <br>
                        <span id="productPrice" name="productPrice"><%= p.getProductPrice() %></span> <br><br>
                            
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
                    
                        <br><br>
                             수량 : <input type="number" id="amount" name="amount">  
                        <br><br>
                        <span class="price_info">총가격 :</span> 
                        <span class="price_info" id="totalPrice" name="totalPrice"></span>
                        <span class="price_info">원</span> <br>
                    </form> 
                    <br>
                    <button onclick="buy()" class="product_buy">구매하기</button>
                </div>
            </div>
            
            <div class="detailBody">
                <div class="detailbar">상품정보</div>
                <span><%= p.getProductDetail() %></span>
                <img src="https://exit.ohou.se/e9fff699fa40d75d03b309d4b8394dd30b4e587d/oheimev.diskn.com/dodam/uj/dodam_family/family/A_1.jpg" alt="">
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
			
			function buy(){
				alert("입금할 계좌 : 국민)882602-04-135340");
			}
		</script>
		
    </div>
        
</body>
</html>