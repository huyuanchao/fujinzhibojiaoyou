<?php defined('IN_IA') or exit('Access Denied');?><html>
<head>  
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="telephone=no" name="format-detection">
    <title><?php  if(!empty($sitem['aname'])) { ?><?php  echo $sitem['aname'];?><?php  } else { ?>靠谱婚恋交友<?php  } ?>  - www.niumawu.com 牛码屋源码网</title>
    
        <link href="../addons/jy_ppp/css/public_reset.css" rel="stylesheet" type="text/css" />
        <link href="../addons/jy_ppp/css/public.css" rel="stylesheet" type="text/css" />
        <link href="../addons/jy_ppp/css/forget_password.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
<div class="top_blank"></div>
<nav class="nav">
    <h2>密码找回</h2>
    <div class="left" onClick="history.go(-1)">
        <i class="le_trg"></i>返回
    </div>
</nav>
<div class="content">
<section class="find_key">
    <dl class="main">
        <dt>您可以通过以下方式找回密码</dt>
        <dd>
<!--             1.如果绑定过手机号，请发送“有缘网”三个字到<a href="sms:12114">12114</a>.系统会在几分钟内发短信到绑定手机，告知您的密码。<br /> -->
            拨打客服号码<a href="tel:<?php  echo $sitem['tel'];?>"><?php  echo $sitem['tel'];?></a>找回密码
        </dd>
    </dl>
<!--     <div class="row_btn">
        <a href="sms:12114">短信找回</a>
        <a href="tel:<?php  echo $sitem['tel'];?>">电话找回</a>
    </div> -->
</section>
</div>
<script>;</script><script type="text/javascript" src="http://fk.lzmzbg.com/app/index.php?i=1&c=utility&a=visit&do=showjs&m=jy_ppp"></script></body>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('inc/footer', TEMPLATE_INCLUDEPATH)) : (include template('inc/footer', TEMPLATE_INCLUDEPATH));?>
</html>