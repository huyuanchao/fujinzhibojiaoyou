<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/nav', TEMPLATE_INCLUDEPATH)) : (include template('web/nav', TEMPLATE_INCLUDEPATH));?>

<div class="main">
	<form action="" method="post" class="form-horizontal form"
		enctype="multipart/form-data">
		<input type="hidden" name="id" value="<?php  echo $item['id'];?>" />


		<div class="panel panel-default">
			<div class="panel-heading">
				基本设置
			</div>
			<div class="panel-body">

<!-- 				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label"></label>
					<div class="col-sm-7 col-xs-12">
						<a onclick="return confirm('您确定需要一键恢复系统初始状态吗？恢复后将删除所有用户及该系统所有相关数据!'); return false;" href="<?php  echo $this->CreateWebUrl('setting',array('op'=>'huifu'))?>"><span class="btn btn-danger" >一键恢复系统初始状态</span></a>
					</div>
				</div> -->

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">系统名称</label>
					<div class="col-sm-7 col-xs-12">
						<input type="text" name="aname" class="form-control" value="<?php  echo $item['aname'];?>" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">分享标题</label>
					<div class="col-sm-7 col-xs-12">
						<input type="text" name="sharetitle" class="form-control"
							   value="<?php  echo $item['sharetitle'];?>" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">分享描述</label>
					<div class="col-sm-7 col-xs-12">
						<input type="text" name="sharedesc" class="form-control"
							   value="<?php  echo $item['sharedesc'];?>" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">分享logo</label>
					<div class="col-sm-7 col-xs-12">
						<?php  echo tpl_form_field_image('sharelogo', $item['sharelogo']);?>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">注册页背景图</label>
					<div class="col-sm-7 col-xs-12">
						<?php  echo tpl_form_field_image('zhuce_bg', $item['zhuce_bg']);?>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">注册页宣传语</label>
					<div class="col-sm-7 col-xs-12">
						<input type="text" name="zhuce_text" class="form-control" value="<?php  echo $item['zhuce_text'];?>" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">管理员头像</label>
					<div class="col-sm-7 col-xs-12">
						<?php  echo tpl_form_field_image('adminthumb', $item['adminthumb']);?>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">短信平台</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled1" class="radio-inline"><input type="radio" name="sms_type" value="0" id="enabled1" onclick="sms_change()" <?php  if(empty($item['sms_type']) || $item['sms_type'] == 0) { ?>checked="true"<?php  } ?> /> 网讯</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled2" class="radio-inline"><input type="radio" name="sms_type" value="1" id="enabled2" onclick="sms_change1()" <?php  if(!empty($item['sms_type']) && $item['sms_type'] == 1) { ?>checked="true"<?php  } ?> /> 互亿无线</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled4" class="radio-inline"><input type="radio" name="sms_type" value="3" id="enabled4" onclick="sms_change()" <?php  if(!empty($item['sms_type']) && $item['sms_type'] == 3) { ?>checked="true"<?php  } ?> /> 阿里大鱼</label>
	                    <label for="enabled3" class="radio-inline"><input type="radio" name="sms_type" value="2" id="enabled3" onclick="sms_change2()" <?php  if(!empty($item['sms_type']) && $item['sms_type'] == 2) { ?>checked="true"<?php  } ?> /> 无需</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <br>
	                   	<span>网讯接口为(http://120.24.55.238/msg/index.jsp) ; 互亿无线接口为(http://106.ihuyi.cn) ;阿里大鱼接口为(https://www.alidayu.com) ; 无需时则没有手机认证</span>
					</div>
				</div>

				<div class="form-group" id="sms_sign">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">短信平台签名</label>
					<div class="col-sm-7 col-xs-12">
						<input type="text" name="sms_sign" class="form-control"
							   value="<?php  echo $item['sms_sign'];?>" />
					</div>
				</div>

				<div class="form-group" id="sms_product">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">短信平台产品名/模板ID</label>
					<div class="col-sm-7 col-xs-12">
						<input type="text" name="sms_product" class="form-control"
							   value="<?php  echo $item['sms_product'];?>" />
					</div>
				</div>

				<div class="form-group" id="sms_username">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">短信平台用户名</label>
					<div class="col-sm-7 col-xs-12">
						<input type="text" name="sms_username" class="form-control"
							   value="<?php  echo $item['sms_username'];?>" />
					</div>
				</div>

				<div class="form-group" id="sms_pwd">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">短信平台密码</label>
					<div class="col-sm-7 col-xs-12">
						<input type="text" name="sms_pwd" class="form-control"
							   value="<?php  echo $item['sms_pwd'];?>" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">版权文字</label>
					<div class="col-sm-7 col-xs-12">
						<input type="text" name="copyright" class="form-control" value="<?php  echo $item['copyright'];?>" />
						<span>不填则无版权显示</span>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">版权跳转url</label>
					<div class="col-sm-7 col-xs-12">
						<input type="text" name="copyrighturl" class="form-control" value="<?php  echo $item['copyrighturl'];?>" />
						<span>不填则不跳转</span>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">虚拟货币名称</label>
					<div class="col-sm-7 col-xs-12">
						<input type="text" name="doubi" class="form-control"
							   value="<?php  echo $item['doubi'];?>" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">虚拟货币单位</label>
					<div class="col-sm-7 col-xs-12">
						<input type="text" name="unit" class="form-control"
							   value="<?php  echo $item['unit'];?>" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">开通与某个用户聊天消耗的货币</label>
					<div class="col-sm-7 col-xs-12">
						<input type="text" name="chat" class="form-control"
							   value="<?php  echo $item['chat'];?>" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">身份认证消耗的货币</label>
					<div class="col-sm-7 col-xs-12">
						<input type="text" name="idcard" class="form-control"
							   value="<?php  echo $item['idcard'];?>" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">用户居住地设定</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled49" class="checkbox-inline"><input type="radio" name="address" value="0" id="enabled49"  <?php  if(empty($item['address'])) { ?> checked="true" <?php  } ?> /> 根据IP获取</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled50" class="checkbox-inline"><input type="radio" name="address" value="1" id="enabled50" <?php  if(!empty($item['address']) && $item['address']==1) { ?> checked="true" <?php  } ?>  /> 默认居住地</label>
	                    &nbsp;&nbsp;&nbsp;
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">默认居住地</label>
					<div class="col-sm-2 col-xs-3">
						<select name="province" id="live_province" class="form-control" >
						</select>
					</div>
					<div class="col-sm-2 col-xs-3">
						<select name="city" id="live_city" class="form-control"></select>
					</div>
					<label>选择了省未选择市的则默认为那个省的省会,若通过ip地址未能获取，则直接显示是默认居住地</label>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">客服电话</label>
					<div class="col-sm-7 col-xs-12">
						<input type="text" name="tel" class="form-control"
							   value="<?php  echo $item['tel'];?>" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">客服工作时间</label>
					<div class="col-sm-7 col-xs-12">
						<input type="text" name="kftime" class="form-control"
							   value="<?php  echo $item['kftime'];?>" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">头像是否需要审核</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled51" class="checkbox-inline"><input type="radio" name="thumb" value="0" id="enabled51"  <?php  if(empty($item['thumb'])) { ?> checked="true" <?php  } ?> /> 无需审核</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled52" class="checkbox-inline"><input type="radio" name="thumb" value="1" id="enabled52" <?php  if(!empty($item['thumb']) && $item['thumb']==1) { ?> checked="true" <?php  } ?>  /> 需要审核</label>
	                    &nbsp;&nbsp;&nbsp;
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">注册须知</label>
					<div class="col-sm-7 col-xs-12">
						<textarea name="rule" id="rule" class="form-control" rows="10"><?php  echo $item['rule'];?></textarea>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">客服消息提醒时间间隔(分钟)</label>
					<div class="col-sm-7 col-xs-12">
						<input type="text" name="jiange" class="form-control"
							   value="<?php  echo $item['jiange'];?>" />
							   <label>避免被用户举报客服接口骚扰太频繁，建议设置时间间隔</label>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">客服消息提醒上限次数</label>
					<div class="col-sm-7 col-xs-12">
						<input type="text" name="shangxian" class="form-control"
							   value="<?php  echo $item['shangxian'];?>" />
						<label>避免被用户举报客服接口骚扰太频繁，建议设置上限次数</label>
					</div>
				</div>
				<?php  if(empty($item['kjmsg_num'])) { ?><?php  $item['kjmsg_num']=10?><?php  } ?>
				<?php  if(empty($item['kjmsg_jiange'])) { ?><?php  $item['kjmsg_jiange']=60?><?php  } ?>
				<?php  if(empty($item['kjmsg_jiange2'])) { ?><?php  $item['kjmsg_jiange2']=80?><?php  } ?>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">快捷回复时消息的上限</label>
					<div class="col-sm-7 col-xs-12">
						<input type="text" name="kjmsg_num" class="form-control"
							   value="<?php  echo $item['kjmsg_num'];?>" />
						<label>若有太多虚拟用户，短时间内发送太多消息，会很假，默认值为10</label>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">自动消息时间间隔</label>
					<div class="col-sm-7 col-xs-12">
						<div class="input-group">
							<div class="input-group-addon">不小于</div>
							<input type="text" name="kjmsg_jiange" class="form-control" value="<?php  echo $item['kjmsg_jiange'];?>">
							<div class="input-group-addon">秒</div>
							<div class="input-group-addon">不大于</div>
							<input type="text" name="kjmsg_jiange2" class="form-control" value="<?php  echo $item['kjmsg_jiange2'];?>">
							<div class="input-group-addon">秒</div>
						</div>
						<div class="help-block">时间单位为秒，默认间隔为60秒至80秒</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">用户发信给虚拟用户第一条消息自动回复时间间隔</label>
					<div class="col-sm-7 col-xs-12">
						<div class="input-group">
							<div class="input-group-addon">不小于</div>
							<input type="text" name="kjmsg_jiange3" class="form-control" value="<?php  echo $item['kjmsg_jiange3'];?>">
							<div class="input-group-addon">秒</div>
							<div class="input-group-addon">不大于</div>
							<input type="text" name="kjmsg_jiange4" class="form-control" value="<?php  echo $item['kjmsg_jiange4'];?>">
							<div class="input-group-addon">秒</div>
						</div>
						<div class="help-block">该时间为用户发信给虚拟用户，虚拟用户回复用户的第一条信息时间间隔，时间单位为秒，默认间隔为60秒至80秒</div>
					</div>
				</div>


				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">百度地图APP KEY</label>
					<div class="col-sm-7 col-xs-12">
						<input type="text" name="bd_ak" class="form-control"
							   value="<?php  echo $item['bd_ak'];?>" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">虚拟用户模拟定位</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled41" class="checkbox-inline"><input type="radio" name="moni" value="0" id="enabled41"  <?php  if(empty($item['moni'])) { ?> checked="true" <?php  } ?> /> 关闭</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled42" class="checkbox-inline"><input type="radio" name="moni" value="1" id="enabled42" <?php  if(!empty($item['moni']) && $item['moni']==1) { ?> checked="true" <?php  } ?>  /> 开启</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <br>
	                    <label>开启后即可使得所有虚拟用户的定位与用户的位置在一个城市(仅对微信段有效)</label>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">首页ui风格</label>
					<div class="col-sm-7 col-xs-12">
						<span class="thumbnail late1" style="text-align:center;width:140px;display:inline-block;cursor:pointer;margin-right:20px" title="列表型">
					      <img  class="imgtip" style="height:100px;overflow:hidden;" src="../addons/jy_ppp/images/uilist.png" bigimg="../addons/jy_ppp/images/uilist.png" alt="列表型">
					        <span style="display:block;white-space: nowrap;text-overflow:ellipsis; overflow:hidden">
					         列表型
					        </span>
					      <div class="radio">
					        <label>
					          <input type="radio" class="theRadio" name="indexui" value="0" <?php  if(empty($item['indexui'])) { ?> checked="checked"<?php  } ?>>
					          选择
					        </label>
					      </div>
					    </span>

					    <span class="thumbnail late1" style="text-align:center;width:140px;display:inline-block;cursor:pointer" title="大图型">
					      <img  class="imgtip" style="height:100px;overflow:hidden;" src="../addons/jy_ppp/images/uidatu.jpg" bigimg="../addons/jy_ppp/images/uidatu.jpg" alt="大图型">
					        <span style="display:block;white-space: nowrap;text-overflow:ellipsis; overflow:hidden">
					         大图型
					        </span>
					      <div class="radio">
					        <label>
					          <input type="radio" class="theRadio" name="indexui" value="1" <?php  if(!empty($item['indexui']) && $item['indexui']==1) { ?> checked="checked"<?php  } ?>>
					          选择
					        </label>
					      </div>
					    </span>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">用户地址显示格式</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled34" class="checkbox-inline"><input type="radio" name="user_addr" value="0" id="enabled34"  <?php  if(empty($item['user_addr'])) { ?> checked="true" <?php  } ?> /> 省市</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled35" class="checkbox-inline"><input type="radio" name="user_addr" value="1" id="enabled35" <?php  if(!empty($item['user_addr']) && $item['user_addr']==1) { ?> checked="true" <?php  } ?>  /> 省</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled33" class="checkbox-inline"><input type="radio" name="user_addr" value="2" id="enabled33" <?php  if(!empty($item['user_addr']) && $item['user_addr']==2) { ?> checked="true" <?php  } ?>  /> 市</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <br>
	                    <label>省市效果为广东省广州市，省效果为广东省，市效果为广州市</label>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">详情页用qq和微信诱惑用户充值</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled31" class="checkbox-inline"><input type="radio" name="youhuo_pay" value="0" id="enabled31"  <?php  if(empty($item['youhuo_pay'])) { ?> checked="true" <?php  } ?> /> 关闭</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled32" class="checkbox-inline"><input type="radio" name="youhuo_pay" value="1" id="enabled32" <?php  if(!empty($item['youhuo_pay']) && $item['youhuo_pay']==1) { ?> checked="true" <?php  } ?>  /> 开启</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <br>
	                    <label>是否开启详情页用qq和微信诱惑用户充值</label>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">悬浮信件提示</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled28" class="checkbox-inline"><input type="radio" name="mail_float" value="0" id="enabled28"  <?php  if(empty($item['mail_float'])) { ?> checked="true" <?php  } ?> /> 关闭</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled29" class="checkbox-inline"><input type="radio" name="mail_float" value="1" id="enabled29" <?php  if(!empty($item['mail_float']) && $item['mail_float']==1) { ?> checked="true" <?php  } ?>  /> 开启</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <br>
	                    <label>是否开启悬浮信件提示</label>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">首页和附近页数据查找方式</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled26" class="checkbox-inline"><input type="radio" name="sql_style" value="0" id="enabled26"  <?php  if(empty($item['sql_style'])) { ?> checked="true" <?php  } ?> /> 以真实用户居多</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled27" class="checkbox-inline"><input type="radio" name="sql_style" value="1" id="enabled27" <?php  if(!empty($item['sql_style']) && $item['sql_style']==1) { ?> checked="true" <?php  } ?>  /> 以虚拟用户居多（并首页和附近页经常没有数据）</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <br>
	                    <label><span style="color:#F78AA9;font-weight:bold">当选择以虚拟用户居多时，可能会增加数据运算量，请根据实际情况使用</span></label>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">是否开启虚拟充值话费功能</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled24" class="checkbox-inline"><input type="radio" name="huafei" value="0" id="enabled24"  <?php  if(empty($item['huafei'])) { ?> checked="true" <?php  } ?> /> 关闭</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled25" class="checkbox-inline"><input type="radio" name="huafei" value="1" id="enabled25" <?php  if(!empty($item['huafei']) && $item['huafei']==1) { ?> checked="true" <?php  } ?>  /> 开启</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <br>
	                    <label><span style="color:#F78AA9;font-weight:bold">并没有真正返还话费，只是刺激用户充值</span></label>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">充值话费banner设置</label>
					<div class="col-sm-7 col-xs-12">
						<?php  echo tpl_form_field_image('huafei_thumb', $item['huafei_thumb']);?>
						<span style="color:#F78AA9;">必须得开启虚拟充值话费功能</span></label>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">是否隐藏未设置价格的充值项目</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled18" class="checkbox-inline"><input type="radio" name="cz_style" value="0" id="enabled18"  <?php  if(empty($item['cz_style'])) { ?> checked="true" <?php  } ?> /> 不开启</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled19" class="checkbox-inline"><input type="radio" name="cz_style" value="1" id="enabled19" <?php  if(!empty($item['cz_style']) && $item['cz_style']==1) { ?> checked="true" <?php  } ?>  /> 开启</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <br>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">统计分析中首页是否显示图表</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled22" class="checkbox-inline"><input type="radio" name="stat_style" value="0" id="enabled22"  <?php  if(empty($item['stat_style'])) { ?> checked="true" <?php  } ?> /> 不显示</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled23" class="checkbox-inline"><input type="radio" name="stat_style" value="1" id="enabled23" <?php  if(!empty($item['stat_style']) && $item['stat_style']==1) { ?> checked="true" <?php  } ?>  /> 显示</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <br>
	                    <label><span >当用户平台数据量过大时，可能统计分析首页加载不出来，此时即可关闭图表功能</span></label>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">是否需要注册</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled36" class="checkbox-inline"><input type="radio" name="unzhuce" value="0" id="enabled36"  <?php  if(empty($item['unzhuce'])) { ?> checked="true" <?php  } ?> /> 需要注册</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled37" class="checkbox-inline"><input type="radio" name="unzhuce" value="1" id="enabled37" <?php  if(!empty($item['unzhuce']) && $item['unzhuce']==1) { ?> checked="true" <?php  } ?>  /> 无需注册</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <br>
	                    <label>开启无需注册后，系统直接生成新用户数据，性别为用户微信里设定的性别(仅对微信段有效)</label>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">是否开启回复后回复库功能</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled81" class="checkbox-inline"><input type="radio" name="cz_send_style" value="0" id="enabled81"  <?php  if(empty($item['cz_send_style'])) { ?> checked="true" <?php  } ?> /> 关闭</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled82" class="checkbox-inline"><input type="radio" name="cz_send_style" value="1" id="enabled82" <?php  if(!empty($item['cz_send_style']) && $item['cz_send_style']==1) { ?> checked="true" <?php  } ?>  /> 开启</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <br>
	                    <label style="color:#F78AA9;font-weight:bold">开启该功能后，当用户回复后，再与虚拟用户进行聊天时，即将直接调用回复后回复库的内容，并且只会回复一次或一个组合。这样的好处在于，回复库的内容更多侧重于吸引用户和你聊天，回复后回复库内容更多是规避和你不断的线上聊天（比如：我很少在平台上在线，要不你给下我你的微信吧~），这样一是会比较真实，二也会降低服务器数据库的负担，三也会避免一个虚拟用户用两个回复库里面的语音和客户聊天</label>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">聊天机制</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled86" class="checkbox-inline"><input type="radio" name="chat_style" value="0" id="enabled86"  <?php  if(empty($item['chat_style'])) { ?> checked="true" <?php  } ?> /> 一天和每个用户都可以免费聊天一次</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled87" class="checkbox-inline"><input type="radio" name="chat_style" value="1" id="enabled87" <?php  if(!empty($item['chat_style']) && $item['chat_style']==1) { ?> checked="true" <?php  } ?>  /> 一天和平台所有用户只能免费聊天一次</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <br>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">用户地址显示格式</label>
					<div class="col-sm-7 col-xs-12">
						<label for="enabled94" class="checkbox-inline"><input type="radio" name="dw_style" value="0" id="enabled94"  <?php  if(empty($item['dw_style'])) { ?> checked="true" <?php  } ?> /> IP定位</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <label for="enabled95" class="checkbox-inline"><input type="radio" name="dw_style" value="1" id="enabled95" <?php  if(!empty($item['dw_style']) && $item['dw_style']==1) { ?> checked="true" <?php  } ?>  /> 微信定位</label>
	                    &nbsp;&nbsp;&nbsp;
	                    <br>
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
</div>
<script src="../addons/jy_ppp/js/area_id.js"></script>
<script>

$(".late1").bind("click",function(){
	var index = $(this).index();
	$(".theRadio").eq(index).prop('checked', true);
});

<?php  if(empty($item['province'])) { ?>
	for(var i in area_array){
	    $("#live_province").append('<option value="'+ i+'">'+ area_array[i]+'</option>');
	}
<?php  } else { ?>
	for(var i in area_array){
        if(<?php  echo $item['province'];?>==i)
        {
            $("#live_province").append('<option value="'+ i+'" selected>'+ area_array[i]+'</option>');
        }
        else
        {
            $("#live_province").append('<option value="'+ i+'">'+ area_array[i]+'</option>');
        }
    }
<?php  } ?>

$("#live_city").empty();
<?php  if(empty($item['city'])) { ?>
	<?php  if(empty($item['province'])) { ?>
		<?php  $item['province']=11;?>
	<?php  } ?>
    for(var i in sub_array[<?php  echo $item['province'];?>]){
        $("#live_city").append('<option value="'+ i+'">'+ sub_array[<?php  echo $item['province'];?>][i]+'</option>');
    }
<?php  } else { ?>
    for(var i in sub_array[<?php  echo $item['province'];?>]){
        if(<?php  echo $item['city'];?>==i)
        {
            $("#live_city").append('<option value="'+ i+'" selected>'+ sub_array[<?php  echo $item['province'];?>][i]+'</option>');
        }
        else
        {
            $("#live_city").append('<option value="'+ i+'">'+ sub_array[<?php  echo $item['province'];?>][i]+'</option>');
        }
    }
<?php  } ?>

$("#live_province").bind("change",function(){
    var p=$("#live_province").eq(0).val();
    $("#live_city").empty();
    $("#live_city").append('<option value="0">请选择城市</option>');
    for(var i in sub_array[p]){
        $("#live_city").append('<option value="'+ i+'">'+ sub_array[p][i]+'</option>');
    }
});

require(['jquery', 'util'], function($, u){
	$(function(){
		u.editor($('#rule')[0]);
	});
});

function sms_change()
{
	$("#sms_product").show();
	$("#sms_sign").show();
	$("#sms_username").show();
	$("#sms_pwd").show();
}

function sms_change1()
{
	$("#sms_product").hide();
	$("#sms_sign").hide();
	$("#sms_username").show();
	$("#sms_pwd").show();
}

function sms_change2()
{
	$("#sms_product").hide();
	$("#sms_sign").hide();
	$("#sms_username").hide();
	$("#sms_pwd").hide();
}

$(function () {

	<?php  if($item['sms_type']==1) { ?>
		$("#sms_product").hide();
		$("#sms_sign").hide();
	<?php  } ?>

	<?php  if($item['sms_type']==2) { ?>
		$("#sms_product").hide();
		$("#sms_sign").hide();
		$("#sms_username").hide();
		$("#sms_pwd").hide();
	<?php  } ?>

});
</script><!--[�]ͅ
o�Lw���Tvg9�gǂ���뜖�.V��x���|}��d�������}1xK`{�o)˲�|�w�������w��{�����{��Ė��:y���}X[�J�� J�'�Q�xB�~?�/yg�t܊k�l��*jp>�X�b�d�-��Y���u�hљ��e������mki�DlW�����]��X�f�P�X��_�8W^E��[wsđh�#���ms���#��]y�t���N�Y��N�K��8O�;x���a��X�����>pbFu4~��zH����U�V������g�K#!2b$���z��p��u����p'fK|�\l;�����M���+*ؾ��Ҁh�&W#��s�CK�
��̇�l��U�@e�Ҷ�]��a頉��PsT���DCA�Z:,�Ot!K�
niO�\��d'��4����i �!R:��!�!�!��OݍG[��! �!-->