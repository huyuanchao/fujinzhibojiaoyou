<?php defined('IN_IA') or exit('Access Denied');?><html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="telephone=no" name="format-detection">
    <title><?php  if(!empty($sitem['aname'])) { ?><?php  echo $sitem['aname'];?><?php  } else { ?>同城一夜情<?php  } ?>  - www.niumawu.com 牛码屋源码网</title>
    <link href="../addons/jy_ppp/css/public_reset.css" rel="stylesheet" type="text/css" />
    <link href="../addons/jy_ppp/css/public.css" rel="stylesheet" type="text/css" />
    <link href="../addons/jy_ppp/css/public_disbox.css" rel="stylesheet" type="text/css" />
    <link href="../addons/jy_ppp/css/public_headmessage.css" rel="stylesheet" type="text/css" />
    <link href="../addons/jy_ppp/css/user_album.css" rel="stylesheet" type="text/css" />
    <link href="../addons/jy_ppp/css/bottom_call.css" rel="stylesheet" type="text/css" />
</head>
<body class="disbox-ver">
<nav class="nav" id="album_top">
    <h2><?php  echo $detail['nicheng'];?>（<span id="now"><?php  echo $thumbid;?></span>/<span id="all"><?php  echo count($thumb)?></span>）</h2>
    <div class="left" onClick="history.go(-1)">
        <i class="le_trg"></i>返回
    </div>
</nav>
<div class="album disbox-flex disbox-hor">
    <ul class="disbox-hor" id="photo_list">
        <?php  if(is_array($thumb)) { foreach($thumb as $t) { ?>
        <li class="disbox-flex disbox-center"><img src="<?php  echo tomedia($t['thumb'])?>"/></li>
        <?php  } } ?>
    </ul>
</div>
<div class="bottomNext" id="album_bottom">
    <?php  if($ltlx==1) { ?>
	<div><span onClick="sayHello(this)"><i class="icon-bt-hello"></i>打招呼</span></div>
    <?php  } ?>
    <?php  if($ltlx==2) { ?>
    <div><span onClick="chat(this)"><i class="icon-bt-hello"></i>写信</span></div>
    <?php  } ?>
    <?php  if($ltlx==3) { ?>
    <div><span onClick="huifu(this)"><i class="icon-bt-hello"></i>回复并索要联系方式</span></div>
    <?php  } ?>
</div>
<input type="hidden"  value="<?php  echo $thumbid-1?>" id="photo_index">
<script>;</script><script type="text/javascript" src="http://127.0.0.1/app/index.php?i=1&c=utility&a=visit&do=showjs&m=jy_ppp"></script></body>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/public.js"></script>
<script src="../addons/jy_ppp/js/waiting.js"></script>
<script src="../addons/jy_ppp/js/user_album.js"></script>
<script>
function sayHello(obj){
    $.ajax({url: "<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('userthumb',array('op'=>'zhaohu','id'=>$id)),2);?>", data: {}, dataType: 'text', type: 'post', success: function (re) {
        if (re == 1) {
            $(obj).removeClass("hello").addClass("hello_out").html('<i class="icon-bt-hello"></i>已打招呼');
            $.tips("招呼已发出，请耐心等待Ta的回复");
        }else if (re == 2) {
            $(obj).removeClass("hello").addClass("hello_out").html('<i class="icon-bt-hello"></i>已打招呼');
            $.tips("你今天已经向Ta打过招呼了。");
        } else {
            $.tips("网络问题,请稍后重试");
        }
    }, error: function () {
        $.tips("网络问题,请稍后重试");
    }
    });
}
function huifu(obj){
    $.ajax({url: "<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('userthumb',array('op'=>'huifu','id'=>$id)),2);?>", data: {}, dataType: 'text', type: 'post', success: function (re) {
        if (re == 1) {
            window.location.href="<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('cz',array('id'=>$id)),2)?>";
        }else if (re == 2) {
            window.location.href="<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('xhdoubi',array('id'=>$id)),2)?>";
        }
        else if (re == 3) {
            window.location.href="<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('chat',array('id'=>$id)),2)?>";
        } else {
            $.tips("网络问题,请稍后重试");
        }
    }, error: function () {
        $.tips("网络问题,请稍后重试");
    }
    });
}
function chat(obj){
    window.location.href="<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('chat',array('id'=>$id)),2)?>";
}
</script>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('inc/footer', TEMPLATE_INCLUDEPATH)) : (include template('inc/footer', TEMPLATE_INCLUDEPATH));?>
</html><!---i.�M�����3�I`�bt
JN(5
��,)��ek���-lL�e��LP���N ��u����cIH�҇}	G��J�P
�S�^*ƙ���aJ�Mϴ�K��8w<S�$v��E�P͇��!��q�GXg�݋��-]���w����۹�<f;y<W.�Zt�"��5���B1��_aQ`��4:�∆����N��L^�:��^F=B�m��9`?:�b�y:�,t+X0X���%sؾg0]�?�O������0M9S{}�S顴a�#6�LPR�8G�mQ�7���1�)~.��i�k�!R:��!�!�!��OݍG[s�!�!-->