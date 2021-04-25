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
        height: 300px;
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
                    <img src="">
                </div>   
                <div class="content">
                    <p><%= p.getProductBrand() %></p>
                    <p><%= p.getProductName() %></p>
                    <p><%= p.getProductPrice() %></p>
                    
                      <form>
                      <select>
                      <option selected>옵션을 선택하세요</option>
                    <% for(int i=0; i<optionList.size(); i++) {%>
                       
                        <% if(optionList.get(i).getOptionStock() == 0) { %>
                           
                            <option value="<%= optionList.get(i).getOptionNo() %>" disabled>
                               
                               <%= optionList.get(i).getOptionName() %>(+<%= optionList.get(i).getOptionPrice() %>원)
                            </option>
                        <% } else { %>
                            <option value="<%= optionList.get(i).getOptionNo() %>">
                               <%= optionList.get(i).getOptionName() %>(+<%= optionList.get(i).getOptionPrice() %>원)
                            </option>
                        <% } %>
                    <% } %>
                    </select>
                    </form>
                    <p>총가격 : 원래가격 + 옵션가격</p>
                    <button>장바구니 담기</button>
                    <button>결제하기</button> 
                    <hr><hr>
                    <button>리뷰</button>
                </div>
            </div>
            
            <div class="detailBody">
                <img src="">
            </div>

        </div>

    </div>



        
</body>
</html>