<?php
error_reporting(0); 
include("../config/conn.php");
include("../config/common.php");
session_start();
if(!isset($_SESSION['adminname'])){
echo "<script>alert('����������ʧЧ�����µ�¼!')</script><script>location.href='index.php'</script>";
exit;
}
$action=ubo($_GET[action]);
//ɾ����װĿ¼
if($action=="delinstall"){
$filename="../install";
deldir($filename);
echo msglayerurl("��װĿ¼ɾ���ɹ�",8,"home.php");
}
//����ͼ��
for($i = 0;$i <24;$i++){
$tmp = 'sj';
$tmp .= $i;
$$tmp = "0";
$sql = sprintf("select sum(money) from dingdan where    shijian>='".date('Y-m-d').' '."%02d:00:00"."' and shijian<='".date('Y-m-d').' '."%02d:59:59"."'",$i,$i);
if ($res=mysql_query($sql)){
list($$tmp)=mysql_fetch_row($res);
$$tmp = empty($$tmp) ? "0" : $$tmp;
mysql_free_result($res);
}
}
for($i = 0;$i <24;$i++){
$tmp = 'dj';
$tmp .= $i;
$$tmp = "0";
$sql = sprintf("select sum(money) from dingdan where   shijian>='".date('Y-m-d',strtotime('-1 day')).' '."%02d:00:00"."' and shijian<='".date('Y-m-d',strtotime('-1 day')).' '."%02d:59:59"."'",$i,$i);
if ($res=mysql_query($sql)){
list($$tmp)=mysql_fetch_row($res);
$$tmp = empty($$tmp) ? "0" : $$tmp;
mysql_free_result($res);
}
}
?>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="gb2312">
<title>��̨����ϵͳ  - 8ye.net ��ү��Դ��</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="css/layui.css" media="all">
<link rel="stylesheet" href="css/font-awesome.min.css">
<!--CSS����-->
<link rel="stylesheet" href="css/admin.css">
<!--[if lt IE 9]>
<script src="js/html5shiv.min.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->
<SCRIPT language=javascript src="../app/layer/layer.js"></SCRIPT>
<script type="text/javascript" src="Chart.min.js"></script>
<script>
var randomScalingFactor = function(){ return Math.round(Math.random()*100)};
var lineChartData = {
labels : ["0��","1��","2��","3��","4��","5��","6��","7��","8��","9��","10��","11��","12��","13��","14��","15��","16��","17��","18��","19��","20��","21��","22��","23��"],
datasets : [
{
label: "My First dataset",
fillColor : "rgba(51,204,113,0.1)",
strokeColor : "rgba(51,204,113,1)",
pointColor : "rgba(51,204,113,1)",
pointStrokeColor : "#fff",
pointHighlightFill : "#fff",
pointHighlightStroke : "rgba(220,220,220,1)",
data : ["<?php echo round($sj0,2)?>","<?php echo round($sj1,2)?>","<?php echo round($sj2,2)?>","<?php echo round($sj3,2)?>","<?php echo round($sj4,2)?>","<?php echo round($sj5,2)?>","<?php echo round($sj6,2)?>","<?php echo round($sj7,2)?>","<?php echo round($sj8,2)?>","<?php echo round($sj9,2)?>","<?php echo round($sj10,2)?>","<?php echo round($sj11,2)?>","<?php echo round($sj12,2)?>","<?php echo round($sj13,2)?>","<?php echo round($sj14,2)?>","<?php echo round($sj15,2)?>","<?php echo round($sj16,2)?>","<?php echo round($sj17,2)?>","<?php echo round($sj18,2)?>","<?php echo round($sj19,2)?>","<?php echo round($sj20,2)?>","<?php echo round($sj21,2)?>","<?php echo round($sj22,2)?>","<?php echo round($sj23,2)?>"]
}
,
{
label: "My Second dataset",
fillColor : "rgba(138,140,115,0.2)",
strokeColor : "rgba(238,153,34,1)",
pointColor : "rgba(238,153,34,1)",
pointStrokeColor : "#fff",
pointHighlightFill : "#fff",
pointHighlightStroke : "rgba(151,187,205,1)",
data : ["<?php echo round($dj0,2)?>","<?php echo round($dj1,2)?>","<?php echo round($dj2,2)?>","<?php echo round($dj3,2)?>","<?php echo round($dj4,2)?>","<?php echo round($dj5,2)?>","<?php echo round($dj6,2)?>","<?php echo round($dj7,2)?>","<?php echo round($dj8,2)?>","<?php echo round($dj9,2)?>","<?php echo round($dj10,2)?>","<?php echo round($dj11,2)?>","<?php echo round($dj12,2)?>","<?php echo round($dj13,2)?>","<?php echo round($dj14,2)?>","<?php echo round($dj15,2)?>","<?php echo round($dj16,2)?>","<?php echo round($dj17,2)?>","<?php echo round($dj18,2)?>","<?php echo round($dj19,2)?>","<?php echo round($dj20,2)?>","<?php echo round($dj21,2)?>","<?php echo round($dj22,2)?>","<?php echo round($dj23,2)?>"]
}
]
}
window.onload = function(){
var ctx = document.getElementById("canvas").getContext("2d");
window.myLine = new Chart(ctx).Line(lineChartData, {
responsive: true
});
}
</script>
</head>
<body>
<div class="layui-layout layui-layout-admin">
<?php include_once('header.php'); ?> 
<?php include_once('left.php'); ?> 
<!--����-->
<div class="layui-body">
<!--tab��ǩ-->
<div class="layui-tab layui-tab-brief">
<?php 
$installfile='../install';
if(file_exists($installfile)){
echo '<div class="warning">����û��ɾ�� install �ļ��У����ڰ�ȫ�Ŀ��ǣ����ǽ�����ɾ�� install �ļ���/������ install �ļ��С�<a onClick="return window.confirm(&quot;������ȷ����������������ȡ����ֹͣ��&quot;);" href="?action=delinstall" target="msgubotj">
����ɾ��</a></div>';
}else{
}
?>

<div  style="width:99%">
<p class="charttitle">����ͬ������Ա�
<span style="display:inline-block;margin-right:5px;width:16px;height:16px;background-color:#33CC71"></span>���ն���
<span style="display:inline-block;margin-right:5px;width:16px;height:16px;background-color:#EE9922"></span>���ն���
</p>
<canvas id="canvas" height="150" width="500" ></canvas>
</div>
<ul class="layui-tab-title">
<li class="layui-this">��������Ϣ</li>
</ul>
<div class="layui-tab-content">
<div class="layui-tab-item layui-show">
<table class="layui-table">
<tr>
<td style="width: 400px;">PHP �汾</td>
<td><?php echo phpversion();?></td>
</tr>
<tr>
<td>MySQL �汾</td>
<td><?php  echo mysql_get_server_info();?></td>
</tr>
<tr>
<td>����������ϵͳ</td>
<td><?PHP echo PHP_OS; ?></td>
</tr>
<tr>
<td>�ļ��ϴ�����</td>
<td><?PHP echo get_cfg_var ("upload_max_filesize")?get_cfg_var ("upload_max_filesize"):"�������ϴ�����"; ?></td>
</tr>
<tr>
<td>ZEND�汾</td>
<td><?PHP echo zend_version(); ?></td>
</tr>
<tr>
<td>Web ������</td>
<td><?PHP echo $_SERVER ['SERVER_SOFTWARE']; ?></td>
</tr>
</table>
</div>
</div>
</div>
</div>
<?php include_once('foot.php'); ?> 
</body>
</html>