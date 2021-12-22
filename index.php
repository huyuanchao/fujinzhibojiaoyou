<?php
$IPaddress='';
echo 'ok';

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

						echo $ip;

						$ip_arr=explode(',', $ip);
						$ip=$ip_arr[0];
						$url="http://ip.taobao.com/service/getIpInfo.php?ip=".$ip;
						$ipinfo=json_decode(file_get_contents($url));
						echo $ipinfo;
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
