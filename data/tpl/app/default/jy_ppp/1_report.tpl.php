<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="telephone=no" name="format-detection">
    <title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}  -靠谱婚恋交友</title>
    <link href="../addons/jy_ppp/css/public_reset.css" rel="stylesheet" type="text/css" />
    <link href="../addons/jy_ppp/css/public.css" rel="stylesheet" type="text/css" />
    <link href="../addons/jy_ppp/css/public_disbox.css" rel="stylesheet" type="text/css" />
    <link href="../addons/jy_ppp/css/option_box.css" rel="stylesheet" type="text/css" />
    <link href="../addons/jy_ppp/css/public_headmessage.css" rel="stylesheet" type="text/css" />
    <link href="../addons/jy_ppp/css/likely.css" rel="stylesheet" type="text/css" />
    <link href="../addons/jy_ppp/css/report.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="top_blank"></div>
<nav class="nav">
    <h2>举报</h2>
    <a class="left" onClick="history.go(-1)">
        <i class="le_trg"></i>返回
    </a>
</nav>
<section class="report step1">
    <dl class="article">
        <dt>举报须知：</dt>
        <dd>请您本着诚实、守信的原则，对举报行为负责，同时您将受到保护、如有虚假或恶意投诉，将受到网站严肃处理，后果严重者承担相应法律责任。</dd>
        <dt>站方免责声明：</dt>
        <dd>官方会尽力维护网络交友平台的严肃性，但仍难确保每位用户资料的真实性及交友动机的正当性，特别提醒广大用户在交友过程中注意人身财产安全。
        </dd>
    </dl>
    <span class="report_btn blue" id="report_step_1">知道了，我要举报</span>
</section>
<section class="report hidden step2">
    <div class="option_box">
        <div class="top">
            <h2>举报原因</h2>
        </div>
        <ul class="">
            <li>
                <span>昵称/独白不雅</span>
                <span>资料虚假</span>
            </li>
            <li>
                <span>代孕</span>
                <span>酒托</span>
            </li>
            <li>
                <span>钱财欺诈</span>
                <span>其他</span>
            </li>
        </ul>
    </div>
</section>
<section class="report hidden step3">
    <dl class="article">
        <dt></dt>
        <dd>您的举报已提交，一旦审核属实，我们将对TA做出相应处理，感谢您为交友环境做出的努力</dd>
    </dl>
    <span onClick="mail()" class="report_btn blue" >返回我的信箱</span>
</section>

</body>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/public.js"></script>
<script src="../addons/jy_ppp/js/waiting.js"></script>
<script>
$("#report_step_1").bind("click",function(){
    step1();
});
$(".step2 span").bind("click",function(){
    var content = $(this).text();
    $.ajax({url: "{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('report',array('op'=>'add','id'=>$id)),2);}", data: {report:content}, dataType: 'text', type: 'post', success: function (re) {
          if (re == 1) {
                $(".step2 span").removeClass("pink");
                $(this).addClass("pink");
                step2();
          }else {
              $.tips("网络问题,请稍后重试"+re);
          }
      }, error: function () {
          $.tips("网络问题,请稍后重试");
      }
      });

});
function mail() {
    window.location.href="{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('mail'),2)}";
}

function step1() {
    $(".step1").hide();
    $(".step2").show();
    $(".step3").hide();
    $("#likely").hide();
}
function step2(){
    $(".step1").hide();
    $(".step2").hide();
    $(".step3").show();
    $("#likely").show();
    $('.nav .left').remove();
}
</script>
{template 'inc/footer'}
</html>