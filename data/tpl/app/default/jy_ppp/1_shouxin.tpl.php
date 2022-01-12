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
        <link href="../addons/jy_ppp/css/pay_intercept.css" rel="stylesheet" type="text/css" />
        <link href="../addons/jy_ppp/css/swiper.min.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../addons/jy_ppp/js/swiper.min.js"></script>
</head>
<body>
<div class="top_blank"></div>
<nav class="nav" style="position: absolute;">
    <h2>领取收信宝</h2>

    <div class="left" onClick="history.go(-1)">
        <i class="le_trg"></i>返回
    </div>
</nav>
{if !empty($sitem['huafei']) && !empty($sitem['huafei_thumb'])}
<img src="{php echo tomedia($sitem['huafei_thumb'])}" style="width:100%">
{/if}
<div class="content">
    <section data-type="shouxin">
        <div class="box-shadow">
            {if empty($category)}
                {if $weixin==1}
                <a href="{php echo $this->createMobileUrl('pay',array('op'=>'shouxin','fee'=>100))}"><ul class="click_op" style="margin:0">
                {else}
                <a href="{php echo $this->createMobileUrl('pcpay',array('op'=>'shouxin','fee'=>100))}"><ul class="click_op" style="margin:0">
                {/if}
                    <li>
                        <p class="tit pink"><label style="width:100px">15天</label><span>￥100</span><span></span></p>
                    </li>
                    <li style="color:#EE3869">购买<i class="re_trg"></i></li>
                </ul></a>
                {if $weixin==1}
                <a href="{php echo $this->createMobileUrl('pay',array('op'=>'shouxin','fee'=>50))}"><ul class="click_op" style="margin:0">
                {else}
                <a href="{php echo $this->createMobileUrl('pcpay',array('op'=>'shouxin','fee'=>50))}"><ul class="click_op" style="margin:0">
                {/if}
                    <li>
                        <p class="tit pink"><label style="width:100px">7天</label><span>￥50</span></p>
                    </li>
                    <li style="color:#EE3869">购买<i class="re_trg"></i></li>
                </ul></a>
                {if $weixin==1}
                <a href="{php echo $this->createMobileUrl('pay',array('op'=>'shouxin','fee'=>30))}"><ul class="click_op" style="margin:0">
                {else}
                <a href="{php echo $this->createMobileUrl('pcpay',array('op'=>'shouxin','fee'=>30))}"><ul class="click_op" style="margin:0">
                {/if}
                    <li>
                        <p class="tit pink"><label style="width:100px">3天</label><span>￥30</span></p>
                    </li>
                    <li style="color:#EE3869">购买<i class="re_trg"></i></li>
                </ul></a>
                {if $weixin==1}
                <a href="{php echo $this->createMobileUrl('pay',array('op'=>'shouxin','fee'=>10))}"><ul class="click_op" style="margin:0">
                {else}
                <a href="{php echo $this->createMobileUrl('pcpay',array('op'=>'shouxin','fee'=>10))}"><ul class="click_op" style="margin:0">
                {/if}
                    <li>
                        <p class="tit pink"><label style="width:100px">1天</label><span>￥10</span></p>
                    </li>
                    <li style="color:#EE3869">购买<i class="re_trg"></i></li>
                </ul></a>
            {else}
                {loop $category $c}
                    {if $weixin==1}
                    <a href="{php echo $this->createMobileUrl('pay',array('op'=>'shouxin','fee'=>$c['fee']))}"><ul class="click_op" style="margin:0">
                    {else}
                    <a href="{php echo $this->createMobileUrl('pcpay',array('op'=>'shouxin','fee'=>$c['fee']))}"><ul class="click_op" style="margin:0">
                    {/if}
                        <li>
                            <p class="tit pink"><label style="width:100px">{$c['shouxin']}天</label><span>{if $c['fee']>0}￥{$c['fee']}{else}免费{/if}{if !empty($sitem['huafei']) && !empty($c['huafei'])}+送{$c['huafei']}元话费{/if}</span></p>
                        </li>
                        <li style="color:#EE3869">购买<i class="re_trg"></i></li>
                    </ul></a>
                {/loop}
            {/if}
        </div>

        <p class="click_op_top" style="line-height: 22px;">
            <i style="vertical-align:top;" class="shouxinbao"></i>收信宝服务 <br>
            <span>
                &nbsp;1.省时---每天在线都会有女性用户推荐给你；<br>
                &nbsp;2.省力---每天登录都会替你向女用户打招呼；<br>
                &nbsp;3.省事---女用户可以在茫茫人海中优先找到你。
            </span>
        </p>
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