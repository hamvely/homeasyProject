<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
        *{margin:0; padding:0; box-sizing:border-box;}
        .wrap{width:1200px; height:1650px; margin:auto;}

        /* 크게 2가지 영역 */
        .wrap>div{width:100%;}


        #knoHow img{width: 340px;}
        #product img{width: 250px;}
        
        a{text-decoration: none; color: darkgray;}

    </style>
</head>
<body>

	
    <table border="1">
        <tr>
            <td colspan="13" width="1200px"><%@ include file="views/common/mainHeader.jsp" %></td>
        </tr>
        <tr>
            <td colspan="12" width="1100px"><a href=""><img src="resources/img/sample/main2.jpg" width="100%"></a></td>
            <td rowspan="6" width="100px"><%@ include file="views/common/mainRight.jsp" %></td>
        </tr>
        <tr>
            <th colspan="12">인기노하우</th>
        </tr>
        <tr id="knoHow">
            <td colspan="4">
                <a href=""><img src="resources/img/sample/knowhow (1).jpeg"></a>
            </td>
            <td colspan="4">
                <a href=""><img src="resources/img/sample/knowhow (4).jpg"></a>
            </td>
            <td colspan="4">
                <a href=""><img src="resources/img/sample/knowhow (2).jpg"></a>
            </td>
        </tr>

        <tr>
            <th colspan="12">인기상품</th>
        </tr>
        <tr id="product">
            <td colspan="3">
                <a href=""><img src="resources/img/sample/popular (1).jpg"></a>
            </td>
            <td colspan="3">
                <a href=""><img src="resources/img/sample/popular (2).jpg"></a>
            </td>
            <td colspan="3">
                <a href=""><img src="resources/img/sample/popular (3).jpg"></a>
            </td>
            <td colspan="3">
                <a href=""><img src="resources/img/sample/popular (4).jpg"></a>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <a href="">DEGREY</a><br>
                <a>앨리 먼지없는 피치스킨 차렵이불 침구세트</a><br>
                <a>19,900</a>
            </td>
            <td colspan="3">
                <a href="">DEGREY</a><br>
                <a>앨리 먼지없는 피치스킨 차렵이불 침구세트</a><br>
                <a>19,900</a>
            </td>
            <td colspan="3">
                <a href="">DEGREY</a><br>
                <a>앨리 먼지없는 피치스킨 차렵이불 침구세트</a><br>
                <a>19,900</a>
            </td>
            <td colspan="3">
                <a href="">DEGREY</a><br>
                <a>앨리 먼지없는 피치스킨 차렵이불 침구세트</a><br>
                <a>19,900</a>
            </td>
        </tr>
        <tr>
            <td colspan="13"><%@ include file="views/common/footer.jsp" %></td>
        </tr>


    </table>

	
</body>
</html>