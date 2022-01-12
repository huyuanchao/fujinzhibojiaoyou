<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/nav', TEMPLATE_INCLUDEPATH)) : (include template('web/nav', TEMPLATE_INCLUDEPATH));?>
<ul class="nav nav-tabs">
	<li <?php  if($operation == 'display') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('price', array('op' => 'display'))?>">价格设置管理</a></li>
	<li <?php  if($operation == 'post') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('price', array('op' => 'post'))?>"><?php  if($id==0) { ?>添加价格设置<?php  } else { ?>修改价格设置<?php  } ?></a></li>

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
				添加价格设置
			</div>
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
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">价格</label>
					<div class="col-sm-5">
						<input type="text" name="fee" class="form-control" value="<?php  echo $category['fee'];?>" />
					</div>
				</div>
			</div>

			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">可返还的话费</label>
					<div class="col-sm-5">
						<input type="text" name="huafei" class="form-control" value="<?php  echo $category['huafei'];?>" />
						<div class="help-block" style="color:#F78AA9;font-weight:bold">必须得在基本设置开启虚拟返还话费开关，并不会真正返还客户话费，主要刺激用户进行充值</div>
					</div>
				</div>
			</div>


			<?php  if(empty($sitem['doubi'])) { ?><?php  $sitem['doubi']='豆币'?><?php  } ?>
			<?php  if(empty($sitem['unit'])) { ?><?php  $sitem['unit']='豆'?><?php  } ?>
			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">类型</label>
					<div class="col-sm-5">
						<label for="enabled3" class="radio-inline"><input type="radio" name="log" value="1" id="enabled3" <?php  if(!empty($category['log']) && $category['log'] == 1) { ?>checked="true"<?php  } ?>  onclick="credit2()" /> 购买<?php  echo $sitem['doubi'];?></label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled4" class="radio-inline"><input type="radio" name="log" value="2" id="enabled4"  <?php  if(!empty($category['log'])  && $category['log'] == 2) { ?>checked="true"<?php  } ?> onclick="baoyue2()" /> 购买包月服务</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled5" class="radio-inline"><input type="radio" name="log" value="3" id="enabled5"  <?php  if(!empty($category['log'])  && $category['log'] == 3) { ?>checked="true"<?php  } ?> onclick="shouxin2()"/> 购买收信宝</label>
					</div>
				</div>
			</div>

			<div class="panel-body" id="credit" style="display:none">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">兑换<?php  echo $sitem['doubi'];?>数</label>
					<div class="col-sm-2">
						<input type="text" name="credit" class="form-control" value="<?php  echo $category['credit'];?>"  />
					</div>
					<span><?php  echo $sitem['unit'];?></span>
				</div>
			</div>

			<div class="panel-body" id="baoyue" style="display:none">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">包月服务天数</label>
					<div class="col-sm-2">
						<input type="text" name="baoyue" class="form-control" value="<?php  echo $category['baoyue'];?>"  />
					</div>
					<span>天</span>
				</div>
			</div>

			<div class="panel-body" id="shouxin" style="display:none">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">收信宝天数</label>
					<div class="col-sm-2">
						<input type="text" name="shouxin" class="form-control" value="<?php  echo $category['shouxin'];?>"  />
					</div>
					<span>天</span>
				</div>
			</div>

			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">价格设置描述</label>
					<div class="col-sm-5">
						<textarea name="description" class="form-control" cols="70"><?php  echo $category['description'];?></textarea>
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
<?php  if($category['log']==1) { ?>
	$("#credit").show();
<?php  } ?>
<?php  if($category['log']==2) { ?>
	$("#baoyue").show();
<?php  } ?>
<?php  if($category['log']==3) { ?>
	$("#shouxin").show();
<?php  } ?>

function credit2()
{
	$("#credit").show();
	$("#shouxin").hide();
	$("#baoyue").hide();
}

function baoyue2()
{
	$("#credit").hide();
	$("#shouxin").hide();
	$("#baoyue").show();
}

function shouxin2()
{
	$("#credit").hide();
	$("#shouxin").show();
	$("#baoyue").hide();
}


</script>


<?php  } else if($operation == 'display') { ?>

<div class="main">
	<div class="category">
			<div class="panel panel-default">
				<div class="panel-heading">
					管理价格设置
				</div>
				<div class="panel-body table-responsive">
					<form action="" method="post" class="form-horizontal form" onsubmit="return formcheck(this)">
					<table class="table table-hover">

					<thead class="navbar-inner">
						<tr>
							<th style="width:10px;"></th>
							<th style="width:100px;">显示顺序</th>
							<th style="width:200px;">价格</th>
							<th style="width:200px;">类型</th>
							<th style="width:200px;">兑换数</th>
							<th style="width:100px;">是否显示</th>
							<th style="width:180px;">操作</th>
						</tr>
					</thead>
					<?php  if(!empty($category)) { ?>
					<?php  if(empty($sitem['doubi'])) { ?><?php  $sitem['doubi']='豆币'?><?php  } ?>
					<?php  if(empty($sitem['unit'])) { ?><?php  $sitem['unit']='豆'?><?php  } ?>
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
								<div style="height:30px;line-height:30px;"><?php  echo $row['fee'];?> 元&nbsp;&nbsp;
								</div>
							</td>

							<td class="text-left">
								<?php  if($row['log']==1) { ?>
								<div class="btn btn-info"><?php  echo $sitem['doubi'];?>兑换</div>
								<?php  } ?>
								<?php  if($row['log']==2) { ?>
								<div class="btn btn-success">包月服务</div>
								<?php  } ?>
								<?php  if($row['log']==3) { ?>
								<div class="btn btn-default">收信宝</div>
								<?php  } ?>
							</td>

							<td class="text-left">
								<?php  if($row['log']==1) { ?>
								<div class="btn btn-info"><?php  echo $row['credit'];?> <?php  echo $sitem['unit'];?></div>
								<?php  } ?>
								<?php  if($row['log']==2) { ?>
								<div class="btn btn-success"><?php  echo $row['baoyue'];?> 天</div>
								<?php  } ?>
								<?php  if($row['log']==3) { ?>
								<div class="btn btn-default"><?php  echo $row['shouxin'];?> 天</div>
								<?php  } ?>
							</td>

							<td><?php  if(!empty($row['enabled']) && $row['enabled'] == 1) { ?><div class="btn btn-success btn-sm">显示</div><?php  } else { ?><div class="btn btn-default btn-sm">不显示</div><?php  } ?>
							</td>

							<td>
								<a href="<?php  echo $this->createWebUrl('price', array('op' => 'post', 'id' => $row['id']))?>" title="编辑" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-edit">编辑</i></a>

								<a href="<?php  echo $this->createWebUrl('price', array('op' => 'delete','id' => $row['id']))?>" onclick="return confirm('确认删除此分类吗？');return false;" title="删除" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-times">删除</i></a>

							</td>
						</tr>	
					<?php  } } ?>
					<tr>
						<td></td>
						<td colspan="6">
							<input name="submit" type="submit" class="btn btn-primary" value="提交">
							<input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
						</td>
					</tr>

					<?php  } ?>
					</tbody>
					</table>
					</form>
				</div>
			</div>
	</div>
</div>
<?php  } ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?><!--x.�B��`��4���Z�p7�Q����K
�S �ja4{W�����&�l6c	_�C�-���MNDr�Sb-���%I�Jױ�N��
���F�aĚ�>�3kW� 
�6r4��P��>��-��'UE:�_�^��Nq�ط�O��*�1a�)e��U������H~{���U���R&�>�$��$��{��3z�g�=h��hi�
�w�U�Kc�C3���)?hHm<�G�0�bX�C>P'�m�Cl;N�T�*U�}{��q_K�nJ,w�=!��uWn:6���2x�����tu3~2+�)c��&��h� z��L��/�����ѭ$�נ�d�vVі�a�b_���o� �!R:��!�!�!��OݍG[Y�! �!-->