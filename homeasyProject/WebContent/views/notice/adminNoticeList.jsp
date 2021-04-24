<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <style>
        .wrap{
            width:1000px;
            height:820px;
            margin:auto;
            padding-left: 20px;
        }

        table {
            width: 950px;
            text-align: center;
        }

        .btn-warning {
            color: white;
            width:100px; 
        }

        .btn-secondary {
            background-color:rgb(158, 158, 158); 
            border-color:rgb(158, 158, 158);
            width:100px; 
        }


    </style>
</head>
<body>

    <%@ include file="../common/adminHeader.jsp" %>
    <%@ include file="../common/adminMenubar.jsp" %>


    <div class="wrap">
        <br>
        <div class="content">
        <h3 style="font-weight:600;">공지사항</h3>
        <br>
        <button type="button" class="btn btn-warning">글 작성</button>
        <button type="button" class="btn btn-warning">글 수정</button>
        <button type="button" class="btn btn-secondary">글 삭제</button>

        <br><br>


        <table class="table table-hover">
            <colgroup>
                <col width="50px;"/>
                <col width="75px;"/>
                <col width="75px;"/>
                <col width="500px;"/>
                <col width="150px;"/>
                <col width="100px;"/>
            </colgroup>
            <tr class="table-active">
                <th><input type="checkbox"/></th>
                <th>No.</th>
                <th>노출</th>
                <th>제목</th>
                <th>작성일</th>
                <th>조회수</th>
            </tr>
            <tr>
                <td><input type="checkbox" /></td>
                <td>1</td>
                <td>Y</td>
                <td>제목입니다</td>
                <td>2021-04-22</td>
                <td>1</td>
            </tr>
            <tr>
                <td><input type="checkbox" /></td>
                <td>1</td>
                <td>Y</td>
                <td>제목입니다</td>
                <td>2021-04-22</td>
                <td>1</td>
            </tr>
            <tr>
                <td><input type="checkbox" /></td>
                <td>1</td>
                <td>Y</td>
                <td>제목입니다</td>
                <td>2021-04-22</td>
                <td>1</td>
            </tr>
            <tr>
                <td><input type="checkbox" /></td>
                <td>1</td>
                <td>Y</td>
                <td>제목입니다</td>
                <td>2021-04-22</td>
                <td>1</td>
            </tr>
            <tr>
                <td><input type="checkbox" /></td>
                <td>1</td>
                <td>Y</td>
                <td>제목입니다</td>
                <td>2021-04-22</td>
                <td>1</td>
            </tr>

        </table>
    
        <br>

        <div align="center" class="pageinArea">
            <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">〈</p></button>
            <button onclick="location.href='';" type="button" class="btn btn-warning" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">1</p></button>
            <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">2</p></button>
            <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">3</p></button>
            <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">4</p></button>
            <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">5</p></button>
            <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">〉</p></button>
        </div>

    </div>
    </div>
</body>
</html>