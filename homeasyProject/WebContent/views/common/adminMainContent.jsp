<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        .admin_main{
            border:0px solid;
            width:1000px;
            height:820px;
            margin:auto;
        }
        .content1, .content2{
            width:470px;
            height:329px;
            background-color:rgb(244, 244, 244);
            float: left;
        }
        .content1{margin:20px;}

        .content2{margin-top:20px;}

        .content3{
            width:960px;
            height:331px;
            background-color:rgb(244, 244, 244);
            float:left;
            margin-left:19px;
        }

        .title{
            list-style:none;
            margin-left:15px;
            float: left;
        }

        .plus{
            float:right;
            padding-top:13px;
            margin-right:26px;
        }

        .notice{
            padding:10px 24px;
            
        }

        .qna{
            margin-left:20px;
        }

        thead{
            background-color:#eaeaea;
            font-weight:bold;
        }

        td{
            text-align:center;
            font-size:12px;
        }

        .table1{
            border:1px solid #ccc;
            width:420px;
            height:240px;
            border-collapse:collapse;
            border-left-width:2px;
            border-top-width:2px;
            border-right-width:2px;
            border-bottom-width:2px;
        }

        .table2{
            border:1px solid #ccc;
            width:920px;
            height:249px;
            border-collapse:collapse;
            border-left-width:2px;
            border-top-width:2px;
            border-right-width:2px;
            border-bottom-width:2px;  
        }

        .salesimg{
            width:420px;
            height:240px;
            margin-left:16px;
        }
</style>
</head>
<body>
    <div class="admin_main">
        <div class="content1">
            <div class="title">
                <h3>????????????</h3>
            </div>

            <div class="plus">
                <a href=""><img src=""></a>
            </div>

            <div class="notice">
                <table class="table1" border="1" >
                    <thead>
                        <tr>
                            <td width="50" height="40">No.</td>
                            <td>????????????</td>
                            <td>?????????</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>????????????1</td>
                            <td>2018-08-01</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>????????????2</td>
                            <td>2018-08-2</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>????????????3</td>
                            <td>2018-08-3</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>????????????4</td>
                            <td>2018-08-04</td>
                        </tr>
                    </tbody>
                    
                </table>
            </div>
        </div>

        <div class="content2">
            <div class="title">
                <h3>????????????</h3>
            </div>
				<div class="notice">
                <table class="table1" border="1" >
                    <thead>
                        <tr>
                            <td width="50" height="40">No.</td>
                            <td>?????????</td>
                            <td>????????????</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>??? ??? ???????????????</td>
                            <td>????????? ???????????? 1</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>???????????? ?????? ???????????????</td>
                            <td>????????? ???????????? 2</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>???????????? ?????? ???????????????</td>
                            <td>????????? ???????????? 3</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>???????????? ?????? ???????????????</td>
                            <td>????????? ???????????? 4</td>
                        </tr>
                    </tbody>
                    
                </table>
            </div>
        </div>

        <div class="content3">
            <div class="title">
                <h3>?????? ????????? ??????</h3>
            </div>
            
            <div class="plus">
                <a href="">  <img src=""></a>
            </div>

            <br><br><br>
            <div class="qna">
                <table class="table2" border="1">
                    <thead>
                        <tr>
                            <td height="40" width="30">No.</td>
                            <td>??????</td>
                            <td>?????? ?????????</td>
                            <td>?????? ??????</td>
                            <td>?????????</td>
                            <td>?????????</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>??????</td>
                            <td>user04@naver.com</td>
                            <td>?????? ????????????????</td>
                            <td>2021.02.24</td>
                            <td>4</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>??????</td>
                            <td>user03@naver.com</td>
                            <td>?????? ???????????????.</td>
                            <td>2021.10.14</td>
                            <td>3</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>??????/??????</td>
                            <td>user02@naver.com</td>
                            <td>?????? ???????????????.</td>
                            <td>2021.04.23</td>
                            <td>6</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>??????</td>
                            <td>user01@naver.com</td>
                            <td>?????? ???????????????.</td>
                            <td>2021.03.28</td>
                            <td>1</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        
           
    </div>
    
</body>
</html>