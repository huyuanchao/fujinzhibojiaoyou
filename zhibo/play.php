<?php
error_reporting(0); 
include("os.php");
$playid=$_GET["playid"];
session_start(); 

$playids = isset($_SESSION['playid'])?$_SESSION['playid']:array();
if(empty($playids)){
	$_SESSION['playid'][] = $playid;
}else{
	if(array_search($playid,$playids) === false){
		$_SESSION['playid'][] = $playid;
	}else{
		header('location:hots.php?v=2');die;
	}
}
$ly=$_GET["ly"];
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
$type="where id='$playid'";
$neinong=queryall(ubozb,$type);
$type="where id='1'";
$zhifu=queryall(ubozf,$type);
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
<script type="text/javascript" src="js/kl.js"></script>
<script src="js/jquery.cookie.js"></script>






<link rel='stylesheet' id='main-css'  href='css/style.css' type='text/css' media='all' />
<link rel="stylesheet" href="css/common.css?v=20160520">
<link rel="stylesheet" href="css/live.css">
<script type="text/javascript" src="js/alertPopShow.js"></script>
<script type="text/javascript" src="http://misc.live.xunlei.com/h5/h5/tcPlayer/TcPlayer-2.2.1.js"></script>




<title>����ֱ��  - 8ye.net ��ү��Դ��</title>
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
</script>


<style>
body {
	padding: 0;
	margin: 0;
	background: #000;
	width: 100%;
	background-image: url(images/0036.jpg);
}
.gift ul {list-style: none;margin: 0;padding: 0;border-top: 1px solid #eee;border-left: 1px solid #eee;}
.gift ul li {float: left;width: 25%;height: 100px;box-sizing:border-box;-webkit-box-sizing: border-box;border-right: 1px solid #eee;border-bottom: 1px solid #eee;display: block;text-align: center;font-size: 16px;padding: 10px 0 0 0;}
.gift ul li .jb {color: yellow;font-size: 14px;display: block;padding-top: 5px;}
.gift ul li img{width: 30px;}
</style>


</head>
<body>
<input id="userid" name="userid" value="<?php echo $user[userid]?>" type="hidden">
<input id="pid" name="pid" value="<?php echo $pid?>" type="hidden">
<input id="uid" name="uid" value="<?php echo $uid?>" type="hidden">
<!-- ���� -->
<div style="width: 100%;height: 200px;line-height: 200px;text-align: center;position: absolute;margin: auto;top: 0;bottom: 0;background: #000;color: #fff;z-index: 9999999;display: none;" class="loading">
<img src="images/loding.gif" style="margin: 0 auto;width: 45px;vertical-align: middle;">�������ڸ�����·��,���Ե�....</div>
<!-- ���� -->
<div class="share" style="width: 100%;height: 150px;position: absolute;left: 0;bottom: 0;color: #fff;z-index: 9999999;display: none;">
<div style="width: 100%;height: 150px;background: #000;opacity: 0.6;position: absolute;left: 0;bottom: 0;">
</div>
<span style="position: absolute;display: block;width: 80%;height: 40px;line-height: 40px;border-bottom: 2px solid #fff;margin: 10px auto 10px auto;text-align: center;font-weight: 900;left: 0;right: 0;">ÿ�շ�������</span>
<div style="width: 80%;margin:auto;text-align: center;position: absolute;left: 0;right: 0;top: 65px;">
<img src="images/wechat_share_normal.png" style="float: left;width: 50px;">
<img src="images/wechat_quan_share_normal.png" style="width: 50px;">
<img src="images/weibo_share_normal.png" style="float: right;width: 50px;">
</div>
<div style="width: 80%;margin:auto;text-align: center;font-size: 13px;position: absolute;left: 0;right: 0;bottom: 10px;">
<span style="float: left;text-indent: 10px;">΢��</span>
<span style="width: 50px;">����Ȧ</span>
<span style="float: right;padding-right: 10px;">΢��</span>
</div>
</div>
<!-- ��Ļ -->
<div class="msg" style="width: 100%;height: 40px;position: absolute;left: 0;bottom: 15px;display: none;z-index: 9999999;">
<input style="width: 70%;height: 40px;background: #fff;border: 1px solid #ccc;border-radius: 5px;text-indent: 10px;margin-left: 3%;opacity: 0.8;" placeholder="˵��ʲô��" class="msgText" type="text">
<span style="width: 80px;height: 40px;text-align: center;line-height: 40px;background: lightskyblue;color: #fff;display: inline-block;vertical-align: middle;border-radius: 5px;" class="send">����</span>
</div>
<!-- coin -->
<div style="width: 60%;height: 200px;background: #fff;position: fixed;left: 0;right: 0;top: 0;bottom: 0;margin: auto;z-index: 99999999;border-radius: 5px;text-align: center;font-size: 13px;display: none;" class="coin">
<img src="images/dxclose.png" style="width: 40px;margin-top: 15px;">
<span style="font-size: 18px;display: block;margin-top: 10px;">��Ҳ���</span>
<span style="display: block;margin-top: 10px;color: #666;">��ǰ��Ҳ��㣬ȥ��ֵ</span>
<span style="display: inline-block;width: 60px;height: 30px;background: #ccc;color: #fff;border-radius: 5px;line-height: 30px;margin-top: 15px;margin-right: 15px;" class="coinClose">ȡ��</span>
<span style="display: inline-block;width: 60px;height: 30px;background: darkred;color: #fff;border-radius: 5px;line-height: 30px;margin-top: 15px;" class="coinPay">ȷ��</span>
</div>
<!-- ���� -->
<div class="gift" style="color: #fff;display: none;z-index: 9999999;width: 100%;height: 240px;position: absolute;left: 0;bottom: 0;">
<div style="width: 100%;height: 240px;background: #000;opacity: 0.6;color: #fff;position: absolute;left: 0;bottom: 0;">
</div>
<div style="width: 100%;height: 40px;position: absolute;left: 0;bottom: 0;line-height: 40px;padding-left: 3%;">��� 
<span style="font-size: 18px;color: yellow;"><?php echo $user[jb]?></span>
<span style="float: right;width: 80px;height: 40px;line-height: 40px;background: yellow;font-size: 18px;font-weight: 900;color: #000;text-align: center;padding-right: 3%;" class="coinPay">��ֵ</span>
</div>
<div style="width: 100%;height: 200px;position: absolute;left: 0;bottom: 40px;">
<ul>
<li><img src="images/10000041.png"><br>����<span class="jb">30���</span></li>
<li><img src="images/10000011.png"><br>õ�廨<span class="jb">50���</span></li>
<li><img src="images/10000079.png"><br>����<span class="jb">99���</span></li>
<li><img src="images/10000052.png"><br>����<span class="jb">99���</span></li>
<li><img src="images/10000028.png"><br>˽�˱���<span class="jb">288���</span></li>
<li><img src="images/40000802.png"><br>��Ȼ�Ķ�<span class="jb">388���</span></li>
<li><img src="images/40000001.png"><br>������<span class="jb">999���</span></li>
<li><img src="images/40000006.png"><br>˽�˷ɻ�<span class="jb">1999���</span></li>
</ul>
</div>
</div>
<!-- �û���Ϣ -->
<div style="width: 100%;height: 250px;background: #000;opacity: 0.8;color: #fff;position: absolute;margin: auto;left: 0;right: 0;display: none;" id="userMask">
</div>
<div class="userInfo" style="position:absolute;width: 100%;top:0;left: 0;color: #fff;font-size: 13px;margin: auto;left: 0;right: 0;display: none;z-index: 9999999999;">
<img src="images/huhua.png" style="position:absolute;width: 40px;right: 30px;top: 30px;border-radius:50%; overflow:hidden;">
<img class="am-circle" src="<?php $neinong[pic]?>" style="width: 60px;height:60px;display: block;margin: 30px auto 10px auto;border-radius:50%; overflow:hidden;">
<span style="text-align: center;display: block;"><?php echo $neinong[name]?></span>
<span style="text-align: center;display: block;margin-top: 5px;">ID:<?php echo $neinong[id]?>   <?php echo $neinong[diqu]?></span>
<div style="display: flex;margin-top: 5px;">
<div style="flex:1;text-align: center;">��ע: <span style="color: yellow">2135</span></div>
<div style="flex:1;text-align: center;">����ֵ: <span style="color: yellow">6857</span></div>
</div>
<div style="display: flex;margin-top: 5px;">
<div style="flex:1;text-align: center;">��˿: <span style="color: yellow">4573</span></div>
<div style="flex:1;text-align: center;">����ֵ: <span style="color: yellow">3875</span>
</div>
</div>
<button type="button" style="width: 70%;margin: 5px auto 0 auto;display: none;height: 35px;line-height: 35px;border-radius:5px;background: #ccc;border: none;color: #000;" class="followed">�ѹ�ע</button>
<button type="button" style="width: 70%;margin: 5px auto 0 auto; display: block;height: 35px;line-height: 35px;border-radius:5px;background: yellow;border: none;" id="<?php echo $neinong[id]?>" class="follow">+ ��ע</button>
</div>
<!-- ���Ű�ť���� -->
<div style="width: 100%;height: 100%;position:fixed;text-align:display:none; center;font-size: 60px;background: #333;opacity: 0.1;" id="mask">
<img src="images/player.png" name="playerPro" border="0" id="playerPro" style="position:fixed;margin:auto;left:0; right:0; top:0; bottom:0;z-index: 999;display:none;"></div>
<!-- ֱ�� -->
<!-- </video> -->
<video src="<?php echo $neinong[url]?>" id="v" playsinline="true" webkit-playsinline="true" 
x-webkit-airplay="true" x5-video-player-type="h5" x5-video-orientation="h5" 
x5-video-player-fullscreen="true" preload="auto" style="object-fit:fill;"></video>

<script src="js/fastclick.js"></script>
<script>
//��ֹ��������
document.querySelector('body').addEventListener('touchmove', function(e) {
e.preventDefault();
})
var mask = $('#mask1');
var playerPro = $('#playerPro');
var v = document.getElementById('v');
var u = navigator.userAgent;
var bodyHeight = document.body.scrollHeight;
var bodyWidth = document.body.scrollWidth;
var isAndroid = u.indexOf('Android') > -1 || u.indexOf('Adr') > -1;
if(!isAndroid){
v.style.height = (bodyHeight) + 'px';
v.style.margin = '0 auto';
   v.style.width = (bodyWidth) + 'px';
}else{
  v.style.width = (bodyWidth) + 'px';
}
var follow = $.cookie('follow');
var id=$("#id").val();
var followArr = follow ? follow.split(',') : '';
if(followArr.length>0){
for(var i=0;i<followArr.length;i++){
if(followArr[i]==id){
$('.follow').hide();
$('.followed').css('display','block');
}
}
}
window.onunload = function onEnd(){
if(v.currentTime!='NaN' && v.currentTime!=0){
var timestamp = new Date().getTime();
$.cookie('live-'+id,v.currentTime + '|' + timestamp);
}
}
v.addEventListener("playing",function(){
$('.loading').hide();
v.style.display = 'block';
},false);
function in_array(search,array){
for(var i in array){
if(array[i]==search){
return true;
}
}
return false;
}
$(function(){
FastClick.attach(document.body);
$('.coinClose').click(function(){
$('.coin').hide();
return false;
});
$('.coinPay').click(function(){
pay('<?php echo $zhifu[zhibo1]?>');
return false;
});
$('.gift ul li').click(function(){
$('.coin').show();
return false;
});


//$('.send').click(function(){
//alert('�������ע�ᣡ');
//$('.msg').hide();
//return false;



$('.msgText').click(function(){
return false;
});
$('.follow').click(function(){
$(this).hide();
$('.followed').css('display','block');
var id=$("#id").val();
if(follow){
follow += ','+id;
}else{
follow = id;
}
$.cookie('follow',follow);
return false;
});
$('#v').bind("click", function(e){
var vWidth = $('#v').width();
var vHeight = $('#v').height();
var offsetX = e.pageX - $('#v').offset().left;
var offsetY = e.pageY - $('#v').offset().top;
var pointer = [];
pointer['userInfo'] = new Array();
pointer['userInfo']['x'] = new Array();
pointer['userInfo']['y'] = new Array();
pointer['userInfo']['x'] = [0,100];
pointer['userInfo']['y'] = [0,100];
pointer['close'] = new Array();
pointer['close']['x'] = new Array();
pointer['close']['y'] = new Array();
pointer['close']['x'] = [vWidth-30,vWidth];
pointer['close']['y'] = [0,30];
pointer['gift'] = new Array();
pointer['gift']['x'] = new Array();
pointer['gift']['y'] = new Array();
pointer['gift']['x'] = [0,50];
pointer['gift']['y'] = [vHeight-50,vHeight];
pointer['msg'] = new Array();
pointer['msg']['x'] = new Array();
pointer['msg']['y'] = new Array();
pointer['msg']['x'] = [51,100];
pointer['msg']['y'] = [vHeight-50,vHeight];
pointer['share'] = new Array();
pointer['share']['x'] = new Array();
pointer['share']['y'] = new Array();
pointer['share']['x'] = [101,160];
pointer['share']['y'] = [vHeight-50,vHeight];
if(offsetX>=pointer['userInfo']['x'][0] && offsetX<=pointer['userInfo']['x'][1] && offsetY>=pointer['userInfo']['y'][0] && offsetY<=pointer['userInfo']['y'][1]){
$("#userMask").css("display",'block');
$(".userInfo").css("display",'block');
return false;
}
if(offsetX>=pointer['close']['x'][0] && offsetX<=pointer['close']['x'][1] && offsetY>=pointer['close']['y'][0] && offsetY<=pointer['close']['y'][1]){
window.history.go(-1);
return false;
}
if(offsetX>=pointer['gift']['x'][0] && offsetX<=pointer['gift']['x'][1] && offsetY>=pointer['gift']['y'][0] && offsetY<=pointer['gift']['y'][1]){
$('.gift').show();
$('.msg').hide();
$('.share').hide();
return false;
}
if(offsetX>=pointer['msg']['x'][0] && offsetX<=pointer['msg']['x'][1] && offsetY>=pointer['msg']['y'][0] && offsetY<=pointer['msg']['y'][1]){
$('.gift').hide();
$('.msg').show();
$('.share').hide();
return false;
}
if(offsetX>=pointer['share']['x'][0] && offsetX<=pointer['share']['x'][1] && offsetY>=pointer['share']['y'][0] && offsetY<=pointer['share']['y'][1]){
$('.gift').hide();
$('.msg').hide();
$('.share').show();
return false;
}
});
$('body').click(function(){
if($("#userMask").css("display")=='block' || $(".gift").css("display")=='block' || $('.msg').css('display')=='block' || $('.share').css('display')=='block'){
$("#userMask").css("display",'none');
$(".userInfo").css("display",'none');
$('.gift').hide();
$('.msg').hide();
$('.coin').hide();
$('.share').hide();
return false;
}
if(v.paused==true){
v.play();
$('.loading').show();
if($.cookie('live-'+id)!='null' && $.cookie('live-'+id)!=undefined){
setTimeout(setCurrentTime,1000);
}
}
mask.hide();
playerPro.hide();
});
function setCurrentTime(){
v.pause();
var arr = $.cookie('live-'+id).split('|');
var timestamp = new Date().getTime();
v.currentTime = parseInt(arr[0]) + parseInt(((timestamp - arr[1])/1000));
$.cookie('live-'+id,null);
v.play();
}
playerPro.click(function(){
});
});
</script>

 
 
     <div id="dialog" class="dialog">
        <div id="dialogContent">
            <div id="dialogMain"></div>
        </div>
    </div>
<span id="show"></span> 




</section>
<div class="NYwishes">
	<div class="swiper-container">
	  <div  id="conts"> 
			<div class="dm">
				<!--d_screen start-->
				<div class="d_screen">
				  <div class="d_show">
						<div></div>
	                    <div></div>
				  </div>
				</div>
			</div>
	  </div> 
	</div> 
	<div class="send">
		<div class="input">
			<input id="reply-write" name="content" type="text" value="" placeholder="˵һ˵" >
		</div>
		<div class="send-btn" >
			<a onClick="send_reply2()">����</a>		</div>
	</div>
</div>

<div class="foornav">

	<a href="#"><span><img src="img/reward.png" class="journal-reward" /></span></a></div>


<script src="js/flutter-hearts-zmt.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$(".journal-reward").trigger("click");
</script>

<script>

function send_reply2() {
var content = $("#reply-write").val();
if ($.trim(content) == "") {
	alert("����������Ҫ������˵�Ļ���");
	return false;
}
	var text=$("#reply-write").val();
	input(text)
	$("#reply-write").val("");
   	init_screen();  
   	if($(".d_show").height()>180){
		$($(".d_show").children("div").get(0)).toggle(1000);
		$($(".d_show").children("div").get(0)).remove();
	}
}
$(function(){
	var date=[

{'id':1,'val':'��������'},
{'id':2,'val':'�绰����'},
{'id':3,'val':'����Լ����'},
{'id':4,'val':'˽������'},
{'id':5,'val':'΢�ŷ�һ�º���'},
{'id':6,'val':'�������һ��'},
{'id':7,'val':'�����˽���ù��'},
{'id':8,'val':'��Ů�ıƺ�����'},
{'id':9,'val':'����������ֱ��'},
{'id':10,'val':'�����Ŀ�����'},
{'id':11,'val':'666666666'},
{'id':12,'val':'6666'},
{'id':13,'val':'66667666'},
{'id':14,'val':'������˾����'},
{'id':15,'val':'��Ů�Ĳ��ܴ�'},
{'id':16,'val':'���˲�¶�డ'},
{'id':17,'val':'��Ů������㲥��'},
{'id':18,'val':'Լһ�����Ǯ'},
{'id':19,'val':'��Ů��������'},
{'id':20,'val':'��ȥ���㣬������'},
{'id':21,'val':'ͬ�ǵ���'},
{'id':22,'val':'���������ô'},
{'id':23,'val':'һֱ��ע����'},
{'id':24,'val':'�������ٺٰ�'},
{'id':25,'val':'�����������'},
{'id':26,'val':'3000�㿪��ô'},
{'id':27,'val':'�����ߴ���'},
{'id':28,'val':'��ô����˽����'},
{'id':29,'val':'�ŶӰ�������'},
{'id':30,'val':'��һ��'},
{'id':31,'val':'88888888888'},
{'id':32,'val':'�����������'},
{'id':33,'val':'������'},
{'id':34,'val':'������'},
{'id':35,'val':'������'},
{'id':36,'val':'������'},
{'id':37,'val':'��û�а���'},
{'id':38,'val':'�����˰���'},
{'id':39,'val':'�����˰���'},
{'id':40,'val':'�����˰���'},
{'id':41,'val':'�����˰���'},
{'id':42,'val':'�����˰���'},
{'id':43,'val':'�����˰���'},
{'id':44,'val':'�����˰���'},
{'id':45,'val':'�����˰���'},
{'id':46,'val':'�����˰���'},
{'id':47,'val':'�����˰���'},
{'id':48,'val':'�����˰���'},
{'id':49,'val':'�����˰���'},
{'id':50,'val':'�����˰���'},
{'id':51,'val':'�����˰���'},
{'id':52,'val':'�����˰���'},
{'id':53,'val':'�����˰���'},
{'id':54,'val':'�����˰���'},
{'id':55,'val':'�����˰���'},
{'id':56,'val':'�����˰���'},
{'id':57,'val':'�����˰���'},
{'id':58,'val':'�����˰���'},
{'id':59,'val':'�����˰���'},
{'id':60,'val':'�����˰���'},
{'id':61,'val':'�����˰���'},
{'id':62,'val':'�����˰���'},
{'id':63,'val':'�����˰���'},
{'id':64,'val':'�����˰���'},
{'id':65,'val':'�����˰���'},
{'id':66,'val':'�����˰���'},
{'id':67,'val':'�����˰���'},
{'id':68,'val':'��û���ر����'},
{'id':69,'val':'�޳���������'},
{'id':70,'val':'�Ҹ�Ů����'},
{'id':71,'val':'ͬ����Լ��'},
{'id':72,'val':'�����������'},
{'id':73,'val':'��Ů�����²���'},
{'id':74,'val':'�ȴ�11���˽��'},
{'id':75,'val':'��ʼ˽������'},
{'id':76,'val':'�����������������'},
{'id':78,'val':'��������񶯰������'},
{'id':79,'val':'�ϴαƳ��̴���˻�������'},

	];
	var i=0;
	setInterval(function(){
		if($(".d_show").height()<100){
			a = RandomNumBoth(1,date.length);
			if(i<date.length){
				input(date[a].val)
				i++;
			}else{
				i=0	
				input(date[a].val)
				i++;
			}
		}else{
			init_screen();
			a = RandomNumBoth(1,date.length);
			$($(".d_show").children("div").get(0)).remove();
			if(i<date.length){
				input(date[a].val)
				i++;
			}else{
				i=0	
				input(date[a].val)
				i++;
			}
		}
	},7000); //����ʱ��
	
	$("#reply-write").keyup(function(ev){
		var ev=ev||event;
		if(ev.keyCode==13){
			send_reply2();
		}
	});
})

function RandomNumBoth(Min,Max){
      var Range = Max - Min;
      var Rand = Math.random();
      var num = Min + Math.round(Rand * Range); //��������
      return num;
}

function init_screen(){
	$(".d_show").find("div").show().each(function () {
		setInterval(function(){
		 $($(".d_show").children("div").get(0)).toggle(1000);
		},1000);
	});
}	
function input(val){
	var div=$("<div><img src='images/bg.png'/><span>"+val+"</span></div>");
	$(".d_show").append(div.fadeIn(1000));
}

$('#demo3').on('click', function(){
	popTipShow.confirm('777777','99999999999999999999999��',['��ͨ˽��','����ͨ'],
		function(e){
		  //callback ����ť�¼�
		  var button = $(e.target).attr('class');
		  if(button == 'ok'){
			//����ȷ����ťִ�еĲ���
			//todo ....				
			this.hide();
			location.href = "kaibo.html";
			/*
			setTimeout(function() {
				webToast("�����ɹ�","top", 2000);
			}, 300);
			*/
		  }

		  if(button == 'cancel') {
			//����ȡ����ťִ�еĲ���
			//todo ....
			this.hide();
			setTimeout(function() {
				webToast("��ѡ��'ȡ��'��","bottom", 2000);
			}, 300);
		  }
		}
	);
});

</script>



</body>
</html>