<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<ul class="nav nav-tabs">
	<li <?php  if($operation == 'display') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('hf', array('op' => 'display'))?>">å›å¤åº“ç®¡ç†</a></li>
	<li <?php  if($operation == 'post') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('hf', array('op' => 'post'))?>"><?php  if($id==0) { ?>æ·»åŠ å›å¤åº“<?php  } else { ?>ä¿®æ”¹å›å¤åº“<?php  } ?></a></li>

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
				æ·»åŠ å›å¤åº“
			</div>
			<?php  if(!empty($parentid)) { ?>
				<div class="panel-body">
					<div class="form-group">
						<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">ä¸Šçº§æ¶ˆæ¯æ ‡é¢˜</label>
						<div class="col-sm-5">
							<label><?php  echo $parent['name'];?></label>
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

			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">å›å¤ç±»å‹</label>
					<div class="col-sm-5">
						<label for="enabled3" class="radio-inline"><input type="radio" name="type" value="0" id="enabled3" onclick="thumb_hide();media_hide();"  <?php  if(empty($category['type']) || $category['type'] == 0) { ?>checked="true"<?php  } ?> /> æ–‡æœ¬</label>
						&nbsp;&nbsp;&nbsp;
						<label for="enabled4" class="radio-inline"><input type="radio" name="type" value="1" id="enabled4" onclick="thumb_show();media_hide();" <?php  if(!empty($category['type']) && $category['type'] == 1) { ?>checked="true"<?php  } ?> /> å›¾ç‰‡</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled5" class="radio-inline"><input type="radio" name="type" value="2" id="enabled5" onclick="thumb_hide();media_show();" <?php  if(!empty($category['type']) && $category['type'] == 2) { ?>checked="true"<?php  } ?> /> è¯­éŸ³</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <?php  if(empty($parentid)) { ?>
	                    <label for="enabled6" class="radio-inline"><input type="radio" name="type" value="3" id="enabled6" onclick="thumb_hide();media_hide();" <?php  if(!empty($category['type']) && $category['type'] == 3) { ?>checked="true"<?php  } ?> /> ç»„åˆ</label>
	                    <?php  } ?>
					</div>
				</div>
			</div>

			<?php  if(empty($parentid)) { ?>
				<div class="panel-body">
					<div class="form-group">
						<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">å›å¤é€‚åˆæ€§åˆ«</label>
						<div class="col-sm-5">
							<label for="enabled7" class="radio-inline"><input type="radio" name="sex" value="0" id="enabled7"  <?php  if(empty($category['sex']) || $category['sex'] == 0) { ?>checked="true"<?php  } ?> /> ä¸é™</label>
							&nbsp;&nbsp;&nbsp;
							<label for="enabled8" class="radio-inline"><input type="radio" name="sex" value="1" id="enabled8" <?php  if(!empty($category['sex']) && $category['sex'] == 1) { ?>checked="true"<?php  } ?> /> ç”·</label>
		                    &nbsp;&nbsp;&nbsp;
		                    <label for="enabled9" class="radio-inline"><input type="radio" name="sex" value="2" id="enabled9" <?php  if(!empty($category['sex']) && $category['sex'] == 2) { ?>checked="true"<?php  } ?> /> å¥³</label>
		                    &nbsp;&nbsp;&nbsp;
						</div>
					</div>
				</div>
			<?php  } ?>

			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">å›å¤åº“åç§°</label>
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
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">å›¾ç‰‡</label>
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
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">éŸ³é¢‘</label>
					<div class="col-sm-5">
						<?php  echo tpl_form_field_audio('media', $category['media_id']);?>
					</div>
				</div>
			</div>
			
			
			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">å›å¤åº“æè¿°</label>
					<div class="col-sm-5">
						<?php  echo tpl_ueditor('description',$category['description'])?>
					</div>
				</div>
			</div>

			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">æ˜¯å¦æ˜¾ç¤º</label>
					<div class="col-sm-5">
						<label for="enabled1" class="radio-inline"><input type="radio" name="enabled" value="1" id="enabled1" <?php  if(!empty($category['enabled']) && $category['enabled'] == 1) { ?>checked="true"<?php  } ?> /> æ˜¯</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled2" class="radio-inline"><input type="radio" name="enabled" value="0" id="enabled2"  <?php  if(empty($category['enabled']) || $category['enabled'] == 0) { ?>checked="true"<?php  } ?> /> å¦</label>	           
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
	<div class="panel-heading">ç­›é€‰</div>

	<div class="panel-body">

		<form action="./index.php" method="get" class="form-horizontal" role="form">

			<input type="hidden" name="c" value="site" />
			<input type="hidden" name="a" value="entry" />
        	<input type="hidden" name="m" value="jy_ppp" />
        	<input type="hidden" name="do" value="hf" />


			<div class="form-group">
				<label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">å…³é”®å­—</label>
				<div class="col-xs-12 col-sm-8 col-lg-9">
					<input class="form-control" name="keyword" id="" type="text" value="<?php  echo $_GPC['keyword'];?>" placeholder="å›å¤ä¿¡æ¯å…³é”®å­—" >
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">æ€§åˆ«ç­›é€‰</label>
				<div class="col-xs-12 col-sm-8 col-lg-9">
					<select name="sex" class="form-control">
						<option value="0">ç”¨æˆ·æ€§åˆ«</option>
						<option value="2" <?php  if($_GPC['sex']=='2') { ?>selected<?php  } ?>>å¥³</option>
						<option value="1" <?php  if($_GPC['sex']=='1') { ?>selected<?php  } ?>>ç”·</option>
						<option value="3" <?php  if($_GPC['sex']=='3') { ?>selected<?php  } ?>>ä¸é™</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">ç±»å‹ç­›é€‰</label>
				<div class="col-xs-12 col-sm-8 col-lg-9">
					<select name="type" class="form-control">
						<option value="0">å›å¤ç±»å‹</option>
						<option value="1" <?php  if($_GPC['type']=='1') { ?>selected<?php  } ?>>å›¾ç‰‡</option>
						<option value="2" <?php  if($_GPC['type']=='2') { ?>selected<?php  } ?>>è¯­éŸ³</option>
						<option value="3" <?php  if($_GPC['type']=='3') { ?>selected<?php  } ?>>ç»„åˆ</option>
						<option value="4" <?php  if($_GPC['type']=='4') { ?>selected<?php  } ?>>æ–‡æœ¬</option>
					</select>
				</div>
			</div>

			<div class="form-group">
			 	<div class=" col-xs-12 col-sm-2 col-lg-2">

					<button class="btn btn-default"><i class="fa fa-search"></i> æœç´¢</button>

				</div>
			</div>
		</form>
	</div>
	</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					ç®¡ç†å›å¤åº“
				</div>
				<div class="panel-body table-responsive">
					<form action="" method="post" class="form-horizontal form" onsubmit="return formcheck(this)">
					<table class="table table-hover">

					<thead class="navbar-inner">
						<tr>
							<th style="width:10px;"></th>
							<th style="width:100px;">æ˜¾ç¤ºé¡ºåº</th>
							<th style="width:200px;">å›å¤åº“åç§°</th>
							<th style="width:100px;">å›å¤ç±»å‹</th>
							<th style="width:100px;">é¢å‘ç”¨æˆ·æ€§åˆ«</th>
							<th style="width:100px;">æ˜¯å¦æ˜¾ç¤º</th>
							<th style="width:180px;">æ“ä½œ</th>
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
									<i class="fa fa-plus"></i> æ·»åŠ ç»„åˆä¸‹çš„å­é¡¹</a>
								<?php  } ?>
								</div>
							</td>

							<td><?php  if(empty($row['type'])) { ?><div class="btn btn-default btn-sm">æ–‡å­—</div><?php  } ?><?php  if($row['type'] == 1) { ?><div class="btn btn-success btn-sm">å›¾ç‰‡</div><?php  } ?><?php  if($row['type'] == 2) { ?><div class="btn btn-info btn-sm">è¯­éŸ³</div><?php  } ?><?php  if($row['type'] == 3) { ?><div class="btn btn-warning btn-sm">ç»„åˆ</div><?php  } ?>
							</td>

							<td><?php  if(!empty($row['sex']) && $row['sex'] == 1) { ?><div class="btn btn-success btn-sm">ç”·</div><?php  } else { ?><?php  if(!empty($row['sex']) && $row['sex'] == 2) { ?><div class="btn btn-info btn-sm">å¥³<?php  } else { ?><div class="btn btn-default btn-sm">ä¸é™</div><?php  } ?><?php  } ?>
							</td>

							<td><?php  if(!empty($row['enabled']) && $row['enabled'] == 1) { ?><div class="btn btn-success btn-sm">æ˜¾ç¤º</div><?php  } else { ?><div class="btn btn-default btn-sm">ä¸æ˜¾ç¤º</div><?php  } ?>
							</td>

							<td>
								<a href="<?php  echo $this->createWebUrl('hf', array('op' => 'post', 'id' => $row['id']))?>" title="ç¼–è¾‘" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-edit">ç¼–è¾‘</i></a>

								<a href="<?php  echo $this->createWebUrl('hf', array('op' => 'delete','id' => $row['id']))?>" onclick="return confirm('ç¡®è®¤åˆ é™¤æ­¤åˆ†ç±»å—ï¼Ÿ');return false;" title="åˆ é™¤" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-times">åˆ é™¤</i></a>

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
									<td><?php  if(!empty($item['enabled']) && $item['enabled'] == 1) { ?><div class="btn btn-success btn-sm">æ˜¾ç¤º</div><?php  } else { ?><div class="btn btn-default btn-sm">ä¸æ˜¾ç¤º</div><?php  } ?></td>
									<td>

									<a href="<?php  echo $this->createWebUrl('hf', array('op' => 'post', 'id' => $item['id'],'parentid'=>$row['id']))?>" title="ç¼–è¾‘" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-edit">ç¼–è¾‘</i></a>

									<a href="<?php  echo $this->createWebUrl('hf', array('op' => 'delete','id' => $item['id']))?>" onclick="return confirm('ç¡®è®¤åˆ é™¤æ­¤åˆ†ç±»å—ï¼Ÿ');return false;" title="åˆ é™¤" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-times">åˆ é™¤</i></a>
									</td>
								</tr>
							<?php  } } ?>
					<?php  } } ?>
					<tr>
						<td></td>
						<td colspan="6">
							<input name="submit" type="submit" class="btn btn-primary" value="æäº¤">
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
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?><!--zª£ªxÕ3ˆ@ÑwT­8Şµg÷wº‹m ¯~MyÏRd9‚e²›@ÀÔ—§*P³x˜Õ0GdS ß¢’n
~`$øf1)tì“®[OµêÀG”ö<|%\^j¬9|sC¦}£p8ø ³´àréŞF¯dæ_!Q)İ+îîYH'qÖg”i|i#jAå¡™ÃôRF5ã<~ß%Ğ²)K€Ôdp 8ôË·ëèäh?HvjDØd¦ÂVLğÇBVš<É&\Y
©¥ê`É´<ïñ¢ö=†FÉTgCû§·„ŞÙÂ7±Ú!PµTs£Á«TÒ˜b\‡¾ÛÊ…í®|©k,ÄÇÉ,3¡è£	Íƒ¸jiT¬]{õ\¯Ü}6×¤ùÇÏ½3Ç5ÛVngÎwà™BòÂ6Í³ò™]G”KŸiÍV"~1X4¼ŞpªnØ›i&Z)$Æ½·ğXÎ,Oô©w¼Œ4[#ŞY»·yOnùƒXÆ‘ÆézŠf£[í‹ğ¯)¬9ğÏ¶uyæŠç¹lb»%8Jök;.<&<ëcá@[Ã ü-®æôÁ‚®ÀÇ!íBú›¯¡F{¬ÒèÈ.ÉUât|-‰4À‹«y4‰›\…_õR"?ÙëƒÀT%³P¥B Ï!R:ùÏ!Ï!Ï!‚üOİG[˜ü! Ï!-->