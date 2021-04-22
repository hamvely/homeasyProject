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
            height:800px;
            margin:auto;
        }

        .content{
            margin-left:20px;
            margin-top:-5px;
        }

        .table1{
            width:960px;
            height:500px;
            text-align:center;
            border:solid #ccc;
            border-left:none;
            border-right:none;

        }

        thead{
            background-color:#eaeaea;
            font-weight:bold;   
        }
        
        td{
            border-bottom:1px solid #ccc;
        }
    </style>
</head>
<body>

	<%@ include file="../common/adminHeader.jsp" %>

    <div class="wrap">
        <br>
        <div class="content">
        <h3 style="font-weight:600;">공지사항</h3>
        <br>
        <button type="button" class="btn btn-warning" style="color:white; width:100px; height:35px;">삭제</button>
        <br><br>
        <table class="table1" border="0">
            <thead>
                <tr>
                    <td width="50" height="40"><input type="checkbox"></td>
                    <td>No.</td>
                    <td>회원 이메일</td>
                    <td>제목</td>
                    <td>작성일</td>
                    <td>조회수</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>1</td>
                    <td>user01@naver.com</td>
                    <td>제목1</td>
                    <td>2021-03-28</td>
                    <td>2</td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>2</td>
                    <td>user02@naver.com</td>
                    <td>제목2</td>
                    <td>2021-03-28</td>
                    <td>18</td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>3</td>
                    <td>user03@naver.com</td>
                    <td>제목3</td>
                    <td>2021-03-28</td>
                    <td>53</td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>4</td>
                    <td>user04@naver.com</td>
                    <td>제목4</td>
                    <td>2021-03-27</td>
                    <td>184</td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>5</td>
                    <td>user05@naver.com</td>
                    <td>제목5</td>
                    <td>2021-03-27</td>
                    <td>6</td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>6</td>
                    <td>user06@naver.com</td>
                    <td>제목6</td>
                    <td>2021-03-27</td>
                    <td>302</td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>7</td>
                    <td>user07@naver.com</td>
                    <td>제목7</td>
                    <td>2021-03-26</td>
                    <td>85</td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>8</td>
                    <td>user08@naver.com</td>
                    <td>제목8</td>
                    <td>2021-03-26</td>
                    <td>288</td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>9</td>
                    <td>user09@naver.com</td>
                    <td>제목9</td>
                    <td>2021-03-26</td>
                    <td>7</td>
                </tr>
        </table>

        <br>

        <div align="center" class="pageinArea">
            <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">〈</p></button>
            <button onclick="location.href='';" type="button" class="btn btn-warning" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">1</p></button>
            <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">2</p></button>
            <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">3</p></button>
            <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">4</p></button>
            <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">〉</p></button>
        </div>

    </div>
    </div>
</body>
</html>