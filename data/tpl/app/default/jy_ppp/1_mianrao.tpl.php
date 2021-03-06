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
<link href="../addons/jy_ppp/css/public_disbox.css" rel="stylesheet" type="text/css" />
<link href="../addons/jy_ppp/css/user-list.css" rel="stylesheet" type="text/css" />
<link href="../addons/jy_ppp/css/simple_info.css" rel="stylesheet" type="text/css" />
<link href="../addons/jy_ppp/css/new_safety_center.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="top_blank"></div>
<nav class="nav" style="position: absolute;">
<h2>免扰设置</h2>
<div class="left" onClick="history.go(-1)">
    <i class="le_trg"></i>返回
</div>
</nav>

<section class="content Set_center">
    <ul class="no_affect">

        <li data-id="1" >
            异性发来的招呼类信件
            <div {if !empty($mianrao['zhaohu'])}class="on_off_true" {else}class="on_off" {/if}><span></span></div>
        </li>

        <li data-id="2" >
            无头像的异性信件
            <div {if !empty($mianrao['thumb'])}class="on_off_true" {else}class="on_off" {/if}><span></span></div>
        </li>
        <li data-id="3" >
            异省的异性信件
            <div {if !empty($mianrao['province'])}class="on_off_true" {else}class="on_off" {/if}><span></span></div>
        </li>
        <li data-id="4" >
            不符合征友条件年龄的异性信件
            <div {if !empty($mianrao['age'])}class="on_off_true" {else}class="on_off" {/if}><span></span></div>
        </li>
        <li data-id="5" >
            未验证手机的异性信件
            <div {if !empty($mianrao['mobile'])}class="on_off_true" {else}class="on_off" {/if}><span></span></div>
        </li>
    </ul>
    <p class="bottom">
        友情提示：<br />
        根据你的设置自动过滤信件，但信件仍保留在信箱。为避免错过美丽的缘分，满足你征友条件的招呼将带你回复。
    </p>
</section>
<div id="mask" class="mask hidden" style="width:100%; height:100%; background:rgba(0,0,0,0.7); position:absolute; left:0; top:0; z-index:1000;">
<!--弹窗-->
<div  class="simple_info simple_info_unaffect first_alert hidden">
    <p class="title"><span>友情提示</span></p>
    <p class="abolish">
        为确保你的账号安全，请先验证身份证，<br />验证成功后才能取消。
    </p>
    <div class="col2_btn">
        <a class="cancel_btn" href="###">取消</a>
        <a href="{php echo $this->createMobileUrl('idcard')}">立即验证</a>
    </div>
</div>
<div class="simple_info simple_info_unaffect second_alert hidden">
    <p class="title"><span>友情提示</span></p>
    <p class="abolish">
        亲~需要上传<span class="pink">3</span>张照片，才可以要求别人<br />
        有照片哦~
    </p>
    <div class="col2_btn">
        <a class="cancel_btn" href="###">稍后上传</a>
        <a href="{php echo $this->createMobileUrl('upload')}">立即上传</a>
    </div>
</div>
<div class="simple_info simple_info_unaffect fifth_alert hidden">
    <p class="title"><span>友情提示</span></p>
    <p class="abolish">
        亲，你还没有进行手机验证怎么可以要求别人呢？<br />
         验证手机后可设置。
    </p>
    <div class="col2_btn">
        <a class="cancel_btn" href="###">暂不验证</a>
        <a href="{php echo $this->createMobileUrl('mobile')}">立即验证</a>
    </div>
</div>
</div>
</body>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/public.js"></script>
<script src="../addons/jy_ppp/js/waiting.js"></script>
<script>
$(function(){
    $(".no_affect li").bind("click",function(){
        var $this=$(this);
        var oDiv=$this.find('div');
        changeBtn($this,oDiv);
    }).on("tap",'.cancel_btn',function(){
            //取消验证
        $("#mask").hide();
        $(this).closest('.simple_info_unaffect').hide();
    });
});
function changeBtn($this,obj){
   var nub= $this.data('id');
   if(obj.hasClass("on_off_true")){

       $.ajax({url:"{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('mianrao',array('op'=>'cancel')),2);}",data:{"nub":nub},dataType:'text',type:'post',success:function(data){
           if(data==1)
           {
               obj.removeClass('on_off_true');
               $.tips("取消成功");
           }else if(data==2)
           {
               $("#mask").show();
               $(".first_alert").show();
           }else
           {
               $.tips("网络问题请稍后重试")
           }
       }
       });

   }else{

       $.ajax({url:"{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('mianrao',array('op'=>'add')),2);}",data:{"nub":nub},dataType:'text',type:'post',success:function(data){
           if(data==1)
           {
               obj.addClass('on_off_true');
               $.tips("设置成功");
           }else if(data==2)
           {
               $("#mask").show();
               $(".second_alert").show();
           }else if(data==3)
           {
               $("#mask").show();
               $(".fifth_alert").show();
           }else
           {
               $.tips("网络问题请稍后重试")
           }
       }
       });
   }
}
$(".first_alert,.second_alert,.fifth_alert,#mask").bind("click",function(){
   $("#mask").hide();
   $(".first_alert,.second_alert,.fifth_alert").hide();
});
</script>
{template 'inc/footer'}
</html>