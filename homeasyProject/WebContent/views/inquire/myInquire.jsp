<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
   

    <style>
        .myInquire {
            width: 900px;
        }
        table>tr>td,th {
            border: 1px solid lightgray;
        }
        .d {
            display: flex;
        }
   </style>
</head>
<body>
     
        <div class="myInquire">
        <div class="title">
            <h1>1:1문의내역 </h1>
            <p>
                집이지 서비스에 대해 궁금하신 점을 문의 해주시면 친절하게 답변드리겠습니다.
                        비회원의 경으, 문의 내용에 대한 답변을 못받으신 경우에는 고객센터(1588-333)로 문의해주시기 바랍니다.<br>
            </p>
            
            <div class="d">
                <div>문의하기</div>
                <div>문의내역확인</div>
            </div>
                <tr>
                    <th colspan="6">
                        내가 작성한 문의
                    </th>
                </tr>
            </table>
        </div>

        <div class="content">
            <table>
                <tr>
                    <th><h4>구분</h4></th>
                    <th><h4>제목</h4></th>
                    <th><h4>작성일</h4></th>
                    <th><h4>답변상태</h4></th>
                    <th><h4>삭제</h4></th>
                </tr>
                <tr>
                    <th>배송 / 배송일</th>
                    <th>13일 주문건 일주일안에 배송 가능?</th>
                    <th>2021.02.14</th>
                    <th style="color: blue;"><h4>답변완료</h4></th>
                    <th><input type="reset" value="-"></th>
                </tr>
            </table>
        </div>
    </div>

 
       
    
</body>
</html>