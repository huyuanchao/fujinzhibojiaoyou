<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="telephone=no" name="format-detection">
<title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}  - 婚恋交友</title>
<link href="../addons/jy_ppp/css/common.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/new_safety_center.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/foot.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="min_nav"><div>
    <h2 class="title">{$item['name']}</h2>
    <div class="reture" onClick="history.go(-1)">
        <i class="le_trg"></i>
        <span class="but">返回</span>
    </div></div>
</div>
<section class="safety_center safety_center_3">
<div class="set_Box">
    <h2 class="List_top">{$item['name']}</h2>
    <ul class="List List_colone">
        {loop $list $l}
        <li><a href="{php echo $this->createMobileUrl('safe_d',array('id'=>$l['id']))}">{$l['name']}</a></li>
        {/loop}
    </ul>
</div>
</section>
{template footer}
</body>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/public.js"></script>
{template 'inc/footer'}
</html>