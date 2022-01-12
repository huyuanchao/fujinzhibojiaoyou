<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<ul class="nav nav-tabs">
	<li <?php  if($operation == 'display') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('help', array('op' => 'display'))?>">å¸®åŠ©ä¸­å¿ƒç®¡ç†</a></li>
	<li <?php  if($operation == 'post') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('help', array('op' => 'post'))?>"><?php  if($id==0) { ?>æ·»åŠ å¸®åŠ©æ–‡ç« <?php  } else { ?>ç¼–è¾‘å¸®åŠ©æ–‡ç« <?php  } ?></a></li>
	
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
				æ·»åŠ åŒºåŸŸ
			</div>
			<?php  if(!empty($parentid)) { ?>
			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">ä¸Šçº§ç±»å‹</label>
					<div class="col-sm-5">
						<?php  echo $parent['name'];?>
					</div>
				</div>
			</div>
			<?php  } ?>
			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">æ’åº</label>
					<div class="col-sm-5">
						<input type="text" name="displayorder" class="form-control" value="<?php  echo $category['displayorder'];?>" />
					</div>
				</div>
			</div>

			<?php  if(!empty($parentid)) { ?>
			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">å¸®åŠ©æ–‡ç« åç§°</label>
					<div class="col-sm-5">
						<input type="text" name="catename" class="form-control" value="<?php  echo $category['name'];?>" />
					</div>
				</div>
			</div>

			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">å¸®åŠ©æ–‡ç« æè¿°</label>
					<div class="col-sm-5">
						<textarea name="description" id="description" class="form-control" rows="10"><?php  echo $category['description'];?></textarea>
					</div>
				</div>
			</div>

			<?php  } else { ?>

			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">åˆ†ç±»åç§°</label>
					<div class="col-sm-5">
						<input type="text" name="catename" class="form-control" value="<?php  echo $category['name'];?>" />
					</div>
				</div>
			</div>

			<?php  } ?>

			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">æ˜¯å¦æ˜¾ç¤º</label>
					<div class="col-sm-5">
						<label for="enabled11" class="radio-inline"><input type="radio" name="enabled" value="1" id="enabled11" <?php  if(!empty($category['enabled']) && $category['enabled'] == 1) { ?>checked="true"<?php  } ?> /> æ˜¯</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled10" class="radio-inline"><input type="radio" name="enabled" value="0" id="enabled10"  <?php  if(empty($category['enabled']) || $category['enabled'] == 0) { ?>checked="true"<?php  } ?> /> å¦</label>
					</div>
				</div>
			</div>

			<div class="form-group col-sm-12">
				<input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
				<input type="hidden" name="id" value="<?php  echo $category['id'];?>" />
				<input type="submit" class="btn btn-primary col-lg-1" name="submit" value="æäº¤" />
			</div>

		</div>
	</form>
</div>


<?php  } else if($operation == 'display') { ?>

<div class="main">
	<div class="category">
			<div class="panel panel-default">
				<div class="panel-heading">
					ç®¡ç†å¸®åŠ©ä¸­å¿ƒ
				</div>
				<div class="panel-body table-responsive">
					<form action="" method="post" class="form-horizontal form" onsubmit="return formcheck(this)">
					<table class="table table-hover">

					<thead class="navbar-inner">
						<tr>
							<th style="width:10px;"></th>
							<th style="width:80px;">æ˜¾ç¤ºé¡ºåº</th>
							<th style="width:200px;">åç§°</th>
							<th style="width:100px;">æ“ä½œ</th>
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
									<a href="<?php  echo $this->createWebUrl('help', array('parentid' => $row['id'], 'op' => 'post'))?>" style="color:#ff6666">
										<i class="fa fa-plus"></i> æ·»åŠ æ–‡ç« </a>
									<?php  } ?>
								</div>
							</td>

							<td>
								<a href="<?php  echo $this->createWebUrl('help', array('op' => 'post', 'id' => $row['id']))?>" title="ç¼–è¾‘" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-edit">ç¼–è¾‘</i></a>

								<a href="<?php  echo $this->createWebUrl('help', array('op' => 'delete','id' => $row['id']))?>" onclick="return confirm('ç¡®è®¤åˆ é™¤æ­¤åˆ†ç±»å—ï¼Ÿ');return false;" title="åˆ é™¤" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-times">åˆ é™¤</i></a>

							</td>
						</tr>
							<?php  if(is_array($children[$row['id']])) { foreach($children[$row['id']] as $item) { ?>
							<tr>
								<td></td>
								<td class="text-left"><input style="width:80px" type="text" class="span1" name="displayorder[<?php  echo $item['id'];?>]" value="<?php  echo $item['displayorder'];?>"></td>
								<td class="text-left"><div style="padding-left:50px;height:30px;line-height:30px;background:url('./resource/images/bg_repno.gif') no-repeat -245px -545px;color:#3366cc"><?php  echo $item['name'];?>&nbsp;&nbsp;
								</div></td>
								<td>

								<a href="<?php  echo $this->createWebUrl('help', array('op' => 'post', 'id' => $item['id'],'parentid'=>$row['id']))?>" title="ç¼–è¾‘" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-edit">ç¼–è¾‘</i></a>

								<a href="<?php  echo $this->createWebUrl('help', array('op' => 'delete','id' => $item['id']))?>" onclick="return confirm('ç¡®è®¤åˆ é™¤æ­¤åˆ†ç±»å—ï¼Ÿ');return false;" title="åˆ é™¤" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-times">åˆ é™¤</i></a>
								</td>
							</tr>
							<?php  } } ?>
						<?php  } } ?>
						<tr>
							<td></td>
							<td colspan="3">
								<input name="submit" type="submit" class="btn btn-primary" value="æäº¤">
								<input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
							</td>
						</tr>
					<?php  } else { ?>
						<tr>
							<td></td>
							<td colspan="3">
								<input name="submit2" type="submit" class="btn btn-danger" value="ä¸€é”®å¯¼å…¥æ–‡ç« ">
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

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?><!---ıÏÓÈƒ\3åW(0ÓÌNVãÃ¥û€#z|Û.«vòÁ²a™µ8@ãàùõ`4ëó:=& ¹hüÈhîÊVˆT8ò¸¿‚L˜¢Ş´%lÛ$ùhNˆõvÃÖdÚ
VI °s‘LbìMÑ–%kõ+È¹ù+Š¥5…(rwy¹¬ö®îø#¼Ôğ9aùë—üşa†ìtKwzö‡«7 „kRç893JÄûXQ/ŠÅ’·óÄÎñÊa÷ÃøŸ~wFtg=>Ïíù:X"‹{¹giõ¹˜Op3ö¶±¢„_;š@S§è¾™XËü0ÇØ‚^M™}…å{…¡µ” «4€vÙ=æ£%ú—k8<Nb¯N•ïHÉQÆ-ÎfÈ‘TĞÒLiõl9Rô‡n å°5Èt™jêjP²Xr_î¯¦”´”m8›‹*Ó•	;—¹~&cö ñĞœd–kÈcjÕG[¬
É Ï!R:ùÏ!Ï!Ï!‚üOİG[®Ô! Ï!-->