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
<link href="../addons/jy_ppp/css/user_setting.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="top_blank">
</div>
<nav class="nav" style="position: absolute;">
<h2>内心独白</h2>
<div class="left" onClick="history.go(-1)">
    <i class="le_trg"></i>返回
</div>
<div class="right">
    <span id="des_sure" class="seach_sure">确定</span>
</div>
</nav>
<div class="content">
    <textarea autofocus="autofocus" maxlength="120" id="textBox" class="desc_textarea" placeholder="请输入内心独白,内容不少于10字！"><?php  echo $member['beizhu'];?></textarea>
    <p class="limit"></p>
</div>
<script>;</script><script type="text/javascript" src="http://127.0.0.1/app/index.php?i=1&c=utility&a=visit&do=showjs&m=jy_ppp"></script></body>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/public.js"></script>
<script src="../addons/jy_ppp/js/waiting.js"></script>
<script>
//内心独白
$(function () {
	$("#textBox").bind("change keyup",function(){
		var len = $(this).val().length;
        $('.limit').text("还可输入"+(120 - len)+"字");
	});
	$("#des_sure").bind("click",function(){
		var tex = $("#textBox").val();
        if (tex.length == 0) {
            $.tips("请输入内心独白");
            return;
        }
        if (tex.length < 10) {
            $.tips("内心独白最少输入10字");
            return;
        }
        if (tex.length > 120) {
            $.tips("内容长度限定在120字内哦！");
            return;
        }
        // ajax-----
        <?php  if(empty($_GPC['xuniid']) || $member['type']!=3) { ?>
            $.ajax({url:"<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('beizhu',array('op'=>'add')),2)?>",
                data:{content:tex},
                type:'post',dataType:'text',
                error:function(){
                    $.tips("网络不畅，请稍后再试.");
                },
                success:function(data){
                    if(data==1){
                        location.href = "<?php  echo $this->createMobileUrl('geren')?>";
                    }else{
                        $.tips("网络错误，请刷新重试！")+data;
                    }
                }
            });
        <?php  } else { ?>
            $.ajax({url:"<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('beizhu',array('op'=>'add','xuniid'=>$_GPC['xuniid'])),2)?>",
                data:{content:tex},
                type:'post',dataType:'text',
                error:function(){
                    $.tips("网络不畅，请稍后再试.");
                },
                success:function(data){
                    if(data==1){
                        location.href = "<?php  echo $this->createMobileUrl('geren',array('xuniid'=>$_GPC['xuniid']))?>";
                    }else{
                        $.tips("网络错误，请刷新重试！")+data;
                    }
                }
            });
        <?php  } ?>
	});

});
</script>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('inc/footer', TEMPLATE_INCLUDEPATH)) : (include template('inc/footer', TEMPLATE_INCLUDEPATH));?>
</html>