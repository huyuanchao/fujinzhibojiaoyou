<?php

////////////////////������Ϣ�����Լ���ʵ����������޸�////////////////////////////
$localhost = "127.0.0.1:3306";       //��������ַ��һ��Ϊlocalhost
$root = "huyuanchao";                 //������MYSQL��½�û���
$password = "Hyc@5633993";                 //��������MYsQL��½����
$database = "daxiu";      //��ʹ�õ����ݿ�

///////////////���Ͽ����޸Ĳ���/////////////////////////////////////////////////
////////////////////////////////////////////////////��������,��רҵ��Ա�벻Ҫ�޸ģ��������
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
//mysql_query("SET NAMES UTF8"); //ʹ��GBK���ļ����룬��ֹ����
////////////////////////////////////////////////////////////////////////////////////////////////////////

?>
