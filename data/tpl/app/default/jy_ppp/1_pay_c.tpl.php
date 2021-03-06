<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}</title>
<style>
html,body {
    margin: 0;
    padding: 0;
    width: 100%;
    height: 100%;
    background: #ccc;
}
#bodybox {
    position: relative;
    margin: 0 auto;
    height: 100%;
    overflow: hidden;
    max-width: 640px;
    background-color: #fff
}
.rightImg{
    width: 40%;
    margin-top: 15%;
    margin-left: 30%;
    margin-bottom: 10%
}
#bodybox>p{
    text-align: center;
    margin-top: 5%
}
.red{color: red}
.sureBtn{
    width: 30%;
    background-color: #26b7a3;
    text-align: center;
    padding: 10px 0;
    margin-left: 35%;
    margin-top: 10%;
    color: #fff;
    cursor: pointer;
    border-radius: 5px;
}
@media screen and (min-width: 321px) and (max-width: 374px) {
}
@media screen and (min-width: 375px) and (max-width: 413px) {
}
@media screen and (min-width: 414px) {
}
</style>
</head>
<body>
    <div id="bodybox">
        <img class="rightImg" src="../addons/jy_ppp/images/chongzhi.png"/>
        <p class="red">订单确认</p>
        <p>您将为用户 : <span style="color:red">{$member['nicheng']}</span> 用户</p>
        <p>充值{$fee}元用于{if $op=='doubi'}豆币充值{/if}{if $op=='baoyue'}写信包月{/if}{if $op=='shouxin'}收信宝{/if}服务</p>
        <div class="sureBtn" onClick="sureFunc()">确认充值</div>
    </div>

    <script type="text/javascript">
    function sureFunc(){
        if(confirm("是否确认充值？")){
            window.location.href="{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('pay',array('op'=>$op,'fee'=>$fee,'mid'=>$mid)),2)}";
        }
    }
    </script>
</body>

    <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
    {php $signPackage=$_W['account']['jssdkconfig'];}
    <script>

        var appid = '{$_W['account']['jssdkconfig']['appId']}';
        var timestamp = '{$_W['account']['jssdkconfig']['timestamp']}';
        var nonceStr = '{$_W['account']['jssdkconfig']['nonceStr']}';
        var signature = '{$_W['account']['jssdkconfig']['signature']}';

        wx.config({
            debug: false,
            appId: appid,
            timestamp: timestamp,
            nonceStr: nonceStr,
            signature: signature,
            jsApiList: ['checkJsApi','onMenuShareTimeline','onMenuShareAppMessage','onMenuShareQQ','onMenuShareWeibo']
        });
    </script>
    <script type="text/javascript">
        var params = {
            {if empty($sitem['sharetitle'])}
            title:"有缘网",
            {else}
            title: "{$sitem['sharetitle']}",
            {/if}
            {if empty($sitem['sharedesc'])}
            desc: "有缘网!",
            {else}
            desc: "{$sitem['sharedesc']}",
            {/if}
            link: "{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('index'),2)}",
            {if empty($sitem['sharelogo'])}
            imgUrl: "{$_W['siteroot']}addons/jy_ppp/icon.jpg",
            {else}
            imgUrl: "{$_W['attachurl']}{$sitem['sharelogo']}",
            {/if}
        };
        wx.ready(function () {
            wx.showOptionMenu();
            wx.onMenuShareAppMessage.call(this, params);
            wx.onMenuShareTimeline.call(this, params);
        });
    </script>

</html>