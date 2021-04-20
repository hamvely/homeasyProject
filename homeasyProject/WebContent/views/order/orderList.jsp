<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>

        .table, th, td{ border: 0px solid lightgray; 
                        padding: 20px;
                        table-layout: fixed;}
        .line{border-bottom: 1px solid lightgray;}

        #pay, a{font-size: 20px; 
                 text-decoration: none;
                color: black; 
                }
        .btn1{background-color: darkgrey;
                            color: white;
                            border: none;
                            border-radius: 3px;}

        .btn2{ background-color: gold;
                            color:white;
                            border: none;
                            border-radius: 3px;}
                        
    </style>
</head>
<body>
    <table  width="900px" height="1150px" style="border-collapse:collapse;">
        
        <tbody>
            <tr class="line" >
                <h1  class="line" style="width: 900px;" >주문 목록</h1>
                <td  colspan="6">
                    <select name="op">
                        <option value="sixmonth"> 최근 6개월</option>
                        <option value="year">최근 1년</option>
                        <option value="everything">전체조회</option>
                        <option selected><p>기간</p></option>
                    </select>
                     
                </td>
            </tr>

            <tr class="line" id="pay">
             
                <th>입금대기<br>
                    <a href="">0</a> 
                </th>
                <th>결제완료 <br>
                    <a href="">0</a>
                </th>
                <th>배송준비 <br>
                    <a href="">0</a>
                </th>
                <th>배송중 <br>
                    <a href="">0</a>
                </th>
                <th>배송완료 <br>
                    <a href="">0</a>
                </th>
                <th>구매확정 <br>
                    <a href="">0</a>
                </th></p>
            </tr>

            <tr class="line">
                <td colspan="6" height="20px">주문번호</td>
            </tr>

            <tr class="line">
                <th colspan="2"></th>
                <th colspan="3"></th>
                <th>
                    <input class="btn1" type="button" onclick="" value="주문상세"> <br>
                    <input class="btn2" type="button" onclick="" value="리뷰작성">
                </th>
                
            </tr>

            <tr class="line">
                <td colspan="6" height="20px">주문번호</td>
            </tr>

            <tr class="line">
                <th colspan="2"></th>
                <th colspan="3"></th>
                <th>
                    <input class="btn1" type="button" onclick="" value="주문상세"> <br>
                    <input class="btn2" type="button" onclick="" value="리뷰작성">
                </th>
            </tr>

            <tr class="line">
                <td colspan="6" height="20px">주문번호</td>
            </tr>

            <tr class="line">
                <th colspan="2"></th>
                <th colspan="3"></th>
                <th>
                    <input class="btn1" type="button" onclick="" value="주문상세"> <br>
                    <input class="btn2" type="button" onclick="" value="리뷰작성">
                </th>
                
            </tr>

            <tr class="line">
                <td colspan="6" height="20px">주문번호</td>
            </tr>

            <tr class="line">
                <th colspan="2"></th>
                <th colspan="3"></th>     
                <th>
                    <input class="btn1" type="button" onclick="" value="주문상세"> <br>
                    <input class="btn2" type="button" onclick="" value="리뷰작성">
                </th>
                
            </tr>


        </tbody>

        



       


    </table>
    
</body>
</html>