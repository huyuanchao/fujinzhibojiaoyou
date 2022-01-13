<?php
header("Accept:application/json;Content-Type:application/json;charset=utf-8");

class YunxinSmsApi {
	
	var $yunxin_config=array();

	function __construct(){

		//云信接口URL, 请求地址请参考云信互联云通讯自助通平台查看或者询问您的商务负责人获取
		$this->yunxin_config['api_send_url'] = 'https://u.smsyun.cc/sms-partner/access/{b05qx8}/sendsms';

		//云信账号 替换成你自己的账号

		 $this->yunxin_config['api_account']	= 'b05qx8';

		//云信密码 替换成你自己的密码
		 $this->yunxin_config['api_password']	= md5('12345678');
	}
	/**
	 * 发送短信
	 *
	 * @param string $mobile 		手机号码
	 * @param string $msg 			短信内容
	 * @param string $needstatus 	是否需要状态报告
	 */
	public function sendSMS( $mobile, $msg ) {
		//云信接口参数
		$postArr = array (
			'smstype' =>'4',//短信发送发送
			'clientid'  =>  $this->yunxin_config['api_account'],
			'password' => $this->yunxin_config['api_password'],
			'mobile' => $mobile,
			'content' => $msg ,
			'sendtime'=>date('Y-m-d H:i:s'),
			'extend'=>'00',
			'uid'=>'00'
        );
		$result = $this->curlPost( $this->yunxin_config['api_send_url'] , $postArr);
		return $result;
	}

	/**
	 * 通过CURL发送HTTP请求
	 * @param string $url  //请求URL
	 * @param array $postFields //请求参数 
	 * @return mixed
	 */
	private function curlPost($url,$postFields){
		
		$postFields = json_encode($postFields);
		echo $postFields.'<br>';
		//echo $postFields;
		$ch = curl_init ();
		curl_setopt( $ch, CURLOPT_URL, $url ); 
		curl_setopt( $ch, CURLOPT_HTTPHEADER, array(
			'Accept-Encoding: identity',
			'Content-Length: ' . strlen($postFields),
			'Accept:application/json',
			'Content-Type: application/json; charset=utf-8'   //json版本需要填写  Content-Type: application/json;
			)
		);

		//curl_setopt($ch, CURLOPT_IPRESOLVE, CURL_IPRESOLVE_V4); //若果报错 name lookup timed out 报错时添加这一行代码
		curl_setopt( $ch, CURLOPT_RETURNTRANSFER, 1 );
		curl_setopt( $ch, CURLOPT_POST, 1 );
         	curl_setopt( $ch, CURLOPT_POSTFIELDS, $postFields);
       		curl_setopt( $ch, CURLOPT_TIMEOUT,60); 
        	curl_setopt( $ch, CURLOPT_SSL_VERIFYHOST, 0);
        	curl_setopt( $ch, CURLOPT_SSL_VERIFYPEER, 0);
		$ret = curl_exec ( $ch );

        if (false == $ret) {
            $result = curl_error(  $ch);
        } else {
            $rsp = curl_getinfo( $ch, CURLINFO_HTTP_CODE);

            if (200 != $rsp) {
                $result = "请求状态 ". $rsp . " " . curl_error($ch);
            } else {
                $result = $ret;
            }
        }
		return $result;
	}
	
}