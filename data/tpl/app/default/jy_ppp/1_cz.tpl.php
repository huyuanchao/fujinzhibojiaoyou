<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="telephone=no" name="format-detection">
    <title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}  -靠谱婚恋交友</title>

        <link href="../addons/jy_ppp/css/public_reset.css" rel="stylesheet" type="text/css" />
        <link href="../addons/jy_ppp/css/public.css" rel="stylesheet" type="text/css" />
        <link href="../addons/jy_ppp/css/pay_intercept.css" rel="stylesheet" type="text/css" />
        <link href="../addons/jy_ppp/css/swiper.min.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="../addons/jy_ppp/js/swiper.min.js"></script>

</head>
<body>
<div class="top_blank"></div>
<nav class="nav">
    <h2>开通后即可与美女无限畅聊</h2>

    <div class="left" onClick="history.go(-1)">
        <i class="le_trg"></i>返回
    </div>
</nav>
{if !empty($sitem['huafei']) && !empty($sitem['huafei_thumb'])}

<div class="content">
{else}
<div class="content">
    <p class="pink" style="text-align: center;line-height: 30px">
        <b style="font-size: 20px">【让你轻松谈恋爱】</b><br/>
    </p>
{/if}

    <div style="clear: both"></div>
    {if !empty($category) || empty($sitem['cz_style'])}
    <section data-type="baoyue">
        <p class="click_op_top"><i class="write"></i>包月写信<span>和所有心仪MM无限制沟通</span></p>

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
    </section>
    {/if}
    {if empty($sitem['doubi'])}{php $sitem['doubi']=='豆币'}{/if}
    {if empty($sitem['unit'])}{php $sitem['unit']=='豆'}{/if}
    {if !empty($category2) || empty($sitem['cz_style'])}
    <section data-type="doubi" >
        <p class="click_op_top"><i class="bean"></i>{$sitem['doubi']}服务<span>20{$sitem['doubi']}可与一位美女无限制沟通</span></p>

        <div class="box-shadow" >
            {if empty($category2)}
                {if $weixin==1}
                <a href="{php echo $this->createMobileUrl('pay',array('op'=>'doubi','fee'=>100))}"><ul class="click_op">
                {else}
                <a href="{php echo $this->createMobileUrl('pcpay',array('op'=>'doubi','fee'=>100))}"><ul class="click_op">
                {/if}
                    <li>
                        <p class="tit yellow"><label style="width:100px">1300{$sitem['unit']}</label><span>￥100</span><span></span></p>
                    </li>
                    <li style="color:#E2A41F">购买<i class="re_trg"></i></li>
                </ul></a>
                {if $weixin==1}
                <a href="{php echo $this->createMobileUrl('pay',array('op'=>'doubi','fee'=>50))}"><ul class="click_op">
                {else}
                <a href="{php echo $this->createMobileUrl('pcpay',array('op'=>'doubi','fee'=>50))}"><ul class="click_op">
                {/if}
                    <li>
                        <p class="tit yellow"><label style="width:100px">600{$sitem['unit']}</label><span>￥50</span></p>
                    </li>
                    <li style="color:#E2A41F">购买<i class="re_trg"></i></li>
                </ul></a>

                {if $weixin==1}
                <a href="{php echo $this->createMobileUrl('pay',array('op'=>'doubi','fee'=>30))}"><ul class="click_op">
                {else}
                <a href="{php echo $this->createMobileUrl('pcpay',array('op'=>'doubi','fee'=>30))}"><ul class="click_op">
                {/if}
                    <li>
                        <p class="tit yellow"><label style="width:100px">300{$sitem['unit']}</label><span>￥30</span></p>
                    </li>
                    <li style="color:#E2A41F">购买<i class="re_trg"></i></li>

                </ul></a>
            {else}
                {loop $category2 $c}
                    {if $weixin==1}
                    <a href="{php echo $this->createMobileUrl('pay',array('op'=>'doubi','fee'=>$c['fee']))}"><ul class="click_op" style="margin:0">
                    {else}
                    <a href="{php echo $this->createMobileUrl('pcpay',array('op'=>'doubi','fee'=>$c['fee']))}"><ul class="click_op" style="margin:0">
                    {/if}
                        <li>
                            <p class="tit yellow"><label style="width:100px">{$c['credit']}{$sitem['unit']}</label><span>{if $c['fee']>0}￥{$c['fee']}{else}免费{/if}{if !empty($sitem['huafei']) && !empty($c['huafei'])},送{$c['huafei']}元话费{/if}</span></p>
                        </li>
                        <li style="color:#E2A41F">购买<i class="re_trg"></i></li>
                    </ul></a>
                {/loop}
            {/if}
        </div>
    </section>
    {/if}
    {if !empty($cz_list)}
    <div class="swiper-container swiper-container-vertical" style="height:250px;margin-top:20px;border-top: 1px #e0e0e0 solid;padding-top:5px">
            <div class="swiper-wrapper">
            {loop $cz_list $c}
                <div class="swiper-slide stop-swiping"><span style="color:#fd6b8f">[{$c['user']}]</span>{$c['name']}</div>
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
