<?php
error_reporting(0); 
include("config/common.php");
include("config/conn.php");
//╤ах║мЬу╬еДжц
$type="where id='1'";
$wzpeizhi=queryall(wzpeizhi,$type);
$gb=$wzpeizhi[gb];
$tz=$wzpeizhi[tz];
$pcurl=$wzpeizhi[pcurl];
if($gb==1){
echo $wzpeizhi[tip];
exit;
}
$agent = $_SERVER['HTTP_USER_AGENT'];
if(strpos($agent,"NetFront") || strpos($agent,"iPhone") || strpos($agent,"MIDP-2.0") || strpos($agent,"Opera Mini") || strpos($agent,"UCWEB") || strpos($agent,"Android") || strpos($agent,"Windows CE") || strpos($agent,"SymbianOS")){ 
}else{
if($wzpeizhi[pc]==1){
echo $wzpeizhi[pctip];
exit;
}else{
header("location:$pcurl");
exit;
}
}