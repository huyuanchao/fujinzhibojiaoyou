<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="telephone=no" name="format-detection">
<title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}  - 靠谱婚恋交友</title>
<link href="../addons/jy_ppp/css/common.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/new_surviceRecharge.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="min_nav"><div>
    <h2 class="title">帮助中心</h2>
    <a class="reture" href="{php echo $this->createMobileUrl('geren')}">
        <i class="le_trg"></i>
        <span class="but">返回</span>
    </a></div>
</div>
<div class="bodybox">
<section class="honest set_center">
{loop $list $item}
<div class="pd_Box">
    <ul class="disbox-hor user-list">
        <li class="disbox-flex user_mession">
        <a href="{php echo $this->createMobileUrl('help_l',array('id'=>$item['id']))}"><p class="tit">{$item['name']}</p></a>
        </li>
        <li class="disbox-center pink">
        <div class="re_trg">
        </div>
        </li>
    </ul>
</div>
{/loop}

</section>
</div>
</body>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/public.js"></script>
{if $weixin==1}
    <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
    {php $signPackage=$_W['account']['jssdkconfig'];}
    <script>

        var appid = '{$_W['account']['jssdkconfig']['appId']}';
        var timestamp = '{$_W['account']['jssdkconfig']['timestamp']}';
        var nonceStr = '{$_W['account']['jssdkconfig']['nonceStr']}';
        var signature = '{$_W['account']['jssdkconfig']['signature']}';

        wx.config({
            debug: false,
            appId: appid,
            timestamp: timestamp,
            nonceStr: nonceStr,
            signature: signature,
            jsApiList: ['checkJsApi','onMenuShareTimeline','onMenuShareAppMessage','onMenuShareQQ','onMenuShareWeibo']
        });
    </script>
    <script type="text/javascript">
        var params = {
            {if empty($sitem['sharetitle'])}
            title:"有缘网",
            {else}
            title: "{$sitem['sharetitle']}",
            {/if}
            {if empty($sitem['sharedesc'])}
            desc: "有缘网!",
            {else}
            desc: "{$sitem['sharedesc']}",
            {/if}
            link: "{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('index'),2)}",
            {if empty($sitem['sharelogo'])}
            imgUrl: "{$_W['siteroot']}addons/jy_ppp/icon.jpg",
            {else}
            imgUrl: "{$_W['attachurl']}{$sitem['sharelogo']}",
            {/if}
        };
        wx.ready(function () {
            wx.showOptionMenu();
            wx.onMenuShareAppMessage.call(this, params);
            wx.onMenuShareTimeline.call(this, params);
        });
    </script>
    {/if}
</html>