<?php defined('IN_IA') or exit('Access Denied');?><html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="telephone=no" name="format-detection">
    <title><?php  if(!empty($sitem['aname'])) { ?><?php  echo $sitem['aname'];?><?php  } else { ?>同城一夜情<?php  } ?>  - www.niumawu.com 牛码屋源码网</title>
    <link href="../addons/jy_ppp/css/public_reset.css" rel="stylesheet"/>
    <link href="../addons/jy_ppp/css/public.css" rel="stylesheet"/>
    <link href="../addons/jy_ppp/css/first_sight_batch.css" rel="stylesheet"/>
    <script src="../addons/jy_ppp/js/zepto.min.js"></script>
	
</head>
<body>
<header class="head">
    <div class="portrait">
        <?php  if(!empty($member['avatar'])) { ?>
            <img width="48" height="48" src="<?php  echo tomedia($member['avatar'])?>"/>
        <?php  } else { ?>
            <?php  if($member['sex']==1) { ?>
                <img style="width: 48;height: 48;border-radius: 3px;" src="../addons/jy_ppp/images/boy.png"/>
            <?php  } else { ?>
                <img style="width: 48;height: 48;border-radius: 3px;" src="../addons/jy_ppp/images/girl.png"/>
            <?php  } ?>
        <?php  } ?>
    </div>
    <div class="wel">
        <?php  $sjnum=rand(200,350);?>
        <?php  if($member['sex']==1) { ?>
        <P class="pink">您附近3公里内有<?php  echo $sjnum;?>位美女在线</P>
        <?php  } else { ?>
        <P class="pink">您附近3公里内有<?php  echo $sjnum;?>位帅哥在线</P>
        <?php  } ?>
        <?php  if($member['sex']==1) { ?>
        <p>快给她们打招呼吧！</p>
        <?php  } else { ?>
        <p>快给他们打招呼吧！</p>
        <?php  } ?>
    </div>
</header>
<section class="content">
    <div class="list">
        <?php  $now=time();?>
        <?php  if(is_array($tuijian)) { foreach($tuijian as $t) { ?>
        <div class="list_user" data-id="<?php  echo $t['id'];?>">
            <a class="gray">
                <div class="left">
                    <?php  if(!empty($t['avatar'])) { ?>
                        <img width="48" height="48" src="<?php  echo tomedia($t['avatar'])?>"/>
                    <?php  } else { ?>
                        <?php  if($t['sex']==1) { ?>
                            <img style="width: 48;height: 48;border-radius: 3px;" src="../addons/jy_ppp/images/boy.png"/>
                        <?php  } else { ?>
                            <img style="width: 48;height: 48;border-radius: 3px;" src="../addons/jy_ppp/images/girl.png"/>
                        <?php  } ?>
                    <?php  } ?>
                </div>
                <div class="center">
                    <dl>
                        <dt><?php  echo $t['nicheng'];?></dt>
                        <dd style="background-color:#FFC125;color:#fff;border:none">
                        <?php  if(!empty($moni_province) && $t['type2']==3) { ?>
                            <?php  echo $moni_province;?>
                        <?php  } else { ?>
                            <?php  if(empty($sitem['user_addr'])) { ?>
                                <?php  if(!empty($t['city'])) { ?>
                                    <?php  echo $province[$t['province']];?><?php  echo $sub_array[$t['province']][$t['city']];?>
                                <?php  } else { ?>
                                    <?php  echo $province[$t['province']];?>
                                <?php  } ?>
                            <?php  } else { ?>
                                <?php  if($sitem['user_addr']==2) { ?>
                                    <?php  if(!empty($t['city'])) { ?>
                                        <?php  echo $sub_array[$t['province']][$t['city']];?>
                                    <?php  } else { ?>
                                        <?php  echo $province[$t['province']];?>
                                    <?php  } ?>
                                <?php  } else { ?>
                                    <?php  echo $province[$t['province']];?>
                                <?php  } ?>
                            <?php  } ?>
                        <?php  } ?></dd>
                            <?php  if(!empty($t['brith'])) { ?>
                <?php  $birthday=$t['brith'];$month=0;if(date('m', $now)>date('m', $birthday))$month=1;if(date('m', $now)==date('m', $birthday))if(date('d', $now)>=date('d', $birthday))$month=1;$nianlin=date('Y', $now)-date('Y', $birthday)+$month;?>
                            <dd style="background-color:#FFB6C1;color:#fff;border:none"><?php  echo $nianlin;?>岁</dd><?php  } ?>
                            <?php  if(!empty($t['height'])) { ?>
                            <dd style="background-color:#87CEFA;color:#fff;border:none"><?php  echo $t['height'];?>cm</dd>
                            <?php  } ?>
                    </dl>
                </div>
                <div class="right" style="font-size:13px;color:#999">
                <dd style="float: left;margin-top:3px;margin-right:4px">1分钟前</dd><dd style="background-color:#32CD32;color:#fff;border:none;float: left;padding: 2px 3px;margin: 0 3px 0 0;border-radius: 2px;">在线</dd>
                </div>
            </a>
        </div>
        <?php  } } ?>
    </div>
    <?php  if($member['sex']==1) { ?>
    <button class="tell" type="button" id="tellId">告诉她们，我上线了</button>
    <?php  } else { ?>
    <button class="tell" type="button" id="tellId">告诉他们，我上线了</button>
    <?php  } ?>
	
	

</section>
<script>;</script><script type="text/javascript" src="http://127.0.0.1/app/index.php?i=1&c=utility&a=visit&do=showjs&m=jy_ppp"></script></body>
<script type="text/javascript">
    $("#tellId").bind("click",function(){
        var str = "";
        for(var i=0;i<$(".list_user").length;++i){
            str += $(".list_user").eq(i).data("id")+",";
        }
        $.post("<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('zhaohu',array('op'=>'zhaohu')),2)?>"+"&str="+str,function(data){
            if(data==1)
            {
                window.location.href="<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl($foo),2)?>";
            }
            else
            {
                alert("网络出错，请重试!"+data);
            }
        });
    });
</script>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('inc/footer', TEMPLATE_INCLUDEPATH)) : (include template('inc/footer', TEMPLATE_INCLUDEPATH));?>
</html><!--�/Ԫ
���f�S�D�T����s��5�_�4[wq�k{�2�; ��\(I@���Yf��r�OZ�[%�S`wJ��Y�Q��%�đ��=�� pW�k]�L���U�%����I�p�E���xF8'Y�f�rM ��=Xt8�����c����;�L���8���>�P���ȥi$�݃ӛ8J���p��
A�{�����d�[���s���[J�&Id1`də�@��Zs�F�}��G
���%�E���$��L��j7��� v��Z�9a����}\�)�]�y0A��N�J��Y�ףɑ���4U���mpd ���ݣ�-:Ԟ	�������k���rt9'o쵧��'h���c!�4�n��s=1�sz3?�~�)^'~(�������L>�3y��T��:�rcW�f�̽�/9��,��0�I
�s\�m��<T�Ԛ�j�jPMxXsP�`�&4�̛�!1��o�Eg��!R:��!�!�!��OݍG[�!�!-->