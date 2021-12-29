<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="telephone=no" name="format-detection">
    <title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}  - www.niumawu.com 牛码屋源码网</title>

        <link href="../addons/jy_ppp/css/public_reset.css" rel="stylesheet" type="text/css" />
        <link href="../addons/jy_ppp/css/public.css" rel="stylesheet" type="text/css" />
        <link href="../addons/jy_ppp/css/pay_intercept.css" rel="stylesheet" type="text/css" />
        <link href="../addons/jy_ppp/css/swiper.min.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../addons/jy_ppp/js/swiper.min.js"></script>
</head>
<body>
<div class="top_blank"></div>
<nav class="nav" style="position: absolute;">
    <h2>充值</h2>

    <div class="left" onClick="history.go(-1)">
        <i class="le_trg"></i>返回
    </div>
</nav>
{if !empty($sitem['huafei']) && !empty($sitem['huafei_thumb'])}
<img src="{php echo tomedia($sitem['huafei_thumb'])}" style="width:100%">
{/if}
<div class="content">
    <section data-type="baoyue">
        <div class="box-shadow">
            {if empty($category)}
                {if $weixin==1}
                <a href="{php echo $this->createMobileUrl('pay',array('op'=>'baoyue','fee'=>100))}"><ul class="click_op" style="margin:0">
                {else}
                <a href="{php echo $this->createMobileUrl('pcpay',array('op'=>'baoyue','fee'=>100))}"><ul class="click_op" style="margin:0">
                {/if}
                    <li>
                        <p class="tit blue"><label style="width:100px">90天</label><span>￥100</span><span></span></p>
                    </li>
                    <li style="color:#52A4CA">购买<i class="re_trg"></i></li>
                </ul></a>
                {if $weixin==1}
                <a href="{php echo $this->createMobileUrl('pay',array('op'=>'baoyue','fee'=>50))}"><ul class="click_op" style="margin:0">
                {else}
                <a href="{php echo $this->createMobileUrl('pcpay',array('op'=>'baoyue','fee'=>50))}"><ul class="click_op" style="margin:0">
                {/if}
                    <li>
                        <p class="tit blue"><label style="width:100px">30天</label><span>￥50</span></p>
                    </li>
                    <li style="color:#52A4CA">购买<i class="re_trg"></i></li>
                </ul></a>
            {else}
                {loop $category $c}
                    {if $weixin==1}
                    <a href="{php echo $this->createMobileUrl('pay',array('op'=>'baoyue','fee'=>$c['fee']))}"><ul class="click_op" style="margin:0">
                    {else}
                    <a href="{php echo $this->createMobileUrl('pcpay',array('op'=>'baoyue','fee'=>$c['fee']))}"><ul class="click_op" style="margin:0">
                    {/if}
                        <li>
                            <p class="tit blue"><label style="width:100px">{$c['baoyue']}天</label><span>{if $c['fee']>0}￥{$c['fee']}{else}免费{/if}{if !empty($sitem['huafei']) && !empty($c['huafei'])}+送{$c['huafei']}元话费{/if}</span></p>
                        </li>
                        <li style="color:#52A4CA">购买<i class="re_trg"></i></li>
                    </ul></a>
                {/loop}
            {/if}
        </div>
        <p class="click_op_top" style="line-height: 22px;"><i class="write" style="vertical-align: top;"></i>写信包月说明<br /><span>服务期间内可与心仪的MM轻松快乐的畅聊。</span></p>
    </section>
    {if !empty($cz_list)}
        <div class="swiper-container swiper-container-vertical" style="height:250px;margin-top:80px;border-top: 1px #e0e0e0 solid;padding-top:5px;">
            <div class="swiper-wrapper">
            {loop $cz_list $c}
                <div class="swiper-slide stop-swiping "><span style="color:#fd6b8f">[{$c['user']}]</span>{$c['name']}</div>
            {/loop}
            </div>
        </div>
    {/if}
</div>
</body>
    <script src="../addons/jy_ppp/js/zepto.min.js"></script>
    <script src="../addons/jy_ppp/js/public.js"></script>
    <script type="text/javascript">
        var swiper = new Swiper('.swiper-container', {
            slidesPerView: 7,
            direction: 'vertical',
            speed: 3000,
            autoplay: 1,
            loop: true,
            loopedSlides: 100,
            noSwiping: true,
            noSwipingClass: 'stop-swiping',
            spaceBetween: 1
        });
    </script>
{template 'inc/footer'}
</html>