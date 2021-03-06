<!doctype html>
<html lang="zh" class="pu">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="telephone=no" name="format-detection">
    <title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}  - 婚恋交友</title>

    <link href="../addons/jy_ppp/css/public_reset.css" rel="stylesheet" type="text/css" />
    <link href="../addons/jy_ppp/css/public.css" rel="stylesheet" type="text/css" />
    <link href="../addons/jy_ppp/css/public_disbox.css" rel="stylesheet" type="text/css" />
    <link href="../addons/jy_ppp/css/public_headmessage.css" rel="stylesheet" type="text/css" />
    <link href="../addons/jy_ppp/css/user-list.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        a>.user-list>li.foot-icon>img{width: 50px;max-height: 61px;border-radius: 3px;}
    </style>
</head>
<body>
<div class="top_blank"></div>
<nav class="nav">
    <h2>最近联系人</h2>
    <div class="left" onClick="history.go(-1)">
        <i class="le_trg"></i>返回
    </div>
</nav>

<div class="content">
    <div id="visitor_list">
        {php $now=time();}
        {loop $lianxi $l}
            <a href="{php echo $this->createMobileUrl('chat',array('id'=>$l['mid']))}"><ul class="disbox-hor user-list"  data-id="{$l['id']}">
                <li class="foot-icon disbox-center">
                    {if !empty($l['avatar'])}
                        <img src="{php echo tomedia($l['avatar'])}">
                    {else}
                        {if $l['sex']==1}
                            <img src="../addons/jy_ppp/images/boy.png"/>
                        {else}
                            <img src="../addons/jy_ppp/images/girl.png"/>
                        {/if}
                    {/if}
                </li>
                <li class="disbox-flex user_mession">
                    <b class="tit">{$l['nicheng']}</b>
                    <p class="bot">
                        {if !empty($l['brith'])}
                        {php $birthday=$l['brith'];$month=0;if(date('m', $now)>date('m', $birthday))$month=1;if(date('m', $now)==date('m', $birthday))if(date('d', $now)>=date('d', $birthday))$month=1;$nianlin=date('Y', $now)-date('Y', $birthday)+$month;}
                        {$nianlin}岁·{/if}{$province[$l['province']]}{if !empty($l['height'])}·{$l['height']}cm{/if}
                    </p>
                </li>
                <div class="right"><span class="hello">聊天</span></div>
            </ul></a>
        {/loop}
    </div>
    {if count($visit)>9}
        <div class="see_more" onClick="moreMsg(this)">点击查看更多</div>
    {/if}
        <div class="loading" >没有更多了</div>
</div>


    <script src="../addons/jy_ppp/js/zepto.min.js"></script>
    <script src="../addons/jy_ppp/js/public.js"></script>
    <!--<script src="../addons/jy_ppp/js/loading_more.js"></script>-->
    <script>
        function moreMsg(obj){
            var lastid=$(".disbox-hor:last").data("id");
            $.post("{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('lianxi',array('op'=>'more')),2)}"+"&lastid="+lastid,function(data){
                if(data.status==1)
                {
                    $("#visitor_list").append(data.log);
                }else if(data.status==2)
                {
                    $("#visitor_list").append(data.log);
                    $(".see_more").hide();
                    $(".loading").show();
                }
                else
                {
                    alert("网络出错，请重试!");
                }
            },'json');
        }
    </script>
</body>
{template 'inc/footer'}
</html>