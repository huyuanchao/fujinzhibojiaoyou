<!Doctype html>
<html>
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}</title>
<link rel="stylesheet" href="../addons/jy_ppp/css/common2.css">
<style>
.conDiv{width: 100%;margin: 0 auto;max-width: 640px;background-color: #fff}
.conLeft{padding: 10px}
.leftDiv{width: 75%}
.leftDiv>img{width: 60px;height: 60px;border-radius: 5px}
.leftDiv>div{margin:5px 0}
.rightDiv{width: 23%;margin-top: 20px}
.rightDiv>a{padding: 5px 10px;border: 1px solid #f55a8e;color:#f55a8e;border-radius: 5px}
.tipDiv{width: 100%;padding: 10px 0;background-color: #f8f6f7}
.tipDiv>a{width: 49%;display: inline-block;color: #000}
.tipDiv>a:first-child{border-right:1px solid #f55a8e}
.addUser{position: fixed;bottom: 60px;width: 100%;text-align: center;max-width: 640px}
.addUser>a{border: 1px solid #f55a8e;padding: 5px 15px;color: #fff;background-color: #f55a8e;border-radius: 15px}
@media screen and (max-width: 320px){
	.leftDiv>div{width: 60%}
}
@media screen and (min-width: 321px){
	.leftDiv>div{width: 70%}
}
@media screen and (min-width: 500px){
	.leftDiv>div{width: 80%}
	.leftDiv{padding-left: 10px}
}
</style>
</head>

<body>
<div class="bodybox">
    <div class="selectedDiv">
        <a href="{php echo $this->createMobileUrl('dycenter')}" class="rBor black"><img style="width:22px" src="../addons/jy_ppp/images/main.png"><span>主页</span></a>
        <a href="{php echo $this->createMobileUrl('dy_user')}" class="rBor mainColor"><img src="../addons/jy_ppp/images/user.png"><span>用户</span></a>
        <a href="{php echo $this->createMobileUrl('dy_msg')}" class="rBor black"><img src="../addons/jy_ppp/images/msg.png"><span>消息</span></a>
        <a href="{php echo $this->createMobileUrl('dy_man')}" class="black"><img src="../addons/jy_ppp/images/manager.png"><span>管理</span></a>
    </div>

    <div class="head mainBg">
        <!-- <a href="javascript:history.go(-1)" class="bn pull-left"><img class="icon" src="../addons/jy_ppp/images/back.png"></a> -->
        <div class="title">虚拟用户</div>
        <!-- <a href="#" class="bn pull-right"><img class="icon" src="../addons/jy_ppp/images/ren.png"/></a> -->
    </div>
	<div class="topZhan"></div>
	<!-- begin -->
	{php $now=time();}
	{loop $xuni $x}
		<div class="conDiv">
			<div class="ovfl conLeft">
				<div class="floL leftDiv">
					{if !empty($x['avatar'])}
                        <img class="floL" src="{php echo tomedia($x['avatar'])}"/>
                    {else}
                        {if $x['sex']==1}
                        <img class="floL" src="../addons/jy_ppp/images/boy.png"/>
                        {else}
                        <img class="floL" src="../addons/jy_ppp/images/girl.png"/>
                        {/if}
                    {/if}
					<div class="floR nowrap mainColor">{$x['nicheng']}</div>
					<div class="floR nowrap mainColor">{if !empty($x['brith'])}
                {php $birthday=$x['brith'];$month=0;if(date('m', $now)>date('m', $birthday))$month=1;if(date('m', $now)==date('m', $birthday))if(date('d', $now)>=date('d', $birthday))$month=1;$nianlin=date('Y', $now)-date('Y', $birthday)+$month;}{$nianlin}岁{/if} {$province[$x['province']]}</div>
				</div>
				<div class="floR rightDiv txtAC"><a href="{php echo $this->createMobileUrl('geren',array('xuniid'=>$x['id']))}">编辑</a></div>
			</div>
			<div class="ovfl tipDiv">
				<a href="{php echo $this->createMobileUrl('dy_msg',array('userid'=>$x['id']))}" class="floL txtAC">未读消息:{if !empty($x['weidunum'])}{$x['weidunum']}{else}0{/if}</a>
				<a href="{php echo $this->createMobileUrl('dy_man',array('userid'=>$x['id']))}" class="floL txtAC">关注用户:{if !empty($x['attentnum'])}{$x['attentnum']}{else}0{/if}</a>
			</div>
			<div class="zhanCol"></div>
		</div>
	{/loop}
	<!-- end -->

    <div class="zhanwei"></div>
    <div class="addUser"><a href="{php echo $this->createMobileUrl('dy_add')}">添加用户</a></div>
</div>

</body>
{template 'inc/footer'}
</html>