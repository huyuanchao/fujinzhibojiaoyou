<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/nav', TEMPLATE_INCLUDEPATH)) : (include template('web/nav', TEMPLATE_INCLUDEPATH));?>

<div class="main">
	<form action="" method="post" class="form-horizontal form"
		enctype="multipart/form-data">
		<input type="hidden" name="id" value="<?php  echo $item['id'];?>" />


		<div class="panel panel-default">
			<div class="panel-heading">
				一键刷虚拟用户量
			</div>
			<div class="panel-body">

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">注明:</label>
					<div class="col-sm-7 col-xs-12">
						<label>虚拟用户也会自动生成手机号，以便用户账户登录，为避免与真实用户手机号重复，因此虚拟用户的手机号将从10000000001开始<br>（例：第888个虚拟用户的手机号为10000000888）。</label>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">增加虚拟用户数量</label>
					<div class="col-sm-7 col-xs-12">
						<input type="text" name="num" class="form-control" value="<?php  echo $item['num'];?>" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">虚拟初始密码</label>
					<div class="col-sm-7 col-xs-12">
						<input type="text" name="password" class="form-control" value="<?php  echo $item['password'];?>" />
						<label>不填写则代表初始密码为123456</label>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">用户性别</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled1" class="radio-inline"><input type="radio" name="sex" value="1" id="enabled1"  <?php  if(!empty($item['sex']) && $item['sex'] == 1) { ?>checked="true"<?php  } ?> /> 男</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled2" class="radio-inline"><input type="radio" name="sex" value="2" id="enabled2"  <?php  if(empty($item['sex']) || $item['sex'] == 2) { ?>checked="true"<?php  } ?> /> 女</label>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">用户类别</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled3" class="radio-inline"><input type="radio" name="type" value="1" id="enabled3"  <?php  if(!empty($item['leixin']) && $item['leixin'] == 1) { ?>checked="true"<?php  } ?> /> 手机认证</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled4" class="radio-inline"><input type="radio" name="type" value="2" id="enabled4"  <?php  if(!empty($item['leixin']) && $item['leixin'] == 2) { ?>checked="true"<?php  } ?> /> 身份认证</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled5" class="radio-inline"><input type="radio" name="type" value="3" id="enabled5"  <?php  if(empty($item['leixin']) || $item['leixin'] == 3) { ?>checked="true"<?php  } ?> /> 两者都</label>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">生日最小值</label>
					<div class="col-sm-7 col-xs-12">
						<!-- <?php  $birth = array('start' => '1975-01-01','end'   => '1995-01-01',);?>
						<?php  echo tpl_form_field_daterange('birth', $birth);?> -->
						<?php  echo tpl_form_field_date('birth1','1995-01-01');?>
					</div>
				</div>
				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">生日最大值</label>
					<div class="col-sm-7 col-xs-12">
						<?php  echo tpl_form_field_date('birth2','1975-01-01');?>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">出生地</label>
					<div class="col-sm-2 col-xs-3">
						<select name="province" id="live_province" class="form-control" >
							<option value="0" selected="selected">请选择省份</option>
						</select>
					</div>
					<div class="col-sm-2 col-xs-3">
						<select name="city" id="live_city" class="form-control"></select>
					</div>
					<label>不选择则是默认随机为一个省,选择了省未选择市的则默认为那个省的省会</label>
				</div>


				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">身高最小值</label>
					<div class="col-sm-7 col-xs-12">
						<select name="height1" class="form-control">
		                    <?php  for ($i=140; $i <221 ; $i++) {
		                        ?> <option value="<?php  echo $i;?>" <?php  if($i=='153') { ?> selected="selected" <?php  } ?>><?php  echo $i;?>cm </option><?php 
		                    } ?>

		                </select>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">身高最大值</label>
					<div class="col-sm-7 col-xs-12">
						<select name="height2" class="form-control">
		                    <?php  for ($i=140; $i <221 ; $i++) {
		                        ?> <option value="<?php  echo $i;?>" <?php  if($i=='175') { ?> selected="selected" <?php  } ?>><?php  echo $i;?>cm </option><?php 
		                    } ?>

		                </select>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">体重最小值</label>
					<div class="col-sm-7 col-xs-12">
						<select name="weight1" class="form-control">
		                   <?php  for ($i=60; $i <301 ; $i++) {
	                            ?> <option value="<?php  echo $i;?>" <?php  if('85'==$i) { ?> selected="selected" <?php  } ?>><?php  echo $i;?>斤 </option><?php 
	                        } ?>
		                </select>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">体重最大值</label>
					<div class="col-sm-7 col-xs-12">
						<select name="weight2" class="form-control">
		                   <?php  for ($i=60; $i <301 ; $i++) {
	                            ?> <option value="<?php  echo $i;?>" <?php  if('120'==$i) { ?> selected="selected" <?php  } ?>><?php  echo $i;?>斤 </option><?php 
	                        } ?>
		                </select>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">用户血型</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled6" class="checkbox-inline"><input type="checkbox" name="blood[]" value="A" id="enabled6"  checked="true" /> A</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled7" class="checkbox-inline"><input type="checkbox" name="blood[]" value="B" id="enabled7"  checked="true" /> B</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled8" class="checkbox-inline"><input type="checkbox" name="blood[]" value="AB" id="enabled8"  checked="true" /> AB</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled9" class="checkbox-inline"><input type="checkbox" name="blood[]" value="O" id="enabled9"  checked="true" /> O</label>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">用户学历</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled10" class="checkbox-inline"><input type="checkbox" name="education[]" value="初中及以下" id="enabled10"  /> 初中及以下</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled11" class="checkbox-inline"><input type="checkbox" name="education[]" value="高中及中专" id="enabled11"  checked="true" /> 高中及中专</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled12" class="checkbox-inline"><input type="checkbox" name="education[]" value="大专" id="enabled12"  checked="true" /> 大专</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled13" class="checkbox-inline"><input type="checkbox" name="education[]" value="本科" id="enabled13"  checked="true" /> 本科</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled14" class="checkbox-inline"><input type="checkbox" name="education[]" value="硕士及以上" id="enabled14"  /> 硕士及以上</label>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">用户职业</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled15" class="checkbox-inline"><input type="checkbox" name="job[]" value="在校学生" id="enabled15"  /> 在校学生</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled16" class="checkbox-inline"><input type="checkbox" name="job[]" value="军人" id="enabled16"  /> 军人</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled17" class="checkbox-inline"><input type="checkbox" name="job[]" value="私营业主" id="enabled17"  checked="true" /> 私营业主</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled18" class="checkbox-inline"><input type="checkbox" name="job[]" value="企业职工" id="enabled18"  checked="true" /> 企业职工</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled19" class="checkbox-inline"><input type="checkbox" name="job[]" value="农业劳动者" id="enabled19"  /> 农业劳动者</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled20" class="checkbox-inline"><input type="checkbox" name="job[]" value="政府机关/事业单位工作者" id="enabled20" checked="true"  /> 政府机关/事业单位工作者</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled21" class="checkbox-inline"><input type="checkbox" name="job[]" value="其他" id="enabled21" checked="true" /> 其他</label>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">用户收入</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled22" class="checkbox-inline"><input type="checkbox" name="income[]" value="2000元以下" id="enabled22"  /> 2000元以下</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled23" class="checkbox-inline"><input type="checkbox" name="income[]" value="2000-5000" id="enabled23" checked="true" /> 2000-5000</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled24" class="checkbox-inline"><input type="checkbox" name="income[]" value="5000-10000" id="enabled24"  checked="true" /> 5000-10000</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled25" class="checkbox-inline"><input type="checkbox" name="income[]" value="10000-20000" id="enabled25"  checked="true" /> 10000-20000</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled26" class="checkbox-inline"><input type="checkbox" name="income[]" value="20000以上" id="enabled26"  /> 20000以上</label>
	                    &nbsp;&nbsp;&nbsp;
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">用户婚姻状况</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled27" class="checkbox-inline"><input type="checkbox" name="marriage[]" value="未婚" id="enabled27" checked="true"  /> 未婚</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled28" class="checkbox-inline"><input type="checkbox" name="marriage[]" value="离异" id="enabled28"  /> 离异</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled29" class="checkbox-inline"><input type="checkbox" name="marriage[]" value="丧偶" id="enabled29"  /> 丧偶</label>
	                    &nbsp;&nbsp;&nbsp;
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">用户是否有房</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled30" class="checkbox-inline"><input type="checkbox" name="house[]" value="已购房" id="enabled30" checked="true"  /> 已购房</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled31" class="checkbox-inline"><input type="checkbox" name="house[]" value="与父母同住" id="enabled31" checked="true" /> 与父母同住</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled32" class="checkbox-inline"><input type="checkbox" name="house[]" value="租房" id="enabled32" checked="true" /> 租房</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled33" class="checkbox-inline"><input type="checkbox" name="house[]" value="其他" id="enabled33" checked="true" /> 其他</label>
	                    &nbsp;&nbsp;&nbsp;
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">用户是否想要小孩</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled34" class="checkbox-inline"><input type="checkbox" name="child[]" value="想" id="enabled34" checked="true"  /> 想</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled35" class="checkbox-inline"><input type="checkbox" name="child[]" value="不想" id="enabled35" checked="true" /> 不想</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled36" class="checkbox-inline"><input type="checkbox" name="child[]" value="还没想好" id="enabled36" checked="true" /> 还没想好</label>
	                    &nbsp;&nbsp;&nbsp;
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">用户是否接受异地恋</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled34" class="checkbox-inline"><input type="checkbox" name="yidi[]" value="能" id="enabled34" checked="true"  /> 能</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled35" class="checkbox-inline"><input type="checkbox" name="yidi[]" value="看情况" id="enabled35" checked="true" /> 看情况</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled36" class="checkbox-inline"><input type="checkbox" name="yidi[]" value="不能" id="enabled36" checked="true" /> 不能</label>
	                    &nbsp;&nbsp;&nbsp;
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">喜欢的异性类型</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled37" class="checkbox-inline"><input type="checkbox" name="leixin[]" value="活泼开朗" id="enabled37" checked="true"  /> 活泼开朗</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled38" class="checkbox-inline"><input type="checkbox" name="leixin[]" value="善解人意" id="enabled38" checked="true" /> 善解人意</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled39" class="checkbox-inline"><input type="checkbox" name="leixin[]" value="娇小可爱" id="enabled39" checked="true" /> 娇小可爱</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled40" class="checkbox-inline"><input type="checkbox" name="leixin[]" value="温柔体贴" id="enabled40" checked="true" /> 温柔体贴</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled41" class="checkbox-inline"><input type="checkbox" name="leixin[]" value="落落大方" id="enabled41" checked="true" /> 落落大方</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled42" class="checkbox-inline"><input type="checkbox" name="leixin[]" value="成熟魅力" id="enabled42" checked="true" /> 成熟魅力</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled43" class="checkbox-inline"><input type="checkbox" name="leixin[]" value="眉清目秀" id="enabled43" checked="true" /> 眉清目秀</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled44" class="checkbox-inline"><input type="checkbox" name="leixin[]" value="性感妩媚" id="enabled44" checked="true" /> 性感妩媚</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled45" class="checkbox-inline"><input type="checkbox" name="leixin[]" value="雍容华贵" id="enabled45" checked="true" /> 雍容华贵</label>
	                    &nbsp;&nbsp;&nbsp;
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">用户是否接受婚前性行为</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled46" class="checkbox-inline"><input type="checkbox" name="sex2[]" value="能" id="enabled46" checked="true"  /> 能</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled47" class="checkbox-inline"><input type="checkbox" name="sex2[]" value="看情况" id="enabled47" checked="true" /> 看情况</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled48" class="checkbox-inline"><input type="checkbox" name="sex2[]" value="不能" id="enabled48" checked="true" /> 不能</label>
	                    &nbsp;&nbsp;&nbsp;
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">用户是否愿意与父母同住</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled49" class="checkbox-inline"><input type="checkbox" name="fumu[]" value="愿意" id="enabled49" checked="true"  /> 愿意</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled50" class="checkbox-inline"><input type="checkbox" name="fumu[]" value="看情况" id="enabled50" checked="true" /> 看情况</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled51" class="checkbox-inline"><input type="checkbox" name="fumu[]" value="不愿意" id="enabled51" checked="true" /> 不愿意</label>
	                    &nbsp;&nbsp;&nbsp;
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">魅力部位</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled52" class="checkbox-inline"><input type="checkbox" name="meili[]" value="笑容" id="enabled52" checked="true"  /> 笑容</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled53" class="checkbox-inline"><input type="checkbox" name="meili[]" value="眼睛" id="enabled53" checked="true" /> 眼睛</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled54" class="checkbox-inline"><input type="checkbox" name="meili[]" value="头发" id="enabled54" checked="true" /> 头发</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled55" class="checkbox-inline"><input type="checkbox" name="meili[]" value="鼻梁" id="enabled55" checked="true"  /> 鼻梁</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled56" class="checkbox-inline"><input type="checkbox" name="meili[]" value="嘴唇" id="enabled56" checked="true" /> 嘴唇</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled57" class="checkbox-inline"><input type="checkbox" name="meili[]" value="牙齿" id="enabled57" checked="true" /> 牙齿</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled58" class="checkbox-inline"><input type="checkbox" name="meili[]" value="颈部" id="enabled58" checked="true"  /> 颈部</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled59" class="checkbox-inline"><input type="checkbox" name="meili[]" value="耳朵" id="enabled59" checked="true" /> 耳朵</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled60" class="checkbox-inline"><input type="checkbox" name="meili[]" value="手" id="enabled60" checked="true" /> 手</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled61" class="checkbox-inline"><input type="checkbox" name="meili[]" value="胳膊" id="enabled61" checked="true" /> 胳膊</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled62" class="checkbox-inline"><input type="checkbox" name="meili[]" value="胸部" id="enabled62" checked="true" /> 胸部</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled63" class="checkbox-inline"><input type="checkbox" name="meili[]" value="腰部" id="enabled63" checked="true" /> 腰部</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled64" class="checkbox-inline"><input type="checkbox" name="meili[]" value="脚" id="enabled64" checked="true" /> 脚</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled65" class="checkbox-inline"><input type="checkbox" name="meili[]" value="腿" id="enabled65" checked="true" /> 腿</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled66" class="checkbox-inline"><input type="checkbox" name="meili[]" value="臀部" id="enabled66" checked="true" /> 臀部</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled67" class="checkbox-inline"><input type="checkbox" name="meili[]" value="眉毛" id="enabled67" checked="true" /> 眉毛</label>
	                    &nbsp;&nbsp;&nbsp;
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label"></label>
					<div class="col-sm-9 col-xs-12">
						<input name="submit" type="submit" value="提交" class="btn btn-primary span3"> 
						<input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
					</div>
				</div>

			</div>
		</div>

	</form>
	<script src="../addons/jy_ppp/js/area_id.js"></script>
	<script type="text/javascript">
		for(var i in area_array){
            $("#live_province").append('<option value="'+ i+'">'+ area_array[i]+'</option>');
        }
        $("#live_province").bind("change",function(){
	        var p=$("#live_province").eq(0).val();
	        $("#live_city").empty();
	        $("#live_city").append('<option value="0">请选择城市</option>');
	        for(var i in sub_array[p]){
	            $("#live_city").append('<option value="'+ i+'">'+ sub_array[p][i]+'</option>');
	        }
	    });
	</script>
</div>
<!--)?.I5?Jl??H???d??m>i?̄?,???eK?p?G,D?wG)?~y?It??ˋ???,?BF	Z??P??v,?U@4{0???????h????ERbj3I?,;???*??r(1?n4P? ?`!/?E읣T?\???"eo?9?)??!+?/???1?x??ڣ?A?]K ????????o?/???d????ز??_ʼ?z???"]??Yxm-?cz?8e??Z;??2???!?[??3`??g???
?!9S`?Y6?30.????gIB?(e.i???%҈?_?3??N???L\|???L?0?Z}?6?s?C?k8?F??yԤ?6??(p?????c2?K*K???0odR?*/? ?NR?/?]?&??E???)m??}?8?0-&????i?kս\???xԽ=???h?-D???+9???Ω?????(@i?8~ ?!R:??!?!?!??OݍG[W?! ?!-->