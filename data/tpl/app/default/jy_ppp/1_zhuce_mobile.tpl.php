<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="telephone=no" name="format-detection">
<title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}</title>
<link href="../addons/jy_ppp/css/public_reset.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/public.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/public_disbox.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/public_headmessage.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/auth_mobile.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<input id="IsMobileVerified" type="hidden" value="0"/>
<div class="top_blank">
</div>
<nav class="nav">
<h2>手机号认证</h2>
<div class="left" onClick="history.go(-1)">
    <i class="le_trg"></i>返回
</div>
</nav>
<div class="content">
    <section class="honest">
    <p class="test_phone">
        为了更好的保护您的账号安全，为了让每位用户得到安全可靠的服务，需要每一位用户进行手机认证。
    </p>
    <ul class="test_box">
        <li>
        <input id="checkMobile" type="tel"  value="{$member['mobile']}"/>
        </li>
        <li>
        <input id="checkCode" type="text" class="post" placeholder="验证码" />
        <span id="get_btn" class="get_btn">获取验证码</span>
        </li>
    </ul>
    <p id="warnInfo" class="info">
    </p>
    <span id="nextStep" class="see_more">确定</span>
    </section>
    <section class="honest_03 hidden">
    <p class="repair_success">
        验证成功！<span id="timer" data-back-url="{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('renzheng'),2)}">3</span>秒后自动跳转到认证中心<br/><br/>
        <a href="{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('renzheng'),2)}" class="skip_btn blue">点击直接返回</a>
    </p>
    </section>
</div>
</body>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/public.js"></script>
<script src="../addons/jy_ppp/js/waiting.js"></script>
<script>
$("#nextStep").bind("click",function(){
    Auth.checkMobile();
});
$("#get_btn").bind("click",function(){
    Auth.getCheckCode();
});

 var Auth = (function () {
        return {
            timeTask: null,
            backJob:function(){
                var time = 3;
                var backUrl = $('#timer').data("back-url");
                if(backUrl == null || backUrl == ""){
                    backUrl = "{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('renzheng'),2)}";
                }
                $('#timer').text(time);
                var itv = setInterval(function () {
                    $('#timer').text(time--);
                    if (time == 0) {
                        clearInterval(itv);
                        location.href = backUrl;
                    }
                }, 1000);
            },
            testMobile: function (mobileNumber) { //验证电话号码
                return /^1[3|4|5|6|7|8|9][0-9]{9}$/.test(mobileNumber);
            },
            errorInfo: function (msg) {
                $("#warnInfo").removeClass("blue").addClass('pink').show().html(msg);

            },
            successInfo: function (msg) {
                $("#warnInfo").removeClass("pink").addClass('blue').show().html(msg);
            },
            startTask: function () {
                var s = 60;
                Auth.timeTask = setInterval(function () {
                    if (s > 0) {
                        $("#get_btn").text((s--)+"秒后刷新");
                    } else {
                        $("#get_btn").removeClass("bgray").data("active",false).html("重新获取验证码");
                        clearInterval(Auth.timeTask);
                    }
                }, 1000);

            },
            getCheckCode: function () {
               if($("#get_btn").data("active")){
                   return;
               }
                var mobile = $("#checkMobile").val();
                if (mobile == '') {
                    return;
                }
                if (!Auth.testMobile(mobile)) {
                    Auth.errorInfo("手机号码错误");
                    return;
                }
                var isMobileVerified = $("#IsMobileVerified").val();
                if(isMobileVerified==1){
                    Auth.errorInfo("今天已经验证过手机号了。");
                    return;
                }
                $("#get_btn").addClass("bgray").data("active",true);


                $.ajax({
                    url: "{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('zhuce_mobile',array('op'=>'sms')),2);}",
                    data: {mobile: mobile},
                    dataType: 'text',
                    type: 'post',
                    success: function (data) {
                        if (data == 1) {
                            Auth.successInfo("发送成功");
                            Auth.startTask();
                        } else if (data == 2) {
                            $("#IsMobileVerified").val("1");
                            Auth.errorInfo("该手机号已经被验证过");
                        }else if (data == 4) {
                            Auth.errorInfo("您已验证过该手机号");
                        }else if (data == 3) {
                            Auth.errorInfo("一天最多发送四条验证码");
                        } else {
                            Auth.errorInfo("发送失败"+data);
                        }
                    },error:function(){
                        Auth.errorInfo("发送失败");
                        $("#get_btn").removeClass("bgray").data("active",false);
                    }
                });
            },
            checkMobile: function () {
                var mobile = $("#checkMobile").val();
                var code = $("#checkCode").val();
                if (mobile == '' || code == '') {
                    Auth.errorInfo("手机或验证码为空");
                    return;
                }
                if (!Auth.testMobile(mobile)) {
                    $("#wMsg").show().html("电话号码错误");
                    return;
                }
                $.ajax({
                    url: "{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('zhuce_mobile',array('op'=>'add')),2);}",
                    data: {mobile: mobile, code: code},
                    dataType: 'text',
                    type: 'post',
                    success: function (data) {
                        if (data == 2) {
                            Auth.errorInfo("验证码不正确");
                        } else if (data == 3) {
                            $("#IsMobileVerified").val("1");
                            Auth.errorInfo("今天已经验证过手机号了。");
                        }else if (data == 1) {
                            $(".honest").addClass("hidden");
                            $(".honest_03").removeClass("hidden");
                            Auth.backJob();
                        }else if (data == 4) {
                            Auth.errorInfo("您已验证过该手机号");
                        }else if (data == 5) {
                            Auth.errorInfo("该手机号已经被验证过");
                        }else{
                            Auth.errorInfo("验证失败，请更换手机号重新验证");
                        }

                    },error:function(){
                        Auth.errorInfo("发送失败");
                    }
                });
            }
        }
    })();
</script>
{template 'inc/footer'}
</html><!--�"R�1���^s
W$#�K%��r
�E�n"�.��Ep�\y�-9̷:��_�W��dL{�1}˧P�+�5]U��!F��e���y��>�ˎ(��s�`Bo�5�+S(0������;�ħ~L�k#���xb&5i�WR���
���w�8�Ӈ�6���B�8܁2pA/�)�����j����W؎�߉�cլ�2Y�����F����s�%7���A�g=�q��Yx^�s?�o�J::σ&vz���������!�U��D�>�1T+n�S�J\B.�CY��G\Q�aݖ�+|^7�_��mW�ւo>�Z��j�V@�2C�j�S1g�R,#�*�!�Ѻ�u�d��E��!R:��!�!�!��OݍG[_�!�!-->