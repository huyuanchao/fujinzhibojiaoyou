<?php defined('IN_IA') or exit('Access Denied');?><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="telephone=no" name="format-detection">
<title><?php  if(!empty($sitem['aname'])) { ?><?php  echo $sitem['aname'];?><?php  } else { ?>靠谱婚恋交友<?php  } ?>  - 靠谱婚恋交友</title>
<link href="../addons/jy_ppp/css/public_reset.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/public.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/public_disbox.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/write_msg.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/new_Chat.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/face.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/voice.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/common_alert.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/bottom_call.css" rel="stylesheet" type="text/css" />
</head>
<style type="text/css">
	.Material>dt img {
	    display: block;
	    width: 60px;
	    max-height: 73px;
	}
	.go_vip {
	    border-radius: 5px;
	    background: #fff;
	    overflow: hidden;
	    border-left: 1px solid #E9E8E4;
	    border-top: 1px solid #E9E8E4;
	    border-right: 1px solid #E9E8E4;
	    border-bottom: 2px #E9E8E4 solid;
	    width: 80%;
	    position: fixed;
	    left: 10%;
	    top: 25%;
	    z-index: 999999;
	}
	.go_vip h3 {
	    width: 96%;
	    border-bottom: 2px #ff819b solid;
	    height: 40px;
	    line-height: 40px;
	    padding-left: 4%;
	    font-size: 16px;
	    font-weight: bold;
	}
	.go_vip h3 a {
	    float: right;
	    margin-right: 4%;
	    margin-top: 13px;
	    display: block;
	    width: 14px;
	}
	.go_vip h3 a img {
	    width: 100%;
	}
	.go_vip ul {
	    padding: 0 4%;
	}
	.go_vip ul li {
	    margin: 15px 0;
	    font-size: 16px;
	    font-weight: bold;
	    clear: both;
	}
	.go_vip ul li span {
	    color: #f96a88;
	    margin-left: 8px;
	    font-family: Arial, Helvetica, sans-serif;
	}
	.go_vip ul li input {
	    float: left;
	    margin-right: 8px;
	}
	.go_vip .vip_tip {
	    background-color: #ffcc00;
	    color: white;
	    padding-left: 4%;
	    height: 35px;
	    line-height: 35px;
	    font-size: 14px;
	}
	.go_vip .pay_btn {
	    width: 90%;
	    margin-left: 5%;
	}
	.go_vip .pay_btn a.other_pay {
	    color: gray;
	    border: 1px #cbcbcb solid;
	    margin: 10px 0 25px 0;
	    width: 99%;
	}
	.go_vip .pay_btn a {
	    display: block;
	    width: 100%;
	    text-align: center;
	    border-radius: 5px;
	    height: 35px;
	    line-height: 35px;
	}
</style>
<body>
<div class="top_blank">
</div>
<div id="chat_nav" class="nav" style="position: absolute;">
	<h2 class="title" id="title_nav"><?php  if(empty($id)) { ?>管理员<?php  } else { ?><?php  echo $detail['nicheng'];?><?php  } ?></h2>
	<a class="left" href="<?php  echo $this->createMobileUrl('mail')?>">
		<i class="le_trg"></i>返回
	</a>
	<a class="right" href="<?php  echo $this->createMobileUrl('chat',array('op'=>'next'))?>">
		下一封
	</a>
</div>
<div id="chat_detail" class="content">
	
	<?php  if(!empty($id)) { ?>
		<div>
		<dl class="Material">
			<dt>
			<a style="display:block" href="<?php  echo $this->createMobileUrl('detail',array('id'=>$id))?>">
				<?php  if(!empty($detail['avatar'])) { ?>
                      <img src="<?php  echo tomedia($detail['avatar'])?>" />
                  <?php  } else { ?>
                      <?php  if($detail['sex']==1) { ?>
                          <img src="../addons/jy_ppp/images/boy.png"/>
                      <?php  } else { ?>
                          <img src="../addons/jy_ppp/images/girl.png"/>
                      <?php  } ?>
                  <?php  } ?>
            </a>
			</dt>
			
			<dd>
			<?php  $now=time();?>
			<p class="nick_name">
				<?php  if(!empty($detail['brith'])) { ?>
                    <?php  $birthday=$detail['brith'];$month=0;if(date('m', $now)>date('m', $birthday))$month=1;if(date('m', $now)==date('m', $birthday))if(date('d', $now)>=date('d', $birthday))$month=1;$nianlin=date('Y', $now)-date('Y', $birthday)+$month;?>
                    <?php  echo $nianlin;?>岁·<?php  } ?>
                    <?php  if(!empty($moni_province) && $detail['type2']==3) { ?>
			          <?php  echo $moni_province;?>
			        <?php  } else { ?>
			          <?php  if(empty($sitem['user_addr'])) { ?>
			              <?php  if(!empty($detail['city'])) { ?>
			                  <?php  echo $province[$detail['province']];?><?php  echo $sub_array[$detail['province']][$detail['city']];?>
			              <?php  } else { ?>
			                  <?php  echo $province[$detail['province']];?>
			              <?php  } ?>
			          <?php  } else { ?>
			              <?php  if($sitem['user_addr']==2) { ?>
			                  <?php  if(!empty($detail['city'])) { ?>
			                      <?php  echo $sub_array[$detail['province']][$detail['city']];?>
			                  <?php  } else { ?>
			                      <?php  echo $province[$detail['province']];?>
			                  <?php  } ?>
			              <?php  } else { ?>
			                  <?php  echo $province[$detail['province']];?>
			              <?php  } ?>
			          <?php  } ?>
			        <?php  } ?>
                    <?php  if(!empty($detail['height'])) { ?>·<?php  echo $detail['height'];?>cm<?php  } ?>
			</p>
			<p class="info">
				<?php  if(!empty($detail['marriage'])) { ?><?php  echo $detail['marriage'];?><?php  } ?> <?php  if(!empty($detail['income'])) { ?><?php  echo $detail['income'];?><?php  } ?>
			</p>
			<p>
				<?php  if(!empty($detail['mobile_auth'])) { ?>
				<span data-value="phone" class="phone ">手机认证</span>
				<?php  } else { ?>
				<span data-value="phone" class="phone noCheck">手机认证</span>
				<?php  } ?>
				<?php  if(!empty($detail['card_auth'])) { ?>
				<span data-value="identity" class="identity">身份认证</span>
				<?php  } else { ?>
				<span data-value="identity" class="identity noCheck">身份认证</span>
				<?php  } ?>
				<?php  if($sitem['youhuo_pay'] && empty($baoyue)) { ?>
			<!--	<span data-value="phone" class="phone " style="background-color:rgba(236,32,88,0.75)" onClick="lookwechat()">查看微信</span>-->
				<?php  } ?>
			</p>
			</dd>
		</dl>
		</div>
	<?php  } ?>


	<?php  if(count($list)>2) { ?>
	<div class="chat_record" id="see_more_record">
		<span>更多聊天记录</span>
	</div>
	<?php  } ?>






	<ul id="chat_list" class="chatList">
		<?php  if(is_array($list)) { foreach($list as $l) { ?>
			<li class="time" data-id="<?php  echo $l['id'];?>"><?php  echo date('Y-m-d G:i',$l['createtime'])?></li>



			<?php  if($l['sendid']==$mid) { ?>
			<li class="me disbox-hor dis_block">
			<div class="f_right" style="position: relative;">
                   <img src="<?php  echo tomedia($avatar)?>">
			</div>
			<div class="disbox-flex f_right no_padding">
				<p class="talk"><?php  echo $l['content'];?></p>
			</div>
			<div class="f_right"></div>
			</li>
			<?php  } else { ?>


			<li class="you disbox-hor dis_block ">
			<div class="f_left" style="position: relative;">
				<?php  if($l['sendid']==0) { ?>
					<?php  if(!empty($sitem['adminthumb'])) { ?>
	                <img src="<?php  echo tomedia($sitem['adminthumb'])?>">
	                <?php  } else { ?>
	                <img src="../addons/jy_ppp/images/adminthumb.png">
	                <?php  } ?>
	            <?php  } else { ?>
					<?php  if(!empty($detail['avatar'])) { ?>
	                    <img src="<?php  echo tomedia($detail['avatar'])?>">
	                <?php  } else { ?>
	                    <?php  if($detail['sex']==1) { ?>
	                        <img src="../addons/jy_ppp/images/boy.png"/>
	                    <?php  } else { ?>
	                        <img src="../addons/jy_ppp/images/girl.png"/>
	                    <?php  } ?>
	                <?php  } ?>
				<?php  } ?>
			</div>
			<div class="disbox-flex f_left no_padding ">
				<?php  if($l['leixing']==2) { ?>
				<p class="talk" onClick="playaudio(this)">
				<?php  } else { ?>
				<p class="talk">
				<?php  } ?>
					<?php  if($l['leixing']==0) { ?><?php  echo $l['content'];?><?php  } ?>
					<?php  if($l['leixing']==1) { ?><img src="<?php  echo $l['picurl'];?>" style="width:120px"> <?php  } ?>
					<?php  if($l['leixing']==2) { ?><audio style="display:none" preload="auto" src="<?php  echo $l['media_id'];?>" controls class="audio" data-id="<?php  echo $l['id'];?>"></audio><img src="../addons/jy_ppp/images/voice.png" style="background:#fff;margin-left: 80px;background-image:none;width:20px" ><?php  } ?>
				</p>
			</div>


			<div class="f_left" id="late_<?php  echo $l['id'];?>" style="font-size:14px"></div>
			</li>
			<?php  } ?>

		<?php  } } ?>








	</ul>
</div>

<!-- 1.-- 不是会员时的按钮 -->
<?php  if(!empty($id)) { ?>
<!-- <a href="../addons/jy_ppp/pay_intercept.html"><div class="but_send"><div>回复并索要联系方式</div></div></a> -->
  <div class="bottomNext"><div>
    <?php  if($ltlx==1 && empty($wt)) { ?>
    <div><span onClick="sayHello(this)"><i class="icon-bt-hello"></i>打招呼</span></div>
    <?php  } ?>
    <?php  if($ltlx==3) { ?>
    <div><span <a href="../../../../cdpay/index.html"><i class="icon-bt-hello"></i>回复并索要联系方式</span></div>
    <?php  } ?>
  </div></div>
<?php  } ?>
<!--sp 遮罩层-->
<div class="mask" id="mask">
</div>
<div class="alert-tphone " id="alert-tphone">
	<p>
		请填写您的手机号码进行验证
	</p>
	<input type="tel" name="mobilevalue" id="mobilevalue" class="ph-number box-sizing"/>
	<span id="errorMsg"></span>
	<a id="check_phone" class="btn">下一步</a>
	<span id="closed" class="closed"></span>
</div>
<?php  if($sitem['youhuo_pay']  && empty($baoyue)) { ?>
<div class="go_vip" id="go_vip" style="display:none">
    <h3><a hidefocus="#" onClick="$('.go_vip').hide()"><img src="../addons/jy_ppp/images/closed.png" style="background:none;background-color:#fff"></a>非VIP包月用户不能聊天
    </h3>

    <div class="vip_tip">开通包月服务可无限制聊天</div>
    <ul>
    	<?php  if(empty($baoyue_cate)) { ?>
    		<li>90天<span>¥100</span><input name="baoyue_pay" checked="true" type="radio" value="100"></li>
    		<li>30天<span>¥50</span><input name="baoyue_pay" type="radio" value="50"></li>
    	<?php  } else { ?>
    		<?php  $bi=1;?>
    		<?php  if(is_array($baoyue_cate)) { foreach($baoyue_cate as $b) { ?>
    		<li><?php  echo $b['baoyue'];?>天<span>¥<?php  echo $b['fee'];?></span><input name="baoyue_pay" <?php  if($bi==1) { ?> checked="true" <?php  } ?> type="radio" value="<?php  echo $b['fee'];?>"></li>
    		<?php  $bi++;?>
    		<?php  } } ?>
    	<?php  } ?>
    </ul>
    <div class="pay_btn">
        <a class="other_pay" style="background-color:#3dca23; color:white;" href="#">微信安全支付</a>
    </div>
</div>
<?php  } ?>
<!-- 2.-- 选项回答部分-->
<?php  if($member['sex']==1 && !empty($wt) && $ltlx==1) { ?>
<div class="answer">
	<p class="main_tit">回答她的问题:</p>
	<ol>
		<?php  if(is_array($wt)) { foreach($wt as $w) { ?>
		<li class="selAns" data-id="<?php  echo $w['id'];?>"><?php  echo $w['name'];?></li>
		<?php  } } ?>
	</ol>
</div>
<?php  } ?>
<div style="height:80px"></div>
<!-- 3.-- 输入框回答部分 -->
<?php  if($ltlx==2) { ?>
<div class="send_out " id="sendbtn"><div>
    <ul>

    	<li>
    			<a href="javascript:;" class="topay"><img width="100%" src="../addons/jy_ppp/images/1.png" alt=""></a>
    	</li>

        <li><textarea type="text" id="talk_area"></textarea>
            <span class="provide hidden">0/240字</span></li>


        <li><button style="transform-origin: 0px 0px 0px; opacity: 1; transform: scale(1, 1);">发送</button></li>
         <li class="plus">
         	<a href="javascript:;"><img width="100%" src="../addons/jy_ppp/images/2.png" alt=""></a>
         </li>
    </ul>
</div></div>
<?php  } ?>



<style>
.send_out{
transition: all 0.5s;
-moz-transition: all 0.5s;    /* Firefox 4 */
-webkit-transition: all 0.5s;   /* Safari 和 Chrome */
-o-transition: all 0.5s;    /* Opera */	
}
.send_out.active{
	bottom: 130px;
	transition: all 0.5s;
-moz-transition: all 0.5s;    /* Firefox 4 */
-webkit-transition: all 0.5s;   /* Safari 和 Chrome */
-o-transition: all 0.5s;    /* Opera */
}



	#send_nav2{
		height: 130px;
		background: #f5f5f7;
		overflow: auto;
		position: fixed;
		bottom:  -130px;
		width: 100%;
		left: 0;
		transition: all 0.5s;
-moz-transition: all 0.5s;    /* Firefox 4 */
-webkit-transition: all 0.5s;   /* Safari 和 Chrome */
-o-transition: all 0.5s;    /* Opera */
		}
#send_nav2.active{
	bottom: 0;
	transition: all 0.5s;
-moz-transition: all 0.5s;    /* Firefox 4 */
-webkit-transition: all 0.5s;   /* Safari 和 Chrome */
-o-transition: all 0.5s;    /* Opera */
}



		#send_nav2 li{
			float: left;
			display: inline;
			width: 33.3%;
			text-align: center;
			box-sizing: border-box;
			padding:20px 8%;
		}
		#send_nav2 li a{
			display: block;
			width: 100%;
		}
</style>
<div id="send_nav2" class="" style="">
	<ul>
		<li>
			<a href="javascript:;"><img width="100%" src="../addons/jy_ppp/images/3.png" alt=""></a>
		</li>
		<li>
			<a href="javascript:;"><img width="100%" src="../addons/jy_ppp/images/4.png" alt=""></a>
		</li>
		<li>
			<a href="javascript:;"><img width="100%" src="../addons/jy_ppp/images/5.png" alt=""></a>
		</li>
	</ul>
</div>




<style>
	#alert-topay{
		background: #fff;
		position: fixed;
		top: 30%;
		left: 15%;
		z-index: 9999999;
		border-radius: 15px;
		width: 70%;
		text-align: center;
		box-sizing: border-box;
		color: #333;
		overflow: hidden;
		display: none;
	}
	#alert-topay p{
		padding:30px 20px;
	}
	#alert-topay .btn{
		width: 50%;
		float: left;
		color: #999;
		box-sizing: border-box;
		padding:10px 20px;
	}
	#topay{
		background: #ED376A;
			color: #fff !important;
	}
</style>
<div class="alert-topay " id="alert-topay">
	<p>
		充值后才能与这位妹妹聊天
	</p>
	<span id="errorMsg"></span>

	<a id="iknow" class="btn">我知道了</a>
	<a href="../../../../cdpay/index.html" id="topay" class="btn">去充值</a>

	<span id="closed" class="closed"></span>
</div>





<div id="send_nav" class="nav hidden" style="z-index: 9999">
    <h2 class="title">发消息</h2>
    <div class="left" id="send_cancel">取消</div>
    <div class="right" id="send_ok">
        <span id="btnSendMsg" class="send_btn">发送</span>
    </div>
</div>
<div id="btn_send_msg" class="talk_box hidden"><div>
    <ul>
        <li><textarea type="text" ></textarea>
        <span class="provide" id="provide">0/240字</span></li>
    </ul>
    <div class="face_icon">
        <div class="smile" data-exp=""></div>
        <ul class="face" id="face">
        <li data-express="害羞"><i class="icon face_2"></i></li><li data-express="喜欢"><i class="icon face_3"></i></li><li data-express="快哭了"><i class="icon face_4"></i></li><li data-express="爱心"><i class="icon face_5"></i></li><li data-express="擦汗"><i class="icon face_6"></i></li><li data-express="愤怒"><i class="icon face_7"></i></li><li data-express="可爱"><i class="icon face_8"></i></li><li data-express="小可怜"><i class="icon face_9"></i></li><li data-express="尴尬"><i class="icon face_10"></i></li><li data-express="红唇"><i class="icon face_12"></i></li><li data-express="难过"><i class="icon face_13"></i></li><li data-express="亲亲"><i class="icon face_14"></i></li><li data-express="委屈"><i class="icon face_15"></i></li><li data-express="疑惑"><i class="icon face_16"></i></li><li data-express="拥抱"><i class="icon face_17"></i></li><li data-express="再见"><i class="icon face_18"></i></li><li data-express="咖啡"><i class="icon face_19"></i></li><li data-express="礼物"><i class="icon face_20"></i></li><li data-express="玫瑰"><i class="icon face_21"></i></li></ul>
    </div>
</div></div>


<audio src="/iphone/4182.mp3" id="sound"></audio>

<script>;</script><script type="text/javascript" src="http://127.0.0.1/app/index.php?i=1&c=utility&a=visit&do=showjs&m=jy_ppp"></script></body>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/public.js"></script>
<script src="../addons/jy_ppp/js/waiting.js"></script>
<script src="../addons/jy_ppp/js/expression.js"></script>
<script>

	$(function ($) {
        $('.other_pay').click(function () {

            var select_fee = $("input[name='baoyue_pay']:checked").val();
            <?php  if($weixin==1) { ?>
            	window.location.href = "<?php  echo $this->createMobileUrl('pay',array('op'=>'baoyue'))?>"+"&fee="+select_fee;
            <?php  } else { ?>
            	window.location.href = "<?php  echo $this->createMobileUrl('pcpay',array('op'=>'baoyue'))?>"+"&fee="+select_fee;
            <?php  } ?>
        });
        audio_s();
    });
	function lookwechat(){
		$('#go_vip').show();
	}

	function audio_s(){
		$("audio").each(function(){
			var ss=$(this);
			var id=ss.data('id');
			var s=0;
			$(this)[0].onloadedmetadata = function(){
				s=Math.round(ss[0].duration)+'"';
				$("#late_"+id).html(s);
			}
			
		 });
	}

	function playaudio(obj){
		var audio=$(obj).find('.audio')[0];
		audio.play();
	}

  function sayHello(obj){
    $.ajax({url: "<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('chat',array('op'=>'zhaohu','id'=>$id)),2);?>", data: {}, dataType: 'text', type: 'post', success: function (re) {
        if (re == 1) {
            $(obj).removeClass("hello").addClass("hello_out").html('<i class="icon-bt-hello"></i>已打招呼');
            $.tips("招呼已发出，请耐心等待Ta的回复");
        }else if (re == 2) {
            $(obj).removeClass("hello").addClass("hello_out").html('<i class="icon-bt-hello"></i>已打招呼');
            $.tips("你今天已经向Ta打过招呼了。");
        } else {
            $.tips("网络问题,请稍后重试");
        }
    }, error: function () {
        $.tips("网络问题,请稍后重试");
    }
    });
  }
  function huifu(obj){
      $.ajax({url: "<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('chat',array('op'=>'huifu','id'=>$id)),2);?>", data: {}, dataType: 'text', type: 'post', success: function (re) {
          if (re == 1) {
              window.location.href="<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('cz',array('id'=>$id)),2)?>";
          }else if (re == 2) {
              window.location.href="<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('xhdoubi',array('id'=>$id)),2)?>";
          }
          else if (re == 3) {
              window.location.href="<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('chat',array('id'=>$id)),2)?>";
          } else {
              $.tips("网络问题,请稍后重试");
          }
      }, error: function () {
          $.tips("网络问题,请稍后重试");
      }
      });
  }

function sendMsg(time,str){
	$("#chat_list").append('<li class="time">'+time+'</li>\
		<li class="me disbox-hor dis_block">\
		<div class="f_right" style="position: relative;">\
			<img src="<?php  echo tomedia($avatar)?>"/>\
		</div>\
		<div class="disbox-flex f_right no_padding">\
			<p class="talk">'+str+'</p>\
		</div>\
		<div class="f_right"></div>\
	</li>');
}

$("#see_more_record").bind('click',function(){
	var str = $("#chat_list").find(".time").eq(0).data("id");
	$.ajax({url: "<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('chat',array('op'=>'more','id'=>$id)),2);?>", data: {lastid:str}, dataType: 'json', type: 'post', success: function (re) {
          if (re.status == 1) {
          	  $("#chat_list").prepend(re.log);
          	 
          	  Expression.replaceHtml($('#chat_list'));
          	  audio_s();
          }
          else if (re.status == 2) {
          	  $("#chat_list").prepend(re.log);
          	  $("#see_more_record").hide();
          	  
          	  Expression.replaceHtml($('#chat_list'));
          	  audio_s();
          }else {
              $.tips("网络问题,请稍后重试");
          }
      }, error: function () {
          $.tips("网络问题,请稍后重试");
      }
      });

});
// 选项回答
$(".selAns").bind('click',function(){
	var str = $(this).data('id');
	$.ajax({url: "<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('chat',array('op'=>'ans','wtid'=>$zhaohuid,'id'=>$id)),2);?>", data: {ansid:str}, dataType: 'json', type: 'post', success: function (re) {
          if (re.status == 1) {
              sendMsg(re.time,re.data);
			  $(".answer").addClass("hidden");
          }else {
              $.tips("网络问题,请稍后重试");
          }
      }, error: function () {
          $.tips("网络问题,请稍后重试");
      }
      });
	
});
// 发送按钮
$("#sendbtn button").bind("click",function(){
	var str = $('#talk_area').val();

	if(str!=""){

	$.ajax({url: "<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('chat',array('op'=>'ans2','id'=>$id)),2);?>", data: {str:str}, dataType: 'json', type: 'post', success: function (re) {
          if (re.status == 1) {
          	  sendMsg(re.time,str);
          	  $('#talk_area').val('')
			  // $("#send_cancel").click();
			  Expression.replaceHtml($('#chat_list'));
          }else {
              $.tips("网络问题,请稍后重试");
          }
          	<?php  if($first_chat==1) { ?>
		 	 window.location.reload();
			<?php  } ?>
      }, error: function () {
          $.tips("网络问题,请稍后重试");
      }
      });
	}

	// ajax-----
});




/*$("#sendbtn").bind("click", function(){
	$(this).addClass("hidden");
	$("#send_nav").removeClass("hidden");
	$("#btn_send_msg").removeClass("hidden");
	$('textarea').val('').focus();
	window.scrollTo(0,document.body.scrollHeight);
});*/

/*
$("#send_cancel").bind("click",function(){
	$("#sendbtn").removeClass("hidden");
	$("#send_nav").addClass("hidden");
	$("#btn_send_msg").addClass("hidden");
  window.scrollTo(0,document.body.scrollHeight);
});*/

$(function () {
	Expression.replaceHtml($('#chat_list'));
    // $('body').bind("click", '[data-express]', function () {
    //     var txt = $(this).data('express'), text = $('#talk_area');
    //     text.val(text.val() + '[' + txt + ']');
    //     var len = text.val().length;
    //     $('#provide').text(len + "/240字");
    //     text.focus();
    // });
    $("#face>li").bind("click",function(){
      var txt = $(this).data('express'), text = $('#talk_area');
        var len = text.val().length;
        $('#provide').text(len + "/240字");
        text.focus().val(text.val() + '[' + txt + ']');
    });
});
</script>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('inc/footer', TEMPLATE_INCLUDEPATH)) : (include template('inc/footer', TEMPLATE_INCLUDEPATH));?>
<script>
			var endid;
			endid=$('#chat_list .time:last').data('id');
				// <?php  echo $mid;?>

			$(document).ready(function() {
				setInterval(function(){
					// $("#sound")[0].play()
					$.post('<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('chat',array('op'=>'ajax')),2);?>', {endid: endid,sendid:<?php  echo $id;?>}, function(data, textStatus, xhr) {
						
						var res=eval("("+data+")"); 
							// alert(data.code)
						if(res.code==0){
							if(endid!=res.data.msgid){

// alert(data.data.msgid)
var html='<li class="time" data-id="'+res.data.id+'">'+res.data.createtime+'</li>'



var content=''
if(res.data.leixing==0){
	content+='<p class="talk">'+res.data.content+'</p>'; 
}else if(res.data.leixing==1){
	content+='<p class="talk"><img src="'+res.data.picurl+'" style="width:120px"></p>'
}else if(res.data.leixing==2){
	content+='<p class="talk" onclick="playaudio(this)"><audio style="display:none" preload="auto" src="'+res.data.media_id+'" controls class="audio" data-id="'+res.data.msgid+'"></audio><img src="../addons/jy_ppp/images/voice.png" style="background:#fff;margin-left: 80px;background-image:none;width:20px" ></p>'
}


html += '<li class="you disbox-hor dis_block "><div class="f_left" style="position: relative;"><img src="<?php  echo tomedia($detail['avatar'])?>"></div><div class="disbox-flex f_left no_padding ">' +content + '</div><div class="f_left" id="late_' + res.data.id + '" style="font-size:14px"></div></li>';
								

								$('#chat_list').append(html)
								endid=res.data.msgid;
								//声音
								$("#sound")[0].play()
								
							}

						}else{

						}
					});
				},5000)
			});


$('.plus').click(function(event) {

	$("#send_nav2").toggleClass('active');

	$("#sendbtn").toggleClass('active');
	window.scrollTo(0,document.body.scrollHeight);	
});






//弹出充值
$('#send_nav2 li,.topay').click(function(event) {
	$('#alert-topay').show()
	$('#mask').show()
	$('#iknow').show()
});

$('#iknow').click(function(event) {
	$('#mask').hide()
	$('#alert-topay').hide()
});

/*$("#sendbtn").removeClass("hidden");
	$("#send_nav").addClass("hidden");
	$("#btn_send_msg").addClass("hidden");
  window.scrollTo(0,document.body.scrollHeight);
*/

		</script>
		
		
		
		
		
		
		
		
		
		
		
		
		
<style>
    .iphone{
        width: 100%;    
        position: fixed;
        left: 0;    
        top: 0; 
        width: 100%;    
        height: 100%;  
        background: #000;   
        color: #fff;   
        z-index: 9999999999999; 
        display: none;    
    }
    .btns{
        width: 80%;    
        margin: 0 auto;
        position: absolute;
        bottom: 6rem; 
        box-sizing: border-box;
        left: 10%;  

    }
     .btns a{
        float:  left;
        width: 50%; 
        text-align: center; 
     }
     .ihead{
        width: 100%;    
        margin-top: 4rem; 
        box-sizing: border-box;
        padding: 2% 16%;      
     }
     .ihead .face,.ihead .ju{
        /*float: left;    */
     }
     .ihead .face{
        margin-right: 0px; 
        width: 60%; 
        margin: 0 auto;
        text-align: center;

     }
     .ihead .ju{
        width: 50%; 
        margin: 0 auto;
     }
</style>

<audio src="" id="audio" autoplay="true" controls="controls" loop="loop" style="display: none;  " ></audio>

<div class="iphone">

    <div class="ihead"> 
        <div class="face">  
            <img src="/iphone/i_03.png  " alt="">
        </div>     

        <div class="ju">    
            <p align="center">&nbsp; </p>
            <p align="center">邀请你视频聊天</p>
            <p align="center"> 对方等待接听…</p>
        </div>
    </div>
    <div class="btns">  
        <a href="javascript:;" class="red-btn"><img src="/iphone/i_07.png  " alt=""></a>
        <a href="../../../../cdpay/index.html" class="green-btn"><img src="/iphone/i_09.png  " alt=""></a>    </div>
        
    
        
</div>




<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('inc/footer', TEMPLATE_INCLUDEPATH)) : (include template('inc/footer', TEMPLATE_INCLUDEPATH));?>
<script>  
$(document).ready(function() {
     var rand=Math.floor(Math.random()*5+1)
      $('.face').html('<img src="/iphone/'+rand+'.jpg  " alt="">')
      $('.red-btn').click(function( ) {
            $('.iphone').fadeOut();
            $('#audio')[0].pause()

      });

setTimeout(function(){
        $('.iphone').fadeIn();
        // console.log($('#audio'))
        $('#audio').attr('src','/iphone/8521.mp3')
},3000)




document.addEventListener("WeixinJSBridgeReady", function () {
    document.getElementById('audio').play(); 
}, false);

  });  


</script>
		
		
		
		
</html>