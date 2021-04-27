<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%String contextPath = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    div,table, tr, th{outline: 0px solid darkgreen;}
    
    .wrap{width: 900px; height: 1150px;}
    table,tr,td{height: 85px; border-bottom: 1px solid lightgray;
                font-size: 10px;}
  
    #a{height: 100px; }
    #b{height: 50px; }

    #h{height: 50px;}

</style>
</head>
<body>

    <div class="wrap">
        <div>
            <div id="a" ><h1><br>1:1문의 관리</h1></div>
            <div id="b"><br><button>주문조회 </button></div>
        </div>
        
        <!--문의유형 문의 상태  -->
        <div>
            <div id="b"> <br>
                <select name="option">
                    <option value="sixmonth">상품</option>
                    <option value="year">배송</option>
                    <option value="everything">교환/반품</option>
                    <option selected><p>문의유형</p></option>
                </select>
                <select name="option">
                    <option value="sixmonth">전체</option>
                    <option value="year">미답변</option>
                    <option value="everything">답변완료</option>
                    <option selected><p>문의상태</p></option>
                </select>
            </div>
        </div>

        <form action="">
            <table style="width: 900px;border-collapse:collapse;">
                <tr style="height: 40px;">
                    <th>No.</th>
                    <th>분류</th>
                    <th>작성일</th>
                    <th>답변여부</th>
                    <th style="width: 200px;">제목</th>
                    <th>회원이메일</th>
                </tr>

            <tbody class="listArea"> 

                <tr id="h">
                    <th>1</th>
                    <th>배송</th>
                    <th>2020-03-28</th>
                    <th>미답변</th>
                    <th>브라운 색상 언제 입고되나요</th>
                    <th>sdgawerwe@gamil.com</th>
                </tr>
            </tbody>
               <tr>
                <th><button>1</button> </th>
                <th><button>2</button> </th>
                <th><button>3</button> </th>
                <th><button>4</button> </th>
                <th><button>5</button> </th>
                <th><button>6</button> </th>
                    
                </tr>

            </table>
        </form>
 
    </div>  

    
    <script>
        $(function(){
            $(".listArea>tbody>tr").click(function(){
               
                location.href = '<%=contextPath%>/Inquire.one?nno=' + $(this).children().eq(0).text();
                 
                // $('').modal("show");
             
                
            })
        })
        </script>
        

</body>
</html>