<!doctype html>
<html lang="zh" class="pu">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="telephone=no" name="format-detection">
    <title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}婚恋交友</title>
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
    <h2>我关注的</h2>
    <div class="left" onClick="history.go(-1)">
        <i class="le_trg"></i>返回
    </div>
</nav>
<div class="content">
	<section class="herd_hello">
    <!-- 无人关注 -->
    {php $now=time();}
    {if empty($love)}
    <div >
        <div class="pro">一个人都还没有关注呢~<br />遇到合眼缘的人，可千万不要错过哦~</div>
        {if !empty($tuijian)}
        <div class="all_com">
            <h2 class="title">为你推荐</h2>
            <ol class="pto">
                {loop $tuijian $t}
                <a href="{php echo $this->createMobileUrl('detail',array('id'=>$t['id']))}"><li>
                    {if !empty($t['avatar'])}
                        <img src="{php echo tomedia($t['avatar'])}" />
                    {else}
                        {if $t['sex']==1}
                            <img src="../addons/jy_ppp/images/boy.png"/>
                        {else}
                            <img src="../addons/jy_ppp/images/girl.png"/>
                        {/if}
                    {/if}
                    <p>{$province[$t['province']]}  {if !empty($t['brith'])}
                        {php $birthday=$t['brith'];$month=0;if(date('m', $now)>date('m', $birthday))$month=1;if(date('m', $now)==date('m', $birthday))if(date('d', $now)>=date('d', $birthday))$month=1;$nianlin=date('Y', $now)-date('Y', $birthday)+$month;}
                        {$nianlin}岁{/if}</p>
                </li></a>
                {/loop}
            </ol>
            <div class="btn_box"><a class="btn" onClick="sayPeople(this)" data-id="{$zhaohu}">群打招呼</a></div>
        </div>
        {/if}
    </div>
    {else}
    <!-- 有关注 -->
    <!-- begin -->
    {loop $love $l}
    <ul class="disbox-hor user-list" data-id="{$l['id']}">
        <li class="foot-icon disbox-center"><a href="{php echo $this->createMobileUrl('detail',array('id'=>$l['attentid']))}">
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
        <li class="disbox-flex user_mession"><a href="{php echo $this->createMobileUrl('detail',array('id'=>$l['attentid']))}">
            <b class="tit">{$l['nicheng']}</b>
            <p class="bot">{if !empty($l['brith'])}
                    {php $birthday=$l['brith'];$month=0;if(date('m', $now)>date('m', $birthday))$month=1;if(date('m', $now)==date('m', $birthday))if(date('d', $now)>=date('d', $birthday))$month=1;$nianlin=date('Y', $now)-date('Y', $birthday)+$month;}
                    {$nianlin}岁·{/if}{$province[$l['province']]}{if !empty($l['height'])}·{$l['height']}cm{/if}</p>
        </a></li>
        <div class="right">{if empty($l['zh'])}<span class="hello" onClick="sayPeople2(this,{$l['attentid']})" >打招呼</span>{/if}{if !empty($l['zh'])}<span class="hello_out" >已打招呼</span>{/if}</div>
    </ul>
    {/loop}
    <!-- end -->
   {/if}

</section>
 {if count($love)>9}
        <div class="see_more" onClick="moreMsg(this)">点击查看更多</div>
    {/if}
        <div class="loading" >没有更多了</div>

</div>
</body>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/public.js"></script>
<script src="../addons/jy_ppp/js/waiting.js"></script>
<script>
function moreMsg(obj){
    var lastid=$(".disbox-hor:last").data("id");
    // alert(lastid);
    $.post("{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('mylove',array('op'=>'more')),2)}"+"&lastid="+lastid,function(data){
        if(data.status==1)
        {
            $(".herd_hello").append(data.log);
        }else if(data.status==2)
        {
            $(".herd_hello").append(data.log);
            $(".see_more").hide();
            $(".loading").show();
        }
        else
        {
            alert("网络出错，请重试!"+data);
        }
    },'json');
}

function sayPeople(obj){
    var str=$(obj).data("id");
    $.post("{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('mylove',array('op'=>'zhaohu')),2)}"+"&str="+str,function(data){
        if(data.status==1)
        {
            $(obj).removeClass("hello").addClass("hello_out").html("已打招呼");
            $.tips("招呼已发出，请耐心等待Ta的回复");
            $(".all_com").html('');
            $(".all_com").append(data.log);
        }
        else
        {
            alert("网络出错，请重试!");
        }
    },'json');
}

function sayPeople2(obj,id){
    $.post("{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('mylove',array('op'=>'zhaohu2')),2)}"+"&id="+id,function(data){
        if(data==1)
        {
            $(obj).removeClass("hello").addClass("hello_out").html("已打招呼");
            $.tips("招呼已发出，请耐心等待Ta的回复");
        }else if(data==2)
        {
            $(obj).removeClass("hello").addClass("hello_out").html("已打招呼");
            $.tips("你今天已经向Ta打过招呼了。");
        }
        else
        {
            alert("网络出错，请重试!");
        }
    });
}
</script>
{template 'inc/footer'}
</html>