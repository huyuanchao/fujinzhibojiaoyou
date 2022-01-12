<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<ul class="nav nav-tabs">
	<li <?php  if($operation == 'display') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('hf', array('op' => 'display'))?>">回复库管理</a></li>
	<li <?php  if($operation == 'post') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('hf', array('op' => 'post'))?>"><?php  if($id==0) { ?>添加回复库<?php  } else { ?>修改回复库<?php  } ?></a></li>

</ul>
<style>
.panel-body {
padding: 10px;
}
</style>
<?php  if($operation == 'post') { ?>
<div class="main">
	<form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
		<div class="panel panel-default">
			<div class="panel-heading">
				添加回复库
			</div>
			<?php  if(!empty($parentid)) { ?>
				<div class="panel-body">
					<div class="form-group">
						<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">上级消息标题</label>
						<div class="col-sm-5">
							<label><?php  echo $parent['name'];?></label>
						</div>
					</div>
				</div>
			<?php  } ?>
			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">排序</label>
					<div class="col-sm-5">
						<input type="text" name="displayorder" class="form-control" value="<?php  echo $category['displayorder'];?>" />
					</div>
				</div>
			</div>

			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">回复类型</label>
					<div class="col-sm-5">
						<label for="enabled3" class="radio-inline"><input type="radio" name="type" value="0" id="enabled3" onclick="thumb_hide();media_hide();"  <?php  if(empty($category['type']) || $category['type'] == 0) { ?>checked="true"<?php  } ?> /> 文本</label>
						&nbsp;&nbsp;&nbsp;
						<label for="enabled4" class="radio-inline"><input type="radio" name="type" value="1" id="enabled4" onclick="thumb_show();media_hide();" <?php  if(!empty($category['type']) && $category['type'] == 1) { ?>checked="true"<?php  } ?> /> 图片</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled5" class="radio-inline"><input type="radio" name="type" value="2" id="enabled5" onclick="thumb_hide();media_show();" <?php  if(!empty($category['type']) && $category['type'] == 2) { ?>checked="true"<?php  } ?> /> 语音</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <?php  if(empty($parentid)) { ?>
	                    <label for="enabled6" class="radio-inline"><input type="radio" name="type" value="3" id="enabled6" onclick="thumb_hide();media_hide();" <?php  if(!empty($category['type']) && $category['type'] == 3) { ?>checked="true"<?php  } ?> /> 组合</label>
	                    <?php  } ?>
					</div>
				</div>
			</div>

			<?php  if(empty($parentid)) { ?>
				<div class="panel-body">
					<div class="form-group">
						<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">回复适合性别</label>
						<div class="col-sm-5">
							<label for="enabled7" class="radio-inline"><input type="radio" name="sex" value="0" id="enabled7"  <?php  if(empty($category['sex']) || $category['sex'] == 0) { ?>checked="true"<?php  } ?> /> 不限</label>
							&nbsp;&nbsp;&nbsp;
							<label for="enabled8" class="radio-inline"><input type="radio" name="sex" value="1" id="enabled8" <?php  if(!empty($category['sex']) && $category['sex'] == 1) { ?>checked="true"<?php  } ?> /> 男</label>
		                    &nbsp;&nbsp;&nbsp;
		                    <label for="enabled9" class="radio-inline"><input type="radio" name="sex" value="2" id="enabled9" <?php  if(!empty($category['sex']) && $category['sex'] == 2) { ?>checked="true"<?php  } ?> /> 女</label>
		                    &nbsp;&nbsp;&nbsp;
						</div>
					</div>
				</div>
			<?php  } ?>

			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">回复库名称</label>
					<div class="col-sm-5">
						<input type="text" name="catename" class="form-control" value="<?php  echo $category['name'];?>" />
					</div>
				</div>
			</div>


			<?php  if($category['type']==1) { ?>
				<div class="panel-body" id="thumb">
			<?php  } else { ?>
				<div class="panel-body" id="thumb" style="display:none">
			<?php  } ?>
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">图片</label>
					<div class="col-sm-5">
						<?php  echo tpl_form_field_image('thumb', $category['picurl']);?>
					</div>
				</div>
			</div>

			<?php  if($category['type']==2) { ?>
				<div class="panel-body" id="media">
			<?php  } else { ?>
				<div class="panel-body" id="media" style="display:none">
			<?php  } ?>
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">音频</label>
					<div class="col-sm-5">
						<?php  echo tpl_form_field_audio('media', $category['media_id']);?>
					</div>
				</div>
			</div>
			
			
			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">回复库描述</label>
					<div class="col-sm-5">
						<?php  echo tpl_ueditor('description',$category['description'])?>
					</div>
				</div>
			</div>

			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">是否显示</label>
					<div class="col-sm-5">
						<label for="enabled1" class="radio-inline"><input type="radio" name="enabled" value="1" id="enabled1" <?php  if(!empty($category['enabled']) && $category['enabled'] == 1) { ?>checked="true"<?php  } ?> /> 是</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled2" class="radio-inline"><input type="radio" name="enabled" value="0" id="enabled2"  <?php  if(empty($category['enabled']) || $category['enabled'] == 0) { ?>checked="true"<?php  } ?> /> 否</label>	           
					</div>
				</div>
			</div>
			<div class="form-group col-sm-12">
				<input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
				<input type="hidden" name="id" value="<?php  echo $category['id'];?>" />
				<input type="submit" class="btn btn-primary col-lg-1" name="submit" value="提交" />
			</div>
		</div>
	</form>
</div>
<script type="text/javascript">
	function thumb_show(){
		$("#thumb").show();
	}
	function thumb_hide(){
		$("#thumb").hide();
	}
	function media_show(){
		$("#media").show();
	}
	function media_hide(){
		$("#media").hide();
	}
</script>

<?php  } else if($operation == 'display') { ?>

<div class="main">
	<div class="category">
		<div class="panel panel-info">
	<div class="panel-heading">筛选</div>

	<div class="panel-body">

		<form action="./index.php" method="get" class="form-horizontal" role="form">

			<input type="hidden" name="c" value="site" />
			<input type="hidden" name="a" value="entry" />
        	<input type="hidden" name="m" value="jy_ppp" />
        	<input type="hidden" name="do" value="hf" />


			<div class="form-group">
				<label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">关键字</label>
				<div class="col-xs-12 col-sm-8 col-lg-9">
					<input class="form-control" name="keyword" id="" type="text" value="<?php  echo $_GPC['keyword'];?>" placeholder="回复信息关键字" >
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">性别筛选</label>
				<div class="col-xs-12 col-sm-8 col-lg-9">
					<select name="sex" class="form-control">
						<option value="0">用户性别</option>
						<option value="2" <?php  if($_GPC['sex']=='2') { ?>selected<?php  } ?>>女</option>
						<option value="1" <?php  if($_GPC['sex']=='1') { ?>selected<?php  } ?>>男</option>
						<option value="3" <?php  if($_GPC['sex']=='3') { ?>selected<?php  } ?>>不限</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">类型筛选</label>
				<div class="col-xs-12 col-sm-8 col-lg-9">
					<select name="type" class="form-control">
						<option value="0">回复类型</option>
						<option value="1" <?php  if($_GPC['type']=='1') { ?>selected<?php  } ?>>图片</option>
						<option value="2" <?php  if($_GPC['type']=='2') { ?>selected<?php  } ?>>语音</option>
						<option value="3" <?php  if($_GPC['type']=='3') { ?>selected<?php  } ?>>组合</option>
						<option value="4" <?php  if($_GPC['type']=='4') { ?>selected<?php  } ?>>文本</option>
					</select>
				</div>
			</div>

			<div class="form-group">
			 	<div class=" col-xs-12 col-sm-2 col-lg-2">

					<button class="btn btn-default"><i class="fa fa-search"></i> 搜索</button>

				</div>
			</div>
		</form>
	</div>
	</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					管理回复库
				</div>
				<div class="panel-body table-responsive">
					<form action="" method="post" class="form-horizontal form" onsubmit="return formcheck(this)">
					<table class="table table-hover">

					<thead class="navbar-inner">
						<tr>
							<th style="width:10px;"></th>
							<th style="width:100px;">显示顺序</th>
							<th style="width:200px;">回复库名称</th>
							<th style="width:100px;">回复类型</th>
							<th style="width:100px;">面向用户性别</th>
							<th style="width:100px;">是否显示</th>
							<th style="width:180px;">操作</th>
						</tr>
					</thead>

					<tbody id="main">
						<?php  if(is_array($category)) { foreach($category as $row) { ?>
						<tr>
							<td>
								<?php  if(count($children[$row['id']]) > 0) { ?>
									<a href="javascript:;" >
										
									</a>
								<?php  } ?>
							</td>
							<td class="text-center">
								<input type="text" name="displayorder[<?php  echo $row['id'];?>]" value="<?php  echo $row['displayorder'];?>">
							</td>

							<td class="text-left">
								<div style="height:40px;line-height:40px;"><?php  echo $row['name'];?>&nbsp;&nbsp;
								<?php  if($row['type']==1) { ?>
								<img src="<?php  echo tomedia($row['picurl'])?>" style="height:40px" />
								<?php  } ?>
								<?php  if($row['type']==3) { ?>
								<a href="<?php  echo $this->createWebUrl('hf', array('parentid' => $row['id'], 'op' => 'post'))?>">
									<i class="fa fa-plus"></i> 添加组合下的子项</a>
								<?php  } ?>
								</div>
							</td>

							<td><?php  if(empty($row['type'])) { ?><div class="btn btn-default btn-sm">文字</div><?php  } ?><?php  if($row['type'] == 1) { ?><div class="btn btn-success btn-sm">图片</div><?php  } ?><?php  if($row['type'] == 2) { ?><div class="btn btn-info btn-sm">语音</div><?php  } ?><?php  if($row['type'] == 3) { ?><div class="btn btn-warning btn-sm">组合</div><?php  } ?>
							</td>

							<td><?php  if(!empty($row['sex']) && $row['sex'] == 1) { ?><div class="btn btn-success btn-sm">男</div><?php  } else { ?><?php  if(!empty($row['sex']) && $row['sex'] == 2) { ?><div class="btn btn-info btn-sm">女<?php  } else { ?><div class="btn btn-default btn-sm">不限</div><?php  } ?><?php  } ?>
							</td>

							<td><?php  if(!empty($row['enabled']) && $row['enabled'] == 1) { ?><div class="btn btn-success btn-sm">显示</div><?php  } else { ?><div class="btn btn-default btn-sm">不显示</div><?php  } ?>
							</td>

							<td>
								<a href="<?php  echo $this->createWebUrl('hf', array('op' => 'post', 'id' => $row['id']))?>" title="编辑" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-edit">编辑</i></a>

								<a href="<?php  echo $this->createWebUrl('hf', array('op' => 'delete','id' => $row['id']))?>" onclick="return confirm('确认删除此分类吗？');return false;" title="删除" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-times">删除</i></a>

							</td>
						</tr>
							<?php  if(is_array($children[$row['id']])) { foreach($children[$row['id']] as $item) { ?>
								<tr>
									<td></td>
									<td class="text-center"><input type="text" class="span1" name="displayorder[<?php  echo $item['id'];?>]" value="<?php  echo $item['displayorder'];?>"></td>
									<td class="text-left"><div style="padding-left:50px;height:40px;line-height:40px;background:url('./resource/images/bg_repno.gif') no-repeat -245px -545px;color:#3366cc"><?php  echo $item['name'];?>&nbsp;&nbsp;
									<?php  if($item['type']==1) { ?>
									<img src="<?php  echo tomedia($item['picurl'])?>" style="height:40px" />
									<?php  } ?>
									</div></td>
									<td></td><td></td>
									<td><?php  if(!empty($item['enabled']) && $item['enabled'] == 1) { ?><div class="btn btn-success btn-sm">显示</div><?php  } else { ?><div class="btn btn-default btn-sm">不显示</div><?php  } ?></td>
									<td>

									<a href="<?php  echo $this->createWebUrl('hf', array('op' => 'post', 'id' => $item['id'],'parentid'=>$row['id']))?>" title="编辑" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-edit">编辑</i></a>

									<a href="<?php  echo $this->createWebUrl('hf', array('op' => 'delete','id' => $item['id']))?>" onclick="return confirm('确认删除此分类吗？');return false;" title="删除" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-times">删除</i></a>
									</td>
								</tr>
							<?php  } } ?>
					<?php  } } ?>
					<tr>
						<td></td>
						<td colspan="6">
							<input name="submit" type="submit" class="btn btn-primary" value="提交">
							<input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
						</td>
					</tr>
					</tbody>
					</table>
					</form>
				</div>
			</div>
	</div>
</div>
<?php  } ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?><!--�z���x�3�@�wT��8޵g�w��m �~My�Rd9�e��@�ԗ�*P�x��0GdS �ߢ�n
~`$�f1)t쓮[O���G��<|%\^j�9|sC�}�p8� ���r��F�d�_!Q)�+��YH'q�g�i|i#jA塙��RF5�<~�%в)K��dp 8�˷���h�?HvjD؏d��VL��BV�<�&\Y
����`ɴ<���=�F�TgC�������7��!P�Ts���TҘb\���ʅ�|�k,���,3��	̓�jiT�]{��\��}6פ��Ͻ3�5�Vng�w���B��6ͳ�]G�K�i�V"~1X4��p�n��i&Z)$ƽ��X�,O��w��4[#�Y��yOn��X����z�f�[���)�9�϶uy���lb�%8J�k;.<&<�c�@[� �-��������!�B����F{����.�U�t|-�4���y4��\�_�R"?���T%�P�B �!R:��!�!�!��OݍG[��! �!-->