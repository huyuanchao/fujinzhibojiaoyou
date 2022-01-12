<?php
//载入ucpass类
require_once('lib/Ucpaas.class.php');

//初始化必填
//填写在开发者控制台首页上的Account Sid
$options['accountsid']='cdbf5a95edb488778780ab2fc2b2059e';
//填写在开发者控制台首页上的Auth Token
$options['token']='f4ab0ee4d43561b04f8dfa32bb71ea59';

//初始化 $options必填
$ucpass = new Ucpaas($options);