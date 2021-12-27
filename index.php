<?php
/*
function caculateAKSN($ak, $sk, $url, $querystring_arrays, $method = 'GET')
{
    if ($method === 'POST'){
        ksort($querystring_arrays);
    }
    $querystring = http_build_query($querystring_arrays);
    return md5(urlencode($url.'?'.$querystring.$sk));
}

function json_decode($json)
{
    $comment = false;
    $out = '$x=';

    for ($i=0; $i<strlen($json); $i++)
    {
        if(!$comment)
        {
            if (($json[$i] == '{') || ($json[$i] == '[')) $out .= ' array(';
            else if (($json[$i] == '}') || ($json[$i] == ']')) $out .= ')';
            else if ($json[$i] == ':') $out .= '=>';
            else $out .= $json[$i];
        }
        else $out .= $json[$i];

        if ($json[$i] == '"' && $json[($i-1)]!="\\") $comment = !$comment;
    }

    eval($out . ';');
    return $x;
}*/
/*
function json_encode($input)
{
    // 从 PHP 5.4.0 起, 增加了这个选项.
    if (defined('JSON_UNESCAPED_UNICODE'))
    {
        return json_encode($input, JSON_UNESCAPED_UNICODE);
    }

    if(is_string($input))
    {
        $text = $input;
        $text = str_replace('\\', '\\\\', $text);
        $text = str_replace(
        array("\r", "\n", "\t", "\""),
        array('\r', '\n', '\t', '\\"'),
        $text);
        return '"' . $text . '"';
    }
    else if(is_array($input) || is_object($input))
    {
        $arr = array();
        $is_obj = is_object($input) || (array_keys($input) !== range(0, count($input) - 1));
        foreach ($input as $k => $v)
        {
            if($v == null)
            {
                 $v = 'null';
            }
            if ($is_obj)
            {
                $arr[] = self::json_encode($k) . ':' . self::json_encode($v);
            }else
            {
                $arr[] = self::json_encode($v);
            }
        }

        if ($is_obj)
        {
            return '{' . join(',', $arr) . '}';
        }else
        {
            return '[' . join(',', $arr) . ']';
        }
    }else
    {
         return $input . '';
    }
}*/
/*
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
                        //$results=file_get_contents($url);
                        $results=file_get_contents($url);
                        $json = '{"a":1,"b":2,"c":3,"d":4,"e":5}';
                        echo "json:".$json;

                        var_dump(json_decode($json));

                        $ipinfo=json_decode($results);
                        var_dump($ipinfo);
                        echo $ipinfo["message"];
                        echo $ipinfo["result"];
                        echo $ipinfo["result"]["ip"];
                        echo $ipinfo["result"]["location"]["lat"]."---".$ipinfo["result"]["location"]["lng"];

                        echo $ipinfo["result"]["ad_info"]["nation"].$ipinfo["result"]["ad_info"]["province"].$ipinfo["result"]["ad_info"]["city"];
*/
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
	//.speed_2015114{ background:addons/jy_ppp/images/1952_new.jpg center top no-repeat; background-size:100%;}
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
