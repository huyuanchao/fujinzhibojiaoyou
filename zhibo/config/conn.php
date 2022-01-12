<?php

////////////////////这里信息根据自己的实际情况可以修改////////////////////////////
$localhost = "127.0.0.1:3306";       //服务器地址，一般为localhost
$root = "huyuanchao";                 //服务器MYSQL登陆用户名
$password = "Hyc@5633993";                 //服务器的MYsQL登陆密码
$database = "daxiu";      //你使用的数据库

///////////////以上可以修改部份/////////////////////////////////////////////////
////////////////////////////////////////////////////以下内容,非专业人员请不要修改，避免错误；
//$conn = mysql_connect("$localhost","$root","$password") or die ("database error".mysql_error());
//mysql_select_db("$database",$conn) or die ("database error".mysql_error());

$conn = mysqli_connect($localhost,$root,$password,$database) or die ("Unable to connect");

if(!$conn)
{
    die('Could not connect:'.mysql_error());
}

echo $_SERVER['HTTP_ACCEPT_CHARSET'];
phpinfo();
//mysqli_select_db($database,$conn);
mysqli_query("set names utf8");
/*
$sql = "select * from admin;";
$res = mysqli_query($conn,$sql);
//$res=$conn->query($sql);

if(!$res)
{
	//die("could get the res:\n" . mysql_error());
}

while($row = mysqli_fetch_assoc($res)) {
	 print_r($row);
}
*/
//mysqli_query("set names gbk");
//mysql_query("SET NAMES UTF8"); //使用GBK中文件编码，防止出错
////////////////////////////////////////////////////////////////////////////////////////////////////////

?>
