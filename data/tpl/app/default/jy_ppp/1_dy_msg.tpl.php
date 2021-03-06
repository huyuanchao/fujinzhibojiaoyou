<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}  - 靠谱婚恋交友</title>
<link rel="stylesheet" href="../addons/jy_ppp/css/common2.css">
<style>

.selBtn{margin: 10px auto;display: inline-block;border:1px solid #f55a8e;border-radius: 15px}
.selBtn>a>span{padding:5px 10px;display:block}
.con{width: 85%;margin: 10px auto;border-radius: 5px;overflow: hidden;padding: 10px;background-color: #fff}
.con>img{width: 60px;height: 60px;float: left}
.con>div{width: 75%;float: right}
.con>div>div{padding: 5px 0}
.times{color: #828282;margin-right: 10px}
.read{padding: 4px 10px;border-radius: 15px}
.selectDiv{width: 90%;margin: 0 auto}
.selectDiv>select{background-color:transparent;-webkit-appearance: none;border:none;font-size: 16px;outline: none}
.selectDiv>img{width: 17px;vertical-align: top;margin-top: 5px}
@media screen and (max-width: 320px){
    .con>div{width: 75%}
}
@media screen and (min-width: 321px){
    .con>div{width: 75%}
}
@media screen and (min-width: 500px){
    .con>div{width: 85%}
}
</style>
</head>
<body>
<div class="bodybox">
    <div class="selectedDiv">
        <a href="{php echo $this->createMobileUrl('dycenter')}" class="rBor black"><img style="width:22px" src="../addons/jy_ppp/images/main.png"><span>主页</span></a>
        <a href="{php echo $this->createMobileUrl('dy_user')}" class="rBor black"><img src="../addons/jy_ppp/images/user.png"><span>用户</span></a>
        <a href="{php echo $this->createMobileUrl('dy_msg')}" class="rBor mainColor"><img src="../addons/jy_ppp/images/msg.png"><span>消息</span></a>
        <a href="{php echo $this->createMobileUrl('dy_man')}" class="black"><img src="../addons/jy_ppp/images/manager.png"><span>管理</span></a>
    </div>

    <div class="head mainBg">
<!--         <a href="javascript:history.go(-1)" class="bn pull-left"><img class="icon" src="../addons/jy_ppp/images/back.png"></a> -->
        <div class="title">{if !empty($userid)}[{$user_member['nicheng']}]{/if}消息</div>
<!--         <a href="#" class="bn pull-right"><img class="icon" src="../addons/jy_ppp/images/ren.png"/></a> -->
    </div>
    <div class="topZhan"></div>

    <div class="txtAC">
        <span class="selBtn ovfl">
            <a href="{php echo $this->createMobileUrl('dy_msg',array('userid'=>$_GPC['userid']))}" class="topbtn">
                {if $_GPC['msg']!='done'}
                <span class="mainBg white borLTB mainBor floL ">
                {else}
                <span class="mainColor borRTB mainBor floL ">
                {/if}
                未读消息</span>
            </a>
            <a href="{php echo $this->createMobileUrl('dy_msg',array('userid'=>$_GPC['userid'],'msg'=>'done'))}" class="topbtn">
                {if $_GPC['msg']!='done'}
                <span class="mainColor borRTB mainBor floL ">
                {else}
                <span class="mainBg white borLTB mainBor floL ">
                {/if}
                已读消息</span>
            </a>
        </span>
    </div>

    <div class="selectDiv">
        <select class="mainColor" id="userid" onChange="changeSel()">
            <option value="0">全部用户</option>
            {loop $xuni $x}
                <option value="{$x['id']}" {if $x['id']==$_GPC['userid']}selected{/if}>{$x['nicheng']}</option>
            {/loop}
        </select>
        <img src="../addons/jy_ppp/images/arrowdown.png"/>
    </div>

    <div class="con-con">
        <!-- begin -->
        {php $now=time();}
        {loop $xinxi $l}


        <div class="con" onClick="chat({$l['id']})">
            {if !empty($l['avatar'])}
                <img src="{php echo tomedia($l['avatar'])}">
            {else}
                {if $l['sex']==1}
                    <img src="../addons/jy_ppp/images/boy.png"/>
                {else}
                    <img src="../addons/jy_ppp/images/girl.png"/>
                {/if}
            {/if}
            <div>
                <div>{$l['nicheng']}<span class="times font13 floR">{php echo date("m-d G:i",$l['createtime'])}</span></div>
                <div class="font13 gray ovfl">{if !empty($l['brith'])}
                    {php $birthday=$l['brith'];$month=0;if(date('m', $now)>date('m', $birthday))$month=1;if(date('m', $now)==date('m', $birthday))if(date('d', $now)>=date('d', $birthday))$month=1;$nianlin=date('Y', $now)-date('Y', $birthday)+$month;}
                    {$nianlin}岁·{/if}{$province[$l['province']]}{if !empty($l['height'])}·{$l['height']}cm{/if}<span class="read white mainBg floR">{if $l['yuedu']==0}未读{else}已读{/if}</span></div>
            </div>
        </div>
        {/loop}
        <!-- end -->
        <div style="height: 40px"></div>
    </div>

</div>

<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
<script>
function changeSel(){
    var str = $("#userid").val();
    if(str==0)
    {
        window.location.href="{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('dy_msg'),2)}";
    }
    else
    {
        window.location.href="{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('dy_msg'),2)}"+"&userid="+str;
    }
}
function chat(xinxiid)
{
    window.location.href="{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('dy_chat'),2)}"+"&id="+xinxiid;
}

</script>
{template 'inc/footer'}
</body>
</html>