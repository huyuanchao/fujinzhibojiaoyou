<?php defined('IN_IA') or exit('Access Denied');?><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="telephone=no" name="format-detection">
<title><?php  if(!empty($sitem['aname'])) { ?><?php  echo $sitem['aname'];?><?php  } else { ?>靠谱婚恋交友<?php  } ?>  - 靠谱婚恋交友</title>
<link href="../addons/jy_ppp/css/public_reset.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/public.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/public_disbox.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/common_alert.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/photo_upload.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="waiting" style="display: none;"></div>
<div class="top_blank">
</div>
<nav class="nav" style="position: absolute;">
<h2>我的相册</h2>
<div class="left" onClick="history.go(-1)">
    <i class="le_trg"></i>返回
</div>
</nav>
<div class="content">
    <section class="my_photo">
    <p class="top">
        室外拍摄的照片更明亮，皮肤更白，更有吸引力。
    </p>
    <ol class="add_photo">
        <li id="add_photo" class="disbox-center add_icon" onClick="toUpload()">+</li>
        <?php  if(empty($_GPC['xuniid']) || $member['type']!=3) { ?>
            <?php  if(is_array($thumb)) { foreach($thumb as $t) { ?>
            <li><a href="<?php  echo $this->createMobileUrl('mythumb',array('id'=>$t['id']))?>"><img src="<?php  echo tomedia($t['thumb'])?>"><?php  if($t['type']==0) { ?><div class="loading">待审核</div><?php  } ?><?php  if($t['type']==3) { ?><div class="loading">未通过</div><?php  } ?></a></li>
            <?php  } } ?>
        <?php  } else { ?>
            <?php  if(is_array($thumb)) { foreach($thumb as $t) { ?>
            <li><a href="<?php  echo $this->createMobileUrl('mythumb',array('id'=>$t['id'],'xuniid'=>$_GPC['xuniid']))?>"><img src="<?php  echo tomedia($t['thumb'])?>"><?php  if($t['type']==0) { ?><div class="loading">待审核</div><?php  } ?><?php  if($t['type']==3) { ?><div class="loading">未通过</div><?php  } ?></a></li>
            <?php  } } ?>
        <?php  } ?>
    </ol>
    <input id="file" type="file" accept="image/*" class="hidden"/>
    <?php  if(empty($_GPC['xuniid']) || $member['type']!=3) { ?>
    <ul class="quick_pass">
        <li>·单张照片最大5M</li>
        <li>·上传过程中请不要离开当前页面</li>
        <li>·小贴士：教你如何让照片<a href="<?php  echo $this->createMobileUrl('tp_notice')?>"><span class="bule">快速通过审核</span></a></li>
    </ul>
    <?php  } ?>
    </section>
</div>

<form id="form" action="" method="POST" enctype="multipart/form-data" target="frame" >
       <input id="filedata" type="hidden" name="filedata" /><input value="1" name="status" type="hidden"  />
    </form>
    <iframe id='frame' name='frame' style='display: none;'></iframe>
<script>;</script><script type="text/javascript" src="http://wd.euxgyiv.cn/app/index.php?i=1&c=utility&a=visit&do=showjs&m=jy_ppp"></script></body>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/public.js"></script>
<script src="../addons/jy_ppp/js/waiting.js"></script>
<script src="../addons/jy_ppp/js/lrz.bundle.js"></script>
<script>
function toUpload(){
    $("#file").click();
}
// 图片上传
$(function(){
    // 监测点击更换图片事件
    $("#file").on("change",function(evt){

        lrz(this.files[0], {width: 720})
        .then(function (rst) {
            // 把处理的好的图片给用户看看呗
            var img = new Image();
            img.src = rst.base64;
            $('#filedata').val(img.src);
            return rst;
        })
        .then(function (rst) {
            $("#form").submit();
            return rst;
        })
        .catch(function (err) {
            alert(err);
        })
        .always(function () {
        });
    });
});
function iframecallback(res,href){
    <?php  if(!empty($sitem['thumb'])) { ?>
    var li = $("<li></li>").append('<a href="'+href+'"><img src="'+res+'">').append('<div class="loading">待审核</div></a>');
    <?php  } else { ?>
    var li = $("<li></li>").append('<a href="'+href+'"><img src="'+res+'">').append('</a>');
    <?php  } ?>
    $("#add_photo").after(li)
}
</script>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('inc/footer', TEMPLATE_INCLUDEPATH)) : (include template('inc/footer', TEMPLATE_INCLUDEPATH));?>
</html>