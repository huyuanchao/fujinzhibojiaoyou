<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="telephone=no" name="format-detection">
<title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}  -婚恋交友</title>
<link href="../addons/jy_ppp/css/common.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/new_safety_center.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/foot.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div id="nav1" class="min_nav"><div>
	<h2 class="title">{$parent['name']}</h2>
	<a class="reture" onClick="history.go(-1)">
		<i class="le_trg"></i>
		<span class="but">返回</span>
	</a></div>
</div>
<section class="safety_center safety_center_2">
<div id="div1" class="set_Box">
	<h2 class="List_top">{$item['name']}</h2>
	<div class="mate_Detial">
		<p class="mate">
			{php echo htmlspecialchars_decode($item['description'])}
		</p>
	</div>
</div>
{if !empty($list)}
	{if $qt==1}
	<div class="set_Box">
	    <h2 class="List_top">其他</h2>
	    <ul class="List List_colone">
	    	{loop $list $l}
	        <li><a href="{php echo $this->createMobileUrl('safe_d',array('id'=>$l['id']))}">{$l['name']}</a></li>
	        {/loop}
	    </ul>
	</div>
	{else}
	<div id="div3" class="set_Box">
		<h2 class="List_top">其他{$parent['name']}</h2>
		<ul class="List">
		{php $i=0;}
			{loop $list $l}
			{if $i==0}
			<li>
			{/if}
			<a href="{php echo $this->createMobileUrl('safe_l',array('id'=>$l['id']))}">{$l['name']}</a>
			{php $i=$i+1;}
			{if $i==2}
			</li>
			{php $i=0;}
			{/if}
			{/loop}
		</ul>
	</div>
	{/if}
{/if}
<a href="{php echo $this->createMobileUrl('safe')}" class="see_more">返回安全中心</a>
</section>
{template footer}
</body>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/public.js"></script>
<script src="../addons/jy_ppp/js/safety_center_four.js"></script>
{template 'inc/footer'}
</html>