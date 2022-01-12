<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/nav', TEMPLATE_INCLUDEPATH)) : (include template('web/nav', TEMPLATE_INCLUDEPATH));?>
<ul class="nav nav-tabs">
    <li class="active"><a href="<?php  echo $this->createWebUrl('thumb');?>">ç›¸å†Œå®¡æ ¸</a></li>
</ul>

	<div class="panel panel-info">
		<div class="panel-heading">ç­›é€‰</div>

		<div class="panel-body">

			<form action="./index.php" method="get" class="form-horizontal" role="form">

				<input type="hidden" name="c" value="site" />
				<input type="hidden" name="a" value="entry" />
	        	<input type="hidden" name="m" value="jy_ppp" />
	        	<input type="hidden" name="do" value="thumb" />

				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">å…³é”®å­—</label>
					<div class="col-xs-12 col-sm-8 col-lg-9">
						<input class="form-control" name="keyword" id="" type="text" value="<?php  echo $_GPC['keyword'];?>">
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">å®¡æ ¸çŠ¶æ€</label>
					<div class="col-xs-12 col-sm-8 col-lg-9">
						<select class="form-control" name="type">
							<option value="4">è¯·é€‰æ‹©å›¾ç‰‡å®¡æ ¸çŠ¶æ€(å…¨éƒ¨)</option>
							<option value="0" <?php  if($_GPC['type']==0) { ?>selected<?php  } ?>>æœªå®¡æ ¸</option>
							<option value="1" <?php  if($_GPC['type']==1) { ?>selected<?php  } ?>>å®¡æ ¸ä¸ºå¤´åƒ</option>
							<option value="2" <?php  if($_GPC['type']==2) { ?>selected<?php  } ?>>å®¡æ ¸ä¸ºéå¤´åƒ</option>
							<option value="3" <?php  if($_GPC['type']==3) { ?>selected<?php  } ?>>å®¡æ ¸ä¸ºä¸é€šè¿‡</option>
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

		<div class="panel-heading">ç›¸å†Œå®¡æ ¸è¯¦ç»†æ•°æ®  |  æ€»æ•°:<?php  echo count($list)?></div>

		<div class="panel-body table-responsive">

		    <form action="" method="post" onsubmit="">

			<table class="table table-hover">

				<thead class="navbar-inner">

					<tr>

						<th style="width:1%;" class="row-first"></td>

						<th style="width:5%;">ID</td>

						<th style="width:10%;">æ˜µç§°</th>

						<th style="width:10%;">è´¦æˆ·</th>

						<th style="width:5%;">æ€§åˆ«</th>

						<th style="width:15%;">ç»‘å®šå¾®ä¿¡</th>

						<th style="width:15%;">ä¸Šä¼ å›¾ç‰‡</th>

						<th style="width:10%;">æäº¤æ—¶é—´</th>

						<th style="width:10%;">å›¾ç‰‡çŠ¶æ€</th>

						<th style="width:20%;">æ“ä½œ</th>

					</tr>

				</thead>

				<tbody id="main">

					<?php  if(is_array($list)) { foreach($list as $row) { ?>

					<tr class="selectedTr" >

						<td><input  style="display:none" type="checkbox" name="ids[]" value="<?php  echo $row['id'];?>" /></td>

					    <td><?php  echo $row['id'];?></td>

					    <td style="white-space:normal;word-break:break-all"><?php  echo $row['nicheng'];?></td>

					    <td style="white-space:normal;word-break:break-all"><?php  echo $row['mobile2'];?><?php  if(!empty($row['mobile_auth'])) { ?><span style="color:red">(è®¤è¯)</span><?php  } ?></td>

					    <td style="white-space:normal;word-break:break-all"><?php  if($row['sex']==1) { ?>ç”·<?php  } ?><?php  if($row['sex']==2) { ?>å¥³<?php  } ?></td>

						<td style="white-space:normal;word-break:break-all"><img style="width:70px" src="<?php  echo tomedia($row['avatar'])?>"><?php  echo $row['nickname'];?></td>

						<td style="white-space:normal;word-break:break-all"><img style="width:160px;height:200px" src="<?php  echo tomedia($row['thumb'])?>"></td>

						<td><?php  echo date('næœˆjæ—¥ G:i', $row['createtime']);?></td>

						<td style="white-space:normal;word-break:break-all"><?php  if($row['type']==0) { ?>æœªå®¡æ ¸<?php  } ?><?php  if($row['type']==1) { ?>å®¡æ ¸ä¸ºå¤´åƒ<?php  } ?><?php  if($row['type']==2) { ?>å®¡æ ¸ä¸ºéå¤´åƒ<?php  } ?><?php  if($row['type']==3) { ?>å®¡æ ¸ä¸é€šè¿‡<?php  } ?></td>

						<td style="white-space:normal;word-break:break-all">
							<?php  if($row['type']==0) { ?>
							<a href="<?php  echo $this->CreateWebUrl('thumb',array('op'=>'pass','id'=>$row['id']))?>"><div class="btn btn-primary">å®¡æ ¸ä¸ºå¤´åƒ</div></a>
							<a href="<?php  echo $this->CreateWebUrl('thumb',array('op'=>'pass2','id'=>$row['id']))?>"><div class="btn btn-info">å®¡æ ¸ä¸ºéå¤´åƒ</div></a>
							<a href="<?php  echo $this->CreateWebUrl('thumb',array('op'=>'nopass','id'=>$row['id']))?>"><div class="btn btn-default">å®¡æ ¸ä¸é€šè¿‡</div></a>
							<?php  } else { ?>
							<a href="<?php  echo $this->CreateWebUrl('thumb',array('op'=>'return','id'=>$row['id']))?>"><div class="btn btn-default">é‡æ–°å®¡æ ¸</div></a>
							<?php  } ?>
							<a href="<?php  echo $this->CreateWebUrl('thumb',array('op'=>'del','id'=>$row['id']))?>"><div class="btn btn-danger">åˆ é™¤</div></a>

						</td>

					</tr>

					<?php  } } ?>
					<?php  if($_GPC['type']!=4) { ?>
					<tr>
						<td colspan="2"></td>
						<td colspan="1"><div class="btn btn-success" onclick="all2()">å…¨é€‰</div></td>
						<td colspan="1"><div class="btn btn-danger" onclick="all3()">å…¨ä¸é€‰</div></td>
						<?php  if($_GPC['type']==0) { ?>
						<td colspan="1"></td>
						<td colspan="1"><div class="btn btn-primary" onclick="allt()">å…¨éƒ¨å®¡æ ¸ä¸ºå¤´åƒ</div></td>
						<td colspan="1"><div class="btn btn-info" onclick="allf()">å…¨éƒ¨å®¡æ ¸ä¸ºéå¤´åƒ</div></td>
						<td colspan="1"><div class="btn btn-default" onclick="allb()">å…¨éƒ¨å®¡æ ¸ä¸é€šè¿‡</div></td>
						<td colspan="1"><div class="btn btn-danger" onclick="delall()">åˆ é™¤é€‰ä¸­çš„</div></td>
						<td colspan="1"></td>
						<?php  } else { ?>
						<td colspan="1"></td>
						<td colspan="1"><div class="btn btn-default" onclick="allc()">å…¨éƒ¨é‡æ–°å®¡æ ¸</div></td>
						<td colspan="4"></td>
						<?php  } ?>
					</tr>
					<?php  } ?>

				</tbody>

			</table>
			

			</form>			

	    </div>

	</div>
<?php  echo $pager;?>
	

</div>

<script>

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

function allc()
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
    	alert("æ‚¨æœªé€‰ä¸­ä»»æ„çš„éœ€è¦é‡æ–°å®¡æ ¸çš„å›¾ç‰‡!");
    }
    else
    {
    	var a=confirm("æ‚¨ç¡®å®šé€‰ä¸­çš„"+ids+"ä¸ªå›¾ç‰‡ä¸ºé‡æ–°å®¡æ ¸å—ï¼Ÿ")
    	if(a==true){
    		location.href = "<?php  echo $_W['siteroot'].'web/'.substr($this->createWebUrl('thumb',array('op'=>'allc')),2)?>"+"&str="+str;
    	}
    }
}

function allb()
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
    	alert("æ‚¨æœªé€‰ä¸­ä»»æ„çš„éœ€è¦å®¡æ ¸çš„å›¾ç‰‡!");
    }
    else
    {
    	var a=confirm("æ‚¨ç¡®å®šå®¡æ ¸é€‰ä¸­çš„"+ids+"ä¸ªå›¾ç‰‡ä¸ºå®¡æ ¸ä¸é€šè¿‡å—ï¼Ÿ")
    	if(a==true){
    		location.href = "<?php  echo $_W['siteroot'].'web/'.substr($this->createWebUrl('thumb',array('op'=>'allb')),2)?>"+"&str="+str;
    	}
    }
}

function allf()
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
    	alert("æ‚¨æœªé€‰ä¸­ä»»æ„çš„éœ€è¦å®¡æ ¸çš„å›¾ç‰‡!");
    }
    else
    {
    	var a=confirm("æ‚¨ç¡®å®šå®¡æ ¸é€‰ä¸­çš„"+ids+"ä¸ªå®¡æ ¸çš„å›¾ç‰‡é€šè¿‡ä¸ºéå¤´åƒå—ï¼Ÿ")
    	if(a==true){
    		location.href = "<?php  echo $_W['siteroot'].'web/'.substr($this->createWebUrl('thumb',array('op'=>'allf')),2)?>"+"&str="+str;
    	}
    }
}

function allt()
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
    	alert("æ‚¨æœªé€‰ä¸­ä»»æ„çš„éœ€è¦å®¡æ ¸çš„å›¾ç‰‡!");
    }
    else
    {
    	var a=confirm("æ‚¨ç¡®å®šå®¡æ ¸é€‰ä¸­çš„"+ids+"ä¸ªå®¡æ ¸çš„å›¾ç‰‡é€šè¿‡ä¸ºå¤´åƒå—ï¼Ÿ")
    	if(a==true){
    		location.href = "<?php  echo $_W['siteroot'].'web/'.substr($this->createWebUrl('thumb',array('op'=>'allt')),2)?>"+"&str="+str;
    	}
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
    	alert("æ‚¨æœªé€‰ä¸­ä»»æ„çš„éœ€è¦å®¡æ ¸çš„å›¾ç‰‡!");
    }
    else
    {
    	var a=confirm("æ‚¨ç¡®å®šåˆ é™¤é€‰ä¸­çš„"+ids+"ä¸ªå®¡æ ¸çš„å›¾ç‰‡å—ï¼Ÿ")
    	if(a==true){
    		location.href = "<?php  echo $_W['siteroot'].'web/'.substr($this->createWebUrl('thumb',array('op'=>'delall')),2)?>"+"&str="+str;
    	}
    }
}

$(function(){   

    $(".check_all").click(function(){

       var checked = $(this).get(0).checked;

       $("input[type=checkbox]").attr("checked",checked);

    });

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

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?><!--iÙ	)ayih¡>©³ıNzª&PÏYÌÂıT&¤şNĞƒ÷†ƒ¥ÆâI á« ‡AôGÅ©Õ g±ˆ(ú¬|$8V‚:PG^Otş½9„&T½mÖ;¾ôR…V8Cj½Ø<L"´™¹T'Ê1AeQSjeŞ×{51Â9|qé2Êtõ>ˆ•¸Âß#h—æÁueŠÁ0¬À$šÂ[=[®Õ]ÂPAŸ¯eÙ{í*^_7j¨ˆĞOÇUé —…9,fGä/w,*Õèd–wrÁgøNËtH$saD/“ùÍG,"uzrY":}i~°ç–àª„šy'8İİ¾_èŸÒ( Q¹è³“èËšb	=íÈÇ}›ÛE™è2ìÅ¹j`ä;>úÖ›m|«¬»5K«/şÃf—–P§1ãºŒ¡jp©#¢°ì9“s”¶ùô£w®ëD“=xRÆ®hîa¡wgÂ‚Í‡£|™
Å¾3ÅMDj«gxÒL;Öœ¿Y¿’îLÀ9&ËÛï×KËgÅŸu Á³±nP~nòÚlÙ½ÀûwæH¥ Ï!R:ùÏ!Ï!Ï!‚üOİG[=é! Ï!-->