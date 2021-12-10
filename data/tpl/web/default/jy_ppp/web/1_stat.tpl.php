<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/nav', TEMPLATE_INCLUDEPATH)) : (include template('web/nav', TEMPLATE_INCLUDEPATH));?>

<div class="main">
	<div class="panel panel-info">
		<div class="panel-heading">筛选</div>

		<div class="panel-body">

			<form action="./index.php" method="get" class="form-horizontal" role="form">

				<input type="hidden" name="c" value="site" />
				<input type="hidden" name="a" value="entry" />
	        	<input type="hidden" name="m" value="jy_ppp" />
	        	<input type="hidden" name="do" value="stat" />
	        	<input type="hidden" name="op" value="<?php  echo $op;?>" />

				<div class="form-group">
					<label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">时间筛选</label>
					<div class="col-xs-12 col-sm-8 col-lg-9">
						<?php  echo tpl_form_field_daterange('time', $time);?>
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
    	<?php  if(!empty($sitem['stat_style']) || !empty($op)) { ?>
    	<div id="main" style="height:400px;width:98%;margin-left:1%;padding-top:50px"></div>
    	<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
    	<script type="text/javascript">
	        // 路径配置
	        require.config({
	            paths: {
	                echarts: 'http://echarts.baidu.com/build/dist'
	            }
	        });

	        // 使用
	        require(
	            [
	                'echarts',
	                'echarts/chart/bar', //
	                'echarts/chart/line'
	            ],
	            function (ec) {
	                // 基于准备好的dom，初始化echarts图表
	                var myChart = ec.init(document.getElementById('main'),'macarons');

	                option = {
					    title : {
					        text: '统计报表',
					        subtext: '<?php  echo date("Y-m-d",$starttime)?>-<?php  echo date("Y-m-d",$endtime)?>'
					    },
					    tooltip : {
					        trigger: 'axis'
					    },
					    legend: {
					        data:[
					        	<?php  if(empty($op) || $op=='all') { ?>
					        	'用户总数',
					        	<?php  } ?>
					        	<?php  if(empty($op) || $op=='geren') { ?>
					        	'个人用户总数',
					        	<?php  } ?>
					        	<?php  if(empty($op) || $op=='xuni') { ?>
					        	'虚拟用户总数',
					        	<?php  } ?>
					        	<?php  if(empty($op) || $op=='dy') { ?>
					        	'工作人员总数',
					        	<?php  } ?>
					        	<?php  if(empty($op) || $op=='thumb') { ?>
					        	'相册图片总数',
					        	<?php  } ?>
					        	<?php  if(empty($op) || $op=='pay') { ?>
					        	'收入总数',
					        	<?php  } ?>
					        	<?php  if(empty($op) || $op=='admin') { ?>
					        	'管理员发信总数',
					        	<?php  } ?>
					        	<?php  if(empty($op) || $op=='kefu') { ?>
					        	'客服消息总数',
					        	<?php  } ?>
					        	<?php  if(empty($op) || $op=='chat') { ?>
					        	'聊天信息总数',
					        	<?php  } ?>
					        	<?php  if(empty($op) || $op=='xinxi') { ?>
					        	'消息总数',
					        	<?php  } ?>
					        	<?php  if(empty($op) || $op=='fk') { ?>
					        	'客户反馈数'
					        	<?php  } ?>
					        	]
					    },
					    toolbox: {
					        show : true,
					        feature : {
					            mark : {show: false},
					            dataView : {show: false, readOnly: false},
					            magicType : {show: true, type: ['line', 'bar']},
					            restore : {show: false},
					            saveAsImage : {show: true}
					        }
					    },
					    calculable : true,
					    xAxis : [
					        {
					            type : 'category',
					            data : [
					            	<?php  if(is_array($riqi)) { foreach($riqi as $row) { ?>
					            		'<?php  echo $row;?>',
					            	<?php  } } ?>
					            	]
					        }
					    ],
					    yAxis : [
					        {
					            type : 'value'
					        }
					    ],
					    series : [
					    	<?php  if(empty($op) || $op=='all') { ?>
					        {
					            name:'用户总数',
					            type:'bar',
					            data:[
					            	<?php  if(is_array($riqi)) { foreach($riqi as $row) { ?>
					            		<?php  echo $all_tu[$row];?>,
					            	<?php  } } ?>
					            ],
					            markPoint : {
					                data : [
					                    {type : 'max', name: '最大值'},
					                    {type : 'min', name: '最小值'}
					                ]
					            },
					            markLine : {
					                data : [
					                    {type : 'average', name: '平均值'}
					                ]
					            }
					        },
					        <?php  } ?>
					        <?php  if(empty($op) || $op=='geren') { ?>
					        {
					            name:'个人用户总数',
					            type:'bar',
					            data:[
					            	<?php  if(is_array($riqi)) { foreach($riqi as $row) { ?>
					            		<?php  echo $geren_tu[$row];?>,
					            	<?php  } } ?>
					            ],
					            markPoint : {
					                data : [
					                    {type : 'max', name: '最大值'},
					                    {type : 'min', name: '最小值'}
					                ]
					            },
					            markLine : {
					                data : [
					                    {type : 'average', name: '平均值'}
					                ]
					            }
					        },
					        <?php  } ?>
					        <?php  if(empty($op) ||$op=='xuni') { ?>
					        {
					            name:'虚拟用户总数',
					            type:'bar',
					            data:[
					            	<?php  if(is_array($riqi)) { foreach($riqi as $row) { ?>
					            		<?php  echo $qiye_tu[$row];?>,
					            	<?php  } } ?>
					            ],
					            markPoint : {
					                data : [
					                    {type : 'max', name: '最大值'},
					                    {type : 'min', name: '最小值'}
					                ]
					            },
					            markLine : {
					                data : [
					                    {type : 'average', name: '平均值'}
					                ]
					            }
					        },
					        <?php  } ?>
					        <?php  if(empty($op) || $op=='dy') { ?>
					        {
					            name:'工作人员总数',
					            type:'bar',
					            data:[
					            	<?php  if(is_array($riqi)) { foreach($riqi as $row) { ?>
					            		<?php  echo $dy_tu[$row];?>,
					            	<?php  } } ?>
					            ],
					            markPoint : {
					                data : [
					                    {type : 'max', name: '最大值'},
					                    {type : 'min', name: '最小值'}
					                ]
					            },
					            markLine : {
					                data : [
					                    {type : 'average', name: '平均值'}
					                ]
					            }
					        },
					        <?php  } ?>
					        <?php  if(empty($op) || $op=='thumb') { ?>
					        {
					            name:'相册图片总数',
					            type:'bar',
					            data:[
					            	<?php  if(is_array($riqi)) { foreach($riqi as $row) { ?>
					            		<?php  echo $thumb_tu[$row];?>,
					            	<?php  } } ?>
					            ],
					            markPoint : {
					                data : [
					                    {type : 'max', name: '最大值'},
					                    {type : 'min', name: '最小值'}
					                ]
					            },
					            markLine : {
					                data : [
					                    {type : 'average', name: '平均值'}
					                ]
					            }
					        },
					        <?php  } ?>
					        <?php  if(empty($op) || $op=='pay') { ?>
					        {
					            name:'收入总数',
					            type:'bar',
					            data:[
					            	<?php  if(is_array($riqi)) { foreach($riqi as $row) { ?>
					            		<?php  echo $pay_tu[$row];?>,
					            	<?php  } } ?>
					            ],
					            markPoint : {
					                data : [
					                    {type : 'max', name: '最大值'},
					                    {type : 'min', name: '最小值'}
					                ]
					            },
					            markLine : {
					                data : [
					                    {type : 'average', name: '平均值'}
					                ]
					            }
					        },
					        <?php  } ?>
					        <?php  if(empty($op) || $op=='admin') { ?>
					        {
					            name:'管理员发信总数',
					            type:'bar',
					            data:[
					            	<?php  if(is_array($riqi)) { foreach($riqi as $row) { ?>
					            		<?php  echo $admin_tu[$row];?>,
					            	<?php  } } ?>
					            ],
					            markPoint : {
					                data : [
					                    {type : 'max', name: '最大值'},
					                    {type : 'min', name: '最小值'}
					                ]
					            },
					            markLine : {
					                data : [
					                    {type : 'average', name: '平均值'}
					                ]
					            }
					        },
					        <?php  } ?>
					        <?php  if(empty($op) || $op=='kefu') { ?>
					        {
					            name:'客服消息总数',
					            type:'bar',
					            data:[
					            	<?php  if(is_array($riqi)) { foreach($riqi as $row) { ?>
					            		<?php  echo $kefu_tu[$row];?>,
					            	<?php  } } ?>
					            ],
					            markPoint : {
					                data : [
					                    {type : 'max', name: '最大值'},
					                    {type : 'min', name: '最小值'}
					                ]
					            },
					            markLine : {
					                data : [
					                    {type : 'average', name: '平均值'}
					                ]
					            }
					        },
					        <?php  } ?>
					        <?php  if(empty($op) || $op=='chat') { ?>
					        {
					            name:'聊天信息总数',
					            type:'bar',
					            data:[
					            	<?php  if(is_array($riqi)) { foreach($riqi as $row) { ?>
					            		<?php  echo $chat_tu[$row];?>,
					            	<?php  } } ?>
					            ],
					            markPoint : {
					                data : [
					                    {type : 'max', name: '最大值'},
					                    {type : 'min', name: '最小值'}
					                ]
					            },
					            markLine : {
					                data : [
					                    {type : 'average', name: '平均值'}
					                ]
					            }
					        },
					        <?php  } ?>
					        <?php  if(empty($op) || $op=='xinxi') { ?>
					        {
					            name:'消息总数',
					            type:'bar',
					            data:[
					            	<?php  if(is_array($riqi)) { foreach($riqi as $row) { ?>
					            		<?php  echo $xinxi_tu[$row];?>,
					            	<?php  } } ?>
					            ],
					            markPoint : {
					                data : [
					                    {type : 'max', name: '最大值'},
					                    {type : 'min', name: '最小值'}
					                ]
					            },
					            markLine : {
					                data : [
					                    {type : 'average', name: '平均值'}
					                ]
					            }
					        },
					        <?php  } ?>
					        <?php  if(empty($op) || $op=='fk') { ?>
					        {
					            name:'客户反馈数',
					            type:'bar',
					            data:[
					            	<?php  if(is_array($riqi)) { foreach($riqi as $row) { ?>
					            		<?php  echo $fk_tu[$row];?>,
					            	<?php  } } ?>
					            ],
					            markPoint : {
					                data : [
					                    {type : 'max', name: '最大值'},
					                    {type : 'min', name: '最小值'}
					                ]
					            },
					            markLine : {
					                data : [
					                    {type : 'average', name: '平均值'}
					                ]
					            }
					        },
					        <?php  } ?>
					    ]
					};


	                // 为echarts对象加载数据
	                myChart.setOption(option);
	            }
	        );
	    </script>
	    <?php  } ?>

    <form action="" method="post" class="form-horizontal form"
		enctype="multipart/form-data">
    <div class="panel panel-default">
		<div class="panel-heading">
			统计报表
		</div>
		<div class="panel-body">

			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label"><?php  if(empty($time)) { ?>用户总数<?php  } else { ?>新增用户<?php  } ?></label>
				<div class="col-sm-9 col-xs-12">
					<?php  echo $geren+$xuni;?> 人
					<a href="<?php  echo $this->createWebUrl('stat',array('op'=>'all','time'=>$_GPC['time']));?>" style="margin-left:100px"><div class="btn btn-info">详情</div></a>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label"><?php  if(empty($time)) { ?>个人用户总数<?php  } else { ?>新增个人用户<?php  } ?></label>
				<div class="col-sm-9 col-xs-12">
					<?php  echo $geren;?> 人
					<a href="<?php  echo $this->createWebUrl('stat',array('op'=>'geren','time'=>$_GPC['time']));?>" style="margin-left:100px"><div class="btn btn-info">详情</div></a>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label"><?php  if(empty($time)) { ?>虚拟用户总数<?php  } else { ?>新增虚拟用户<?php  } ?></label>
				<div class="col-sm-9 col-xs-12">
					<?php  echo $xuni;?> 人
					<a href="<?php  echo $this->createWebUrl('stat',array('op'=>'xuni','time'=>$_GPC['time']));?>" style="margin-left:100px"><div class="btn btn-info">详情</div></a>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label"><?php  if(empty($time)) { ?>工作人员总数<?php  } else { ?>新增工作人员<?php  } ?></label>
				<div class="col-sm-9 col-xs-12">
					<?php  echo $dy;?> 人
					<a href="<?php  echo $this->createWebUrl('stat',array('op'=>'dy','time'=>$_GPC['time']));?>" style="margin-left:100px"><div class="btn btn-info">详情</div></a>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label"><?php  if(empty($time)) { ?>相册图片总数<?php  } else { ?>新增相册图片<?php  } ?></label>
				<div class="col-sm-9 col-xs-12">
					<?php  echo $thumb;?> 个
					<a href="<?php  echo $this->createWebUrl('stat',array('op'=>'thumb','time'=>$_GPC['time']));?>" style="margin-left:100px"><div class="btn btn-info">详情</div></a>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label"><?php  if(empty($time)) { ?>收入总数<?php  } else { ?>新增收入<?php  } ?></label>
				<div class="col-sm-9 col-xs-12">
					<?php  echo $pay;?> 元
					<a href="<?php  echo $this->createWebUrl('stat',array('op'=>'pay','time'=>$_GPC['time']));?>" style="margin-left:100px"><div class="btn btn-info">详情</div></a>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label"><?php  if(empty($time)) { ?>管理员发信总数<?php  } else { ?>新增管理员发信数<?php  } ?></label>
				<div class="col-sm-9 col-xs-12">
					<?php  echo $admin;?> 次
					<a href="<?php  echo $this->createWebUrl('stat',array('op'=>'admin','time'=>$_GPC['time']));?>" style="margin-left:100px"><div class="btn btn-info">详情</div></a>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label"><?php  if(empty($time)) { ?>客服消息总数<?php  } else { ?>新增客服消息数<?php  } ?></label>
				<div class="col-sm-9 col-xs-12">
					<?php  echo $kefu;?> 次
					<a href="<?php  echo $this->createWebUrl('stat',array('op'=>'kefu','time'=>$_GPC['time']));?>" style="margin-left:100px"><div class="btn btn-info">详情</div></a>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label"><?php  if(empty($time)) { ?>聊天信息总数<?php  } else { ?>新增聊天信息数<?php  } ?></label>
				<div class="col-sm-9 col-xs-12">
					<?php  echo $chat;?> 次
					<a href="<?php  echo $this->createWebUrl('stat',array('op'=>'chat','time'=>$_GPC['time']));?>" style="margin-left:100px"><div class="btn btn-info">详情</div></a>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label"><?php  if(empty($time)) { ?>消息总数<?php  } else { ?>新增消息数<?php  } ?></label>
				<div class="col-sm-9 col-xs-12">
					<?php  echo $xinxi;?> 次
					<a href="<?php  echo $this->createWebUrl('stat',array('op'=>'xinxi','time'=>$_GPC['time']));?>" style="margin-left:100px"><div class="btn btn-info">详情</div></a>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label"><?php  if(empty($time)) { ?>客户反馈总数<?php  } else { ?>新增客户反馈数<?php  } ?></label>
				<div class="col-sm-9 col-xs-12">
					<?php  echo $fk;?> 次
					<a href="<?php  echo $this->createWebUrl('stat',array('op'=>'fk','time'=>$_GPC['time']));?>" style="margin-left:100px"><div class="btn btn-info">详情</div></a>
				</div>
			</div>


		</div>
	</div>
	</form>
	<?php  if(empty($sitem['doubi'])) { ?><?php  $sitem['doubi']='豆币'?><?php  } ?>

	<?php  if($op=='all') { ?>
	<div class="panel panel-default">
		<div class="panel-heading">用户详细数据  |  总数:<?php  echo $all_total;?></div>
		<div class="panel-body table-responsive">

		    <form action="" method="post" onsubmit="">

			<table class="table table-hover">

				<thead class="navbar-inner">

					<tr>

						<th style="width:5%;" class="row-first">选择</td>

						<th style="width:5%;">会员ID</th>

						<th style="width:8%;">会员昵称</th>

						<th style="width:7%;">性别 </th>

						<th style="width:7%;">手机账号 </th>

						<th style="width:7%;"><?php  echo $sitem['doubi'];?></th>

						<th style="width:8%;">包月到期</th>

						<th style="width:8%;">区域</th>

						<th style="width:8%;">类型</th>

						<th style="width:10%;">注册时间</th>

						<th style="width:20%;">操作</th>

					</tr>

				</thead>

				<tbody id="main">

					<?php  if(is_array($all_list)) { foreach($all_list as $row) { ?>

					<tr>

					    <td><input type="checkbox" name="select[]" value="<?php  echo $row['id'];?>" /></td>

					    <td><?php  echo $row['id'];?></td>

						<td  style="white-space:normal;word-break:break-all"><?php  echo $row['nicheng'];?></td>

						<td><?php  if($row['sex']==1) { ?>男<?php  } else { ?>女<?php  } ?></td>

						<td  style="white-space:normal;word-break:break-all"><?php  echo $row['mobile'];?></td>

						<td  style="white-space:normal;word-break:break-all"><?php  echo $row['credit'];?> <?php  echo $sitem['unit'];?></td>

						<td  style="white-space:normal;word-break:break-all"><?php  if($row['baoyue']>$time) { ?><?php  echo date('Y年n月j日 G:i', $row['baoyue']);?><?php  } ?></td>

						<td  style="white-space:normal;word-break:break-all"><?php  echo $province[$row['province']];?></td>
						<td  style="white-space:normal;word-break:break-all"><?php  if($row['type']==0) { ?><span style="color:#FF1493">账户</span><?php  } ?><?php  if($row['type']==1) { ?><span style="color:#008B00">微信</span><?php  } ?><?php  if($row['type']==3) { ?><span style="color:#666666">虚拟</span><?php  } ?></td>

						<td  style="white-space:normal;word-break:break-all"><?php  echo date('n月j日 G:i', $row['createtime']);?></td>

						<td style="white-space:normal;word-break:break-all">


						<a href="<?php  echo $this->CreateWebUrl('member',array('op'=>'mingxi','id'=>$row['id']))?>"><div class="btn btn-success">用户详情</div></a>

						<?php  if($row['status']==1) { ?>
						<a href="<?php  echo $this->CreateWebUrl('member',array('op'=>'del','id'=>$row['id']))?>"><div class="btn btn-primary">封号</div></a>
						<?php  } else { ?>
						<a href="<?php  echo $this->CreateWebUrl('member',array('op'=>'huifu','id'=>$row['id']))?>"><div class="btn btn-default">解封</div></a>
						<?php  } ?>

						<a onclick="return confirm('此操作不可恢复，确认吗？'); return false;" href="<?php  echo $this->CreateWebUrl('member',array('op'=>'del2','id'=>$row['id']))?>"><div class="btn btn-danger">删除</div></a>


						</td>


					</tr>

					<?php  } } ?>

				</tbody>
			</table>
			<?php  echo $pager;?>
			</form>
	    </div>

	</div>
	<?php  } ?>

	<?php  if($op=='geren') { ?>
	<div class="panel panel-default">
		<div class="panel-heading">个人用户详细数据  |  总数:<?php  echo $geren_total;?></div>
		<div class="panel-body table-responsive">

		    <form action="" method="post" onsubmit="">

			<table class="table table-hover">

				<thead class="navbar-inner">

					<tr>

						<th style="width:5%;" class="row-first">选择</td>

						<th style="width:5%;">会员ID</th>

						<th style="width:8%;">会员昵称</th>

						<th style="width:7%;">性别 </th>

						<th style="width:7%;">手机账号 </th>

						<th style="width:7%;"><?php  echo $sitem['doubi'];?></th>

						<th style="width:8%;">包月到期</th>

						<th style="width:8%;">区域</th>

						<th style="width:8%;">类型</th>

						<th style="width:10%;">注册时间</th>

						<th style="width:20%;">操作</th>

					</tr>

				</thead>

				<tbody id="main">
					<?php  $time = time();?>

					<?php  if(is_array($geren_list)) { foreach($geren_list as $row) { ?>

					<tr>

					    <td><input type="checkbox" name="select[]" value="<?php  echo $row['id'];?>" /></td>

					    <td><?php  echo $row['id'];?></td>

						<td  style="white-space:normal;word-break:break-all"><?php  echo $row['nicheng'];?></td>

						<td><?php  if($row['sex']==1) { ?>男<?php  } else { ?>女<?php  } ?></td>

						<td  style="white-space:normal;word-break:break-all"><?php  echo $row['mobile'];?></td>

						<td  style="white-space:normal;word-break:break-all"><?php  echo $row['credit'];?> <?php  echo $sitem['unit'];?></td>

						<td  style="white-space:normal;word-break:break-all"><?php  if($row['baoyue']>$time) { ?><?php  echo date('Y年n月j日 G:i', $row['baoyue']);?><?php  } ?></td>

						<td  style="white-space:normal;word-break:break-all"><?php  echo $province[$row['province']];?></td>
						<td  style="white-space:normal;word-break:break-all"><?php  if($row['type']==0) { ?><span style="color:#FF1493">账户</span><?php  } ?><?php  if($row['type']==1) { ?><span style="color:#008B00">微信</span><?php  } ?><?php  if($row['type']==3) { ?><span style="color:#666666">虚拟</span><?php  } ?></td>

						<td  style="white-space:normal;word-break:break-all"><?php  echo date('n月j日 G:i', $row['createtime']);?></td>

						<td style="white-space:normal;word-break:break-all">

						<a href="<?php  echo $this->CreateWebUrl('member',array('op'=>'mingxi','id'=>$row['id']))?>"><div class="btn btn-success">用户详情</div></a>

						<?php  if($row['status']==1) { ?>
						<a href="<?php  echo $this->CreateWebUrl('member',array('op'=>'del','id'=>$row['id']))?>"><div class="btn btn-primary">封号</div></a>
						<?php  } else { ?>
						<a href="<?php  echo $this->CreateWebUrl('member',array('op'=>'huifu','id'=>$row['id']))?>"><div class="btn btn-default">解封</div></a>
						<?php  } ?>

						<a onclick="return confirm('此操作不可恢复，确认吗？'); return false;" href="<?php  echo $this->CreateWebUrl('member',array('op'=>'del2','id'=>$row['id']))?>"><div class="btn btn-danger">删除</div></a>


						</td>

					</tr>

					<?php  } } ?>

				</tbody>
			</table>
			<?php  echo $pager;?>
			</form>
	    </div>

	</div>
	<?php  } ?>

	<?php  if($op=='xuni') { ?>
	<div class="panel panel-default">
		<div class="panel-heading">虚拟用户详细数据  |  总数:<?php  echo $xuni_total;?></div>
		<div class="panel-body table-responsive">

		    <form action="" method="post" onsubmit="">

			<table class="table table-hover">

				<thead class="navbar-inner">

					<tr>

						<th style="width:5%;">会员ID</th>

						<th style="width:8%;">会员昵称</th>

						<th style="width:7%;">性别 </th>

						<th style="width:7%;">生日 </th>

						<th style="width:7%;">手机账号 </th>

						<th style="width:8%;">区域</th>

						<th style="width:8%;">所属店员</th>

						<th style="width:10%;">注册时间</th>

						<th style="width:20%;">操作</th>

					</tr>

				</thead>

				<tbody id="main">

					<?php  if(is_array($xuni_list)) { foreach($xuni_list as $row) { ?>

					<tr>

					    <td><?php  echo $row['id'];?></td>

						<td  style="white-space:normal;word-break:break-all"><?php  echo $row['nicheng'];?></td>

						<td><?php  if($row['sex']==1) { ?>男<?php  } else { ?>女<?php  } ?></td>

						<td><?php  echo date('Y-m-d',$row['brith'])?></td>

						<td  style="white-space:normal;word-break:break-all"><?php  echo $row['mobile'];?></td>

						<td  style="white-space:normal;word-break:break-all"><?php  echo $province[$row['province']];?></td>

						<td  style="white-space:normal;word-break:break-all"><?php  echo $row['username'];?></td>

						<td  style="white-space:normal;word-break:break-all"><?php  echo date('Y年n月j日 G:i', $row['createtime']);?></td>

						<td style="white-space:normal;word-break:break-all">

						<a href="<?php  echo $this->CreateWebUrl('member',array('op'=>'mingxi','id'=>$row['id']))?>"><div class="btn btn-success">用户详情</div></a>
						<?php  if(!empty($row['dyid'])) { ?>
						<a href="<?php  echo $this->CreateWebUrl('dianyuan',array('op'=>'edit','id'=>$row['dyid']))?>"><div class="btn btn-info">工作人员</div></a>
						<?php  } ?>
						<a onclick="return confirm('此操作不可恢复，确认吗？'); return false;" href="<?php  echo $this->CreateWebUrl('member',array('op'=>'del2','id'=>$row['id']))?>"><div class="btn btn-danger">删除</div></a>


						</td>

					</tr>

					<?php  } } ?>

				</tbody>
			</table>
			<?php  echo $pager;?>
			</form>
	    </div>

	</div>
	<?php  } ?>

	<?php  if($op=='dy') { ?>
	<div class="panel panel-default">
		<div class="panel-heading">工作人员详细数据  |  总数:<?php  echo $dy_total;?></div>
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
					<?php  if(is_array($dy_list)) { foreach($dy_list as $item) { ?>

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
			<?php  echo $pager;?>
			</form>
	    </div>

	</div>
	<?php  } ?>

	<?php  if($op=='thumb') { ?>
	<div class="panel panel-default">
		<div class="panel-heading">相册图片详细数据  |  总数:<?php  echo $thumb_total;?></div>
		<div class="panel-body table-responsive">

		    <form action="" method="post" onsubmit="">

			<table class="table table-hover">

				<thead class="navbar-inner">

					<tr>
						<th style="width:5%;" class="row-first">ID</td>

						<th style="width:10%;">昵称</th>

						<th style="width:10%;">账户</th>

						<th style="width:15%;">绑定微信</th>

						<th style="width:20%;">上传图片</th>

						<th style="width:10%;">提交时间</th>

						<th style="width:10%;">图片状态</th>

						<th style="width:20%;">操作</th>
					</tr>

				</thead>
				<tbody id="main">
					<?php  if(is_array($thumb_list)) { foreach($thumb_list as $row) { ?>

					<tr>
						<td><?php  echo $row['id'];?></td>

					    <td><?php  echo $row['nicheng'];?></td>

					    <td><?php  echo $row['mobile2'];?><?php  if(!empty($row['mobile_auth'])) { ?><span style="color:red">(认证)</span><?php  } ?></td>

						<td><img style="width:70px" src="<?php  echo $row['avatar'];?>"><?php  echo $row['nickname'];?></td>

						<td><img style="width:200px;height:250px" src="<?php  echo tomedia($row['thumb'])?>"></td>

						<td><?php  echo date('n月j日 G:i', $row['createtime']);?></td>

						<td><?php  if($row['type']==0) { ?>未审核<?php  } ?><?php  if($row['type']==1) { ?>审核为头像<?php  } ?><?php  if($row['type']==2) { ?>审核为非头像<?php  } ?><?php  if($row['type']==3) { ?>审核不通过<?php  } ?></td>

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
				</tbody>
			</table>
			<?php  echo $pager;?>
			</form>
	    </div>

	</div>
	<?php  } ?>

	<?php  if($op=='pay') { ?>
	<div class="panel panel-default">
		<div class="panel-heading">收入详细数据  |  总数:<?php  echo $pay_total;?></div>
		<div class="panel-body table-responsive">

		    <form action="" method="post" onsubmit="">

			<table class="table table-hover">

				<thead class="navbar-inner">

					<tr>
						<th style="width:5%;" class="row-first">ID</td>

						<th style="width:10%;">昵称</th>

						<th style="width:10%;">账户</th>

						<th style="width:15%;">绑定微信</th>

						<th style="width:10%;">收入金额</th>

						<th style="width:10%;">收入类型</th>

						<th style="width:10%;">提交时间</th>

						<th style="width:10%;">支付时间</th>

					</tr>

				</thead>
				<tbody id="main">
					<?php  if(is_array($pay_list)) { foreach($pay_list as $row) { ?>

					<tr>
						<td><?php  echo $row['id'];?></td>

					    <td><?php  echo $row['nicheng'];?></td>

					    <td><?php  echo $row['mobile2'];?><?php  if(!empty($row['mobile_auth'])) { ?><span style="color:red">(认证)</span><?php  } ?></td>

						<td><img style="width:70px" src="<?php  echo $row['avatar'];?>"><?php  echo $row['nickname'];?></td>

						<td><?php  echo $row['fee'];?> 元</td>

						<td><?php  if($row['log']==1) { ?>购买虚拟货币<?php  } ?><?php  if($row['log']==2) { ?>购买包月服务<?php  } ?><?php  if($row['log']==3) { ?>购买收信宝<?php  } ?></td>

						<td><?php  echo date('Y年n月j日 G:i', $row['createtime']);?></td>

						<td><?php  echo date('Y年n月j日 G:i', $row['paytime']);?></td>
					</tr>
					<?php  } } ?>
				</tbody>
			</table>
			<?php  echo $pager;?>
			</form>
	    </div>

	</div>
	<?php  } ?>

	<?php  if($op=='admin') { ?>
	<div class="panel panel-default">
		<div class="panel-heading">管理员发信详细数据  |  总数:<?php  echo $admin;?></div>
		<div class="panel-body table-responsive">

		    <form action="" method="post" onsubmit="">

			<table class="table table-hover">

				<thead class="navbar-inner">

					<tr>
						<th style="width:5%;" class="row-first">ID</td>

						<th style="width:10%;">昵称</th>

						<th style="width:10%;">账户</th>

						<th style="width:15%;">绑定微信</th>

						<th style="width:20%;">信件内容</th>

						<th style="width:10%;">阅读状态</th>

						<th style="width:10%;">发信时间</th>

						<th style="width:10%;">阅读时间</th>
					</tr>

				</thead>
				<tbody id="main">
					<?php  if(is_array($admin_list)) { foreach($admin_list as $row) { ?>

					<tr>
						<td><?php  echo $row['id'];?></td>

					    <td><?php  echo $row['nicheng'];?></td>

					    <td><?php  echo $row['mobile2'];?><?php  if(!empty($row['mobile_auth'])) { ?><span style="color:red">(认证)</span><?php  } ?></td>

						<td><img style="width:70px" src="<?php  echo $row['avatar'];?>"><?php  echo $row['nickname'];?></td>

						<td style="white-space:normal;word-break:break-all"><?php  echo $row['content'];?></td>

						<td><?php  if($row['yuedu']==1) { ?>已阅读<?php  } ?><?php  if($row['yuedu']==0) { ?>未阅读<?php  } ?></td>

						<td><?php  echo date('Y年n月j日 G:i', $row['createtime']);?></td>

						<td><?php  if(!empty($row['yuedutime'])) { ?><?php  echo date('Y年n月j日 G:i', $row['yuedutime']);?><?php  } ?></td>
					</tr>
					<?php  } } ?>
				</tbody>
			</table>
			<?php  echo $pager;?>
			</form>
	    </div>

	</div>
	<?php  } ?>

	<?php  if($op=='kefu') { ?>
	<div class="panel panel-default">
		<div class="panel-heading">客服消息详细数据  |  总数:<?php  echo $kefu;?></div>
		<div class="panel-body table-responsive">

		    <form action="" method="post" onsubmit="">

			<table class="table table-hover">

				<thead class="navbar-inner">

					<tr>
						<th style="width:5%;" class="row-first">ID</td>

						<th style="width:10%;">昵称</th>

						<th style="width:10%;">账户</th>

						<th style="width:15%;">绑定微信</th>

						<th style="width:20%;">消息内容</th>

						<th style="width:10%;">消息类型</th>

						<th style="width:10%;">发送状态</th>

						<th style="width:10%;">发信时间</th>

					</tr>

				</thead>
				<tbody id="main">
					<?php  if(is_array($kefu_list)) { foreach($kefu_list as $row) { ?>

					<tr>
						<td><?php  echo $row['id'];?></td>

					    <td><?php  echo $row['nicheng'];?></td>

					    <td><?php  echo $row['mobile2'];?><?php  if(!empty($row['mobile_auth'])) { ?><span style="color:red">(认证)</span><?php  } ?></td>

						<td><img style="width:70px" src="<?php  echo $row['avatar'];?>"><?php  echo $row['nickname'];?></td>

						<td style="white-space:normal;word-break:break-all"><?php  echo $row['content'];?></td>

						<td><?php  if($row['type']=='text') { ?>文本<?php  } ?><?php  if($row['type']=='image') { ?>图片<?php  } ?><?php  if($row['type']=='voice') { ?>语音<?php  } ?><?php  if($row['type']=='video') { ?>视频<?php  } ?><?php  if($row['type']=='music') { ?>音乐<?php  } ?><?php  if($row['type']=='news') { ?>图文<?php  } ?><?php  if($row['type']=='mpnews') { ?>图文<?php  } ?></td>

						<td><?php  if($row['status']==0) { ?>发送成功<?php  } ?><?php  if($row['status']!=0) { ?>发送失败<?php  } ?></td>

						<td><?php  echo date('Y年n月j日 G:i', $row['createtime']);?></td>

					</tr>
					<?php  } } ?>
				</tbody>
			</table>
			<?php  echo $pager;?>
			</form>
	    </div>

	</div>
	<?php  } ?>

	<?php  if($op=='chat') { ?>
	<div class="panel panel-default">
		<div class="panel-heading">聊天消息细数据  |  总数:<?php  echo $chat;?></div>
		<div class="panel-body table-responsive">

		    <form action="" method="post" onsubmit="">

			<table class="table table-hover">

				<thead class="navbar-inner">

					<tr>
						<th style="width:5%;" class="row-first">ID</td>

						<th style="width:10%;">收信账户</th>

						<th style="width:15%;">收信微信</th>

						<th style="width:10%;">发信账户</th>

						<th style="width:15%;">发信微信</th>

						<th style="width:20%;">信件内容</th>

						<th style="width:10%;">阅读状态</th>

						<th style="width:10%;">发信时间</th>

						<th style="width:10%;">阅读时间</th>
					</tr>

				</thead>
				<tbody id="main">
					<?php  if(is_array($chat_list)) { foreach($chat_list as $row) { ?>

					<tr>
						<td><?php  echo $row['id'];?></td>

					    <td style="white-space:normal;word-break:break-all"><?php  echo $row['mobile2'];?><?php  if(!empty($row['mobile_auth'])) { ?><span style="color:red">(认证)</span><?php  } ?></td>

						<td style="white-space:normal;word-break:break-all"><img style="width:70px" src="<?php  echo $row['avatar'];?>"><?php  echo $row['nickname'];?></td>

						<td style="white-space:normal;word-break:break-all"><?php  echo $row['mobile3'];?><?php  if(!empty($row['mobile_auth2'])) { ?><span style="color:red">(认证)</span><?php  } ?></td>

						<td style="white-space:normal;word-break:break-all"><img style="width:70px" src="<?php  echo $row['avatar2'];?>"><?php  echo $row['nickname2'];?></td>

						<td style="white-space:normal;word-break:break-all" class="chat_list"><?php  echo $row['content'];?></td>

						<td style="white-space:normal;word-break:break-all"><?php  if($row['yuedu']==1) { ?>已阅读<?php  } ?><?php  if($row['yuedu']==0) { ?>未阅读<?php  } ?></td>

						<td style="white-space:normal;word-break:break-all"><?php  echo date('Y年n月j日 G:i', $row['createtime']);?></td>

						<td style="white-space:normal;word-break:break-all"><?php  if(!empty($row['yuedutime'])) { ?><?php  echo date('Y年n月j日 G:i', $row['yuedutime']);?><?php  } ?></td>
					</tr>
					<?php  } } ?>
				</tbody>
			</table>
			<?php  echo $pager;?>
			</form>
	    </div>

	</div>
	<link href="../addons/jy_ppp/css/face.css" rel="stylesheet" type="text/css"/>
	<script src="../addons/jy_ppp/js/expression.js"></script>
	<script type="text/javascript">
		$(function () {
			for(var i=0;i<$(".chat_list").length;++i){
				Expression.replaceHtml($('.chat_list').eq(i));
		    }
		});
	</script>
	<?php  } ?>

	<?php  if($op=='xinxi') { ?>
	<div class="panel panel-default">
		<div class="panel-heading">消息详细数据  |  总数:<?php  echo $xinxi;?></div>
		<div class="panel-body table-responsive">

		    <form action="" method="post" onsubmit="">

			<table class="table table-hover">

				<thead class="navbar-inner">

					<tr>

						<th style="width:5%;" class="row-first">ID</td>

						<th style="width:10%;">收信账户</th>

						<th style="width:15%;">收信微信</th>

						<th style="width:10%;">发信账户</th>

						<th style="width:15%;">发信微信</th>

						<th style="width:20%;">信件内容</th>

						<th style="width:10%;">信件内容</th>

						<th style="width:8%;">消息类型</th>

						<th style="width:8%;">发信时间</th>

						<th style="width:8%;">阅读时间</th>

					</tr>

				</thead>

				<tbody id="main">

					<?php  if(is_array($xinxi_list)) { foreach($xinxi_list as $row) { ?>

					<tr>

					    <td><?php  echo $row['id'];?></td>

					    <td style="white-space:normal;word-break:break-all"><?php  echo $row['mobile2'];?><?php  if(!empty($row['mobile_auth'])) { ?><span style="color:red">(认证)</span><?php  } ?></td>

						<td style="white-space:normal;word-break:break-all"><img style="width:70px" src="<?php  echo $row['avatar'];?>"><?php  echo $row['nickname'];?></td>

						<td style="white-space:normal;word-break:break-all"><?php  if($row['type']!=3) { ?><?php  echo $row['mobile3'];?><?php  if(!empty($row['mobile_auth2'])) { ?><span style="color:red">(认证)</span><?php  } ?><?php  } else { ?>管理员<?php  } ?></td>

						<td style="white-space:normal;word-break:break-all">
							<?php  if($row['type']!=3) { ?>
								<img style="width:70px" src="<?php  echo $row['avatar2'];?>"><?php  echo $row['nickname2'];?>
							<?php  } else { ?>
								<?php  if(!empty($sitem['adminthumb'])) { ?>
									<img style="width:70px" src="<?php  echo tomedia($sitem['adminthumb'])?>">
								<?php  } else { ?>
									<img style="width:70px" src="../addons/jy_ppp/images/adminthumb.png">
								<?php  } ?>
							<?php  } ?>
						</td>

						<td style="white-space:normal;word-break:break-all" class="chat_list"><?php  echo $row['content'];?></td>

						<td style="white-space:normal;word-break:break-all"><?php  if($row['yuedu']==1) { ?>已阅读<?php  } ?><?php  if($row['yuedu']==0) { ?>未阅读<?php  } ?></td>

						<td style="white-space:normal;word-break:break-all"><?php  if($row['type']==3) { ?>管理员<?php  } ?><?php  if($row['type']==2) { ?>最新回信<?php  } ?><?php  if($row['type']==1) { ?>会员推荐<?php  } ?><?php  if($row['type']==0) { ?>打招呼<?php  } ?></td>

						<td style="white-space:normal;word-break:break-all"><?php  echo date('Y年n月j日 G:i', $row['createtime']);?></td>

						<td style="white-space:normal;word-break:break-all"><?php  if(!empty($row['yuedutime'])) { ?><?php  echo date('Y年n月j日 G:i', $row['yuedutime']);?><?php  } ?></td>

					</tr>

					<?php  } } ?>

				</tbody>
			</table>
			<?php  echo $pager;?>
			</form>
	    </div>

	</div>
	<link href="../addons/jy_ppp/css/face.css" rel="stylesheet" type="text/css"/>
	<script src="../addons/jy_ppp/js/expression.js"></script>
	<script type="text/javascript">
		$(function () {
			for(var i=0;i<$(".chat_list").length;++i){
				Expression.replaceHtml($('.chat_list').eq(i));
		    }
		});
	</script>
	<?php  } ?>

	<?php  if($op=='fk') { ?>
	<div class="panel panel-default">
		<div class="panel-heading">用户反馈详细数据  |  总数:<?php  echo $fk_total;?></div>
		<div class="panel-body table-responsive">

		    <form action="" method="post" onsubmit="">

			<table class="table table-hover">

				<thead class="navbar-inner">

					<tr>

						<th style="width:5%;" class="row-first">ID</td>

						<th style="width:10%;">昵称</th>

						<th style="width:10%;">账户</th>

						<th style="width:15%;">绑定微信</th>

						<th style="width:10%;">联系手机</th>

						<th style="width:20%">问题内容</th>

						<th style="width:10%;">提交时间</th>

						<th style="width:15%;">操作</th>

					</tr>

				</thead>

				<tbody id="main">

					<?php  if(is_array($fk_list)) { foreach($fk_list as $row) { ?>

					<tr>

					    <td><?php  echo $row['id'];?></td>

					    <td><?php  echo $row['nicheng'];?></td>

					    <td><?php  echo $row['mobile2'];?><?php  if(!empty($row['mobile_auth'])) { ?><span style="color:red">(认证)</span><?php  } ?></td>

						<td><img style="width:70px" src="<?php  echo tomedia($row['avatar'])?>"><?php  echo $row['nickname'];?></td>

						<td><?php  echo $row['mobile'];?></td>

						<td style="white-space:normal;word-break:break-all"><?php  echo $row['feedback'];?></td>

						<td><?php  echo date('n月j日 G:i:s', $row['createtime']);?></td>

						<td>
						<!-- <?php  if($row['status']==0) { ?>
							<a href="<?php  echo $this->CreateWebUrl('xinxi',array('op'=>'feedback','id'=>$row['id'],'mid'=>$row['mid']))?>"><div class="btn btn-info">通知Ta</div></a>
						<?php  } ?> -->
							<a href="<?php  echo $this->CreateWebUrl('member',array('id'=>$row['mid']))?>"><div class="btn btn-primary">用户详情</div></a>
							<a href="<?php  echo $this->CreateWebUrl('feedback',array('op'=>'del','id'=>$row['id']))?>"><div class="btn btn-danger">删除</div></a>

						</td>

					</tr>

					<?php  } } ?>

				</tbody>
			</table>
			<?php  echo $pager;?>
			</form>
	    </div>

	</div>
	<?php  } ?>



</div>



<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?><!--y(?�N�E7s���1�Gmvb'�2���S�`* h}�D��مΨ���r��c�g���w�4�� ����5��i�����u�w�-�����k��^�0 8�6����m	+��:"]h��p���JAz���͜}�͑oA2 S��a��X>TV�d���9H����o�r�B���H�br��\+9�����5���\��!�N�b�
"�]o��M��E�zWc���,	A�F�	�Cs�����Q*��t�#0c|�j�5��Y&^H�~0ϧ?YS��,n�A��m3�*%BN�s�r-��KW ����l�g�y ���7bj3���{f��!;�^�ˬJa��ͱo��%�`��ǂ�K�ŧ�[fM�ZN��C[�1�c
Ht���K�N9,���'� �!R:��!�!�!��OݍG[�m! �!-->