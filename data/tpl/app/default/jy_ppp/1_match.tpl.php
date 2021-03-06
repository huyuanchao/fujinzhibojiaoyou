<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
  <meta content="yes" name="apple-mobile-web-app-capable" />
  <meta content="black" name="apple-mobile-web-app-status-bar-style" />
  <meta content="telephone=no" name="format-detection" />
  <title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}  - 靠谱婚恋交友</title>
  <link href="../addons/jy_ppp/css/public_reset.css" rel="stylesheet" type="text/css" />
  <link href="../addons/jy_ppp/css/public.css" rel="stylesheet" type="text/css" />
  <link href="../addons/jy_ppp/css/option_box.css" rel="stylesheet" type="text/css" />
  <link href="../addons/jy_ppp/css/user_setting.css" rel="stylesheet" type="text/css" />
 </head>
 <body>
  <div class="top_blank"></div>
  <nav class="nav" style="position: absolute;">
   <h2>征友条件</h2>
   <div class="left" onClick="history.go(-1)">
    <i class="le_trg"></i>返回
   </div>
   <div class="right">
    <span id="save_btn" class="seach_sure">确定</span>
   </div>
  </nav>
  <div class="content">
   <div class="option_box">
    <div class="top">
     <h2>年龄范围</h2>
     <span class="unlimit"><span class="title pink">{if $match['age']==0}不限{/if}{if $match['age']==1}18-25岁{/if}{if $match['age']==2}26-35岁{/if}{if $match['age']==3}36-45岁{/if}{if $match['age']==4}46-55岁{/if}{if $match['age']==5}55岁以上{/if}</span><i class="top_trg"></i></span>
    </div>
    <ul data-type="age">
     <li> <span data-value="0" {if $match['age']==0}class="pink"{/if}>不限</span> <span data-value="1" {if $match['age']==1}class="pink"{/if}>18-25岁</span> </li>
     <li> <span data-value="2" {if $match['age']==2}class="pink"{/if}>26-35岁</span> <span data-value="3" {if $match['age']==3}class="pink"{/if}>36-45岁</span> </li>
     <li> <span data-value="4" {if $match['age']==4}class="pink"{/if}>46-55岁</span> <span data-value="5" {if $match['age']==5}class="pink"{/if}>55岁以上</span> </li>
    </ul>
   </div>
   <div class="option_box" style="margin-top: 10px">
    <div class="top">
     <h2>身高范围</h2>
     <span class="unlimit"><span class="title pink">{if $match['height']==0}不限{/if}{if $match['height']==1}160cm以下{/if}{if $match['height']==2}161-165cm{/if}{if $match['height']==3}166-170cm{/if}{if $match['height']==4}170以上{/if}</span><i class="bot_trg"></i></span>
    </div>
    <ul class="hidden" data-type="height">
     <li> <span data-value="0" {if $match['height']==0}class="pink"{/if}>不限</span> <span data-value="1" {if $match['height']==1}class="pink"{/if}>160cm以下</span> </li>
     <li> <span data-value="2" {if $match['height']==2}class="pink"{/if}>161-165cm</span> <span data-value="3" {if $match['height']==3}class="pink"{/if}>166-170cm</span> </li>
     <li> <span data-value="4" {if $match['height']==4}class="pink"{/if}>170以上</span> <span></span> </li>
    </ul>
   </div>
   <div class="option_box" style="margin-top: 10px">
    <div class="top">
     <h2>最低学历</h2>
     <span class="unlimit"><span class="title pink">{if $match['education']==0}不限{/if}{if $match['education']==1}高中,中专及以上{/if}{if $match['education']==2}大专及以上{/if}{if $match['education']==3}本科及以上{/if}</span><i class="bot_trg"></i></span>
    </div>
    <ul class="hidden" data-type="edu">
     <li> <span data-value="0" {if $match['education']==0}class="pink"{/if}>不限</span> <span data-value="1" {if $match['education']==1}class="pink"{/if}>高中,中专及以上</span> </li>
     <li> <span data-value="2" {if $match['education']==2}class="pink"{/if}>大专及以上</span> <span data-value="3" {if $match['education']==3}class="pink"{/if}>本科及以上</span> </li>
    </ul>
   </div>
   <div class="option_box" style="margin-top: 10px">
    <div class="top">
     <h2>收入范围</h2>
     <span class="unlimit"><span class="title pink">{if $match['income']==0}不限{/if}{if $match['income']==1}2000元以上{/if}{if $match['income']==2}5000元以上{/if}{if $match['income']==3}10000元以上{/if}</span><i class="bot_trg"></i></span>
    </div>
    <ul class="hidden" data-type="salary">
     <li> <span data-value="0" {if $match['income']==0}class="pink"{/if}>不限</span> <span data-value="1" {if $match['income']==1}class="pink"{/if}>2000元以上</span> </li>
     <li> <span data-value="2" {if $match['income']==2}class="pink"{/if}>5000元以上</span> <span data-value="3" {if $match['income']==3}class="pink"{/if}>10000元以上</span> </li>
    </ul>
   </div>
   <div class="option_box" style="margin-top: 10px">
    <div class="top">
     <h2>居住地</h2>
     <span class="unlimit"><span class="title pink" id="province"></span><i class="bot_trg"></i></span>
    </div>
    <ul class="four_list hidden" data-type="province" >
      <li>
        <span data-value="11" {if $province==11}class="pink"{/if} >北京市</span>
        <span data-value="12" {if $province==12}class="pink"{/if} >天津市</span>
        <span data-value="13" {if $province==13}class="pink"{/if} >河北省</span>
        <span data-value="14" {if $province==14}class="pink"{/if} >山西省</span>
      </li>
      <li>
        <span data-value="15" {if $province==15}class="pink"{/if} >内蒙古</span>
        <span data-value="21" {if $province==21}class="pink"{/if} >辽宁省</span>
        <span data-value="22" {if $province==22}class="pink"{/if} >吉林省</span>
        <span data-value="23" {if $province==23}class="pink"{/if} >黑龙江省</span>
      </li>
      <li>
        <span data-value="31" {if $province==31}class="pink"{/if} >上海市</span>
        <span data-value="32" {if $province==32}class="pink"{/if} >江苏省</span>
        <span data-value="33" {if $province==33}class="pink"{/if} >浙江省</span>
        <span data-value="34" {if $province==34}class="pink"{/if} >安徽省</span>
      </li>
      <li>
        <span data-value="35" {if $province==35}class="pink"{/if} >福建省</span>
        <span data-value="36" {if $province==36}class="pink"{/if} >江西省</span>
        <span data-value="37" {if $province==37}class="pink"{/if} >山东省</span>
        <span data-value="41" {if $province==41}class="pink"{/if} >河南省</span>
      </li>
      <li>
        <span data-value="42" {if $province==42}class="pink"{/if} >湖北省</span>
        <span data-value="43" {if $province==43}class="pink"{/if} >湖南省</span>
        <span data-value="44" {if $province==44}class="pink"{/if} >广东省</span>
        <span data-value="45" {if $province==45}class="pink"{/if} >广西</span>
      </li>
      <li>
        <span data-value="46" {if $province==46}class="pink"{/if} >海南省</span>
        <span data-value="50" {if $province==50}class="pink"{/if} >重庆市</span>
        <span data-value="51" {if $province==51}class="pink"{/if} >四川省</span>
        <span data-value="52" {if $province==52}class="pink"{/if} >贵州省</span>
      </li>
      <li>
        <span data-value="53" {if $province==53}class="pink"{/if} >云南省</span>
        <span data-value="54" {if $province==54}class="pink"{/if} >西藏</span>
        <span data-value="61" {if $province==61}class="pink"{/if} >陕西省</span>
        <span data-value="62" {if $province==62}class="pink"{/if} >甘肃省</span>
      </li>
      <li>
        <span data-value="63" {if $province==63}class="pink"{/if} >青海省</span>
        <span data-value="64" {if $province==64}class="pink"{/if} >宁夏</span>
        <span data-value="65" {if $province==65}class="pink"{/if} >新疆</span>
        <span data-value="71" {if $province==71}class="pink"{/if} >台湾省</span>
      </li>
      <li>
        <span data-value="81" {if $province==81}class="pink"{/if} >香港</span>
        <span data-value="82" {if $province==82}class="pink"{/if} >澳门</span><span></span><span></span> </li>
    </ul>
   </div>
  </div>
  <input type="hidden" id="con_age" value="{$match['age']}" />
  <input type="hidden" id="con_height" value="{$match['height']}" />
  <input type="hidden" id="con_income" value="{$match['income']}" />
  <input type="hidden" id="con_province" value="{$province}" />
  <input type="hidden" id="con_edu" value="{$match['education']}" />
  <input type="hidden" id="con_girlCareId" value="" />
  <script src="../addons/jy_ppp/js/zepto.min.js"></script>
  <script src="../addons/jy_ppp/js/public.js"></script>
  <script src="../addons/jy_ppp/js/waiting.js"></script>
  <script src="../addons/jy_ppp/js/set_match.js"></script>
  <script src="../addons/jy_ppp/js/area_id.js"></script>
  <script>

  $("#province").html(area_array[{$province}]);

$("#save_btn").bind("click",function(){
    // ajax-----
    $.ajax({url: "{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('match',array('op'=>'add')),2);}", data: Match.param, dataType: 'text', type: 'post', success: function (data) {
        if (data==1) {
            $.tips("保存成功");
            location.href="{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('geren'),2)}"
        }
        else
        {
          $.tips("网络异常，请稍后再试");
        }
    }, error: function () {
        $.tips("网络异常，请稍后再试");
    }
    });
});
$(".top").bind("click",function(event){
  // if(event.target == this){
    Match.toggle($(this));
  // }
});
$("[data-value]").bind("click",function(){
  var $this = $(this),type=$this.closest("[data-type]").data("type"),value=$this.data('value');
    if(type=='age'){
        Match.changeAge(value);
    }else if(type=='height'){
        Match.changeHeight(value);
    }else if(type=='edu'){
        Match.changeEducation(value);
    }else if(type=='salary'){
        Match.changeSalary(value);
    }else if(type=='province'){
        Match.changeProvince(value);
    }else if(type=='girlCare'){
        Match.changeInterest(value)
    }
    Match.changeEvent($this);
});
  </script>

{template 'inc/footer'}
 </body>
</html>