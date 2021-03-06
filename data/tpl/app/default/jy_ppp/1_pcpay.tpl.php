<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>使用微信支付  - 婚恋交友</title>
    <style>
    body{
        margin: 0;
        padding: 0;
        background-color: rgba(0,0,0,.7);
    }
    .erweima{
        text-align: center;
        width: 100%;
        margin-top: 150px
    }
    .erweima>img{width: 300px;}
    p{text-align: center;font-weight: bold;color: #fff;margin-top: 50px}
    .bindbtn{
        display: inline-block;
        width: 10%;
        text-align: center;
        margin-left: 45%;
        margin-top: 50px;
        color: #fff;
        padding: 10px 0;
        cursor: pointer;
        border-radius: 3px;
    }
    @media screen and (max-width: 481px){
        .erweima{
            margin-top: 17%
        }
        .erweima>img{width: 70%}
        .bindbtn{
            width: 30%;
            margin-left: 35%
        }
    }
    </style>
</head>
<body>
    <div id="bodybox">

        <div class="erweima"><div id="code" style="text-align:center;margin-top:10px"></div></div>
        <p>请使用微信扫一扫进行支付充值!</p>
        <a href="javascript:history.go(-1)"><span class="bindbtn" style="background-color:#26b7a3">返回</span></a>
    </div>

    <script type="text/javascript" src="../addons/jy_ppp/js/jquery.js"></script>
    <script type="text/javascript" src="../addons/jy_ppp/js/jquery.qrcode.js"></script>
    <script>
    window.onload = function(){
        jQuery(function(){
            jQuery('#code').qrcode("{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('pay_c',array('op'=>$op,'fee'=>$fee,'mid'=>$mid)),2)}");
        })
    }
    </script>
</body>
</html>