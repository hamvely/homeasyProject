<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .table, th, td {border: 0px solid lightgray; 
                        padding: 15px;}

        .line, td, th{border-bottom: 1px solid lightgray;}



        #btn1, #btn2, #btn4{ background-color: darkgrey;
                            color: white;
                            border: none;
                            border-radius: 3px;}

        #btn3{ background-color: gold;
                color:white;
               border: none;
               border-radius: 3px;} 
               
    </style>
</head>
<body>
      <table width="900px" height="1150px" style="border-collapse:collapse;">
        <thead>
        <td   colspan="8" style="width: 900px;">
            <h1>주문 상세 정보</h1>
        </td>

        <th>
            <th style="margin-top: 150;"><h4>주문일<br>(주문번호)</h4></th>
            <td style="width: 150px;"> </td>
            <th colspan="2">상품명</th>
            <th colspan="2"><h4>결제금액</h4></th>
        </th>
        </thead>

        <tbody>
            <tr height="150px">
                <th>2020.12.22</th>
                <th> <img src="resources/img/toy/toy4-main.jpg" alt=""> </th>
                <th colspan="2">상품명</th>
                <th colspan="2">100,000원</th>
            </tr>
            <tr  height="30px">
                <td colspan="6" style="color: darkgreen;"><h2>결제정보</h2></td>
                 
            </tr>
            <tr  height="35x">
                <td  class="line" style="width: 100px;"><p>주문일(주문번호)</p></td>
                <td  class="line" colspan="5">주문일자  2020.123123.232</td>
         
               
                
            </tr>
            <tr style="width: 100px;" height="35px">
                <td>결제방법</td>
                <td colspan="5">개인 신용카드</td>
         
               
            </tr>
            <tr  style="width: 100px;" height="40px">
                <td>판매금액</td>
                <td colspan="5">100,000</td>
          
                
            </tr>
            <tr  style="width: 100px;" height="50px">
                <td><h3>구매금액</h3></td>
                <td colspan="4">100,000</td>
                
               
                <th><button id="btn1">영수증출력</button></th>
               
            </tr>
            <tr >
                <td height="30px" style="color: darkgreen;"><h2>상품정보</h2></tdlass=>
                <th>수량</th>
                <th>상품금액</th>
                <th>할인금액</th>
                <th>구매금액</th>
                <th>배송비</th>            
            </tr>
            <tr >
                <td height="30px">상품코드</td>
                <th>수량</th>
                <th>100,000</th>
                <th>0</th>
                <th>100,000</th>
                <th>30,000</th>
            </tr>

            <tr>
                <th height="30px" colspan="6"><button id="btn2">주문취소</button></th>
            </tr>

            <tr >
                <td height="50px" colspan="6" style="color: darkgreen;"><h2>주문자 /  배송조회</h2></td>
              
            </tr>
            <tr >
                <th height="50px">주문하시는분</th>
                <td colspan="5">알렉스</td>
             
            </tr>
            <tr>
                <th height="50px" >받으시는분</th>
                <td colspan="5">알렉스</td>
              
            </tr>
            <tr >
                <th height="50px">주소</th>
                <td colspan="5">서울관악구 234-23 노바오피스텔 202호</td>
            </tr>
            <tr >
                <th height="50px">핸드폰</th>
                <td colspan="5">010-1234-5678</td>
            </tr>
            <tr >
                <th height="50px">요청사항</th>
                <td colspan="5"></td>
            </tr>
            <tr >
                <th height="35px" colspan="4"></th>
                <th></th>
                <th>
                 <button id="btn3">주문내역출력</button>
                 <button id="btn4">목록</button>
                </th>
               
              
                
            </tr>
        </tbody>
    </table>

</body>
</html>