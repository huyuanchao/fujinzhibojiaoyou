<!doctype html>
<html lang="zh" class="pu">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="telephone=no" name="format-detection">
    <title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}  - 靠谱婚恋交友</title>
    <link href="../addons/jy_ppp/css/public_reset.css" rel="stylesheet"/>
    <link href="../addons/jy_ppp/css/public.css" rel="stylesheet"/>
    <link href="../addons/jy_ppp/css/public_disbox.css" rel="stylesheet"/>
    <link href="../addons/jy_ppp/css/public_headmessage.css" rel="stylesheet"/>
    <link href="../addons/jy_ppp/css/user-list.css" rel="stylesheet"/>
    <link href="../addons/jy_ppp/css/herd_hello.css" rel="stylesheet"/>
</head>
<body>
<div class="top_blank"></div>
<nav class="nav">
    <h2>黑名单</h2>
    <div class="left" onClick="history.go(-1)">
        <i class="le_trg"></i>返回
    </div>
</nav>
<div class="content">
	<section class="herd_hello">
    <!-- 无人关注 -->
    {php $now=time();}
    <!-- 有关注 -->
    <!-- begin -->
    {loop $black $l}
    <ul class="disbox-hor user-list" data-id="{$l['id']}">
        <li class="foot-icon disbox-center"><a href="{php echo $this->createMobileUrl('detail',array('id'=>$l['blackid']))}">
            {if !empty($l['avatar'])}
                <img src="{php echo tomedia($l['avatar'])}" />
            {else}
                {if $l['sex']==1}
                    <img src="../addons/jy_ppp/images/boy.png"/>
                {else}
                    <img src="../addons/jy_ppp/images/girl.png"/>
                {/if}
            {/if}
        </a></li>
        <li class="disbox-flex user_mession"><a href="{php echo $this->createMobileUrl('detail',array('id'=>$l['blackid']))}">
            <b class="tit">{$l['nicheng']}</b>
            <p class="bot">{if !empty($l['brith'])}
                    {php $birthday=$l['brith'];$month=0;if(date('m', $now)>date('m', $birthday))$month=1;if(date('m', $now)==date('m', $birthday))if(date('d', $now)>=date('d', $birthday))$month=1;$nianlin=date('Y', $now)-date('Y', $birthday)+$month;}
                    {$nianlin}岁·{/if}{$province[$l['province']]}{if !empty($l['height'])}·{$l['height']}cm{/if}</p>
        </a></li>
        <div class="right"><span class="hello" onClick="removeObj(this,event,{$l['id']})" >移除</span></div>
    </ul>
    {/loop}
    <!-- end -->
</section>

</div>
</body>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/public.js"></script>
<script src="../addons/jy_ppp/js/waiting.js"></script>
<script>

function removeObj(obj,event,id){
    if(event.target == obj){
        // ajax
        $.post("{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('myblack',array('op'=>'move')),2)}"+"&id="+id,function(data){
            if(data==1)
            {
                $(obj).parent().parent().parent().remove();
            }
            else
            {
                alert("网络出错，请重试!");
            }
        });
    }

}
</script>
{template 'inc/footer'}
</html>