<?php
global $_W,$_GPC;

		if ( 1==1 ) {
			$weixin=0;

			$weid=$_GPC['i'];

		}
		else
		{
			$weixin=1;

			$weid=$_W['uniacid'];
		}

		$sitem=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_setting')." WHERE weid=".$weid);
		$id=$_GPC['id'];
		$item = pdo_fetch("SELECT * FROM " . tablename('jy_ppp_safe') . " WHERE weid = '{$_W['weid']}' AND id=".$id);
		$list = pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_safe')." WHERE weid=".$weid." AND parentid=".$id." AND enabled=1 ORDER BY displayorder DESC,id ASC");
		if(empty($list))
		{
			$parent=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_safe')." WHERE weid=".$weid." AND id=".$item['parentid']." AND enabled=1");
			$list = pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_safe')." WHERE weid=".$weid." AND parentid=".$item['parentid']." AND enabled=1 ORDER BY displayorder DESC,id ASC");
			include $this->template('safe_d');
		}
		else
		{
			include $this->template('safe_l');
		}