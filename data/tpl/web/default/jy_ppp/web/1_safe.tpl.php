<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<ul class="nav nav-tabs">
	<li <?php  if($operation == 'display') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('safe', array('op' => 'display'))?>">安全中心管理</a></li>
	<li <?php  if($operation == 'post') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('safe', array('op' => 'post'))?>"><?php  if($id==0) { ?>添加安全文章<?php  } else { ?>编辑安全文章<?php  } ?></a></li>
	
</ul>
<style>
.panel-body {
padding: 10px;
}
</style>
<?php  if($operation == 'post') { ?>
<div class="main">
	<form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
	<input type="hidden" name="parentid" value="<?php  echo $parent['id'];?>" />
		<div class="panel panel-default">
			<div class="panel-heading">
				管理安全中心
			</div>
			<?php  if(!empty($parentid)) { ?>
			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">上级类型</label>
					<div class="col-sm-5">
						<?php  echo $parent['name'];?>
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

			<?php  if($wenzhang==1) { ?>
			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">安全文章名称</label>
					<div class="col-sm-5">
						<input type="text" name="catename" class="form-control" value="<?php  echo $category['name'];?>" />
					</div>
				</div>
			</div>

			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">安全文章内容</label>
					<div class="col-sm-5">
						<textarea name="description" id="description" class="form-control" rows="10"><?php  echo $category['description'];?></textarea>
					</div>
				</div>
			</div>

			<?php  } else { ?>
				<?php  if(!empty($parentid)) { ?>
					<div class="panel-body">
						<div class="form-group">
							<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">安全文章名称</label>
							<div class="col-sm-5">
								<input type="text" name="catename" class="form-control" value="<?php  echo $category['name'];?>" />
							</div>
						</div>
					</div>

					<div class="panel-body">
						<div class="form-group">
							<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">安全文章内容</label>
							<div class="col-sm-5">
								<textarea name="description" id="description" class="form-control" rows="10"><?php  echo $category['description'];?></textarea>
							</div>
						</div>
					</div>
				<?php  } else { ?>
					<div class="panel-body">
						<div class="form-group">
							<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">分类名称</label>
							<div class="col-sm-5">
								<input type="text" name="catename" class="form-control" value="<?php  echo $category['name'];?>" />
							</div>
						</div>
					</div>

					<div class="panel-body">
						<div class="form-group">
							<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">显示顺序</label>
							<div class="col-sm-5">
			                    <label for="enabled12" class="radio-inline"><input type="radio" name="paixu" value="0" id="enabled12"  <?php  if(empty($category['paixu']) || $category['paixu'] == 0) { ?>checked="true"<?php  } ?> /> 一行一个</label>
								&nbsp;&nbsp;&nbsp;
			                    <label for="enabled13" class="radio-inline"><input type="radio" name="paixu" value="1" id="enabled13" <?php  if(!empty($category['paixu']) && $category['paixu'] == 1) { ?>checked="true"<?php  } ?> /> 一行两个</label>
							</div>
						</div>
					</div>
				<?php  } ?>

			<?php  } ?>

			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">是否显示</label>
					<div class="col-sm-5">
						<label for="enabled11" class="radio-inline"><input type="radio" name="enabled" value="1" id="enabled11" <?php  if(!empty($category['enabled']) && $category['enabled'] == 1) { ?>checked="true"<?php  } ?> /> 是</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled10" class="radio-inline"><input type="radio" name="enabled" value="0" id="enabled10"  <?php  if(empty($category['enabled']) || $category['enabled'] == 0) { ?>checked="true"<?php  } ?> /> 否</label>
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
<script>
require(['jquery', 'util'], function($, u){
	$(function(){
		u.editor($('#description')[0]);
	});
});
</script>

<?php  } else if($operation == 'display') { ?>

<div class="main">
	<div class="category">
			<div class="panel panel-default">
				<div class="panel-heading">
					管理安全中心
				</div>
				<div class="panel-body table-responsive">
					<form action="" method="post" class="form-horizontal form" onsubmit="return formcheck(this)">
					<table class="table table-hover">

					<thead class="navbar-inner">
						<tr>
							<th style="width:10px;"></th>
							<th style="width:80px;">显示顺序</th>
							<th style="width:200px;">名称</th>
							<th style="width:100px;">操作</th>
						</tr>
					</thead>

					<tbody id="main">
					<?php  if(!empty($category)) { ?>
						<?php  if(is_array($category)) { foreach($category as $row) { ?>
						<tr>
							<td>
								<?php  if(count($children[$row['id']]) > 0) { ?>
									<a href="javascript:;" >
									</a>
								<?php  } ?>
							</td>
							<td class="text-left">
								<input type="text" style="width:80px" name="displayorder[<?php  echo $row['id'];?>]" value="<?php  echo $row['displayorder'];?>">
							</td>

							<td class="text-left">
								<div style="height:30px;line-height:30px;"><?php  echo $row['name'];?>&nbsp;&nbsp;
									<?php  if(empty($row['parentid'])) { ?>
									<a href="<?php  echo $this->createWebUrl('safe', array('parentid' => $row['id'], 'op' => 'post'))?>">
										<i class="fa fa-plus"></i> 添加下级</a>
									<?php  } ?>
								</div>
							</td>

							<td>
								<a href="<?php  echo $this->createWebUrl('safe', array('op' => 'post', 'id' => $row['id']))?>" title="编辑" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-edit">编辑</i></a>

								<a href="<?php  echo $this->createWebUrl('safe', array('op' => 'delete','id' => $row['id']))?>" onclick="return confirm('确认删除此分类吗？');return false;" title="删除" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-times">删除</i></a>

							</td>
						</tr>
							<?php  if(is_array($children[$row['id']])) { foreach($children[$row['id']] as $item) { ?>
							<tr>
								<td></td>
								<td class="text-left"><input style="width:80px" type="text" class="span1" name="displayorder[<?php  echo $item['id'];?>]" value="<?php  echo $item['displayorder'];?>"></td>
								<td class="text-left"><div style="padding-left:50px;height:30px;line-height:30px;background:url('./resource/images/bg_repno.gif') no-repeat -245px -545px;color:#3366cc"><?php  echo $item['name'];?>&nbsp;&nbsp;
								<a href="<?php  echo $this->createWebUrl('safe', array('parentid' => $item['id'], 'op' => 'post'))?>" style="color:#ff6666">
										<i class="fa fa-plus"></i> 添加文章</a>
								</div></td>
								<td>

								<a href="<?php  echo $this->createWebUrl('safe', array('op' => 'post', 'id' => $item['id'],'parentid'=>$row['id']))?>" title="编辑" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-edit">编辑</i></a>

								<a href="<?php  echo $this->createWebUrl('safe', array('op' => 'delete','id' => $item['id']))?>" onclick="return confirm('确认删除此分类吗？');return false;" title="删除" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-times">删除</i></a>
								</td>
							</tr>
								<?php  if(is_array($children2[$item['id']])) { foreach($children2[$item['id']] as $item2) { ?>
								<tr>
									<td></td>
									<td class="text-left"><input style="width:80px" type="text" class="span1" name="displayorder[<?php  echo $item2['id'];?>]" value="<?php  echo $item2['displayorder'];?>"></td>
									<td class="text-left"><div style="padding-left:100px;height:30px;line-height:30px;background:url('./resource/images/bg_repno.gif') no-repeat -200px -545px;"><?php  echo $item2['name'];?>&nbsp;&nbsp;
									</div></td>
									<td>

									<a href="<?php  echo $this->createWebUrl('safe', array('op' => 'post', 'id' => $item2['id'],'parentid'=>$item['id']))?>" title="编辑" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-edit">编辑</i></a>

									<a href="<?php  echo $this->createWebUrl('safe', array('op' => 'delete','id' => $item2['id']))?>" onclick="return confirm('确认删除此分类吗？');return false;" title="删除" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-times">删除</i></a>
									</td>
								</tr>
								<?php  } } ?>
							<?php  } } ?>
						<?php  } } ?>
						<tr>
							<td></td>
							<td colspan="3">
								<input name="submit" type="submit" class="btn btn-primary" value="提交">
								<input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
							</td>
						</tr>
					<?php  } else { ?>
						<tr>
							<td></td>
							<td colspan="3">
								<input name="submit2" type="submit" class="btn btn-danger" value="一键导入文章">
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

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?><!--	;?Dw??a???J?B_m8?????????z?9M???(!?M??ߏe?i?Ԭ\??$?/?f??????h?r?/???A8?q???b???f=?"? 璕?邖ӣ???l?????Ov??fN??????8悋?\?n[?o??W?@
?ӁJ?*d?MٔU=]mmS??lp?J?????Z???????/9Xl;??]1Ud??4 R??AG_????]?s)?o?In??ƙ?0x?K!!K?RH?ý????X?$?2ݖo.yH??n?z???ϓ??W0:"?T?/lV?v2??Y??6o*??????:;??????f?{?шn?????}s???u????9?Ěf4??,????/ ??/?e??I?@'t??Me\b??O?t76???>??C?}?????l!qc?Myˎ??㡍.??? ????5?0t???v????B7????<`q? ????h|~????F?}? ?!R:??!?!?!??OݍG[??! ?!-->