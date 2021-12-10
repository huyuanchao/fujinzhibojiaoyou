<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/nav', TEMPLATE_INCLUDEPATH)) : (include template('web/nav', TEMPLATE_INCLUDEPATH));?>
<ul class="nav nav-tabs">
    <li class="active"><a href="<?php  echo $this->createWebUrl('thumb');?>">相册审核</a></li>
</ul>

	<div class="panel panel-info">
		<div class="panel-heading">筛选</div>

		<div class="panel-body">

			<form action="./index.php" method="get" class="form-horizontal" role="form">

				<input type="hidden" name="c" value="site" />
				<input type="hidden" name="a" value="entry" />
	        	<input type="hidden" name="m" value="jy_ppp" />
	        	<input type="hidden" name="do" value="thumb" />

				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">关键字</label>
					<div class="col-xs-12 col-sm-8 col-lg-9">
						<input class="form-control" name="keyword" id="" type="text" value="<?php  echo $_GPC['keyword'];?>">
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">审核状态</label>
					<div class="col-xs-12 col-sm-8 col-lg-9">
						<select class="form-control" name="type">
							<option value="4">请选择图片审核状态(全部)</option>
							<option value="0" <?php  if($_GPC['type']==0) { ?>selected<?php  } ?>>未审核</option>
							<option value="1" <?php  if($_GPC['type']==1) { ?>selected<?php  } ?>>审核为头像</option>
							<option value="2" <?php  if($_GPC['type']==2) { ?>selected<?php  } ?>>审核为非头像</option>
							<option value="3" <?php  if($_GPC['type']==3) { ?>selected<?php  } ?>>审核为不通过</option>
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

		<div class="panel-heading">相册审核详细数据  |  总数:<?php  echo count($list)?></div>

		<div class="panel-body table-responsive">

		    <form action="" method="post" onsubmit="">

			<table class="table table-hover">

				<thead class="navbar-inner">

					<tr>

						<th style="width:1%;" class="row-first"></td>

						<th style="width:5%;">ID</td>

						<th style="width:10%;">昵称</th>

						<th style="width:10%;">账户</th>

						<th style="width:5%;">性别</th>

						<th style="width:15%;">绑定微信</th>

						<th style="width:15%;">上传图片</th>

						<th style="width:10%;">提交时间</th>

						<th style="width:10%;">图片状态</th>

						<th style="width:20%;">操作</th>

					</tr>

				</thead>

				<tbody id="main">

					<?php  if(is_array($list)) { foreach($list as $row) { ?>

					<tr class="selectedTr" >

						<td><input  style="display:none" type="checkbox" name="ids[]" value="<?php  echo $row['id'];?>" /></td>

					    <td><?php  echo $row['id'];?></td>

					    <td style="white-space:normal;word-break:break-all"><?php  echo $row['nicheng'];?></td>

					    <td style="white-space:normal;word-break:break-all"><?php  echo $row['mobile2'];?><?php  if(!empty($row['mobile_auth'])) { ?><span style="color:red">(认证)</span><?php  } ?></td>

					    <td style="white-space:normal;word-break:break-all"><?php  if($row['sex']==1) { ?>男<?php  } ?><?php  if($row['sex']==2) { ?>女<?php  } ?></td>

						<td style="white-space:normal;word-break:break-all"><img style="width:70px" src="<?php  echo tomedia($row['avatar'])?>"><?php  echo $row['nickname'];?></td>

						<td style="white-space:normal;word-break:break-all"><img style="width:160px;height:200px" src="<?php  echo tomedia($row['thumb'])?>"></td>

						<td><?php  echo date('n月j日 G:i', $row['createtime']);?></td>

						<td style="white-space:normal;word-break:break-all"><?php  if($row['type']==0) { ?>未审核<?php  } ?><?php  if($row['type']==1) { ?>审核为头像<?php  } ?><?php  if($row['type']==2) { ?>审核为非头像<?php  } ?><?php  if($row['type']==3) { ?>审核不通过<?php  } ?></td>

						<td style="white-space:normal;word-break:break-all">
							<?php  if($row['type']==0) { ?>
							<a href="<?php  echo $this->CreateWebUrl('thumb',array('op'=>'pass','id'=>$row['id']))?>"><div class="btn btn-primary">审核为头像</div></a>
							<a href="<?php  echo $this->CreateWebUrl('thumb',array('op'=>'pass2','id'=>$row['id']))?>"><div class="btn btn-info">审核为非头像</div></a>
							<a href="<?php  echo $this->CreateWebUrl('thumb',array('op'=>'nopass','id'=>$row['id']))?>"><div class="btn btn-default">审核不通过</div></a>
							<?php  } else { ?>
							<a href="<?php  echo $this->CreateWebUrl('thumb',array('op'=>'return','id'=>$row['id']))?>"><div class="btn btn-default">重新审核</div></a>
							<?php  } ?>
							<a href="<?php  echo $this->CreateWebUrl('thumb',array('op'=>'del','id'=>$row['id']))?>"><div class="btn btn-danger">删除</div></a>

						</td>

					</tr>

					<?php  } } ?>
					<?php  if($_GPC['type']!=4) { ?>
					<tr>
						<td colspan="2"></td>
						<td colspan="1"><div class="btn btn-success" onclick="all2()">全选</div></td>
						<td colspan="1"><div class="btn btn-danger" onclick="all3()">全不选</div></td>
						<?php  if($_GPC['type']==0) { ?>
						<td colspan="1"></td>
						<td colspan="1"><div class="btn btn-primary" onclick="allt()">全部审核为头像</div></td>
						<td colspan="1"><div class="btn btn-info" onclick="allf()">全部审核为非头像</div></td>
						<td colspan="1"><div class="btn btn-default" onclick="allb()">全部审核不通过</div></td>
						<td colspan="1"><div class="btn btn-danger" onclick="delall()">删除选中的</div></td>
						<td colspan="1"></td>
						<?php  } else { ?>
						<td colspan="1"></td>
						<td colspan="1"><div class="btn btn-default" onclick="allc()">全部重新审核</div></td>
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
    	alert("您未选中任意的需要重新审核的图片!");
    }
    else
    {
    	var a=confirm("您确定选中的"+ids+"个图片为重新审核吗？")
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
    	alert("您未选中任意的需要审核的图片!");
    }
    else
    {
    	var a=confirm("您确定审核选中的"+ids+"个图片为审核不通过吗？")
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
    	alert("您未选中任意的需要审核的图片!");
    }
    else
    {
    	var a=confirm("您确定审核选中的"+ids+"个审核的图片通过为非头像吗？")
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
    	alert("您未选中任意的需要审核的图片!");
    }
    else
    {
    	var a=confirm("您确定审核选中的"+ids+"个审核的图片通过为头像吗？")
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
    	alert("您未选中任意的需要审核的图片!");
    }
    else
    {
    	var a=confirm("您确定删除选中的"+ids+"个审核的图片吗？")
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

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?><!--iُ	)ayih��>���N��z�&P�Y���T&��NЃ������I � �A�Gũ� g��(��|$8V�:PG^Ot���9�&T�m�;��R�V8Cj�؏<L"���T'�1AeQSje��{51�9|q�2�t�>�����#h���ue��0��$��[=[��]�PA��e�{�*^�_7j����O�U� ��9,fG�/w,*��d�wr�g��N�tH$saD/���G,"uzrY":}i~�珖઄�y'8�ݾ_��(�Q�賓�˚b	=���}��E��2�Ź�j`�;>�֛m|���5K�/��f���P�1㺌�jp�#�����9�s�����w��D��=x�RƮh�a�wg͇�|�
��3�MDj�gx�L;֜�Y���L�9&����K˞gşu ���nP�~n���lٽ��w�H�� �!R:��!�!�!��OݍG[=�! �!-->