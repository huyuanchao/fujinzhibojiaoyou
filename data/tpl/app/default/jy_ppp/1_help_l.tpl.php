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
<link href="../addons/jy_ppp/css/foot.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="min_nav"><div>
    <h2 class="title">{$item['name']}</h2>
    <a class="reture" onClick="history.go(-1)">
        <i class="le_trg"></i>
        <span class="but">返回</span>
    </a></div>
</div>
<section class="honest set_center">
{loop $list $l}
<div class="pd_Box">
    <ul class="disbox-hor user-list">
        <li class="disbox-flex user_mession">
        <a href="{php echo $this->createMobileUrl('help_d',array('id'=>$l['id']))}"><p class="tit">{$l['name']}</p></a>
        </li>
        <li class="disbox-center pink">
        <div class="re_trg">
        </div>
        </li>
    </ul>
</div>
{/loop}
<div class="pd_Box">
    <ul class="disbox-hor user-list">
        <li class="disbox-flex user_mession">
        <a href="{php echo $this->createMobileUrl('feedback')}"><p class="tit">
            在线提问
        </p></a>
        </li>
        <li class="disbox-center pink">
        <div class="re_trg">
        </div>
        </li>
    </ul>
</div>
</section>
{template footer}
</body>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/public.js"></script>
{template 'inc/footer'}
</html>