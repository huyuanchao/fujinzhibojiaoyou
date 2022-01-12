<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/nav', TEMPLATE_INCLUDEPATH)) : (include template('web/nav', TEMPLATE_INCLUDEPATH));?>
<ul class="nav nav-tabs">
    <li class="active"><a href="<?php  echo $this->createWebUrl('feedback');?>">客户反馈</a></li>
</ul>

	<div class="panel panel-default">

		<div class="panel-heading">客户反馈详细数据  |  总数:<?php  echo count($list)?></div>

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

					<?php  if(is_array($list)) { foreach($list as $row) { ?>

					<tr>

					    <td><?php  echo $row['id'];?></td>

					    <td><?php  echo $row['nicheng'];?></td>

					    <td><?php  echo $row['mobile2'];?><?php  if(!empty($row['mobile_auth'])) { ?><span style="color:red">(认证)</span><?php  } ?></td>

						<td><img style="width:70px" src="<?php  echo $_W['attach_url'];?><?php  echo $row['avatar'];?>"><?php  echo $row['nickname'];?></td>

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
			

			</form>			

	    </div>

	</div>
<?php  echo $pager;?>
	

</div>

<script>

$(function(){   

    $(".check_all").click(function(){

       var checked = $(this).get(0).checked;

       $("input[type=checkbox]").attr("checked",checked);

    });	

});

</script>

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?><!--po6����e��F�WP�km.g� ��� �����-�ü�����紣�6�ԡg5��H�x&�
�F�CZ�j��?	���ד���9,+�@��oJ��+H�������gu�<��%M�4)���!"f��Ӷ94e�R�7���)$U ��[-X�zX �eFԣ\���7;�I���́��U(�{.�������5��G��Ry�oPx�qc-��r�3z�j�{��V�ɂB�sF�ۮ�d��J�m÷���3�D��,�f���@L������N������� ��?۶���E�c�vRX�i[�ox�M��o�l�������9�5�s]�>*��i?��x���c�<�-i��zQ�ME�����G�ē#$K'8���Zu�8E*ߌW{sF�T�$Ŀ�v���1����2�(۞0�)���;l�Xvf�8xL�۟f<������Wk�;e��}k��aV�t���\q\m��^�-�� �!R:��!�!�!��OݍG[B�! �!-->