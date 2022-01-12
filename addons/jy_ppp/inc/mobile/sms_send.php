<?php
header("Content-type:text/html; charset=UTF-8");
/* *
 * 功能：云信发送信息DEMO
 * 版本：1.3
 * 日期：2017-04-12
 * 说明：
 * 以下代码只是为了方便客户测试而提供的样例代码，客户可以根据自己网站的需要，按照技术文档自行编写,并非一定要使用该代码。
 * 该代码仅供学习和研究云信接口使用，只是提供一个参考。
 */
require_once 'YunxinSmsHelper/YunxinSmsApi.php';
$yxapi  = new YunxinSmsApi();
$code = mt_rand(100000,999999);
$msg='您的验证码是'.$code;
$mobile='要发送的电话号码，多个用,间隔';
$result = $yxapi->sendSMS($mobile, $msg );
echo $result.'<br>';
$result=json_decode($result);
if ($result->data[0]->code===0) {
	echo '发送成功！';
}else{
	echo '发送失败,错误码：'.$result->data[0]->code.','.$result->data[0]->msg;
}
?>