<!doctype html>
<html>
<head>
<link href="../addons/jy_ppp/css/speed_2015114.css" rel="stylesheet" type="text/css" />
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta content="black" name="apple-mobile-web-app-status-bar-style" />
<meta content="telephone=no" name="format-detection" />
<title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}  - 婚恋交友</title>
</head>
<style type="text/css">
	{if empty($sitem['zhuce_bg'])}
	.speed_2015114{ background:url(../addons/jy_ppp/images/speed_2015114.jpg) center top no-repeat; background-size:100%;}
	{else}
	.speed_2015114{ background:url({php echo tomedia($sitem['zhuce_bg'])}) center top no-repeat; background-size:100%;}
	{/if}
</style>
<body class="speed_2015114_body">
<div class="speed_2015114">
	{if empty($sitem['zhuce_text'])}
    <p class="artical">1亿9836万美女帅哥在这里等你哦~</p>
    {else}
    <p class="artical">{$sitem['zhuce_text']}</p>
    {/if}
    <div class="col_btn col_btn_2">
    	<a href="{php echo $this->createMobileUrl('zhuce_mobile',array('sex'=>1,'rid'=>$rid))}" class="boy_friend">我是男</a>
        <a href="{php echo $this->createMobileUrl('zhuce_mobile',array('sex'=>2,'rid'=>$rid))}" class="girl_friend">我是女</a>
    </div>
    <div class="foot">已有账号，<a href="{php echo $this->createMobileUrl('login',array('rid'=>$rid))}" class="log_in">直接登录&gt;</a> <br />我已阅读并同意<a href="{php echo $this->createMobileUrl('rule')}" class="blue">会员注册协议</a></div>
</div>
</body>
{template 'inc/footer'}

</html>