<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="telephone=no" name="format-detection">
    <title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}  - 婚恋交友</title>
    <link href="../addons/jy_ppp/css/public_reset.css" rel="stylesheet" type="text/css" />
    <link href="../addons/jy_ppp/css/public.css" rel="stylesheet" type="text/css" />
    <link href="../addons/jy_ppp/css/public_headmessage.css" rel="stylesheet" type="text/css" />
    <link href="../addons/jy_ppp/css/black_report.css" rel="stylesheet" type="text/css" />
    <link href="../addons/jy_ppp/css/likely.css" rel="stylesheet" type="text/css" />
    <style>.txtAC{text-align:center}</style>
</head>
<body>
<div class="top_blank"></div>
<nav class="nav" style="position: absolute;">
    <h2>开通永久畅聊</h2>
    <a class="left" onClick="history.go(-1)">
        <i class="le_trg"></i>返回
    </a>
</nav>

<section class="report">
{if empty($sitem['chat'])}{php $sitem['chat']==20}{/if}
    <dl class="article">
        <dd class="txtAC">
            <a href="index_1.html">
                {if !empty($temp['avatar'])}
                    <img style="width: 120px;height: 145px;border-radius: 3px;" src="{php echo tomedia($temp['avatar'])}"/>
                {else}
                    {if $temp['sex']==1}
                    <img style="width: 120px;height: 145px;border-radius: 3px;" src="../addons/jy_ppp/images/boy.png"/>
                    {else}
                    <img style="width: 120px;height: 145px;border-radius: 3px;" src="../addons/jy_ppp/images/girl.png"/>
                    {/if}
                {/if}
            </a>
            <div>{$province[$temp['province']]} {$nianlin}岁</div>
        </dd>
        {if empty($sitem['unit'])}{php $sitem['unit']=='豆'}{/if}
        <dd class="txtAC">是否要用{$sitem['chat']}个{$sitem['unit']}与她开通聊天</dd>
    </dl>
    <span class="report_btn blue" onClick="toUseBi()">知道了，我要用{$sitem['unit']}</span>
</section>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/public.js"></script>
<script src="../addons/jy_ppp/js/waiting.js"></script>
<script>
function toUseBi(){
    $.ajax({url: "{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('xhdoubi',array('op'=>'xh','id'=>$id)),2);}", data: {}, dataType: 'text', type: 'post', success: function (re) {
        if (re == 1) {
            $.tips("你成功开通了与该用户的永久畅聊");
            setTimeout(function(){
                        window.location.href="{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('chat',array('id'=>$id)),2)}";
                    }, 1500);
        }else if (re == 2) {
            $.tips("你已经开通了与该用户的永久畅聊");
            setTimeout(function(){
                        window.location.href="{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('chat',array('id'=>$id)),2)}";
                    }, 1500);
        }else if (re == 3) {
            $.tips("你余额不足，无法开通永久畅聊");
        } else {
            $.tips("网络问题,请稍后重试"+re);
        }
    }, error: function () {
        $.tips("网络问题,请稍后重试");
    }
    });
}
</script>
{template 'inc/footer'}
</body>
</html>