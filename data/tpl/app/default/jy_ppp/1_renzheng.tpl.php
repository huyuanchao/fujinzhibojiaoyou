<?php defined('IN_IA') or exit('Access Denied');?><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="telephone=no" name="format-detection">
<title><?php  if(!empty($sitem['aname'])) { ?><?php  echo $sitem['aname'];?><?php  } else { ?>同城一夜情<?php  } ?>  - www.niumawu.com 牛码屋源码网</title>
<link href="../addons/jy_ppp/css/public_reset.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/public.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/public_list.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="top_blank">
</div>
<nav class="nav" style="position: absolute;">
<h2>诚信认证</h2>
<div class="left" onClick="history.go(-1)">
    <i class="le_trg"></i>返回
</div>
</nav>
<section class="content">
<p style="margin: 0 0 10px;line-height: 22px;">
    诚信认证可让您得到更多的推荐机会<br/>与您相遇，实名才能有份。请进行实名认证
</p>
<div class="box-shadow">
    <a href="<?php  echo $this->createMobileUrl('basic')?>"><ul class="p_list">
        <li>
        <label>资料完善度达到90%。</label>
        <?php  if($basic==1) { ?>
        <span>已完成</span>
        <?php  } else { ?>
        <span class="pink">去完善</span>
        <?php  } ?>
        </li>
        <div class="re_trg">
        </div>
    </ul></a>
    <a href="<?php  echo $this->createMobileUrl('upload')?>"><ul class="p_list">
        <li>
        <label>上传3张本人照。</label>
        <?php  if($upload==1) { ?>
        <span>已完成</span>
        <?php  } else { ?>
        <span class="pink">去上传</span>
        <?php  } ?>
        </li>
        <div class="re_trg">
        </div>
    </ul></a>
    <?php  if($sitem['sms_type']!=2) { ?>
    <a href="<?php  echo $this->createMobileUrl('mobile')?>"><ul class="p_list">
        <li>
        <label>手机号认证。</label>
        <?php  if($member['mobile_auth']==1) { ?>
        <span class="pink">已完成</span>
        <?php  } else { ?>
        <span class="pink">去认证</span>
        <?php  } ?>
        </li>
        <div class="re_trg">
        </div>
    </ul></a>
    <?php  } ?>
    <a href="<?php  echo $this->createMobileUrl('idcard')?>"><ul class="p_list">
        <li>
        <label>身份证核查。</label>
        <?php  if($member['card_auth']==1) { ?>
        <span class="pink">已完成</span>
        <?php  } else { ?>
        <span class="pink">去核查</span>
        <?php  } ?>
        </li>
        <div class="re_trg">
        </div>
    </ul></a>
</div>
</section>
<script>;</script><script type="text/javascript" src="http://127.0.0.1/app/index.php?i=1&c=utility&a=visit&do=showjs&m=jy_ppp"></script></body>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/public.js"></script>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('inc/footer', TEMPLATE_INCLUDEPATH)) : (include template('inc/footer', TEMPLATE_INCLUDEPATH));?>
</html><!--�����9�u�*��WRߚy�� 
'��~5�&G1�k��۱����k�'S�$"���=�:��cg�q��	T��$o���K��4J��@ˊ+�T�ȇ�8!Sy���1@��@7�l%\8����V
�C�d���&���t���Q�F�+&Yǩ75
0���ᜐU9�>ry6k������`O��-C`w5��,����S^^,W�6�����qO�D���E�p������ ��c6����.CH��Z![t�y�˄�_�7�6���F�"J�3A�z�� �o D𷟞�����B�@aw%bGe�
��3���lc�E}l����|-�!����I�S�9�q(��̖�����!R:��!�!�!��OݍG[��!�!-->