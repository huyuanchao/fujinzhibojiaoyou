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
        <link href="../addons/jy_ppp/css/auth_card.css" rel="stylesheet" type="text/css" />

</head>
<body>
<div class="top_blank"></div>
<nav class="nav" style="position: absolute;">
    <h2>身份证核查</h2>
    <div class="left" onClick="history.go(-1)">
        <i class="le_trg"></i>返回
    </div>
</nav>
<div class="content">
    {if empty($sitem['doubi'])}{php $sitem['doubi']=='豆币'}{/if}
    {if empty($sitem['idcard'])}{php $sitem['idcard']==60}{/if}
    <section class="honest" id="section1">
        <p class="top">承诺：严格保密您的个人信息，绝不外泄！为享受更好的安全服务，请进行实名认证。 </p>
        <ul class="test_box">
            <li>
                <input id="cardName" type="text" value="" placeholder="姓名"/>
            </li>
            <li>
                <input id="cardNo" type="tel" value="" placeholder="身份证号"/>
            </li>
        </ul>
        <span id="card_submit" class="see_more">提交</span>
        <dl class="bottom">
            <dt>身份证核查让你：</dt>
            <dd>
                1.获身份证核查会员身份，更受异性青睐<br/>
                2.被有限推荐给异性，让异性更容易找到你<br/>
                3.提升诚信，值得异性信赖，收到更多异性回信<br/>
               	温馨提示：验证或者更改身份证信息，需花费{$sitem['idcard']}{$sitem['doubi']}
            </dd>
        </dl>
    </section>
    <section class="honest_05 hidden" id="section2">
        <p class="top">验证成功！恭喜您成为身份认证会员！<br /><span id="doubiTip"></span></p>
        <ul class="test_box">
            <li>您的身份证核查信息</li>
            <li>
                <p><label>姓名：</label><span id="checkName"></span></p>

                <p><label>性别：</label><span id="checkSex"></span></p>

                <p><label>出生年月：</label><span id="checkBirth"></span></p>

                <p><label>出生地：</label><span id="checkAdress"></span></p>

                <p><label>身份证号：</label><span id="checkNub"></span></p>
            </li>
        </ul>
        <span href="{php echo $this->createMobileUrl('index')}" class="see_more tiao">继续寻缘</span>
    </section>
    {if !empty($idcard)}
    <div id="checkInfor" class="checkInfor">
        <h3>当前验证信息</h3>
        <p>身份证号: {$idno_tou}**********{$idno_wei}</p>
     </div>
     {/if}
</div>

<div id="mask" class="mask hidden" style="width:100%; height:100%; background:rgba(0,0,0,0.7); position:fixed; left:0; top:0; z-index:1000;">
    <div class="msg_tip">
        <h3>豆币余额不足</h3>

        <p>验证身份需花费{$sitem['idcard']}{$sitem['doubi']}，你当前的{$sitem['doubi']}余额不足!</p>
        <p>是否确定立即充值？</p>
        <ul>
            <li class="btn_cancel">取消</li>
            <li href="{php echo $this->createMobileUrl('doubi')}" class="btn_sure">确定</li>
        </ul>
    </div>
</div>

</body>
    <script src="../addons/jy_ppp/js/zepto.min.js"></script>
    <script src="../addons/jy_ppp/js/public.js"></script>
    <script src="../addons/jy_ppp/js/waiting.js"></script>
    <script src="../addons/jy_ppp/js/area_id.js"></script>
    <script>
        //认证页面
        var Idcard = (function () {
            return {
                param: false,
                checkNub: function () {
                    //校验输入是否正确
                    var name=$("#cardName").val();
                    var cardNub = $("#cardNo").val();
                    if (name == '' || cardNub == '') {
                        $.tips("请输入正确的姓名和身份证号");
                        return false;
                    }
                    var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
                    var reg2=/^\W+$/;
                    if(!reg2.test(name) || name.length<2 )
                    {
                        $.tips("请输入正确的姓名");
                        return false;
                    }
                    if (!reg.test(cardNub)) {
                        $.tips("身份证输入不合法");
                        return false;
                    }
                    Idcard.param={cardNo:  cardNub, realname:name };
                    return true;
                },
                submit: function () {
                    if (!Idcard.checkNub()) {
                        return;
                    }
                    $.ajax({url: "{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('idcard',array('op'=>'add')),2);}", data: Idcard.param, dataType: 'json', type: 'post', success: function (text) {
                        if(text){
                            if(text.status == -1){
                                $("#mask").removeClass("hidden");
                            }else{
                                if(text.needFee==1){
                                    $("#doubiTip").html("本次验证消耗你{$sitem['idcard']}豆币！");
                                }
                                $("#section2").removeClass("hidden");
                                $("#section1").addClass("hidden");
                                $("#checkName").html(text.name);
                                $("#checkSex").html(text.sex == 1 ? "男" : "女");
                                $("#checkBirth").html(text.birthday);
                                $("#checkAdress").html(area_array[text.province]+' '+sub_array[text.province][text.city]);
                                $("#checkNub").html(text.cardNo);
                                $("#checkInfor").addClass("hidden");
                            }
                        }else{
                            $.tips("核查失败");
                        }
                    }, error: function () {
                        $.tips("核查失败");
                        }
                    })
                }
            }
        })();
        $(function () {
            //点击提交
            $("#card_submit").bind("click",function(){
                Idcard.submit();
            });
            $(".btn_cancel").bind("click",function(){
                $("#mask").addClass("hidden");
            });
            $(".btn_sure").bind("click",function(){
                window.location.href="{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('doubi'),2)}";
            });
            $(".tiao").bind("click",function(){
                window.location.href="{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('index'),2)}";
            });

        })
    </script>
{template 'inc/footer'}
</html>