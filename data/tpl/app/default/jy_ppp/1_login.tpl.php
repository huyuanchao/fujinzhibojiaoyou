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
    <link href="../addons/jy_ppp/css/phone_register.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="top_blank"></div>
<nav class="nav" style="position: absolute">
    <h2>登录</h2>
</nav>


<div class="content">
    <ul class="test_box">
        <li>
            <input name="username" type="text" placeholder="请输入手机号/昵称">
        </li>
        <li>
            <input name="password" type="password" placeholder="请输入密码">
        </li>
    </ul>
    <span id="login_btn" class="see_more">立即登录</span>
	<br>

    <span id="register_btn" class="see_more register"><a href="{php echo $this->createMobileUrl('zhuce')}">立即注册</a></span>
    <!--<span id="login_onekey" class="see_more">游客浏览 跳过登陆</span>-->
     <div class="forget">
       <a href="{php echo $this->createMobileUrl('forget')}"><span>忘记密码？</span></a>
    </div>
</div>


<footer class="coverFoot">
    <!--<p>还没有账号<a href="{php echo $this->createMobileUrl('zhuce')}">立即注册</a></p>-->
</footer>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/waiting.js"></script>
<script>
$(function () {
    $("#login_btn").bind("click",function(){
        var username=$('input[name="username"]').val();
        var password=$('input[name="password"]').val();

        if(username == ''){
            $.tips("请输入手机号/昵称");
            return ;
        }
        if(password==''){
            $.tips("请输入密码");
            return;
        }
        // ajax
        $.post("{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('login',array('op'=>'add')),2)}"+"&mobile="+username+"&password="+password,function(data){
              if (data == 1) {
                  window.location.href="{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('index'),2)}";
              }
              else if (data==2)
              {
                  $.tips("手机号/昵称或密码错误!");
              }
              else if (data==3)
              {
                  $.tips("不存在该用户!");
              }
              else{
                  $.tips("登陆失败！");
              }
          });
    })



    $("#login_onekey").bind("click",function(){
        // ajax
        $.post("{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('login',array('op'=>'onekey')),2)}",function(data){
              if (data == 1) {
                  window.location.href="{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('index'),2)}";
              }
              else if (data==2)
              {
                  $.tips("手机号/昵称或密码错误!");
              }
              else if (data==3)
              {
                  $.tips("不存在该用户!");
              }
              else{
                  $.tips("登陆失败！");
              }
          });
    })
});
    </script>
</body>
{template 'inc/footer'}
</html>