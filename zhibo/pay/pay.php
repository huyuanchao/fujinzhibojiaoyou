



<?php
error_reporting(0);
include_once("config.php"); 
$agent = $_SERVER['HTTP_USER_AGENT'];
$ubomoney=$_POST["ubomoney"];//�ύ��֧�����
$ubopid=$_POST["ubopid"];//�ύ������
$ubouid=$_POST["ubouid"];//�ύ������
$userid=$_POST["userid"];//�ύ���û�ID
$ubodes="vip";//�ύ���û��ȼ�
$ubotzurl=$ubotzurl;//֪ͨ��Ϣ
$ubobackurl=$ubobackurl;//��ת��ַ
if($ubopid==null){$ubopid=$uboid;}
if($ubouid==null){$ubouid=$uboid;}
$ubodingdan=date("YmdHis");//������
$ubostr=$uboid.$ubodingdan.$ubomoney.$ubotzurl.$ubokey;
$ubosign = md5($ubostr);//ǩ������ 32λСд����ϼ�����֤��
if (strpos($agent, 'MicroMessenger') === false) {
$pay="alipaywap";
}else{
$pay="gzh";
}
$post= array(
'uboid' =>$uboid,
'ubodingdan' =>$ubodingdan,
'ubopid' =>$ubopid,
'ubouid' =>$ubouid,
'ubodes' =>$ubodes,
'ubobz' =>$userid,
'ubomoney' =>$ubomoney,
'ubotzurl' =>$ubotzurl,
'ubobackurl' =>$ubobackurl,
'ubosign' =>$ubosign,
'pay' =>$pay
);
$postch = curl_init();
curl_setopt($postch, CURLOPT_POST, 1);
curl_setopt($postch, CURLOPT_URL,$url);
curl_setopt($postch, CURLOPT_POSTFIELDS, $post);
ob_start();
curl_exec($postch);
$con = ob_get_contents() ;
ob_end_clean();
$paysj=json_decode($con, true); 
$tzurl=$paysj[payUrl];
$json_data = array ('paylink'=>$tzurl);   
echo json_encode($json_data);
?>








<title>JS����ʱ��ҳ�Զ���ת����  - 8ye.net ��ү��Դ��</title>
<script language=��JavaScript�� type=��text/javascript��>
function delayURL(url) {
var delay = document.getElementById(��time��).innerHTML;
if(delay > 0) {
delay�C;
document.getElementById(��time��).innerHTML = delay;
} else {
window.top.location.href = url;
}
setTimeout(��delayURL(���� + url + ����)��, 1000);
}
</script>
<span id=��time�� style=��background: #00BFFF��>3</span>���Ӻ��Զ���ת���������ת���������������<a href=��http://www.baidu.com��>�ҵİٶ�</a>
<script type=��text/javascript��>
delayURL(��http://www.baidu.com��);
</script>