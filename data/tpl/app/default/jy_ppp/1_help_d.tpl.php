<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="telephone=no" name="format-detection">
<title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}  - 靠谱婚恋交友</title>
<link href="../addons/jy_ppp/css/common.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/new_helpRecharge.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/foot.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="min_nav"><div>
    <h2 class="title">{$item['pname']}</h2>
    <a class="reture" onClick="history.go(-1)">
        <i class="le_trg"></i>
        <span class="but">返回</span>
    </a></div>
</div>
<section class="honest honest_05">
<ul class="test_box">
    <li>{$item['name']}</li>
    <li>
    <p>
         {$item['description']}
    </p>
    </li>
</ul>
<div class="bottom_num">
    <p>
        如果您仍有其他疑问，可在线提问，管理员24小时内为您答疑
    </p>
</div>
<a class="see_more" href="{php echo $this->createMobileUrl('feedback')}">在线提问</a>
{if !empty($sitem['tel']) || !empty($sitem['kftime'])}
<div class="bottom_num">
    {if !empty($sitem['tel'])}
    <p>
        致电客服：
        <a class='blue' href="tel:{$sitem['tel']}">{$sitem['tel']}</a></a>
    </p>
    {/if}
    {if !empty($sitem['kftime'])}
    <p>
        客服工作时间：{$sitem['kftime']}
    </p>
    {/if}
</div>
{/if}
</section>
{template footer}
</body>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/public.js"></script>
{template 'inc/footer'}
</html>