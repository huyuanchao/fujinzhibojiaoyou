<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="telephone=no" name="format-detection">
<title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}  - 婚恋交友</title>
<link href="../addons/jy_ppp/css/public_reset.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/public.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/public_disbox.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/user-list.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/vip_center.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="top_blank">
</div>
<nav class="nav" style="position: absolute;">
<h2>会员中心</h2>
<a class="left" onClick="history.go(-1)">
    <i class="le_trg"></i>返回
</a>
</nav>
<div class="content">
    <p class="pink" style="text-align: center;line-height: 30px">
        <b style="font-size: 20px">【让你轻松谈恋爱】</b><br/><br/>
        <!-- <a style="float: right;font-size: 0.8em" href="../addons/jy_ppp/huafei.html">领取话费&gt;&gt;</a> -->
    </p>
    <div style="clear: both">
    </div>
    <section class="member_center ">
    <a href="{php echo $this->createMobileUrl('doubi')}">
    <ul class="disbox-hor user-list" >
        <li class="foot-icon disbox-center"><img src="../addons/jy_ppp/images/doubi.png"/></li>
        <li class="disbox-flex user_mession">
        {if empty($sitem['doubi'])}{php $sitem['doubi']=='豆币'}{/if}
        <b class="tit">{$sitem['doubi']}：
        <span class="pink">{if !empty($member['credit'])}{$member['credit']}{else}0{/if}</span>
        </b>
        <p class="bot">
            可换取一个用户终身交流机会
        </p>
        </li>
        <li class="disbox-center">
        <div class="re_trg">
        </div>
        </li>
    </ul>
    </a>
    <a href="{php echo $this->createMobileUrl('baoyue')}">
    <ul class="disbox-hor user-list" >
        <li class="foot-icon disbox-center"><img src="../addons/jy_ppp/images/xiexin.png"/></li>
        <li class="disbox-flex user_mession">
        <b class="tit">写信包月：
        {if empty($baoyue)}
        <span class="pink">未开通</span>
        {else}
        <span class="pink">{$baoyue}天</span>
        {/if}
        </b>
        <p class="bot">
            服务无限量给所有心仪MM发信聊天
        </p>
        </li>
        <li class="disbox-center">
        <div class="re_trg">
        </div>
        </li>
    </ul>
    </a>
    </section>
</div>
</body>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/public.js"></script>
{template 'inc/footer'}
</html>