<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="telephone=no" name="format-detection">
<title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}  - www.niumawu.com 牛码屋源码网</title>
<link href="../addons/jy_ppp/css/public_reset.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/public.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/option_box.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/user_setting.css" rel="stylesheet" type="text/css"/>
</head>
<body>

<div class="top_blank">
</div>
<nav class="nav" style="position: absolute">
<h2>基本资料</h2>
<a class="left" onClick="history.go(-1)">
    <i class="le_trg"></i>返回
</a>
<div class="right">
    <span id="search_sure" class="seach_sure">确定</span>
</div>
</nav>
<div class="content">
    <ul class="habit-list">
        <li class="user_mession" style="height: auto; overflow: hidden;">
        <label class="left">昵称</label>
        <div class="right" style=" height:auto;">
            <input type="text" id="nickname" placeholder="{$member['nicheng']}"/><br/>
            <span style="float:right;"> *禁止使用非法昵称 </span>
        </div>
        </li>

        <li class="user_mession">
        <label class="left">生日</label>
        <div id="basic_birthday" class="right">
            <div class="select">
                <span class="value">{$year}年</span>
                <i class="bot_trged"></i>
                <select class="value_select">
                    <?php for ($i=1952; $i<2004 ; $i++) {
                    ?><option value="{$i}" {if $year==$i} selected="selected" {/if}>{$i}年 </option><?php
                    } ?>
                </select>
            </div>
            <div class="select">
                <span class="value">{$month}月</span>
                <i class="bot_trged"></i>
                <select class="value_select">
                    <?php for ($i=1; $i <13 ; $i++) {
                        ?> <option value="{$i}" {if $month==$i} selected="selected" {/if}>{$i}月 </option><?php
                    } ?>
                </select>
            </div>
            <div class="select">
                <span class="value">{$day}日</span>
                <i class="bot_trged"></i>
                <select class="value_select">
                    <?php for ($i=1; $i <32 ; $i++) {
                        ?> <option value="{$i}" {if $day==$i} selected="selected" {/if}>{$i}日 </option><?php
                    } ?>
                </select>
            </div>
        </div>
        </li>
        <li class="user_mession">
        <label class="left">居住地</label>
        <div id="live" class="right">
            <div class="select">
                <span class="value" id="province">
                </span>
                <i class="bot_trged"></i>
                <select id="live_province" class="value_select">
                </select>
            </div>
            <div class="select fixed_width">
                <span class="value" id="city">
                </span>
                <i class="bot_trged"></i>
                <select id="live_city" class="value_select">
                </select>
            </div>
        </div>
        </li>
        <li class="user_mession">
        <label class="left">身高</label>
        <div class="right">
            <div class="select">
                <span class="value">
                {if empty($basic['height'])}
                    <span class="pink">请选择</span></span>
                {else}
                    {$basic['height']}cm</span>
                {/if}
                <i class="bot_trged"></i>
                <select id="basic_height" class="value_select">
                    <option value="0" style="display:none">请选择</option>
                    <?php for ($i=140; $i <221 ; $i++) {
                        ?> <option value="{$i}" {if $basic['height']==$i} selected="selected" {/if}>{$i}cm </option><?php
                    } ?>

                </select>
            </div>
        </div>
        </li>
        <li class="user_mession">
        <label class="left">体重</label>
        <div class="right">
            <div class="select">
                <span class="value">
                {if empty($basic['weight'])}
                    <span class="pink">请选择</span></span>
                {else}
                    {$basic['weight']}斤</span>
                {/if}
                <i class="bot_trged"></i>
                <select id="basic_weight" class="value_select">
                        <option value="0" style="display:none">请选择</option>
                        <?php for ($i=60; $i <301 ; $i++) {
                            ?> <option value="{$i}" {if $basic['weight']==$i} selected="selected" {/if}>{$i}斤 </option><?php
                        } ?>
                </select>
            </div>
        </div>
        </li>
        <li class="user_mession">
        <label class="left">血型</label>
        <div class="right">
            <div class="select">
                <span class="value">
                {if empty($basic['blood'])}
                    <span class="pink">请选择</span></span>
                {else}
                    {$basic['blood']}</span>
                {/if}
                <i class="bot_trged"></i>
                <select id="bloodType" class="value_select">
                    <option value="0" style="display:none">请选择</option>
                    <option value="A" {if $basic['blood']=='A'} selected="selected" {/if}>A</option>
                    <option value="B" {if $basic['blood']=='B'} selected="selected" {/if}>B</option>
                    <option value="AB" {if $basic['blood']=='AB'} selected="selected" {/if}>AB</option>
                    <option value="O" {if $basic['blood']=='O'} selected="selected" {/if}>O</option>
                </select>
            </div>
        </div>
        </li>
        <li class="user_mession">
        <label class="left">学历</label>
        <div class="right">
            <div class="select">
                <span class="value">
                {if empty($basic['education'])}
                    <span class="pink">请选择</span></span>
                {else}
                    {$basic['education']}</span>
                {/if}
                <i class="bot_trged"></i>
                <select id="education" class="value_select">
                    <option value="0" style="display:none">请选择</option>
                    <option value="初中及以下" {if $basic['education']=='初中及以下'} selected="selected" {/if}>初中及以下</option>
                    <option value="高中及中专" {if $basic['education']=='高中及中专'} selected="selected" {/if}>高中及中专</option>
                    <option value="大专" {if $basic['education']=='大专'} selected="selected" {/if}>大专</option>
                    <option value="本科" {if $basic['education']=='本科'} selected="selected" {/if}>本科</option>
                    <option value="硕士及以上" {if $basic['education']=='硕士及以上'} selected="selected" {/if}>硕士及以上</option>
                </select>
            </div>
        </div>
        </li>
        <li class="user_mession">
        <label class="left">职业</label>
        <div class="right">
            <div class="select">
                <span class="value">
                {if empty($basic['job'])}
                    <span class="pink">请选择</span></span>
                {else}
                    {$basic['job']}</span>
                {/if}
                <i class="bot_trged"></i>
                <select id="vocation" class="value_select">
                    <option value="0" style="display:none">请选择</option>
                    <option value="在校学生" {if $basic['job']=='在校学生'} selected="selected" {/if}>在校学生</option>
                    <option value="军人" {if $basic['job']=='军人'} selected="selected" {/if}>军人</option>
                    <option value="私营业主" {if $basic['job']=='私营业主'} selected="selected" {/if}>私营业主</option>
                    <option value="企业职工" {if $basic['job']=='企业职工'} selected="selected" {/if}>企业职工</option>
                    <option value="农业劳动者" {if $basic['job']=='农业劳动者'} selected="selected" {/if}>农业劳动者</option>
                    <option value="政府机关/事业单位工作者" {if $basic['job']=='政府机关/事业单位工作者'} selected="selected" {/if}>政府机关/事业单位工作者</option>
                    <option value="其他" {if $basic['job']=='其他'} selected="selected" {/if}>其他</option>
                </select>
            </div>
        </div>
        </li>
        <li class="user_mession">
        <label class="left">收入</label>
        <div class="right">
            <div class="select">
                <span class="value">
                {if empty($basic['income'])}
                    <span class="pink">请选择</span></span>
                {else}
                    {$basic['income']}</span>
                {/if}
                <i class="bot_trged"></i>
                <select id="income" class="value_select">
                    <option value="0" style="display:none">请选择</option>
                    <option value="2000元以下" {if $basic['income']=='2000元以下'} selected="selected" {/if}>2000元以下</option>
                    <option value="2000-5000" {if $basic['income']=='2000-5000'} selected="selected" {/if}>2000-5000</option>
                    <option value="5000-10000" {if $basic['income']=='5000-10000'} selected="selected" {/if}>5000-10000</option>
                    <option value="10000-20000" {if $basic['income']=='10000-20000'} selected="selected" {/if}>10000-20000</option>
                    <option value="20000以上" {if $basic['income']=='20000以上'} selected="selected" {/if}>20000以上</option>
                </select>
            </div>
        </div>
        </li>
        <li class="user_mession">
        <label class="left">婚姻状况</label>
        <div class="right">
            <div class="select">
                <span class="value">
                {if empty($basic['marriage'])}
                    <span class="pink">请选择</span></span>
                {else}
                    {$basic['marriage']}</span>
                {/if}
                <i class="bot_trged"></i>
                <select id="marry" class="value_select">
                    <option value="0" style="display:none">请选择</option>
                    <option value="未婚" {if $basic['marriage']=='未婚'} selected="selected" {/if}>未婚</option>
                    <option value="离异" {if $basic['marriage']=='离异'} selected="selected" {/if}>离异</option>
                    <option value="丧偶" {if $basic['marriage']=='丧偶'} selected="selected" {/if}>丧偶</option>
                </select>
            </div>
        </div>
        </li>
        <li class="user_mession">
        <label class="left">是否有房</label>
        <div class="right">
            <div class="select">
                <span class="value">
                {if empty($basic['house'])}
                    <span class="pink">请选择</span></span>
                {else}
                    {$basic['house']}</span>
                {/if}
                <i class="bot_trged"></i>
                <select id="haveHouse" class="value_select">
                    <option value="0" style="display:none">请选择</option>
                    <option value="已购房" {if $basic['house']=='已购房'} selected="selected" {/if}>已购房</option>
                    <option value="与父母同住" {if $basic['house']=='与父母同住'} selected="selected" {/if}>与父母同住</option>
                    <option value="租房" {if $basic['house']=='租房'} selected="selected" {/if}>租房</option>
                    <option value="其他" {if $basic['house']=='其他'} selected="selected" {/if}>其他</option>
                </select>
            </div>
        </div>
        </li>
    </ul>
</div>
</body>

<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/public.js"></script>
<script src="../addons/jy_ppp/js/waiting.js"></script>
<script src="../addons/jy_ppp/js/area_id.js"></script>

<script>
$(function () {
//点击提交

    $("#province").html(area_array[{$member['province']}]);
    $("#city").html(sub_array[{$member['province']}][{$member['city']}]);
    $("#live_province").empty();
    {if empty($member['province'])}
        for(var i in area_array){
            $("#live_province").append('<option value="'+ i+'">'+ area_array[i]+'</option>');
        }
    {else}
        for(var i in area_array){
            if({$member['province']}==i)
            {
                $("#live_province").append('<option value="'+ i+'" selected>'+ area_array[i]+'</option>');
            }
            else
            {
                $("#live_province").append('<option value="'+ i+'">'+ area_array[i]+'</option>');
            }
        }
    {/if}

    $("#live_city").empty();
    {if empty($member['city'])}
        for(var i in sub_array[{$member['province']}])
        {
            $("#live_city").append('<option value="'+ i+'">'+ sub_array[{$member['province']}][i]+'</option>');
        }
    {else}
        for(var i in sub_array[{$member['province']}]){
            if({$member['city']}==i)
            {
                $("#live_city").append('<option value="'+ i+'" selected>'+ sub_array[{$member['province']}][i]+'</option>');
            }
            else
            {
                $("#live_city").append('<option value="'+ i+'">'+ sub_array[{$member['province']}][i]+'</option>');
            }
        }
    {/if}


    $("#search_sure").bind("click",function(){
        var nickname=$("#nickname").val();
        var year=$("#basic_birthday select").eq(0).val();
        var month=$("#basic_birthday select").eq(1).val();
        var day=$("#basic_birthday select").eq(2).val();
        var province=$("#live select").eq(0).val();
        var city=$("#live select").eq(1).val();
        var basic_height=$("#basic_height").val();
        var basic_weight=$("#basic_weight").val();
        var basic_blood=$("#bloodType").val();
        var basic_edu=$("#education").val();
        var basic_work=$("#vocation").val();
        var basic_income=$("#income").val();
        var basic_marry=$("#marry").val();
        var basic_have=$("#haveHouse").val();
        // ajax-----

        var param={nicheng: nickname, year:year, month:month, day:day, province:province, city:city, height:basic_height, weight:basic_weight, blood:basic_blood, education:basic_edu, job:basic_work, income:basic_income, marriage:basic_marry, house:basic_have };
        {if empty($_GPC['xuniid']) || $member['type']!=3}
            $.ajax({url: "{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('basic',array('op'=>'add')),2);}", data: param, dataType: 'text', type: 'post', success: function (text) {
                if(text==1){
                    $.tips("保存成功!");
                    location.href = "{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('geren'),2)}";
                }else{
                    $.tips("网络不畅，请稍候再试")
                }
            }, error: function () {
                $.tips("网络不畅，请稍候再试");
                }
            })
        {else}
            $.ajax({url: "{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('basic',array('op'=>'add','xuniid'=>$_GPC['xuniid'])),2);}", data: param, dataType: 'text', type: 'post', success: function (text) {
                if(text==1){
                    $.tips("保存成功!");
                    location.href = "{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('geren',array('xuniid'=>$_GPC['xuniid'])),2)}";
                }else{
                    $.tips("网络不畅，请稍候再试")
                }
            }, error: function () {
                $.tips("网络不畅，请稍候再试");
                }
            })
        {/if}
    });

    $(".select select").bind("change",function(){
        var self = this;
        if ($(self).val() != 0) {
            var str = $(self).find("option:selected").text();
            $(self).siblings("span").text(str);
        }
    });

    $("#live_province").bind("change",function(){
        var p=$("#live select").eq(0).val();
        $("#live_city").empty();
        var temp=1;
        for(var i in sub_array[p]){
            if(temp==1)
            {
                $("#city").html(sub_array[p][i]);
                temp++;
            }
            $("#live_city").append('<option value="'+ i+'">'+ sub_array[p][i]+'</option>');
        }
    });
});
</script>
{template 'inc/footer'}
</html>