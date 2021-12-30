<?php

require_once dirname(__FILE__).'/core/PtSdk.php';
require_once dirname(__FILE__).'/core/ptpay_config.php';

$request_parameter = get_notify_parameter();

//实例化SDK
$pay = new PtSdk($ptpay_config);

$payId = build_order_no();
$fee = $request_parameter['price'];
//创建订单需要构建的参数
$parameter = array(
    //支付方式 1.是微信，2是支付宝
    "type" => $request_parameter['type'],
    //商户订单号
    "payId" => $payId,
    //自定义参数
    "param" => "大秀直播",
    //金额
    "price" => $fee,

);

if($fee<0)
{
    echo "金额不能为0";
}

//$conn = new mysqli('127.0.0.1', 'jiaoyou123', 'jiaoyou123', 'jiaoyou123');
//
//if ($conn->connect_error) {
//    die("连接失败: " . $conn->connect_error);
//}
//
//$sql1 = "INSERT INTO ims_jy_ppp_pay_log (weid,mid,fee,log,status,paytime,createtime)
// values($payId,$userid,$fee,0,0,0,$time)";
//
//if ($conn->query($sql1) === TRUE) {
//

//} else {
//    echo "Error: " . $sql1 . "<br>" . $conn->error;
//}

//
// $price = $price * 1;//1表示比率为1:1  100则表示1元可充值100分;
// $sql = "update `" . DB_USERTABLE . "` set credit=credit+{$price} where id={$logs['mid']}";

//print_r($parameter);
//创建订单,会自动跳转页面

$pay->createOrder($parameter);


