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
<link href="../addons/jy_ppp/css/option_box.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/user_setting.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="top_blank">
</div>
<nav class="nav" style="position: absolute;">
<h2>详细资料</h2>
<div class="left" onClick="history.go(-1)">
    <i class="le_trg"></i>返回
</div>
<div class="right">
    <span id="search_sure" class="seach_sure">确定</span>
</div>
</nav>
<div class="content">
    <ul class="habit-list">
        <li class="user_mession">
        <label class="left">是否想要小孩</label>
        <div class="right">
            <div class="select">
                <span class="value">
                <?php  if(empty($desc['child'])) { ?>
                    <span class="pink">请选择</span></span>
                <?php  } else { ?>
                    <?php  echo $desc['child'];?></span>
                <?php  } ?>
                <i class="bot_trged"></i>
                <select id="need_bady" class="value_select">
                    <option value="0" style="display:none">请选择</option>
                    <option value="想" <?php  if($desc['child']=='想') { ?> selected="selected" <?php  } ?>>想</option>
                    <option value="不想" <?php  if($desc['child']=='不想') { ?> selected="selected" <?php  } ?>>不想</option>
                    <option value="还没想好" <?php  if($desc['child']=='还没想好') { ?> selected="selected" <?php  } ?>>还没想好</option>
                </select>
            </div>
        </div>
        </li>
        <li class="user_mession">
        <label class="left">能否接受异地恋</label>
        <div class="right">
            <div class="select">
                <span class="value">
                <?php  if(empty($desc['yidi'])) { ?>
                    <span class="pink">请选择</span></span>
                <?php  } else { ?>
                    <?php  echo $desc['yidi'];?></span>
                <?php  } ?>
                <i class="bot_trged"></i>
                <select id="diff_lover" class="value_select">
                    <option value="0" style="display:none">请选择</option>
                    <option value="能" <?php  if($desc['yidi']=='能') { ?> selected="selected" <?php  } ?>>能</option>
                    <option value="看情况" <?php  if($desc['yidi']=='看情况') { ?> selected="selected" <?php  } ?>>看情况</option>
                    <option value="不能" <?php  if($desc['yidi']=='不能') { ?> selected="selected" <?php  } ?>>不能</option>
                </select>
            </div>
        </div>
        </li>
        <li class="user_mession">
        <label class="left">喜欢的异性类型</label>
        <div class="right">
            <div class="select">
                <span class="value">
                <?php  if(empty($desc['leixin'])) { ?>
                    <span class="pink">请选择</span></span>
                <?php  } else { ?>
                    <?php  echo $desc['leixin'];?></span>
                <?php  } ?>
                <i class="bot_trged"></i>
                <select id="love_type" class="value_select">
                    <option value="0" style="display:none">请选择</option>
                    <option value="活泼开朗" <?php  if($desc['leixin']=='活泼开朗') { ?> selected="selected" <?php  } ?>>活泼开朗</option>
                    <option value="善解人意" <?php  if($desc['leixin']=='善解人意') { ?> selected="selected" <?php  } ?>>善解人意</option>
                    <option value="娇小可爱" <?php  if($desc['leixin']=='娇小可爱') { ?> selected="selected" <?php  } ?>>娇小可爱</option>
                    <option value="温柔体贴" <?php  if($desc['leixin']=='温柔体贴') { ?> selected="selected" <?php  } ?>>温柔体贴</option>
                    <option value="落落大方" <?php  if($desc['leixin']=='落落大方') { ?> selected="selected" <?php  } ?>>落落大方</option>
                    <option value="成熟魅力" <?php  if($desc['leixin']=='成熟魅力') { ?> selected="selected" <?php  } ?>>成熟魅力</option>
                    <option value="眉清目秀" <?php  if($desc['leixin']=='眉清目秀') { ?> selected="selected" <?php  } ?>>眉清目秀</option>
                    <option value="性感妩媚" <?php  if($desc['leixin']=='性感妩媚') { ?> selected="selected" <?php  } ?>>性感妩媚</option>
                    <option value="雍容华贵" <?php  if($desc['leixin']=='雍容华贵') { ?> selected="selected" <?php  } ?>>雍容华贵</option>
                </select>
            </div>
        </div>
        </li>
        <li class="user_mession">
        <label class="left">能否接受婚前性行为</label>
        <div class="right">
            <div class="select">
                <span class="value">
                <?php  if(empty($desc['sex'])) { ?>
                    <span class="pink">请选择</span></span>
                <?php  } else { ?>
                    <?php  echo $desc['sex'];?></span>
                <?php  } ?>
                <i class="bot_trged"></i>
                <select id="sex_first" class="value_select">
                    <option value="0" style="display:none">请选择</option>
                    <option value="能" <?php  if($desc['sex']=='能') { ?> selected="selected" <?php  } ?>>能</option>
                    <option value="看情况" <?php  if($desc['sex']=='看情况') { ?> selected="selected" <?php  } ?>>看情况</option>
                    <option value="不能" <?php  if($desc['sex']=='不能') { ?> selected="selected" <?php  } ?>>不能</option>
                </select>
            </div>
        </div>
        </li>
        <li class="user_mession">
        <label class="left">是否愿意与父母同住</label>
        <div class="right">
            <div class="select">
                <span class="value">
                <?php  if(empty($desc['fumu'])) { ?>
                    <span class="pink">请选择</span></span>
                <?php  } else { ?>
                    <?php  echo $desc['fumu'];?></span>
                <?php  } ?>
                <i class="bot_trged"></i>
                <select id="live_with" class="value_select">
                    <option value="0" style="display:none">请选择</option>
                    <option value="愿意" <?php  if($desc['fumu']=='愿意') { ?> selected="selected" <?php  } ?>>愿意</option>
                    <option value="看情况" <?php  if($desc['fumu']=='看情况') { ?> selected="selected" <?php  } ?>>看情况</option>
                    <option value="不愿意" <?php  if($desc['fumu']=='不愿意') { ?> selected="selected" <?php  } ?>>不愿意</option>
                </select>
            </div>
        </div>
        </li>
        <li class="user_mession">
        <label class="left">魅力部位</label>
        <div class="right">
            <div class="select">
                <span class="value">
                <?php  if(empty($desc['meili'])) { ?>
                    <span class="pink">请选择</span></span>
                <?php  } else { ?>
                    <?php  echo $desc['meili'];?></span>
                <?php  } ?>
                <i class="bot_trged"></i>
                <select id="charm" class="value_select">
                    <option value="0" style="display:none">请选择</option>
                    <option value="笑容" <?php  if($desc['meili']=='笑容') { ?> selected="selected" <?php  } ?>>笑容</option>
                    <option value="眼睛" <?php  if($desc['meili']=='眼睛') { ?> selected="selected" <?php  } ?>>眼睛</option>
                    <option value="头发" <?php  if($desc['meili']=='头发') { ?> selected="selected" <?php  } ?>>头发</option>
                    <option value="鼻梁" <?php  if($desc['meili']=='鼻梁') { ?> selected="selected" <?php  } ?>>鼻梁</option>
                    <option value="嘴唇" <?php  if($desc['meili']=='嘴唇') { ?> selected="selected" <?php  } ?>>嘴唇</option>
                    <option value="牙齿" <?php  if($desc['meili']=='牙齿') { ?> selected="selected" <?php  } ?>>牙齿</option>
                    <option value="颈部" <?php  if($desc['meili']=='颈部') { ?> selected="selected" <?php  } ?>>颈部</option>
                    <option value="耳朵" <?php  if($desc['meili']=='耳朵') { ?> selected="selected" <?php  } ?>>耳朵</option>
                    <option value="手" <?php  if($desc['meili']=='手') { ?> selected="selected" <?php  } ?>>手</option>
                    <option value="胳膊" <?php  if($desc['meili']=='胳膊') { ?> selected="selected" <?php  } ?>>胳膊</option>
                    <option value="胸部" <?php  if($desc['meili']=='胸部') { ?> selected="selected" <?php  } ?>>胸部</option>
                    <option value="腰部" <?php  if($desc['meili']=='腰部') { ?> selected="selected" <?php  } ?>>腰部</option>
                    <option value="脚" <?php  if($desc['meili']=='脚') { ?> selected="selected" <?php  } ?>>脚</option>
                    <option value="腿" <?php  if($desc['meili']=='腿') { ?> selected="selected" <?php  } ?>>腿</option>
                    <option value="臀部" <?php  if($desc['meili']=='臀部') { ?> selected="selected" <?php  } ?>>臀部</option>
                    <option value="眉毛" <?php  if($desc['meili']=='眉毛') { ?> selected="selected" <?php  } ?>>眉毛</option>
                </select>
            </div>
        </div>
        </li>
    </ul>
    <div class="option_box" style="margin-top: 10px">
        <div class="top">
            <h2>兴趣爱好</h2>
            <span class="unlimit"><span class="pink">可多选</span></span>
        </div>
        <ul class="four_list" id="interest">
            <li>
            <span <?php  if(!empty($a_arr) && in_array('上网',$a_arr)) { ?>class="pink"<?php  } ?> typeid="上网">上网</span>
            <span <?php  if(!empty($a_arr) && in_array('研究汽车',$a_arr)) { ?>class="pink"<?php  } ?> typeid="研究汽车">研究汽车</span>
            <span <?php  if(!empty($a_arr) && in_array('养小动物',$a_arr)) { ?>class="pink"<?php  } ?> typeid="养小动物">养小动物</span>
            <span <?php  if(!empty($a_arr) && in_array('摄影',$a_arr)) { ?>class="pink"<?php  } ?> typeid="摄影">摄影</span>
            </li>
            <li>
            <span <?php  if(!empty($a_arr) && in_array('看电影',$a_arr)) { ?>class="pink"<?php  } ?> typeid="看电影">看电影</span>
            <span <?php  if(!empty($a_arr) && in_array('听音乐',$a_arr)) { ?>class="pink"<?php  } ?> typeid="听音乐">听音乐</span>
            <span <?php  if(!empty($a_arr) && in_array('写作',$a_arr)) { ?>class="pink"<?php  } ?> typeid="写作">写作</span>
            <span <?php  if(!empty($a_arr) && in_array('购物',$a_arr)) { ?>class="pink"<?php  } ?> typeid="购物">购物</span>
            </li>
            <li>
            <span <?php  if(!empty($a_arr) && in_array('做手工艺',$a_arr)) { ?>class="pink"<?php  } ?> typeid="做手工艺">做手工艺</span>
            <span <?php  if(!empty($a_arr) && in_array('做园艺',$a_arr)) { ?>class="pink"<?php  } ?> typeid="做园艺">做园艺</span>
            <span <?php  if(!empty($a_arr) && in_array('跳舞',$a_arr)) { ?>class="pink"<?php  } ?> typeid="跳舞">跳舞</span>
            <span <?php  if(!empty($a_arr) && in_array('看展览',$a_arr)) { ?>class="pink"<?php  } ?> typeid="看展览">看展览</span>
            </li>
            <li>
            <span <?php  if(!empty($a_arr) && in_array('烹饪',$a_arr)) { ?>class="pink"<?php  } ?> typeid="烹饪">烹饪</span>
            <span <?php  if(!empty($a_arr) && in_array('读书',$a_arr)) { ?>class="pink"<?php  } ?> typeid="读书">读书</span>
            <span <?php  if(!empty($a_arr) && in_array('绘画',$a_arr)) { ?>class="pink"<?php  } ?> typeid="绘画">绘画</span>
            <span <?php  if(!empty($a_arr) && in_array('研究计算机',$a_arr)) { ?>class="pink"<?php  } ?> typeid="研究计算机">研究计算机</span>
            </li>
            <li>
            <span <?php  if(!empty($a_arr) && in_array('做运动',$a_arr)) { ?>class="pink"<?php  } ?> typeid="做运动">做运动</span>
            <span <?php  if(!empty($a_arr) && in_array('旅游',$a_arr)) { ?>class="pink"<?php  } ?> typeid="旅游">旅游</span>
            <span <?php  if(!empty($a_arr) && in_array('玩电子游戏',$a_arr)) { ?>class="pink"<?php  } ?> typeid="玩电子游戏">玩电子游戏</span>
            <span <?php  if(!empty($a_arr) && in_array('其他',$a_arr)) { ?>class="pink"<?php  } ?> typeid="其他">其他</span>
            </li>
        </ul>
    </div>
    <div class="option_box" style="margin-top: 10px">
        <div class="top">
            <h2>个人特征</h2>
            <span class="unlimit"><span class="pink">可多选</span></span>
        </div>
        <ul class="four_list" id="char">
            <li class="">
            <span <?php  if(!empty($t_arr) && in_array('孝顺',$t_arr)) { ?>class="pink"<?php  } ?> typeid="孝顺">孝顺</span>
            <span <?php  if(!empty($t_arr) && in_array('自我',$t_arr)) { ?>class="pink"<?php  } ?> typeid="自我">自我</span>
            <span <?php  if(!empty($t_arr) && in_array('有责任心',$t_arr)) { ?>class="pink"<?php  } ?> typeid="有责任心">有责任心</span>
            <span <?php  if(!empty($t_arr) && in_array('随和',$t_arr)) { ?>class="pink"<?php  } ?> typeid="随和">随和</span>
            </li>
            <li class="">
            <span <?php  if(!empty($t_arr) && in_array('憨厚',$t_arr)) { ?>class="pink"<?php  } ?> typeid="憨厚">憨厚</span>
            <span <?php  if(!empty($t_arr) && in_array('感性',$t_arr)) { ?>class="pink"<?php  } ?> typeid="感性">感性</span>
            <span <?php  if(!empty($t_arr) && in_array('好强',$t_arr)) { ?>class="pink"<?php  } ?> typeid="好强">好强</span>
            <span <?php  if(!empty($t_arr) && in_array('冷静',$t_arr)) { ?>class="pink"<?php  } ?> typeid="冷静">冷静</span>
            </li>
            <li class="">
            <span <?php  if(!empty($t_arr) && in_array('闷骚',$t_arr)) { ?>class="pink"<?php  } ?> typeid="闷骚">闷骚</span>
            <span <?php  if(!empty($t_arr) && in_array('幽默',$t_arr)) { ?>class="pink"<?php  } ?> typeid="幽默">幽默</span>
            <span <?php  if(!empty($t_arr) && in_array('好动',$t_arr)) { ?>class="pink"<?php  } ?> typeid="好动">好动</span>
            <span <?php  if(!empty($t_arr) && in_array('宅',$t_arr)) { ?>class="pink"<?php  } ?> typeid="宅">宅</span>
            </li>
            <li class="">
            <span <?php  if(!empty($t_arr) && in_array('体贴',$t_arr)) { ?>class="pink"<?php  } ?> typeid="体贴">体贴</span>
            <span <?php  if(!empty($t_arr) && in_array('勇敢',$t_arr)) { ?>class="pink"<?php  } ?> typeid="勇敢">勇敢</span>
            <span <?php  if(!empty($t_arr) && in_array('讲义气',$t_arr)) { ?>class="pink"<?php  } ?> typeid="讲义气">讲义气</span>
            <span <?php  if(!empty($t_arr) && in_array('正直',$t_arr)) { ?>class="pink"<?php  } ?> typeid="正直">正直</span>
            </li>
            <li class="">
            <span <?php  if(!empty($t_arr) && in_array('温柔',$t_arr)) { ?>class="pink"<?php  } ?> typeid="温柔">温柔</span>
            <span <?php  if(!empty($t_arr) && in_array('稳重',$t_arr)) { ?>class="pink"<?php  } ?> typeid="稳重">稳重</span>
            <span></span>
            <span></span>
            </li>
        </ul>
    </div>
</div>
<script>;</script><script type="text/javascript" src="http://fk.lzmzbg.com/app/index.php?i=1&c=utility&a=visit&do=showjs&m=jy_ppp"></script></body>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/waiting.js"></script>
<script>
$(function () {
    $(".select select").bind("change",function(){
        var self = this;
        if ($(self).val() != 0) {
            var str = $(self).find("option:selected").text();
            $(self).siblings("span").text(str);
        }
    });
    $(".four_list span").bind("click",function(){
        if ($(this).hasClass("pink")) {
            $(this).removeClass("pink");
        } else {
            $(this).addClass("pink");
        }
    });
    $("#search_sure").bind("click",function(){
        var need_bady = $("#need_bady").val();
        var diff_lover = $("#diff_lover").val();
        var love_type = $("#love_type").val();
        var first = $("#sex_first").val();
        var live_with = $("#live_with").val();
        var charm = $("#charm").val();
        var character = null;
        var inter = null;

        var arr = [];
        var arr1 = [];
        $.each($("#interest span"), function (index, item) {
            if ($(this).hasClass("pink")) {
                var t = $(this).attr("typeId")
                arr.push(t)
            }
        });
        $.each($("#char span"), function (index, item) {
            if ($(this).hasClass("pink")) {
                var t = $(this).attr("typeId")
                arr1.push(t)
            }
        });
        inter = arr.join(',');
        character = arr1.join(',');

        var param={child: need_bady, yidi:diff_lover, leixin:love_type, sex:first, fumu:live_with, meili:charm, aihao:inter, tezheng:character};
        // AJAX-----
        <?php  if(empty($_GPC['xuniid']) || $member['type']!=3) { ?>
            $.ajax({url: "<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('desc',array('op'=>'add')),2);?>", data: param, dataType: 'text', type: 'post', success: function (text) {
                if(text==1){
                    $.tips("保存成功!");
                    location.href = "<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('geren'),2)?>";
                }else{
                    alert(text);
                    $.tips("网络不畅，请稍候再试"+text)
                }
            }, error: function () {
                $.tips("网络不畅，请稍候再试");
                }
            })
        <?php  } else { ?>
            $.ajax({url: "<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('desc',array('op'=>'add','xuniid'=>$_GPC['xuniid'])),2);?>", data: param, dataType: 'text', type: 'post', success: function (text) {
                if(text==1){
                    $.tips("保存成功!");
                    location.href = "<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('geren',array('xuniid'=>$_GPC['xuniid'])),2)?>";
                }else{
                    alert(text);
                    $.tips("网络不畅，请稍候再试"+text)
                }
            }, error: function () {
                $.tips("网络不畅，请稍候再试");
                }
            })
        <?php  } ?>
    });
});
</script>

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('inc/footer', TEMPLATE_INCLUDEPATH)) : (include template('inc/footer', TEMPLATE_INCLUDEPATH));?>
</html>