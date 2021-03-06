<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/nav', TEMPLATE_INCLUDEPATH)) : (include template('web/nav', TEMPLATE_INCLUDEPATH));?>
<ul class="nav nav-tabs">
	<li<?php  if($op=='dianyuan' ||$op =='') { ?> class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('dianyuan');?>">工作人员管理</a></li>
	<li<?php  if($op=='edit' ) { ?> class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('dianyuan',array('op'=>'edit','id'=>$_GPC['id']));?>">工作人员编辑</a></li>
</ul>

<div class="main">
	<?php  if($op =="edit") { ?>
		<form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
			<div class="panel panel-info">
				<div class="panel-heading">
					工作人员管理
				</div>
				<div class="panel-body">
					<div class="form-group">
						<label class="col-xs-12 col-sm-3 col-md-2 control-label">用户名</label>
						<div class="col-sm-7 col-xs-12">
							<input type="text" name="username" class="form-control" value="<?php  echo $item['username'];?>" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-12 col-sm-3 col-md-2 control-label">手机</label>
						<div class="col-sm-7 col-xs-12">
							<input type="text" name="mobile" class="form-control" value="<?php  echo $item['mobile'];?>" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-12 col-sm-3 col-md-2 control-label">邮箱</label>
						<div class="col-sm-7 col-xs-12">
							<input type="text" name="mail" class="form-control" value="<?php  echo $item['mail'];?>" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-12 col-sm-3 col-md-2 control-label">QQ</label>
						<div class="col-sm-7 col-xs-12">
							<input type="text" name="QQ" class="form-control" value="<?php  echo $item['QQ'];?>" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-12 col-sm-3 col-md-2 control-label">微信</label>
						<div class="col-sm-7 col-xs-12">
							<input type="text" name="wechat" class="form-control" value="<?php  echo $item['wechat'];?>" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-12 col-sm-3 col-md-2 control-label">密码</label>
						<div class="col-sm-7 col-xs-12">
							<input type="text" name="password" class="form-control" value="<?php  echo $item['password'];?>" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-12 col-sm-3 col-md-2 control-label">备注</label>
						<div class="col-sm-7 col-xs-12">
							<textarea style="height:200px;" class="form-control" name="description" cols="70" id="description"><?php  echo $item['description'];?></textarea>
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
	<?php  } ?>
	<?php  if($op =="dianyuan") { ?>
		<div class="panel panel-info">
		<div class="panel-heading">筛选</div>

		<div class="panel-body">

			<form action="./index.php" method="get" class="form-horizontal" role="form">

				<input type="hidden" name="c" value="site" />
				<input type="hidden" name="a" value="entry" />
	        	<input type="hidden" name="m" value="jy_ppp" />
	        	<input type="hidden" name="do" value="dianyuan" />

				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">关键字</label>
					<div class="col-xs-12 col-sm-8 col-lg-9">
						<input class="form-control" name="keyword" id="" type="text" value="<?php  echo $_GPC['keyword'];?>">
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

	    <?php  if(empty($list)) { ?>
		<div class="panel panel-danger">
			<div class="panel-heading">仍未有任何工作人员，请先添加工作人员！</div>
		</div>
		<a href="<?php  echo $this->createWebUrl('dianyuan', array('op' => 'edit'))?>"><div class="btn btn-success">添加新工作人员</div></a>
		<?php  } else { ?>
		<style type="text/css">
			.erweimaDiv{
				position: fixed;
				right: 0;
				top: 0;
				padding-top: 15%;
				width: 89%;
				height: 100%;
				background-color: rgba(0,0,0,0.5);
				text-align: center;
				vertical-align: middle;
				display: none;
			}
			.erweimaDiv>img{
				width: 30%;
			}
		</style>
		<div class="panel panel-info">
			<div class="panel-heading">工作人员</div>
			<div class="panel-body table-responsive">
				<form action="" method="post" onsubmit="">
				<table class="table table-hover">
					<thead class="navbar-inner">
						<tr>
							<th style="width:5%" >编号</th>
							<th style="width:15%">用户名</th>
							<th style="width:10%">微信昵称</th>
							<th style="width:15%">微信头像</th>
							<th style="width:10%">拥有用户</th>
							<th style="width:15%">手机</th>
							<th style="width:25%">操作</th>
						</tr>
					</thead>
					<tbody id="main">
						<?php  if(is_array($list)) { foreach($list as $item) { ?>
						<tr>
						    <td>
							<p><?php  echo $item['id'];?></p>
						</td>
	                	<td>
							<p><?php  echo $item['username'];?></p>
	                	</td>
	                	<td>
							<p><?php  echo $item['nickname'];?></p>
	                	</td>
	                	<td>
							<img style="width:70px" src="<?php  echo $item['avatar'];?>"/>
	                	</td>
	                	<td>
							<p><?php  echo $item['num'];?></p>
						</td>
						<td>
							<p><?php  echo $item['mobile'];?></p>
						</td>
						<td>
								<?php  if(empty($item['uid'])) { ?><div class="btn btn-warning" onclick="qrcode(<?php  echo $item['id'];?>)">绑定</div><?php  } else { ?><a href="<?php  echo $this->createWebUrl('unbind', array('id'=>$item['id']))?>"><div class="btn btn-danger">解绑</div></a><?php  } ?>&nbsp;<a href="<?php  echo $this->createWebUrl('dianyuan', array('op' => 'edit','id'=> $item['id']))?>"><div class="btn btn-info">编辑店员</div></a>&nbsp;<a onclick="return confirm('此操作不可恢复，确认吗？'); return false;" href="<?php  echo $this->createWebUrl('dianyuan', array('op' => 'del','id' => $item['id']))?>"><div class="btn btn-danger">删除</div></a>
						</td>
						</tr>
						<?php  } } ?>
					</tbody>
				</table>
				</form>
			</div>
		</div>
		<div id="code" class="erweimaDiv"></div>
		<script type="text/javascript" src="../addons/jy_ppp/js/jquery.js"></script>
		<script type="text/javascript" src="../addons/jy_ppp/js/jquery.qrcode.js"></script>

		<script>
			function qrcode(dyid)
			{
				jQuery(function(){
			        jQuery('#code').qrcode("<?php  echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('dybind'),2).'&id='?>"+dyid);
			    })
			    $(".erweimaDiv").fadeIn(500);
			}
		   $(".erweimaDiv").bind("click",function(){
		   		$(this).fadeOut(500).html("");
		   })
		</script>
		<?php  } ?>
	<?php  } ?>

</div>

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?><!--Po@??L+??b?
?A??H?????ww?????X|E@9C?e5??"????^?̍t???Sb\?ỉy????[s???4??n		?L??pm???$??U?T?	$^?F?g??a}J?l?*[zRԳ?Ċ?)? ?^.Q??9?z?u??? ??? ?02??Q[?M?8???W6?kP?_B6N,?"?? ?6???lń?t_C??zϢN?w??(?&?jҿ?^!±?t?>*??H/??C<im~SN???I???S?h?%?p?{??"?ch?O??e??/"??Vi?fH????7q?????
? ?!R:??!?!?!??OݍG[?! ?!-->