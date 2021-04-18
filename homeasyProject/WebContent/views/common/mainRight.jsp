<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    /*리모컨*/
    .main_right{
        width:60px; 
        height:270px; 
        position:sticky; 
        top:0;
    }

    #right>div{
        background-color:rgb(237,237,237); 
        font-size: small; 
        text-align: center;
    }

    .right_1{
        height:60px; 
        line-height:60px; 
        cursor:pointer;
    }

    .right_2, .right_3{
        height:60px; 
        line-height:60px; 
        margin-top:1px; 
        cursor:pointer;
    }

    .right_4, .right_5, .right_6{
        height:30px; 
        line-height:30px; 
        margin-top:1px; 
        cursor:pointer;
    }
   
</style>
<body>
    <!-- 리모컨 -->   
    <div class="main_right">
        <div id="right">
            <div class="right_1" onclick="location.href='';">ì»¤ë®¤ëí°</div>
            <div class="right_2" onclick="location.href='';">ì¥ë°êµ¬ë</div>
            <div class="right_3" onclick="location.href='';">ì¤í¬ë©ë¶</div>
            <div class="right_4" onclick="location.href='';">ê³ ê°ì¼í°</div>
            <div class="right_5" onclick="location.href='';">1:1ë¬¸ì</div>
            <div class="right_6" onclick="location.href='';">TOP</div>
        </div>
    </div>
        
</body>
</html>