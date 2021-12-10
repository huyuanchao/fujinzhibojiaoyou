<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/nav', TEMPLATE_INCLUDEPATH)) : (include template('web/nav', TEMPLATE_INCLUDEPATH));?>
<ul class="nav nav-tabs">
	<li <?php  if($operation == 'display') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('xunithumb', array('op' => 'display'))?>">è™šæ‹Ÿç”¨æˆ·ç›¸å†Œç®¡ç†</a></li>
	<li <?php  if($operation == 'post') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('xunithumb', array('op' => 'post'))?>"><?php  if($id==0) { ?>æ·»åŠ è™šæ‹Ÿç”¨æˆ·ç›¸å†Œ<?php  } else { ?>ä¿®æ”¹è™šæ‹Ÿç”¨æˆ·ç›¸å†Œ<?php  } ?></a></li>
	<li <?php  if($operation == 'collection') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('xunithumb', array('op' => 'collection'))?>">é‡‡é›†ç”¨æˆ·ç›¸å†Œ</a></li>

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
				æ·»åŠ è™šæ‹Ÿç”¨æˆ·ç›¸å†Œ
			</div>

			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">å›¾ç‰‡</label>
					<div class="col-sm-5">
						<?php  echo tpl_form_field_image("avatar",$avatar);?>
					</div>
				</div>
			</div>
			
			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">å›¾ç‰‡</label>
					<div class="col-sm-5">
						<?php  echo tpl_form_field_multi_image("thumb",$category['thumb']);?>
					</div>
				</div>
			</div>

			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">è™šæ‹Ÿç”¨æˆ·æ€§åˆ«</label>
					<div class="col-sm-5">
						<label for="enabled1" class="radio-inline"><input type="radio" name="sex" value="1" id="enabled1" <?php  if(!empty($category['sex']) && $category['sex'] == 1) { ?>checked="true"<?php  } ?> /> ç”·</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled2" class="radio-inline"><input type="radio" name="sex" value="2" id="enabled2"  <?php  if(!empty($category['sex']) && $category['sex'] == 2) { ?>checked="true"<?php  } ?> /> å¥³</label>	           
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
<?php  } else if($operation == 'collection') { ?>
<div class="main">
	<div>
	<form action="" id="coll_html" method="post" class="form-horizontal form" enctype="multipart/form-data">
		<div class="panel panel-default">
			<div class="panel-heading">
				é‡‡é›†ç”¨æˆ·ç›¸å†Œ
			</div>

			<div class="panel-body">
				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">é€‰æ‹©é‡‡é›†æ€§åˆ«</label>
					<div class="col-sm-5">
						<label for="enabled1" class="radio-inline"><input type="radio" name="sex" value="1" id="enabled1" /> ç”·</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled2" class="radio-inline"><input type="radio" name="sex" value="2" id="enabled2"  checked="true"/> å¥³</label>	           
					</div>
				</div>
			</div>
			<div class="form-group col-sm-12">
				<input type="button" onclick="return rest_coll(1)" class="btn btn-primary col-lg-2" name="submit" value="åˆå§‹åŒ–é‡‡é›†æ•°æ®" />
			</div>
		</div>
	</form>
	</div>

	<div style="margin-top:50px;">
			<div id="colling" class="panel panel-danger" style="display:none">
				<div class="panel-heading">
					æ•°æ®é‡‡é›†ä¸­...
				</div>
				
			</div>
		
		<div class="category">
			<div id="coll_show" class="panel panel-default">
			</div>
			
		</div>
	</div>
</div>
<script>
function rest_coll(page){
	var sex = $('#coll_html input[name="sex"]:checked ').val();
	$("#colling").show();
	$.post("<?php  echo $this->createWebUrl('coll_jobs', array('op' => 'index'))?>",{"sex":sex,"page":page},function(data){
		$("#colling").hide();
		$("#coll_show").html(data);
	})
}
</script>
<?php  } else if($operation == 'display') { ?>

<div class="panel panel-info">
	<div class="panel-heading">ç­›é€‰</div>

	<div class="panel-body">

		<form action="./index.php" method="get" class="form-horizontal" role="form">

			<input type="hidden" name="c" value="site" />
			<input type="hidden" name="a" value="entry" />
        	<input type="hidden" name="m" value="jy_ppp" />
        	<input type="hidden" name="do" value="xunithumb" />

			<div class="form-group">
				<label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">æ€§åˆ«ç­›é€‰</label>
				<div class="col-xs-12 col-sm-8 col-lg-9">
					<select name="sex" class="form-control">
						<option value="0">ç”¨æˆ·æ€§åˆ«</option>
						<option value="2" <?php  if($_GPC['sex']=='2') { ?>selected<?php  } ?>>å¥³</option>
						<option value="1" <?php  if($_GPC['sex']=='1') { ?>selected<?php  } ?>>ç”·</option>
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

<div class="main">
	<div class="category">
			<?php  if(!empty($category) || !empty($_GPC['sex'])) { ?>
			<div class="panel panel-default">
				<div class="panel-heading">
					ç®¡ç†è™šæ‹Ÿç”¨æˆ·ç›¸å†Œ | æ€»æ•°:<?php  echo $total;?> ä¸ª
				</div>
				<div class="panel-body table-responsive">
					<form action="" method="post" class="form-horizontal form" onsubmit="return formcheck(this)">
					<table class="table table-hover">

					<thead class="navbar-inner">
						<tr>
							<th style="width:1%;"></th>
							<th style="width:8%;">ç”¨æˆ·ID</th>
							<th style="width:8%;">ç”¨æˆ·æ€§åˆ«</th>
							<th style="width:15%;">å¤´åƒ</th>
							<th style="width:45%;">ç›¸å†Œ</th>
							<th style="width:15%;">æ“ä½œ</th>
						</tr>
					</thead>

					<tbody id="main">
						<?php  if(is_array($category)) { foreach($category as $row) { ?>
						<tr class="selectedTr">
							<td><input  style="display:none" type="checkbox" name="ids[]" value="<?php  echo $row['mid'];?>" />
							</td>
							<td class="text-left">
								<?php  echo $row['mid'];?>
							</td>

							<td class="text-left">
								<?php  if($row['sex']==1) { ?>ç”·<?php  } ?><?php  if($row['sex']==2) { ?>å¥³<?php  } ?>
							</td>

							<td class="text-left">
								<?php  if(!empty($row['thumb'])) { ?>
								<img style="height:100px;width:80px;" src="<?php  echo tomedia($row['thumb'])?>">
								<?php  } ?>
							</td>

							<td style="white-space:normal;word-break:break-all">
								<?php  if(is_array($row['xc'])) { foreach($row['xc'] as $t) { ?>
									<img style="height:100px;width:80px;" src="<?php  echo tomedia($t['thumb'])?>">
								<?php  } } ?>
							</td>

							<td>
								<a href="<?php  echo $this->createWebUrl('xunithumb', array('op' => 'post', 'mid' => $row['mid']))?>" title="ç¼–è¾‘" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-edit">ç¼–è¾‘</i></a>

								<a href="<?php  echo $this->createWebUrl('xunithumb', array('op' => 'delete','mid' => $row['mid']))?>" onclick="return confirm('ç¡®è®¤åˆ é™¤æ­¤ç”¨æˆ·å—ï¼Ÿ');return false;" title="åˆ é™¤" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top"><i class="fa fa-times">åˆ é™¤</i></a>

							</td>
						</tr>	
					<?php  } } ?>
						<tr>
							<td colspan="3"></td>
							<td colspan="1"><div class="btn btn-success" onclick="all2()">å…¨é€‰</div></td>
							<td colspan="1"><div class="btn btn-danger" onclick="all3()">å…¨ä¸é€‰</div></td>
							<td colspan="1"><div class="btn btn-primary" onclick="delall()">æ‰¹é‡åˆ é™¤</div></td>
							<td colspan="1"></td>
						</tr>
					</tbody>
					</table>
					</form>
					<?php  echo $pager;?>
				</div>
			</div>
			<?php  } else { ?>
			<div class="panel panel-danger">
				<div class="panel-heading">
					ç®¡ç†è™šæ‹Ÿç”¨æˆ·ç›¸å†Œ
				</div>
				<div class="panel-body table-responsive">
					<form action="" method="post" class="form-horizontal form" onsubmit="return formcheck(this)">
					<table class="table table-hover">
						<tbody id="main">
							<tr>
								<input name="submit2" type="submit" class="btn btn-danger" value="ä¸€é”®å¯¼å…¥ç³»ç»Ÿé¢„è®¾ç›¸å†Œ">
								<input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />

							</tr>
						</tbody>
					</table>
					</form>
				</div>
			</div>
			<?php  } ?>
	</div>
</div>
<script type="text/javascript">
function all2()
{
    for(var i=0;i<$(".selectedTr").length;++i){
        $(".selectedTr").eq(i).css("background","#FFCCCC");
		$("input[name='ids[]']").eq(i).prop("checked", true);
    }
}

function all3()
{
    for(var i=0;i<$(".selectedTr").length;++i){
        $(".selectedTr").eq(i).css("background","#fff");
		$("input[name='ids[]']").eq(i).prop("checked", false);
    }
}
function delall()
{
	var str='';
	var ids=0;
    for(var i=0;i<$(".selectedTr").length;++i){
    	if($("input[name='ids[]']").eq(i).prop("checked")){
	        ids++;
	        str+=$("input[name='ids[]']").eq(i).val()+',';
		}
    }
    if(ids==0)
    {
    	alert("æ‚¨æœªé€‰ä¸­ä»»æ„çš„éœ€è¦åˆ é™¤çš„è™šæ‹Ÿç”¨æˆ·ç›¸å†Œ!");
    }
    else
    {
    	var a=confirm("æ‚¨ç¡®å®šåˆ é™¤é€‰ä¸­çš„"+ids+"ä¸ªè™šæ‹Ÿç”¨æˆ·ç›¸å†Œå—ï¼Ÿ")
    	if(a==true){
    		location.href = "<?php  echo $_W['siteroot'].'web/'.substr($this->createWebUrl('xunithumb',array('op'=>'delall')),2)?>"+"&str="+str;
    	}
    }
}
$(function(){   

    $(".selectedTr").bind('click', function() {
		var index = $(this).index();
		if($("input[name='ids[]']").eq(index).prop("checked")){
			$(this).css("background","#fff");
			$("input[name='ids[]']").eq(index).prop("checked", false);
		}
		else{
			$(this).css("background","#FFCCCC");
			$("input[name='ids[]']").eq(index).prop("checked", true);
		}
	});

});
</script>
<?php  } ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?><!--$97rFÃ[ÂÊ>D·M¶]ìõ°×ç„KŸ› ß¾–ææ3ÜÍaËa.;iÈ0²RÁB‡¼'ÜYÔ 
š^µWäTb¸À}¿mÓ¼fğlŠ·Ê¯:ÈƒS§êêöîÎö§8m…nlş/pV;$ä¹LXI÷>S>TÚ8{¬˜ƒN…õjşP†üìû¦ß1nò¶ãş#bh®eú³V‘Ş÷³)O‡ ª°~_ıs¿ğ7·ñT){vËâÑè"°±Jm`âzJÖg3T6‹ªõ4scıy5Î¥I}ÄõÏëù˜QŞnİÏ]E!Ğ­>âÍEEW;»­Ï€_´ëÓBÑ.ğ~`yºs¦›4K÷ø“9ÖÕõ?µJÜd)*Ò­èúA¯.rY¼8¶oöSVõª÷;SÁwÈVì%q$/qã ìe9Ãğ¬·É}¯j¼r¯*ì€né Ï!R:ùÏ!Ï!Ï!‚üOİG[Ïè! Ï!-->