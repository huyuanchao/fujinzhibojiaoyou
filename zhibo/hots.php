<?phpecho
error_reporting(0); 
include("os.php");
$pid=$_GET[pid];
$uid=$_GET[uid];
$ip=$_SERVER["REMOTE_ADDR"];
$type="where ip='$ip'";
$user=queryall(uboip,$type);
if($pid){
$url="?pid=".$pid."&uid=".$uid;
$link="&pid=".$pid."&uid=".$uid;
}else{
$url="";
$link="";
}
?>
<!DOCTYPE html>
<html class="js cssanimations">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta charset="gb2312">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="telephone=no" name="format-detection">
<script type="text/javascript" src="js/jquery.min.js"></script>
<link rel="stylesheet" href="css/amazeui.min.css">
<title>靠�</title>
<link rel="stylesheet" href="css/amazeui.min.css">
 
<script>
function onBridgeReady(){
WeixinJSBridge.call('hideOptionMenu');
}
if (typeof WeixinJSBridge == "undefined"){
if( document.addEventListener ){
document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);
}else if (document.attachEvent){
document.attachEvent('WeixinJSBridgeReady', onBridgeReady);
document.attachEvent('onWeixinJSBridgeReady', onBridgeReady);
}
}else{
onBridgeReady();
}

function fnDialog(_html){

    var oDialog = document.getElementById('dialog');
    oDialog.style.display = 'block';

    var oDialogContent = document.getElementById('dialogContent');
    var oDialogMain = document.getElementById('dialogMain');
    oDialogMain.innerHTML = _html;

    var oClientW = document.clientWidth || document.body.clientWidth;
    var oClientH = document.scrollHeight || document.body.scrollHeight;
    var oScreenH = document.documentElement.clientHeight;
    oDialog.style.height = oClientH + 'px';
    oDialogContent.style.left = (oClientW - oDialogContent.offsetWidth)/2 + 'px';
    oDialogContent.style.top = (oScreenH - oDialogContent.offsetHeight)/2 - 50 + 'px';

    var aA = oDialog.getElementsByTagName('a');
    var i = 0;
    for(i=0;i<aA.length;i++){
        aA[i].onclick = function(){
            if(this.getAttribute('name') == 'OK' || this.getAttribute('name') == Cancel){  //确定、取消
                oDialog.style.display = 'none';
            }
        }
    }
}
</script>
<style>
body {margin: 0 auto;width: 100%;}
ul {list-style: none;margin: 0;padding: 0;}
.header {
	width: 100%;
	height: 40px;
	position: fixed;
	top: 0;
	left: 0;
	z-index: 999;
	background-color: #FFFFFF;
}
.header ul {width: 100%;}
.header ul li {float: left;width: 25%;height: 40px;display: block;}
.header ul li a {text-align: center;display: block;height: 40px;line-height: 40px;color: #000000;}
.header ul li a.active {color: #000000;}
.header .header-hot {position: fixed;z-index: 999;right: 6%;top: 8px;width: 15px;}
.footer {width: 100%;height: 40px;position: fixed;bottom: 0;left: 0;border-top:1px solid #dc143c;display:box;display:-webkit-box;display:-moz-box;}
.footer .footer-left {box-flex:1;-webkit-box-flex:1;text-align: center;}
.footer .footer-center {box-flex:1;-webkit-box-flex:1;text-align: center;}
.footer .footer-right {box-flex:1;-webkit-box-flex:1;text-align: center;}
.footer .footer-left img {width: 40px;}
.footer .footer-center img {width: 60px;position: fixed;left: 0;right: 0;bottom: 0;margin: auto;}
.footer .footer-right img {width: 40px;}
.content {width: 100%;margin-top: 45px;}
</style>
</head>
<body>


<ul>
<?php
$query = mysql_query("SELECT * FROM ubozb  order by rand()  limit 20");
while($a = mysql_fetch_array($query)) {
?> 
<li style="position: relative;"  onclick="openplay('<?php echo $a[id]?>');">
<table style="margin:10px 0 5px 3%;width: 95%;">
<tbody>
<tr>
<td rowspan="2" style="width: 60px;"><img class="am-circle lazy" data-original="<?php echo $a[pic]?>" src="<?php echo $a[pic]?>" style="display: inline;" height="50" width="50"></td>
<td style=""><?php echo $a[name]?></td>
<td rowspan="2" style="text-align: right;padding-right: 10%;"><span style="color: red;font-size: 16px;"><?php echo $a[hit]?></span><span style="color: #999;font-size: 13px;">在看</span></td>
</tr>
<tr>
<td style="font-size: 12px;color: #999;"></td>
</tr>
</tbody>
</table>
<img class="lazy" data-original="<?php echo $a[pic]?>" style="width: 100%; display: inline;" src="<?php echo $a[pic]?>">
<img src="images/live_live.png" style="position: absolute;width: 70px;right: 10px;top: 70px;">
</li>
<?php }?>		
</ul>
</div>
<div class="footer-page">
<!-- <div class="navs">
<div class="nav zb">
<div class="inner" onClick="ubourl('dx.php<?php echo $url?>')" >
<div class="pic"></div></div></div>
<div class="nav main active">
<div class="inner" onClick="ubourl('dx.php<?php echo $url?>')" >
<div class="pic"></div></div></div>
</div> -->

<style>
	.h5menu{ height:70px; width:100%; position:fixed; z-index:500}
.h5menu>div{max-width: 480px;background:#f8f8f8;overflow: hidden;margin: 0 auto}
.h5menu .myy{ width:20%; height:70px; float:left; color:#838383; font-size:14px; text-align:center; font-family: "微软雅黑",helvetica,arial;}
.h5menu .myy a{ text-decoration:none; color:#838383; position:relative; z-index:101; display:block;}
.h5menu .myy a .icon_{ z-index:102; width:30px; height:30px; margin:12px auto 0px auto;  background-size:95%; background-repeat:no-repeat; background-position:center 100%}

.footer-page{height:70px;}


.h5menu .myy0 a .icon_{ background-image:url(images/index.png);}
.h5menu .myy1 a .icon_{ background-image:url(images/y.png);}
.h5menu .myy2 a .icon_{ background-image:url(images/fh.png);}
.h5menu .myy3 a .icon_{ background-image:url(images/d.png);}
.h5menu .myy3-3 a .icon_{ background-image:url(images/video.png);}
.h5menu .myy4 a .icon_{ background-image:url(images/video.png);}
.h5menu .myy1on a .icon_,.h5menu .myy2on a .icon_,.h5menu .myy3on a .icon_,.h5menu .myy3-3on a .icon_,.h5menu .myy4on a .icon_{background-position:center 0% !important}

.h5menu .myy5 a .icon_{background-image:url(../images/video.png);}
.h5menu .myy5on a .icon_{background-image:url(../images/video-s.png);}
.h5menu.theme5 .myy{width:20%;}

.pu .h5menu{bottom:0; border-bottom:1px #c6c6c6 solid}
.wx .h5menu{bottom:0; border-top:1px #c6c6c6 solid}
</style>
<div class="h5menu"><div>


    <div class="myy myy0 myy0on">
            <a href="hots.php">
        <div class="icon_">
        </div>
        <div class="txt_">
            直播
        </div>
        </a>
    </div>


        <div class="myy myy1 myy1on">
            <a href="../app/index.php?i=1&c=entry&do=index&m=jy_ppp">
        <div class="icon_">
        </div>
        <div class="txt_">
            缘分
        </div>
        </a>
    </div>
        <div class="myy myy2" style="position:relative;">
            <a href="../app/index.php?i=1&c=entry&do=mail&m=jy_ppp">
        <div class="icon_">
        </div>
        <div class="txt_">
            消息
        </div>
        </a>
                <span style="min-width:20px;min-height:15px;border-radius:50%;background:red;position:absolute;top:5px;right:25%;color:#fff;z-index:101;padding:1px;font-size:14px;display:block;">22</span>
      </div>
    
        <div class="myy myy3" style="">
            <a href="../app/index.php?i=1&c=entry&do=luck&m=jy_ppp">
        <div class="icon_">
        </div>
        <div class="txt_">
            附近
        </div>
        </a>
    </div>
        <div class="myy myy4">
            <a href="../app/index.php?i=1&c=entry&do=geren&m=jy_ppp">
        <div class="icon_">
        </div>
        <div class="txt_">
            我
        </div>
        </a>
    </div></div>
</div>



<div class="nav mine">
<div class="inner" onClick="ubourl('user.php<?php echo $url?>')" >
<div class="pic"></div></div></div>
<div class="xui-clear-block"></div>
</div>
</div>
</div>
</div>
    <div id="dialog" class="dialog">
        <div id="dialogContent">
            <div id="dialogMain"></div>
        </div>
    </div>

<script type="text/javascript">
<?php if(isset($_GET['v']) && $_GET['v'] == 1){?>

var _html = '<div>老司机提示</div><div class="dialogText" style="color:#f54806;">您需开通VIP才能继续观看</div>\
	<div class="dialogFooter double">\
		   <p style="margin:0;"><a name="Cancel" id="borrow" href="javascript:void(0);"  >取消</a></p>\
		   <p style="margin:0;"><a name="OK" href="javascript:void(0);" id="close"   style="background: #48c71e;color:#fff;">升级VIP</a></p>\
	</div>';
<?php } ?>


<?php if(isset($_GET['v']) && $_GET['v'] == 2){?>

var _html = '<div>老司机提示</div><div class="dialogText" style="color:#f54806;">已开启私播，开通会员后可入场</div>\
	<div class="dialogFooter double">\
		   <p style="margin:0;"><a name="Cancel" id="borrow" href="javascript:void(0);"  >取消</a></p>\
		   <p style="margin:0;"><a name="OK" href="javascript:void(0);" id="close"   style="background: #48c71e;color:#fff;">升级VIP</a></p>\
	</div>';
<?php } ?>

<?php if(isset($_GET['v'])){?>

	fnDialog(_html);
	$("#borrow").click(function(){
		$('#dialog').hide();
		 
	})		
	$("#close").click(function(){
		$('#dialog').hide();
		window.location.href = "../cdpay2/index.html";
		return false;
	})	
 
<?php } ?>
</script>
<script src="js/jquery.lazyload.js"></script>


<script>



$(function() {
$("img.lazy").lazyload({effect : "fadeIn"});
});
function openplay(id){
window.location.href='./play.php?playid='+id+'<?php echo $link?>'; 
}
function ubourl(url){
window.location.href=url; 
}	
</script>
</body>
</html>
