<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="telephone=no" name="format-detection">
<title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}  - 靠谱婚恋交友</title>
<link href="../addons/jy_ppp/css/public_reset.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/public.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/public_disbox.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/write_msg.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/new_Chat.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/face.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/voice.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/common_alert.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/bottom_call.css" rel="stylesheet" type="text/css" />
<style type="text/css">
    .app-follow2{position:absolute;bottom:100px;width: 100%;max-width: 480px;right: 0;left: 0;z-index:9999;text-align:right;margin: 0 auto;
      -moz-animation: scale-animation 1s linear;     /* Firefox */
      -webkit-animation: scale-animation 1s linear;     /* Safari 和 Chrome */
      -o-animation: scale-animation 1s linear;     /* Opera */
      animation: scale-animation 1s linear;
      -webkit-animation-fill-mode: forwards;
      -moz-animation-iteration-count: infinite;
      -webkit-animation-iteration-count: infinite;
      -o-animation-iteration-count: infinite;
      animation-iteration-count: infinite;
    }
    .app-follow a{margin: 0 auto;text-align:right;}
    .app-follow2 img{width:45px;margin-right:25px;}


    @keyframes scale-animation{0%{-ms-transform:scale(1);-moz-transform:scale(1);-webkit-transform:scale(1);-o-transform:scale(1);transform:scale(1)}
    50%{-ms-transform:scale(1.05);-moz-transform:scale(1.05);-webkit-transform:scale(1.05);-o-transform:scale(1.05);transform:scale(1.05)}
    100%{-ms-transform:scale(1);-moz-transform:scale(1);-webkit-transform:scale(1);-o-transform:scale(1);transform:scale(1)}
    }
    @-moz-keyframes scale-animation{0%{-ms-transform:scale(1);-moz-transform:scale(1);-webkit-transform:scale(1);-o-transform:scale(1);transform:scale(1)}
    50%{-ms-transform:scale(1.05);-moz-transform:scale(1.05);-webkit-transform:scale(1.05);-o-transform:scale(1.05);transform:scale(1.05)}
    100%{-ms-transform:scale(1);-moz-transform:scale(1);-webkit-transform:scale(1);-o-transform:scale(1);transform:scale(1)}
    }
    @-webkit-keyframes scale-animation{0%{-ms-transform:scale(1);-moz-transform:scale(1);-webkit-transform:scale(1);-o-transform:scale(1);transform:scale(1)}
    50%{-ms-transform:scale(1.05);-moz-transform:scale(1.05);-webkit-transform:scale(1.05);-o-transform:scale(1.05);transform:scale(1.05)}
    100%{-ms-transform:scale(1);-moz-transform:scale(1);-webkit-transform:scale(1);-o-transform:scale(1);transform:scale(1)}
    }
    @-o-keyframes scale-animation{0%{-ms-transform:scale(1);-moz-transform:scale(1);-webkit-transform:scale(1);-o-transform:scale(1);transform:scale(1)}
    50%{-ms-transform:scale(1.05);-moz-transform:scale(1.05);-webkit-transform:scale(1.05);-o-transform:scale(1.05);transform:scale(1.05)}
    100%{-ms-transform:scale(1);-moz-transform:scale(1);-webkit-transform:scale(1);-o-transform:scale(1);transform:scale(1)}
    }
</style>
</head>
<body>
<div class="top_blank">
</div>
<div id="chat_nav" class="nav" style="position: absolute;">
	<h2 class="title" id="title_nav">{$detail['nicheng']}</h2>
	<a class="left" href="javascript:history.go(-1)">
		<i class="le_trg"></i>返回
	</a>
</div>
<div id="chat_detail" class="content">

	{if !empty($id)}
		<a style="display:block" href="javascript:void(0)"><dl class="Material">
			<dt>
				{if !empty($detail['avatar'])}
                      <img src="{php echo tomedia($detail['avatar'])}" />
                  {else}
                      {if $detail['sex']==1}
                          <img src="../addons/jy_ppp/images/boy.png"/>
                      {else}
                          <img src="../addons/jy_ppp/images/girl.png"/>
                      {/if}
                  {/if}
			</dt>
			<dd>
			{php $now=time();}
			<p class="nick_name">
				{if !empty($detail['brith'])}
                    {php $birthday=$detail['brith'];$month=0;if(date('m', $now)>date('m', $birthday))$month=1;if(date('m', $now)==date('m', $birthday))if(date('d', $now)>=date('d', $birthday))$month=1;$nianlin=date('Y', $now)-date('Y', $birthday)+$month;}
                    {$nianlin}岁·{/if}{$province[$detail['province']]}{if !empty($detail['height'])}·{$detail['height']}cm{/if}
			</p>
			<p class="info">
				{if !empty($detail['marriage'])}{$detail['marriage']}{/if} {if !empty($detail['income'])}{$detail['income']}{/if}
			</p>
			<p>
				{if !empty($detail['mobile_auth'])}
				<span data-value="phone" class="phone ">手机认证</span>
				{else}
				<span data-value="phone" class="phone noCheck">手机认证</span>
				{/if}
				{if !empty($detail['card_auth'])}
				<span data-value="identity" class="identity">身份认证</span>
				{else}
				<span data-value="identity" class="identity noCheck">身份认证</span>
				{/if}
			</p>
			</dd>
		</dl></a>
	{/if}
	{if count($list)>2}
	<div class="chat_record" id="see_more_record">
		<span>更多聊天记录</span>
	</div>
	{/if}
	<ul id="chat_list" class="chatList">
		{loop $list $l}
			<li class="time" data-id="{$l['id']}">{php echo date('Y-m-d G:i',$l['createtime'])}</li>
			{if $l['sendid']==$xinxi['mid']}
			<li class="me disbox-hor dis_block">
			<div class="f_right" style="position: relative;">
                   <img src="{php echo tomedia($avatar)}">
			</div>
			<div class="disbox-flex f_right no_padding">
				<p class="talk">{$l['content']}</p>
			</div>
			<div class="f_right"></div>
			</li>
			{else}
			<li class="you disbox-hor dis_block ">
			<div class="f_left" style="position: relative;">
				{if $l['sendid']==0}
					{if !empty($sitem['adminthumb'])}
	                <img src="{php echo tomedia($sitem['adminthumb'])}">
	                {else}
	                <img src="../addons/jy_ppp/images/adminthumb.png">
	                {/if}
	            {else}
					{if !empty($detail['avatar'])}
	                    <img src="{php echo tomedia($detail['avatar'])}">
	                {else}
	                    {if $detail['sex']==1}
	                        <img src="../addons/jy_ppp/images/boy.png"/>
	                    {else}
	                        <img src="../addons/jy_ppp/images/girl.png"/>
	                    {/if}
	                {/if}
				{/if}
			</div>
			<div class="disbox-flex f_left no_padding ">
				{if $l['leixing']==2}
				<p class="talk" onClick="playaudio(this)">
				{else}
				<p class="talk">
				{/if}
					{if $l['leixing']==0}{$l['content']}{/if}
					{if $l['leixing']==1}<img src="{$l['picurl']}" style="width:120px"> {/if}
					{if $l['leixing']==2}<audio style="display:none" preload="auto" src="{$l['media_id']}" controls class="audio"></audio><img src="../addons/jy_ppp/images/voice.png" style="background:#fff;margin-left: 80px;background-image:none;width:20px" >{/if}
				</p>
			</div>
			<div class="f_left"></div>
			</li>
			{/if}
		{/loop}
	</ul>
</div>

<div style="height:80px"></div>

<div class="send_out" id="sendbtn"><div>
    <ul>
        <li><textarea type="text"></textarea>
            <span class="provide hidden">0/240字</span></li>
        <li><button style="transform-origin: 0px 0px 0px; opacity: 1; transform: scale(1, 1);">发送</button></li>
    </ul>
</div></div>

<div id="send_nav" class="nav hidden" style="z-index: 9999">
    <h2 class="title">发消息</h2>
    <div class="left" id="send_cancel">取消</div>
    <div class="right" id="send_ok">
        <span id="btnSendMsg" class="send_btn">发送</span>
    </div>
</div>



<div id="btn_send_msg" class="talk_box hidden"><div>
    <ul>
        <li><textarea type="text" id="talk_area"></textarea>
        <span class="provide" id="provide">0/240字</span></li>
    </ul>
    <div class="face_icon">
        <div class="smile" data-exp=""></div>
        <ul class="face" id="face">
        <li data-express="害羞"><i class="icon face_2"></i></li><li data-express="喜欢"><i class="icon face_3"></i></li><li data-express="快哭了"><i class="icon face_4"></i></li><li data-express="爱心"><i class="icon face_5"></i></li><li data-express="擦汗"><i class="icon face_6"></i></li><li data-express="愤怒"><i class="icon face_7"></i></li><li data-express="可爱"><i class="icon face_8"></i></li><li data-express="小可怜"><i class="icon face_9"></i></li><li data-express="尴尬"><i class="icon face_10"></i></li><li data-express="红唇"><i class="icon face_12"></i></li><li data-express="难过"><i class="icon face_13"></i></li><li data-express="亲亲"><i class="icon face_14"></i></li><li data-express="委屈"><i class="icon face_15"></i></li><li data-express="疑惑"><i class="icon face_16"></i></li><li data-express="拥抱"><i class="icon face_17"></i></li><li data-express="再见"><i class="icon face_18"></i></li><li data-express="咖啡"><i class="icon face_19"></i></li><li data-express="礼物"><i class="icon face_20"></i></li><li data-express="玫瑰"><i class="icon face_21"></i></li></ul>
    </div>
</div>

</div>
<div class="app-follow2" >
    <a href="{php echo $this->createMobileUrl('dy_user')}"><img style="background: none" src="../addons/jy_ppp/images/sudu.png" /></a>
</div>

</body>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/public.js"></script>
<script src="../addons/jy_ppp/js/waiting.js"></script>
<script src="../addons/jy_ppp/js/expression.js"></script>
<script>

	function playaudio(obj){
		var audio=$(obj).find('.audio')[0];
		audio.play();
	}

function sendMsg(time,str){
	$("#chat_list").append('<li class="time">'+time+'</li>\
		<li class="me disbox-hor dis_block">\
		<div class="f_right" style="position: relative;">\
			<img src="{php echo tomedia($avatar)}"/>\
		</div>\
		<div class="disbox-flex f_right no_padding">\
			<p class="talk">'+str+'</p>\
		</div>\
		<div class="f_right"></div>\
	</li>');
}

$("#see_more_record").bind('click',function(){
	var str = $("#chat_list").find(".time").eq(0).data("id");
	$.ajax({url: "{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('dy_chat',array('op'=>'more','id'=>$id)),2);}", data: {lastid:str}, dataType: 'json', type: 'post', success: function (re) {
          if (re.status == 1) {
          	  $("#chat_list").prepend(re.log);
          	  Expression.replaceHtml($('#chat_list'));
          }
          else if (re.status == 2) {
          	  $("#chat_list").prepend(re.log);
          	  $("#see_more_record").hide();
          	  Expression.replaceHtml($('#chat_list'));
          }else {
              $.tips("网络问题,请稍后重试");
          }
      }, error: function () {
          $.tips("网络问题,请稍后重试");
      }
      });

});

// 发送按钮
$("#btnSendMsg").bind("click",function(){
	var str = $('#talk_area').val();
	{if !empty($id)}
	$.ajax({url: "{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('dy_chat',array('op'=>'ans2','id'=>$id)),2);}", data: {str:str}, dataType: 'json', type: 'post', success: function (re) {
	{else}
	$.ajax({url: "{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('dy_chat',array('op'=>'ans2','sendid'=>$_GPC['sendid'],'mid'=>$_GPC['mid'])),2);}", data: {str:str}, dataType: 'json', type: 'post', success: function (re) {
	{/if}
          if (re.status == 1) {
          	  sendMsg(re.time,str);

			  $("#send_cancel").click();
			  Expression.replaceHtml($('#chat_list'));
          }else {
              $.tips("网络问题,请稍后重试");
          }
      }, error: function () {
          $.tips("网络问题,请稍后重试");
      }
      });

	// ajax-----
});
$("#sendbtn").bind("click", function(){
	$(this).addClass("hidden");
	$("#send_nav").removeClass("hidden");
	$("#btn_send_msg").removeClass("hidden");
	$('textarea').val('').focus();
	window.scrollTo(0,document.body.scrollHeight);
});
$("#send_cancel").bind("click",function(){
	$("#sendbtn").removeClass("hidden");
	$("#send_nav").addClass("hidden");
	$("#btn_send_msg").addClass("hidden");
  window.scrollTo(0,document.body.scrollHeight);
});

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
{template 'inc/footer'}
</html>