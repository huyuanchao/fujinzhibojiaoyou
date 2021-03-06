<?php
/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.we7.cc/ for more details.
 */
defined('IN_IA') or exit('Access Denied');

$dos = array('bind_domain', 'del');
$do = in_array($do, $dos) ? $do : 'bind_domain';

$_W['page']['title'] = '域名绑定';

if ($do == 'bind_domain') {
	if (checksubmit('submit')) {
		$bind_domain = trim($_GPC['bind_domain']);
		$domain_array = explode('.', $bind_domain);
		if (count($domain_array) > 3 || count($domain_array) <2) {
			iajax(-1, '只支持一级域名和二级域名！');
		}
		$data = array('domain' => $bind_domain);
		uni_setting_save('bind_domain', iserializer($data));
		iajax(0, '更新成功！', referer());
	}
	template('profile/bind-domain');
}

if ($do == 'del') {
	uni_setting_save('bind_domain', array());
	itoast('删除成功！', referer(), 'success');
}
