<!Doctype html>
<html>
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}  - 靠谱婚恋交友</title>
<link rel="stylesheet" href="../addons/jy_ppp/css/common2.css">
<link rel="stylesheet" href="../addons/jy_ppp/css/notice.css">
<style>
.test_box {
    margin: 0;padding: 0
}
ol, ul {
    list-style: none;
}
.test_box>li {
    margin: 10px 5%;
    width: 90%;
    height: 44px;
    line-height: 44px;
    background: #fff;
    overflow: hidden;
    box-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
}
.test_box>li>input {
    width: 100%;
    height: 28px;
    line-height: 28px;
    margin: 0;
    border: none;
    background: #fff;
    color: #999;
    overflow: hidden;
    font-size: 14px;
    outline: none;
    padding:5px;
}
.register {
    background: #e93593;
    color: #fff;
    box-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
    display: inline-block;
}
.see_more {
    line-height: 44px;
    font-size: 16px;
    display: block;
    height: 42px;
    line-height: 42px;
    text-align: center;
    margin: 50px 5%;
    box-shadow: 1px 1px 2px rgba(0,0,0,0.1);
    font-weight: bold;
    width: 90%;
}
.forPas{width: 90%;margin:10px auto;text-align: right;font-size: 14px;}
</style>
</head>

<body>
  <div class="bodybox">
    <h3 class="txtAC">员工登录</h3>
    <div style="height:80px"></div>
    <ul class="test_box">
            <li>
                <input id="mobile" type="tel" placeholder="店员手机">
            </li>
            <li>
                <input id="pwd" type="password" placeholder="密码">
            </li>
        </ul>
    <div class="forPas" onClick="forgetPass()">忘记密码？</div>
        <span class="see_more register" onClick="loginFunc()">登录</span>
  </div>

<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
<script src="../addons/jy_ppp/js/notice.js"></script>
<script>
  function loginFunc(){
    var name = parseInt($("#mobile").val());
    var password = $("#pwd").val();

    if(!name){
      showNoticeFunc("请输入店员手机");
      return false;
    }
    if(!password){
      showNoticeFunc("请输入密码");
    }
    // ajax-----
        $.post("{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('dy_login',array('op'=>'add')),2)}"+"&mobile="+name+"&password="+password,function(data){
              if (data == 1) {
                  window.location.href="{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('dycenter'),2)}";
              }
              else if (data==2)
              {
                  showNoticeFunc("用户名或密码错误!");
              }
              else if (data==3)
              {
                  showNoticeFunc("不存在该用户!");
              }
              else{
                  showNoticeFunc("登陆失败！");
              }
          });

  }
  function forgetPass(){
    showNoticeFunc("请与管理员联系!");
  }
</script>
{template 'inc/footer'}
</body>
</html>