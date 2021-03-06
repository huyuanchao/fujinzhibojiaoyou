<!Doctype html>
<html>
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}  -靠谱婚恋交友</title>
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
.age{width: 100%;height: 35px;border:none;outline: none}
</style>
</head>
<body>
    <div class="bodybox">
        <div class="selectedDiv">
            <a href="{php echo $this->createMobileUrl('dycenter')}" class="rBor black"><img style="width:22px" src="../addons/jy_ppp/images/main.png"><span>主页</span></a>
            <a href="{php echo $this->createMobileUrl('dy_user')}" class="rBor mainColor"><img src="../addons/jy_ppp/images/user.png"><span>用户</span></a>
            <a href="{php echo $this->createMobileUrl('dy_msg')}" class="rBor black"><img src="../addons/jy_ppp/images/msg.png"><span>消息</span></a>
            <a href="{php echo $this->createMobileUrl('dy_man')}" class="black"><img src="../addons/jy_ppp/images/manager.png"><span>管理</span></a>
        </div>
        <div class="head mainBg">
            <!-- <a href="javascript:history.go(-1)" class="bn pull-left"><img class="icon" src="../addons/jy_ppp/images/back.png"></a> -->
            <div class="title">添加虚拟用户</div>
            <!-- <a href="#" class="bn pull-right"><img class="icon" src="../addons/jy_ppp/images/ren.png"/></a> -->
        </div>
        <div class="topZhan"></div>

        <ul class="test_box">
            <li>
                <input id="nicheng" type="text" placeholder="输入用户昵称">
            </li>
            <li>
                <input id="pwd" type="text" maxlength="20" placeholder="输入密码（默认123456）">
            </li>
            <li>
                <select class="age" id="age">
                    <option value="1">男</option>
                    <option value="2">女</option>
                </select>
            </li>
        </ul>

        <span class="see_more register" onClick="addUserFunc()">立即注册</span>
    </div>

<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
<script src="../addons/jy_ppp/js/notice.js"></script>
<script>
function addUserFunc(){
    var nicheng = $("#nicheng").val();
    var pwd = $("#pwd").val();
    var sex = $("#age").val();

        // ajax------
        $.post("{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('dy_add',array('op'=>'add')),2)}"+"&sex="+sex+"&password="+pwd+"&nicheng="+nicheng,function(data){
              if (data == 1) {
                  window.location.href="{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('dy_user'),2)}";
              }
              else if (data==2)
              {
                  showNoticeFunc("已存在该手机号!");
              }
              else if (data==3)
              {
                  showNoticeFunc("该虚拟用户已经归你管理");
                  setTimeout(function(){
                        location.href = "{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('index'),2)}";
                    }, 1500);
              }
              else{
                  showNoticeFunc("注册失败！"+data);
              }
          });


}

</script>
{template 'inc/footer'}
</body>
</html>