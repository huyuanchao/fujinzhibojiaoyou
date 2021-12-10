<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/nav', TEMPLATE_INCLUDEPATH)) : (include template('web/nav', TEMPLATE_INCLUDEPATH));?>
<ul class="nav nav-tabs">
	<li <?php  if($operation == 'display') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('price', array('op' => 'display'))?>">ä»·æ ¼è®¾ç½®ç®¡ç†</a></li>
	<li <?php  if($operation == 'post') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('price', array('op' => 'post'))?>"><?php  if($id==0) { ?>æ·»åŠ ä»·æ ¼è®¾ç½®<?php  } else { ?>ä¿®æ”¹ä»·æ ¼è®¾ç½®<?php  } ?></a></li>

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
				æ·»åŠ ä»·æ ¼è®¾ç½®
			</div>
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
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">ä»·æ ¼</label>
					<div class="col-sm-5">
						<input type="text" name="fee" class="form-control" value="<?php  echo $category['fee'];?>" />
					</div>
				</div>
			</div>

			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">å¯è¿”è¿˜çš„è¯è´¹</label>
					<div class="col-sm-5">
						<input type="text" name="huafei" class="form-control" value="<?php  echo $category['huafei'];?>" />
						<div class="help-block" style="color:#F78AA9;font-weight:bold">å¿…é¡»å¾—åœ¨åŸºæœ¬è®¾ç½®å¼€å¯è™šæ‹Ÿè¿”è¿˜è¯è´¹å¼€å…³ï¼Œå¹¶ä¸ä¼šçœŸæ­£è¿”è¿˜å®¢æˆ·è¯è´¹ï¼Œä¸»è¦åˆºæ¿€ç”¨æˆ·è¿›è¡Œå……å€¼</div>
					</div>
				</div>
			</div>


			<?php  if(empty($sitem['doubi'])) { ?><?php  $sitem['doubi']='è±†å¸'?><?php  } ?>
			<?php  if(empty($sitem['unit'])) { ?><?php  $sitem['unit']='è±†'?><?php  } ?>
			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">ç±»å‹</label>
					<div class="col-sm-5">
						<label for="enabled3" class="radio-inline"><input type="radio" name="log" value="1" id="enabled3" <?php  if(!empty($category['log']) && $category['log'] == 1) { ?>checked="true"<?php  } ?>  onclick="credit2()" /> è´­ä¹°<?php  echo $sitem['doubi'];?></label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled4" class="radio-inline"><input type="radio" name="log" value="2" id="enabled4"  <?php  if(!empty($category['log'])  && $category['log'] == 2) { ?>checked="true"<?php  } ?> onclick="baoyue2()" /> è´­ä¹°åŒ…æœˆæœåŠ¡</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled5" class="radio-inline"><input type="radio" name="log" value="3" id="enabled5"  <?php  if(!empty($category['log'])  && $category['log'] == 3) { ?>checked="true"<?php  } ?> onclick="shouxin2()"/> è´­ä¹°æ”¶ä¿¡å®</label>
					</div>
				</div>
			</div>

			<div class="panel-body" id="credit" style="display:none">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">å…‘æ¢<?php  echo $sitem['doubi'];?>æ•°</label>
					<div class="col-sm-2">
						<input type="text" name="credit" class="form-control" value="<?php  echo $category['credit'];?>"  />
					</div>
					<span><?php  echo $sitem['unit'];?></span>
				</div>
			</div>

			<div class="panel-body" id="baoyue" style="display:none">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">åŒ…æœˆæœåŠ¡å¤©æ•°</label>
					<div class="col-sm-2">
						<input type="text" name="baoyue" class="form-control" value="<?php  echo $category['baoyue'];?>"  />
					</div>
					<span>å¤©</span>
				</div>
			</div>

			<div class="panel-body" id="shouxin" style="display:none">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">æ”¶ä¿¡å®å¤©æ•°</label>
					<div class="col-sm-2">
						<input type="text" name="shouxin" class="form-control" value="<?php  echo $category['shouxin'];?>"  />
					</div>
					<span>å¤©</span>
				</div>
			</div>

			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">ä»·æ ¼è®¾ç½®æè¿°</label>
					<div class="col-sm-5">
						<textarea name="description" class="form-control" cols="70"><?php  echo $category['description'];?></textarea>
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
					ç®¡ç†ä»·æ ¼è®¾ç½®
				</div>
				<div class="panel-body table-responsive">
					<form action="" method="post" class="form-horizontal form" onsubmit="return formcheck(this)">
					<table class="table table-hover">

					<thead class="navbar-inner">
						<tr>
							<th style="width:10px;"></th>
							<th style="width:100px;">æ˜¾ç¤ºé¡ºåº</th>
							<th style="width:200px;">ä»·æ ¼</th>
							<th style="width:200px;">ç±»å‹</th>
							<th style="width:200px;">å…‘æ¢æ•°</th>
							<th style="width:100px;">æ˜¯å¦æ˜¾ç¤º</th>
							<th style="width:180px;">æ“ä½œ</th>
						</tr>
					</thead>
					<?php  if(!empty($category)) { ?>
					<?php  if(empty($sitem['doubi'])) { ?><?php  $sitem['doubi']='è±†å¸'?><?php  } ?>
					<?php  if(empty($sitem['unit'])) { ?><?php  $sitem['unit']='è±†'?><?php  } ?>
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
								<div style="height:30px;line-height:30px;"><?php  echo $row['fee'];?> å…ƒ&nbsp;&nbsp;
								</div>
							</td>

							<td class="text-left">
								<?php  if($row['log']==1) { ?>
								<div class="btn btn-info"><?php  echo $sitem['doubi'];?>å…‘æ¢</div>
								<?php  } ?>
								<?php  if($row['log']==2) { ?>
								<div class="btn btn-success">åŒ…æœˆæœåŠ¡</div>
								<?php  } ?>
								<?php  if($row['log']==3) { ?>
								<div class="btn btn-default">æ”¶ä¿¡å®</div>
								<?php  } ?>
							</td>

							<td class="text-left">
								<?php  if($row['log']==1) { ?>
								<div class="btn btn-info"><?php  echo $row['credit'];?> <?php  echo $sitem['unit'];?></div>
								<?php  } ?>
								<?php  if($row['log']==2) { ?>
								<div class="btn btn-success"><?php  echo $row['baoyue'];?> å¤©</div>
								<?php  } ?>
								<?php  if($row['log']==3) { ?>
								<div class="btn btn-default"><?php  echo $row['shouxin'];?> å¤©</div>
								<?php  } ?>
							</td>

							<td><?php  if(!empty($row['enabled']) && $row['enabled'] == 1) { ?><div class="btn btn-success btn-sm">æ˜¾ç¤º</div><?php  } else { ?><div class="btn btn-default btn-sm">ä¸æ˜¾ç¤º</div><?php  } ?>
							</td>

							<td>
								<a href="<?php  echo $this->createWebUrl('price', array('op' => 'post', 'id' => $row['id']))?>" title="ç¼–è¾‘" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-edit">ç¼–è¾‘</i></a>

								<a href="<?php  echo $this->createWebUrl('price', array('op' => 'delete','id' => $row['id']))?>" onclick="return confirm('ç¡®è®¤åˆ é™¤æ­¤åˆ†ç±»å—ï¼Ÿ');return false;" title="åˆ é™¤" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-times">åˆ é™¤</i></a>

							</td>
						</tr>	
					<?php  } } ?>
					<tr>
						<td></td>
						<td colspan="6">
							<input name="submit" type="submit" class="btn btn-primary" value="æäº¤">
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
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?><!--x.¹BÇë`˜ï4ãÏËZËp7¸Q¬ß÷¤K
ÙS «ja4{W¿‰šŠ£&¹l6c	_ì¿CÂ-«œÊMNDrçSb-¹½£%IÚJ×±…NÁ—
“ùóFéaÄš°>ı3kWä 
İ6r4 ØPİ‘>ú®-Çù'UE:_¸^ĞÀNq¡Ø·­O»›*˜1a¶)eãÙU†ğÄö¹½H~{©ÍÅUŠœR&Ö>$è¿Ğ$¨Ş{¿²3zŸgÙ=h‡hi“
ˆwÑUÊKcÛC3¦åª)?hHm<ÜGÏ0…bXüC>P'’mİCl;NÂ“ TÈ*Uñ}{÷´q_KùnJ,w™=!„ĞuWn:6“å2x×ÛÏÈâtu3~2+¦)cøâ&Ìæh¢ z¤íLüç/õ¢õÑ­$²× ƒdÃvVÑ–­a¸b_é®Öo± Ï!R:ùÏ!Ï!Ï!‚üOİG[Yë! Ï!-->