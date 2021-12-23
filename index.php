<?php
function caculateAKSN($ak, $sk, $url, $querystring_arrays, $method = 'GET')
{
    if ($method === 'POST'){
        ksort($querystring_arrays);
    }
    $querystring = http_build_query($querystring_arrays);
    return md5(urlencode($url.'?'.$querystring.$sk));
}

$IPaddress='';
$baidu_ak="8UkanKWlTKOyUqHxiWyu9Smi8o3M43Bk";
$baidu_sk="AOvWWBcMl5Xk5LHjun4L0Si3qT1XqGyU";
$tencent_key="I62BZ-JGM6P-QI2DU-LWFWJ-CZ3QF-6UFT5";


					    if (isset($_SERVER)){
					        if (isset($_SERVER["HTTP_X_FORWARDED_FOR"])){
					            $IPaddress = $_SERVER["HTTP_X_FORWARDED_FOR"];
					        } else if (isset($_SERVER["HTTP_CLIENT_IP"])) {
					            $IPaddress = $_SERVER["HTTP_CLIENT_IP"];
					        } else {
					            $IPaddress = $_SERVER["REMOTE_ADDR"];
					        }
					    } else {
					        if (getenv("HTTP_X_FORWARDED_FOR")){
					            $IPaddress = getenv("HTTP_X_FORWARDED_FOR");
					        } else if (getenv("HTTP_CLIENT_IP")) {
					            $IPaddress = getenv("HTTP_CLIENT_IP");
					        } else {
					            $IPaddress = getenv("REMOTE_ADDR");
					        }
					    }
						$ip = $IPaddress;

						$ip_arr=explode(',', $ip);
						$ip=$ip_arr[0];

						//$url="http://ip.taobao.com/service/getIpInfo.php?ip=106.38.55.194";//.$ip;
						//$url="https://api.map.baidu.com/ip?ak=".$baidu_ak."&ip=".$ip."&coor=bd09ll";
						$url="https://apis.map.qq.com/ws/location/v1/ip?ip=".$ip."&key=".$tencent_key;
                        echo file_get_contents($url);
                        $ipinfo=json_decode(file_get_contents($url),true);

                        echo $ipinfo->message;
						//echo $ipinfo;
						//echo 'end';
						exit;
?>
<!doctype html>
<html>
<head>
<link href="addons/jy_ppp/css/speed_2015114.css" rel="stylesheet" type="text/css" />
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta content="black" name="apple-mobile-web-app-status-bar-style" />
<meta content="telephone=no" name="format-detection" />
<title>靠谱婚恋交友</title>
</head>
<style type="text/css">

	.speed_2015114{ background:url(addons/jy_ppp/images/1592.jpg) center top no-repeat; background-size:100%;}


</style>
<body class="speed_2015114_body">
<div class="speed_2015114">

</div>

<script type="text/javascript">
setTimeout(function(){
window.location.href="app/index.php?i=1&c=entry&do=login&m=jy_ppp";
},3000);
</script>

</html>
