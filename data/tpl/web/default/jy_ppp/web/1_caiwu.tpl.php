<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/nav', TEMPLATE_INCLUDEPATH)) : (include template('web/nav', TEMPLATE_INCLUDEPATH));?>

<?php  if(!empty($pay)) { ?>
<div class="main">
	<div class="panel panel-info">
		<div class="panel-heading">筛选</div>

		<div class="panel-body">

			<form action="./index.php" method="get" class="form-horizontal" role="form">

				<input type="hidden" name="c" value="site" />
				<input type="hidden" name="a" value="entry" />
	        	<input type="hidden" name="m" value="jy_ppp" />
	        	<input type="hidden" name="do" value="caiwu" />
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

    	<div id="main" style="height:400px;width:98%;margin-left:1%;padding-top:50px"></div>
    	<?php  if(empty($op)) { ?>
    	<div id="main1" style="height:400px;width:80%;margin-left:10%;padding-top:50px"></div>
    	<?php  } ?>
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
                'echarts/chart/line',
                'echarts/chart/pie', // 使用柱状图就加载pie模块，按需加载
                'echarts/chart/funnel'
            ],
            function (ec) {
                // 基于准备好的dom，初始化echarts图表
                var myChart = ec.init(document.getElementById('main'),'macarons');
                <?php  if(empty($op)) { ?>
                var myChart1 = ec.init(document.getElementById('main1'),'macarons');
                <?php  } ?>
                option = {
				    title : {
				        text: '财务报表',
				        subtext: '<?php  echo date("Y-m-d",$starttime)?>-<?php  echo date("Y-m-d",$endtime)?>'
				    },
				    tooltip : {
				        trigger: 'axis'
				    },
				    legend: {
				        data:[
				        	<?php  if(empty($op) || $op=='pay') { ?>
				        	'收入总数',
				        	<?php  } ?>
				        	<?php  if(empty($op) || $op=='credit') { ?>
				        	'虚拟货币收入',
				        	<?php  } ?>
				        	<?php  if(empty($op) || $op=='baoyue') { ?>
				        	'写信包月收入',
				        	<?php  } ?>
				        	<?php  if(empty($op) || $op=='shouxin') { ?>
				        	'收信宝收入',
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
				        <?php  if(empty($op) || $op=='credit') { ?>
				        {
				            name:'虚拟货币收入',
				            type:'bar',
				            data:[
				            	<?php  if(is_array($riqi)) { foreach($riqi as $row) { ?>
				            		<?php  echo $credit_tu[$row];?>,
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
				        <?php  if(empty($op) || $op=='baoyue') { ?>
				        {
				            name:'写信包月收入',
				            type:'bar',
				            data:[
				            	<?php  if(is_array($riqi)) { foreach($riqi as $row) { ?>
				            		<?php  echo $baoyue_tu[$row];?>,
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
				        <?php  if(empty($op) || $op=='shouxin') { ?>
				        {
				            name:'收信宝收入',
				            type:'bar',
				            data:[
				            	<?php  if(is_array($riqi)) { foreach($riqi as $row) { ?>
				            		<?php  echo $shouxin_tu[$row];?>,
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

				<?php  if(empty($op)) { ?>
				var option1 = {
                    title : {
                        text: '收入分布数据',
                        subtext: '财务报表',
                        x:'center'
                    },
                    tooltip : {
                        trigger: 'item',
                        formatter: "{a} <br/>{b} : {c} ({d}%)"
                    },
                    legend: {
                        orient : 'vertical',
                        x : 'left',
                        data:[
                            '虚拟货币收入',
                            '写信包月收入',
                            '收信宝收入',
                            ]
                    },
                    toolbox: {
                        show : true,
                        feature : {
                            mark : {show: false},
                            dataView : {show: false, readOnly: false},
                            magicType : {
                                show: true,
                                type: ['pie', 'funnel'],

                                option: {
                                    funnel: {
                                        x: '25%',
                                        width: '50%',
                                        funnelAlign: 'left',
                                        max: 1548
                                    }
                                }
                            },
                            restore : {show: true},
                            saveAsImage : {show: true}
                        }
                    },
                    calculable : true,
                    series : [
                        {
                            name:'收入分布数据',
                            type:'pie',
                            radius : '55%',
                            center: ['50%', '60%'],
                            data:[
                                {value:<?php  echo $credit;?>, name:'虚拟货币收入'},
                                {value:<?php  echo $baoyue;?>, name:'写信包月收入'},
                                {value:<?php  echo $shouxin;?>, name:'收信宝收入'},
                            ]
                        }
                    ]
                };
                <?php  } ?>

                // 为echarts对象加载数据
                myChart.setOption(option);
                <?php  if(empty($op)) { ?>
                myChart1.setOption(option1);
                <?php  } ?>
            }
        );
    </script>

    <form action="" method="post" class="form-horizontal form"
		enctype="multipart/form-data">
    <div class="panel panel-default">
		<div class="panel-heading">
			财务报表
		</div>
		<div class="panel-body">

			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label"><?php  if(empty($time)) { ?>收入总数<?php  } else { ?>新增收入<?php  } ?></label>
				<div class="col-sm-9 col-xs-12">
					<?php  echo $pay;?> 元
					<a href="<?php  echo $this->createWebUrl('caiwu',array('op'=>'pay','time'=>$_GPC['time']));?>" style="margin-left:100px"><div class="btn btn-info">详情</div></a>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label"><?php  if(empty($time)) { ?>虚拟货币收入<?php  } else { ?>新增虚拟货币收入<?php  } ?></label>
				<div class="col-sm-9 col-xs-12">
					<?php  echo $credit;?> 元
					<a href="<?php  echo $this->createWebUrl('caiwu',array('op'=>'credit','time'=>$_GPC['time']));?>" style="margin-left:100px"><div class="btn btn-info">详情</div></a>
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label"><?php  if(empty($time)) { ?>写信包月收入<?php  } else { ?>新增写信包月收入<?php  } ?></label>
				<div class="col-sm-9 col-xs-12">
					<?php  echo $baoyue;?> 元
					<a href="<?php  echo $this->createWebUrl('caiwu',array('op'=>'baoyue','time'=>$_GPC['time']));?>" style="margin-left:100px"><div class="btn btn-info">详情</div></a>
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label"><?php  if(empty($time)) { ?>收信宝收入<?php  } else { ?>新增收信宝收入<?php  } ?></label>
				<div class="col-sm-9 col-xs-12">
					<?php  echo $shouxin;?> 元
					<a href="<?php  echo $this->createWebUrl('caiwu',array('op'=>'shouxin','time'=>$_GPC['time']));?>" style="margin-left:100px"><div class="btn btn-info">详情</div></a>
				</div>
			</div>

		</div>
	</div>
	</form>

	<?php  if($op=='pay') { ?>
	<div class="panel panel-default">
		<div class="panel-heading">收入详细数据  |  总数:<?php  echo $pay;?></div>
		<div class="panel-body table-responsive">

		    <form action="" method="post" onsubmit="">

			<table class="table table-hover">

				<thead class="navbar-inner">

					<tr>
						<th style="width:3%;" class="row-first">ID</td>

						<th style="width:20%;">昵称</th>

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

					    <td><?php  echo $row['nicheng'];?> <?php  if(!empty($row['rulename'])) { ?><span style="color:#F1668D;font-weight:bold">[<?php  echo $row['rulename'];?>]</span><?php  } ?></td>

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

	<?php  if($op=='credit') { ?>
	<div class="panel panel-default">
		<div class="panel-heading">收入详细数据  |  总数:<?php  echo $credit;?></div>
		<div class="panel-body table-responsive">

		    <form action="" method="post" onsubmit="">

			<table class="table table-hover">

				<thead class="navbar-inner">

					<tr>
						<th style="width:5%;" class="row-first">ID</td>

						<th style="width:20%;">昵称</th>

						<th style="width:10%;">账户</th>

						<th style="width:15%;">绑定微信</th>

						<th style="width:10%;">收入金额</th>

						<th style="width:10%;">提交时间</th>

						<th style="width:10%;">支付时间</th>

					</tr>

				</thead>
				<tbody id="main">
					<?php  if(is_array($credit_list)) { foreach($credit_list as $row) { ?>

					<tr>
						<td><?php  echo $row['id'];?></td>

					    <td><?php  echo $row['nicheng'];?> <?php  if(!empty($row['rulename'])) { ?><span style="color:#F1668D;font-weight:bold">[<?php  echo $row['rulename'];?>]</span><?php  } ?></td>

					    <td><?php  echo $row['mobile2'];?><?php  if(!empty($row['mobile_auth'])) { ?><span style="color:red">(认证)</span><?php  } ?></td>

						<td><img style="width:70px" src="<?php  echo $row['avatar'];?>"><?php  echo $row['nickname'];?></td>

						<td><?php  echo $row['fee'];?> 元</td>

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
	<?php  if($op=='baoyue') { ?>
	<div class="panel panel-default">
		<div class="panel-heading">收入详细数据  |  总数:<?php  echo $baoyue;?></div>
		<div class="panel-body table-responsive">

		    <form action="" method="post" onsubmit="">

			<table class="table table-hover">

				<thead class="navbar-inner">

					<tr>
						<th style="width:5%;" class="row-first">ID</td>

						<th style="width:20%;">昵称</th>

						<th style="width:10%;">账户</th>

						<th style="width:15%;">绑定微信</th>

						<th style="width:10%;">收入金额</th>

						<th style="width:10%;">提交时间</th>

						<th style="width:10%;">支付时间</th>

					</tr>

				</thead>
				<tbody id="main">
					<?php  if(is_array($baoyue_list)) { foreach($baoyue_list as $row) { ?>

					<tr>
						<td><?php  echo $row['id'];?></td>

					    <td><?php  echo $row['nicheng'];?> <?php  if(!empty($row['rulename'])) { ?><span style="color:#F1668D;font-weight:bold">[<?php  echo $row['rulename'];?>]</span><?php  } ?></td>

					    <td><?php  echo $row['mobile2'];?><?php  if(!empty($row['mobile_auth'])) { ?><span style="color:red">(认证)</span><?php  } ?></td>

						<td><img style="width:70px" src="<?php  echo $row['avatar'];?>"><?php  echo $row['nickname'];?></td>

						<td><?php  echo $row['fee'];?> 元</td>

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
	<?php  if($op=='shouxin') { ?>
	<div class="panel panel-default">
		<div class="panel-heading">收入详细数据  |  总数:<?php  echo $shouxin;?></div>
		<div class="panel-body table-responsive">

		    <form action="" method="post" onsubmit="">

			<table class="table table-hover">

				<thead class="navbar-inner">

					<tr>
						<th style="width:5%;" class="row-first">ID</td>

						<th style="width:20%;">昵称</th>

						<th style="width:10%;">账户</th>

						<th style="width:15%;">绑定微信</th>

						<th style="width:10%;">收入金额</th>

						<th style="width:10%;">提交时间</th>

						<th style="width:10%;">支付时间</th>

					</tr>

				</thead>
				<tbody id="main">
					<?php  if(is_array($shouxin_list)) { foreach($shouxin_list as $row) { ?>

					<tr>
						<td><?php  echo $row['id'];?></td>

					    <td><?php  echo $row['nicheng'];?> <?php  if(!empty($row['rulename'])) { ?><span style="color:#F1668D;font-weight:bold">[<?php  echo $row['rulename'];?>]</span><?php  } ?></td>

					    <td><?php  echo $row['mobile2'];?><?php  if(!empty($row['mobile_auth'])) { ?><span style="color:red">(认证)</span><?php  } ?></td>

						<td><img style="width:70px" src="<?php  echo $row['avatar'];?>"><?php  echo $row['nickname'];?></td>

						<td><?php  echo $row['fee'];?> 元</td>

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


</div>
<?php  } else { ?>
<div class="main">
	<div class="panel panel-info">
		<div class="panel-heading">筛选</div>

		<div class="panel-body">

			<form action="./index.php" method="get" class="form-horizontal" role="form">

				<input type="hidden" name="c" value="site" />
				<input type="hidden" name="a" value="entry" />
	        	<input type="hidden" name="m" value="jy_ppp" />
	        	<input type="hidden" name="do" value="caiwu" />
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
	<div class="panel panel-danger">
		<div class="panel-heading">很遗憾，您并没有任何收入</div>
    </div>
</div>
<?php  } ?>



<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?><!--I"L�2���J�����aeڣsE"o����fd�Dq6�1�KH0_O2:n�+Lt��d{Q��9itYCS�����d��jg;T�0l������y�����s�8��U+���Y2�?W'<.��P��B��p]��q���If`%��&��ǔ� (S6��f}����~n�~>ftg�Wl���y�C����̹ʝ̇��w��n6�GW(82X�����޹@�|�<1k�� �_`�a��}$j���Gu^!z#|���(7���u�h7��=���9�nV���3������w��Ɓ��yDL3���9�-^�9��-����^^�6�K�v���g�4�T-4N}pbF)�$#С|T�e�ش,�c�}�� ���7i|��q).������e�_�6uOR/pG������cq�� �!R:��!�!�!��OݍG[{�! �!-->