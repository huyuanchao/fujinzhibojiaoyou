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
    <link href="../addons/jy_ppp/css/public_yy_select.css" rel="stylesheet" type="text/css" />
    <link href="../addons/jy_ppp/css/phone_register.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="top_blank"></div>
<nav class="nav" style="position: absolute">
    <h2>注册</h2>
</nav>
<div class="content">
    <ul class="test_box">
        <li>
            <input id="mobile" type="tel" maxlength="11" placeholder="请输入有效手机号">
        </li>
        <li>
            <input id="pwd" type="password" maxlength="20" placeholder="输入密码（6-20位数字或字母组合）">
        </li>
    </ul>
    <span id="register_btn" class="see_more register">立即注册</span>
    {if $weixin==1}
    <span id="wechat_btn" class="see_more" style="background:#1AD371;color: #fff;box-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);">微信一键注册</span>
    {/if}
    <div class="reading">
        <span>我已阅读并同意<a href="{php echo $this->createMobileUrl('rule')}" class="n_link">使用协议</a></span>
    </div>
</div>
<footer class="coverFoot">
    <p>已有账号<a href="{php echo $this->createMobileUrl('login')}">直接登录</a></p>
</footer>
</body>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/waiting.js"></script>
<script src="../addons/jy_ppp/js/phone_register.js"></script>
<script>
$(function () {
    $("#register_btn").bind("click",function(){
        Phone.checkPhone();
        Phone.param = true;
        Phone.checkPhone();
        if (!Phone.param)return;
        Phone.checkPassword();
        if (!Phone.param)return;

        var userName = $("#mobile").val();
        var password = $("#pwd").val();
        // ajax ---
        $.post("{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('zhuce2',array('op'=>'add','sex'=>$_GPC['sex'])),2)}"+"&mobile="+userName+"&password="+password,function(data){
              if (data == 1) {
                  window.location.href="{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('index'),2)}";
              }
              else if (data==2)
              {
                  $.tips("已存在该手机号!");
              }
              else if (data==3)
              {
                  $.tips("您已经注册，可以直接登录");
                  setTimeout(function(){
                        location.href = "{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('index'),2)}";
                    }, 1500);
              }
              else{
                  $.tips("注册失败！"+data);
              }
          });
    });

    {if $weixin==1}
        $("#wechat_btn").bind("click",function(){

            // ajax ---
            $.post("{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('zhuce2',array('op'=>'wechat','sex'=>$_GPC['sex'])),2)}",function(data){
                  if (data == 1) {
                      window.location.href="{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('index'),2)}";
                  }
                  else if(data==10)
                  {
                      $.tips("您注册选择的性别与您之前微信注册的性别不一致！请选择一致的性别！");
                  }
                  else{
                      $.tips("注册失败！"+data);
                  }
              });
        });
    {/if}
});
</script>
{template 'inc/footer'}
</html>