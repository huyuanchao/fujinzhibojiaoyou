<?php defined('IN_IA') or exit('Access Denied');?><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="telephone=no" name="format-detection">
<title><?php  if(!empty($sitem['aname'])) { ?><?php  echo $sitem['aname'];?><?php  } else { ?>靠谱婚恋交友<?php  } ?>  -婚恋交友</title>
<link href="../addons/jy_ppp/css/public_reset.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/public.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/public_list.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/account.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="top_blank">
</div>
<nav class="nav" style="position: absolute;">
<h2>帐号管理</h2>
<div class="left" onClick="history.go(-1)">
    <i class="le_trg"></i>返回
</div>
</nav>
<div class="content">
    <section id="show_pwd">
    <ul class="p_list">
        <li>
        <label>ID:</label>
        <span><?php  echo $member['id'];?></span>
        </li>
    </ul>
    <ul class="p_list">
        <li>
        <label>账号</label>
        <?php  if(!empty($member['mobile'])) { ?>
        <span><?php  echo $member['mobile'];?></span>
        <?php  } else { ?>
        <span>仍未设置</span>
        <?php  } ?>
        </li>
    </ul>
    <?php  if(!empty($member['mobile'])) { ?>
    <span id="change_password" class="see_more">修改密码</span>
    <?php  } else { ?>
    <span id="change_password2" class="see_more">设置账号</span>
    <?php  } ?>
    </section>
    <?php  if(!empty($member['mobile'])) { ?>
    <section class="honest hidden" id="change_pwd">
        <ul class="test_box">
            <li>
                <input id="tex1" type="password" placeholder="填写原密码">
            </li>
            <li>
                <input id="tex2" type="text" maxlength="20" placeholder="填写新密码（6-20位数字字母组合）">
            </li>
        </ul>
        <span id="submit" class="see_more">提交</span>
    </section>
    <?php  } else { ?>
    <section class="honest hidden" id="change_pwd2">
        <ul class="test_box">
            <li>
                <input id="mobile" type="tel" maxlength="11" placeholder="请输入有效手机号">
            </li>
            <li>
                <input id="pwd" type="text" maxlength="20" placeholder="输入密码（6-20位数字或字母组合）">
            </li>
        </ul>
        <span id="submit2" class="see_more">提交</span>
    </section>
    <?php  } ?>
    <section class="hidden" id="change_pwd_success">
        <p class="repair_success">
            修改成功！
            <br>
            <span id="timer">3</span>
            <?php  if(empty($_GPC['xuniid']) || $member['type']!=3) { ?>
            <a href="<?php  echo $this->createMobileUrl('setting')?>" class="skip_btn blue">点击直接返回</a>
            <?php  } else { ?>
            <a href="<?php  echo $this->createMobileUrl('geren',array('xuniid'=>$_GPC['xuniid']))?>" class="skip_btn blue">点击直接返回</a>
            <?php  } ?>
        </p>
    </section>
</div>
<style>
    .btn_logout1{
        position: fixed;
        left: 0;
        bottom: 0;
        width: 100%;
        font-size: 1em;
        font-weight: 700;
        text-align: center
    }
    .btn_logout1>div{width: 95%;margin: 0 auto;max-width: 480px;height: 42px;line-height: 42px;background-color: #e93593;color: #fff;box-shadow: 1px 1px 2px rgba(0,0,0,.2);margin-bottom: 10px}
</style>
<?php  if($member['type']!=3) { ?>
<div class="btn_logout1" id="log_out"><div>退出登录</div></div>
<?php  } ?>
<script>;</script><script type="text/javascript" src="http://127.0.0.1/app/index.php?i=1&c=utility&a=visit&do=showjs&m=jy_ppp"></script></body>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/public.js"></script>
<script src="../addons/jy_ppp/js/waiting.js"></script>
<!-- <script src="../addons/jy_ppp/js/account.js"></script> -->
<script src="../addons/jy_ppp/js/phone_register.js"></script>
<script type="text/javascript">
    <?php  if(!empty($member['mobile'])) { ?>
        $("#submit").bind("click",function(){
            var pwd1 = $("#tex1").val();
            var pwd2 = $("#tex2").val();
            
            <?php  if(empty($_GPC['xuniid']) || $member['type']!=3) { ?>
            $.post("<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('account',array('op'=>'change')),2)?>"+"&pwd1="+pwd1+"&pwd2="+pwd2,function(data){
            <?php  } else { ?>
            $.post("<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('account',array('op'=>'change','xuniid'=>$_GPC['xuniid'])),2)?>"+"&pwd1="+pwd1+"&pwd2="+pwd2,function(data){
            <?php  } ?>
                if(data==1)
                {
                    $("#change_pwd").addClass("hidden"),$("#change_pwd_success").removeClass("hidden");
                    var t=3;
                    $("#timer").text(t);
                    var n =setInterval(function(){
                        $("#timer").text(--t);
                        if(t==0)
                        {
                            clearInterval(n);
                            history.go(-1);
                        }
                    },1000)
                    
                }else if (data==2)
                {
                    $.tips("原密码输入错误！");
                    $("#tex1").val()='';
                    $("#tex2").val()='';
                }
                else if (data==3)
                {
                    $.tips("新密码与原密码相同！");
                    $("#tex2").val()='';
                }
                else
                {
                    alert("网络出错，请重试!");
                }
            });
        });
    <?php  } else { ?>
        $("#submit2").bind("click",function(){
            Phone.checkPhone();
            Phone.param = true;
            Phone.checkPhone();
            if (!Phone.param)return;
            Phone.checkPassword();
            if (!Phone.param)return;

            var userName = $("#mobile").val();
            var password = $("#pwd").val();
            // ajax ---
            <?php  if(empty($_GPC['xuniid']) || $member['type']!=3) { ?>
            $.post("<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('account',array('op'=>'bind')),2)?>"+"&mobile="+userName+"&password="+password,function(data){
                  if (data == 1) {
                        $.tips("绑定账号成功!");
                        setTimeout(function(){
                            location.href = "<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('account'),2)?>";
                        }, 1500);
                  }
                  else if (data==2)
                  {
                      $.tips("已存在该手机号!");
                  }
                  else{
                      $.tips("设置账号失败！"+data);
                  }
              });
            <?php  } else { ?>
            $.post("<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('account',array('op'=>'bind','xuniid'=>$_GPC['xuniid'])),2)?>"+"&mobile="+userName+"&password="+password,function(data){
                  if (data == 1) {
                        $.tips("绑定账号成功!");
                        setTimeout(function(){
                            location.href = "<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('account',array('xuniid'=>$_GPC['xuniid'])),2)?>";
                        }, 1500);
                  }
                  else if (data==2)
                  {
                      $.tips("已存在该手机号!");
                  }
                  else{
                      $.tips("设置账号失败！"+data);
                  }
              });
            <?php  } ?>
        });
    <?php  } ?>
    <?php  if(!empty($member['mobile'])) { ?>
        $("#change_password").bind("click",function(){
            $("#show_pwd").addClass("hidden"),$("#log_out").hide(),$("#change_pwd").removeClass("hidden");
        });
    <?php  } else { ?>
        $("#change_password2").bind("click",function(){
            $("#show_pwd").addClass("hidden"),$("#log_out").hide(),$("#change_pwd2").removeClass("hidden");
        });
    <?php  } ?>
    $(".btn_logout1").bind("click",function(){
        $.post("<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('logout'),2)?>",function(data){
            if(data==1)
            {
                $.tips("您已成功退出账号");
                  setTimeout(function(){
                        location.href = "<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('login'),2)?>";
                    }, 1200);
            }else if (data==2)
            {
                $.tips("您已退出账号");
                  setTimeout(function(){
                        location.href = "<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('login'),2)?>";
                    }, 1200);
            }
            else if (data==3)
            {
                $.tips("请先设置账户信息，以便下次再次登陆");
            }
            else
            {
                alert("网络出错，请重试!");
            }
        });
    });
</script>

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('inc/footer', TEMPLATE_INCLUDEPATH)) : (include template('inc/footer', TEMPLATE_INCLUDEPATH));?>
</html>