<?php
global $_W,$_GPC;

		if ( 1==1 ) {
			$weixin=0;

			$weid=$_GPC['i'];
			$sex=$_GPC['sex'];

		}
		else
		{
			$weixin=1;

			$weid=$_W['uniacid'];

			//checkAuth();
			$from_user=$_SESSION['jy_openid'];
			if(empty($from_user))
			{
				echo "<script>
					window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'zhuce2','id'=>$_GPC['sex'],'rid'=>$_GPC['rid']))."';
				</script>";
			}
			else
			{
				$member_temp=pdo_fetch("SELECT a.uid,a.nickname,a.follow,b.avatar FROM ".tablename('mc_mapping_fans')." as a left join ".tablename('mc_members')." as b on a.uid=b.uid WHERE a.openid='$from_user' AND a.uniacid=".$weid);
				if(empty($member_temp['nickname']) || $member_temp['uid']==0)
				{
					unset($uid);
				}
				else
				{
					$uid=$member_temp['uid'];
					$nickname=$member_temp['nickname'];
					$avatar=$member_temp['avatar'];
					unset($member_temp);
				}
				if(empty($uid))
				{
					echo "<script>
						window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'zhuce2','id'=>$_GPC['sex'],'rid'=>$_GPC['rid']))."';
					</script>";
				}
				else
				{
					if(empty($_GPC['sex']))
					{
						$sex=$_GPC['id'];
					}
					else
					{
						$sex=$_GPC['sex'];
					}
				}
			}
		}

		$sitem=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_setting')." WHERE weid=".$weid);
		if(empty($sitem['kjmsg_jiange']))
		{
			$sitem['kjmsg_jiange']=60;
		}
		if(empty($sitem['kjmsg_jiange2']))
		{
			$sitem['kjmsg_jiange2']=80;
		}
		if($sitem['kjmsg_jiange']==$sitem['kjmsg_jiange2'])
		{
			$kjmsg_jiange2=$sitem['kjmsg_jiange'];
		}

		$op=$_GPC['op'];
		if($op=='add')
		{
			$mobile=$_GPC['mobile'];
			$password=$_GPC['password'];
			$member=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND mobile='".$mobile."'");
			if(!empty($sex))
			{
				if(empty($member))
				{
					$nicheng_tou=array('快乐的','冷静的','醉熏的','潇洒的','糊涂的','积极的','冷酷的','深情的','粗暴的','温柔的','可爱的','愉快的','义气的','认真的','威武的','帅气的','传统的','潇洒的','漂亮的','自然的','专一的','听话的','昏睡的','狂野的','等待的','搞怪的','幽默的','魁梧的','活泼的','开心的','高兴的','超帅的','留胡子的','坦率的','直率的','轻松的','痴情的','完美的','精明的','无聊的','有魅力的','丰富的','繁荣的','饱满的','炙热的','暴躁的','碧蓝的','俊逸的','英勇的','健忘的','故意的','无心的','土豪的','朴实的','兴奋的','幸福的','淡定的','不安的','阔达的','孤独的','独特的','疯狂的','时尚的','落后的','风趣的','忧伤的','大胆的','爱笑的','矮小的','健康的','合适的','玩命的','沉默的','斯文的','香蕉','苹果','鲤鱼','鳗鱼','任性的','细心的','粗心的','大意的','甜甜的','酷酷的','健壮的','英俊的','霸气的','阳光的','默默的','大力的','孝顺的','忧虑的','着急的','紧张的','善良的','凶狠的','害怕的','重要的','危机的','欢喜的','欣慰的','满意的','跳跃的','诚心的','称心的','如意的','怡然的','娇气的','无奈的','无语的','激动的','愤怒的','美好的','感动的','激情的','激昂的','震动的','虚拟的','超级的','寒冷的','精明的','明理的','犹豫的','忧郁的','寂寞的','奋斗的','勤奋的','现代的','过时的','稳重的','热情的','含蓄的','开放的','无辜的','多情的','纯真的','拉长的','热心的','从容的','体贴的','风中的','曾经的','追寻的','儒雅的','优雅的','开朗的','外向的','内向的','清爽的','文艺的','长情的','平常的','单身的','伶俐的','高大的','懦弱的','柔弱的','爱笑的','乐观的','耍酷的','酷炫的','神勇的','年轻的','唠叨的','瘦瘦的','无情的','包容的','顺心的','畅快的','舒适的','靓丽的','负责的','背后的','简单的','谦让的','彩色的','缥缈的','欢呼的','生动的','复杂的','慈祥的','仁爱的','魔幻的','虚幻的','淡然的','受伤的','雪白的','高高的','糟糕的','顺利的','闪闪的','羞涩的','缓慢的','迅速的','优秀的','聪明的','含糊的','俏皮的','淡淡的','坚强的','平淡的','欣喜的','能干的','灵巧的','友好的','机智的','机灵的','正直的','谨慎的','俭朴的','殷勤的','虚心的','辛勤的','自觉的','无私的','无限的','踏实的','老实的','现实的','可靠的','务实的','拼搏的','个性的','粗犷的','活力的','成就的','勤劳的','单纯的','落寞的','朴素的','悲凉的','忧心的','洁净的','清秀的','自由的','小巧的','单薄的','贪玩的','刻苦的','干净的','壮观的','和谐的','文静的','调皮的','害羞的','安详的','自信的','端庄的','坚定的','美满的','舒心的','温暖的','专注的','勤恳的','美丽的','腼腆的','优美的','甜美的','甜蜜的','整齐的','动人的','典雅的','尊敬的','舒服的','妩媚的','秀丽的','喜悦的','甜美的','彪壮的','强健的','大方的','俊秀的','聪慧的','迷人的','陶醉的','悦耳的','动听的','明亮的','结实的','魁梧的','标致的','清脆的','敏感的','光亮的','大气的','老迟到的','知性的','冷傲的','呆萌的','野性的','隐形的','笑点低的','微笑的','笨笨的','难过的','沉静的','火星上的','失眠的','安静的','纯情的','要减肥的','迷路的','烂漫的','哭泣的','贤惠的','苗条的','温婉的','发嗲的','会撒娇的','贪玩的','执着的','眯眯眼的','花痴的','想人陪的','眼睛大的','高贵的','傲娇的','心灵美的','爱撒娇的','细腻的','天真的','怕黑的','感性的','飘逸的','怕孤独的','忐忑的','高挑的','傻傻的','冷艳的','爱听歌的','还单身的','怕孤单的','懵懂的');
					$nicheng_wei=array('嚓茶','凉面','便当','毛豆','花生','可乐','灯泡','哈密瓜','野狼','背包','眼神','缘分','雪碧','人生','牛排','蚂蚁','飞鸟','灰狼','斑马','汉堡','悟空','巨人','绿茶','自行车','保温杯','大碗','墨镜','魔镜','煎饼','月饼','月亮','星星','芝麻','啤酒','玫瑰','大叔','小伙','哈密瓜，数据线','太阳','树叶','芹菜','黄蜂','蜜粉','蜜蜂','信封','西装','外套','裙子','大象','猫咪','母鸡','路灯','蓝天','白云','星月','彩虹','微笑','摩托','板栗','高山','大地','大树','电灯胆','砖头','楼房','水池','鸡翅','蜻蜓','红牛','咖啡','机器猫','枕头','大船','诺言','钢笔','刺猬','天空','飞机','大炮','冬天','洋葱','春天','夏天','秋天','冬日','航空','毛衣','豌豆','黑米','玉米','眼睛','老鼠','白羊','帅哥','美女','季节','鲜花','服饰','裙子','白开水','秀发','大山','火车','汽车','歌曲','舞蹈','老师','导师','方盒','大米','麦片','水杯','水壶','手套','鞋子','自行车','鼠标','手机','电脑','书本','奇迹','身影','香烟','夕阳','台灯','宝贝','未来','皮带','钥匙','心锁','故事','花瓣','滑板','画笔','画板','学姐','店员','电源','饼干','宝马','过客','大白','时光','石头','钻石','河马','犀牛','西牛','绿草','抽屉','柜子','往事','寒风','路人','橘子','耳机','鸵鸟','朋友','苗条','铅笔','钢笔','硬币','热狗','大侠','御姐','萝莉','毛巾','期待','盼望','白昼','黑夜','大门','黑裤','钢铁侠','哑铃','板凳','枫叶','荷花','乌龟','仙人掌','衬衫','大神','草丛','早晨','心情','茉莉','流沙','蜗牛','战斗机','冥王星','猎豹','棒球','篮球','乐曲','电话','网络','世界','中心','鱼','鸡','狗','老虎','鸭子','雨','羽毛','翅膀','外套','火','丝袜','书包','钢笔','冷风','八宝粥','烤鸡','大雁','音响','招牌','胡萝卜','冰棍','帽子','菠萝','蛋挞','香水','泥猴桃','吐司','溪流','黄豆','樱桃','小鸽子','小蝴蝶','爆米花','花卷','小鸭子','小海豚','日记本','小熊猫','小懒猪','小懒虫','荔枝','镜子','曲奇','金针菇','小松鼠','小虾米','酒窝','紫菜','金鱼','柚子','果汁','百褶裙','项链','帆布鞋','火龙果','奇异果','煎蛋','唇彩','小土豆','高跟鞋','戒指','雪糕','睫毛','铃铛','手链','香氛','红酒','月光','酸奶','银耳汤','咖啡豆','小蜜蜂','小蚂蚁','蜡烛','棉花糖','向日葵','水蜜桃','小蝴蝶','小刺猬','小丸子','指甲油','康乃馨','糖豆','薯片','口红','超短裙','乌冬面','冰淇淋','棒棒糖','长颈鹿','豆芽','发箍','发卡','发夹','发带','铃铛','小馒头','小笼包','小甜瓜','冬瓜','香菇','小兔子','含羞草','短靴','睫毛膏','小蘑菇','跳跳糖','小白菜','草莓','柠檬','月饼','百合','纸鹤','小天鹅','云朵','芒果','面包','海燕','小猫咪','龙猫','唇膏','鞋垫','羊','黑猫','白猫','万宝路','金毛','山水','音响');
					$tou_num=rand(0,331);
					$wei_num=rand(0,325);
					$nicheng=$nicheng_tou[$tou_num].$nicheng_wei[$wei_num];

					if($sitem['address']==1)
					{
						$province = $sitem['province'];
						if(empty($province))
						{
							$province=11;
						}
						$city = $sitem['city'];
						if(empty($city))
						{
							$city = $province."01";
						}
					}
					else
					{
						$IPaddress='';
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
						$url="http://ip.taobao.com/service/getIpInfo.php?ip=".$ip;
						$ipinfo=json_decode(file_get_contents($url));
						if($ipinfo->code=='1'){
							$province = $sitem['province'];
							if(empty($province))
							{
								$province=11;
							}
							$city = $sitem['city'];
							if(empty($city))
							{
								$city = $province."01";
							}
						}
						else
						{
							if(empty($sitem['dw_style']))
							{
								$_SESSION['moni_city'] = $ipinfo->data->city;
								$_SESSION['moni_province'] = $ipinfo->data->region;
								$_SESSION['address']=1;
								$_SESSION['address_time']=time()+3600*4;
							}
							$city = $ipinfo->data->city_id;
							$province = substr($city, 0,2);
							$city = substr($city, 0,4);
						}
					}

					if(empty($province))
					{
						$province=11;
					}
					if(empty($city))
					{
						$city=1101;
					}

					$data=array(
							'weid'=>$weid,
							'mobile'=>$mobile,
							'pwd'=>$_GPC['password'],
							'sex'=>$sex,
							'nicheng'=>$nicheng,
							'province'=>$province,
							'city'=>$city,
							'brith'=>662659200,
							'status'=>1,
							'createtime'=>TIMESTAMP,
						);
					if(empty($weixin))
					{
						$data['type']=0;
					}
					else
					{
						$data['from_user']=$from_user;
						$data['uid']=$uid;
						$data['type']=1;
					}
					if(!empty($rid))
					{
						$data['qrcode_id']=$rid;
					}
					pdo_insert('jy_ppp_member',$data);
					$mid=pdo_insertid();
					if(empty($weixin))
					{
						$member=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND mobile='".$mobile."'");
						$_SESSION['mid']=$member['id'];
					}
					load()->func('communication');
					$access_token = WeAccount::token();
					$dianyuan=pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_dianyuan')." WHERE weid=".$weid." AND uid>0 AND status=1 ");
					if(!empty($dianyuan))
					{
						$image=$_W['siteroot']."addons/jy_ppp/images/notice2.png";
						$text2="有新用户（".$nicheng."）注册！赶紧去查看处理吧~";
						$text=urlencode($text2);
						$url2=$_W['siteroot']."app/".substr($this->createMobileUrl('dy_send',array('yhid'=>$mid)),2);
						$url=urlencode($url2);
						$description2="点击上方赶紧去查看处理吧";
						$description=urlencode($description2);
						foreach ($dianyuan as $key => $value) {
							$data = array(
							  "touser"=>$value['from_user'],
							  "msgtype"=>"news",
							  "news"=>array("articles"=>array(0=>(array("title"=>$text,"description"=>$description,"url"=>$url,'picurl'=>$image))))
							);
							$url3 = "https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token={$access_token}";
							$response = ihttp_request($url3, urldecode(json_encode($data)));
							$errcode=json_decode($response['content'],true);
							$data3=array(
									'weid'=>$weid,
									'type'=>'news',
									'content'=>$text2,
									'desc'=>$description2,
									'picurl'=>$image,
									'url'=>$url2,
									'status'=>$errcode['errcode'],
									'createtime'=>TIMESTAMP,
							);
							$data3['mid']=$value['id'];
							pdo_insert("jy_ppp_kefu",$data3);
						}
					}

					if($sex==1)
					{
						$xuni_arr=pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND sex=2 AND type=3 AND status=1 ORDER BY id DESC ");
						$sex2=2;
					}
					else
					{
						$xuni_arr=pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND sex=1 AND type=3 AND status=1 ORDER BY id DESC ");
						$sex2=1;
					}

					if(!empty($xuni_arr))
					{
						$hufu_arr=pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_hf')." WHERE weid=".$weid." AND enabled=1 AND sex!=".$sex2." AND parentid=0 ");
						if(empty($hufu_arr))
						{
							$hufu_arr=array();
							$hufu_arr[]=array('type'=>0,'name'=>'hello,你好哈~');
							$hufu_arr[]=array('type'=>0,'name'=>'在干嘛呐？');
							$hufu_arr[]=array('type'=>0,'name'=>'无聊ing，聊聊天呗');
							$hufu_arr[]=array('type'=>0,'name'=>'hey');
							$hufu_arr[]=array('type'=>0,'name'=>'我刚刚看到你在线了哦~');
							$hufu_arr[]=array('type'=>0,'name'=>'可以交个朋友吗?');
						}
						$xuni_count=count($xuni_arr);
						if($xuni_count>=$sitem['kjmsg_num'])
						{
							$xuni=array_rand($xuni_arr,$sitem['kjmsg_num']);
							if($sitem['kjmsg_num']==1)
							{
								$xuni=array('0'=>$xuni);
							}
						}
						else
						{
							if($xuni_count==1)
							{
								$xuni=array();
								$xuni[]=0;
							}
							else
							{
								$xuni=array_rand($xuni_arr,$xuni_count);
							}
						}
						$sendtime=time()+10;
						foreach ($xuni as $key2 => $value) {
							$value=$xuni_arr[$value];
							$hufu=array_rand($hufu_arr);
							$hufu=$hufu_arr[$hufu];
							if($hufu['type']==3)
							{
								$hufu_zh=pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_hf')." WHERE weid=".$weid." AND parentid=".$hufu['id']." AND enabled=1 ORDER BY displayorder DESC,id ASC");
								if(empty($hufu_zh))
								{
									continue;
								}
								else
								{
									foreach ($hufu_zh as $key3 => $hufu) {
										$data=array(
											'weid'=>$weid,
											'mid'=>$mid,
											'sendid'=>$value['id'],
											'type'=>2,
											'yuedu'=>0,
										);
										$data['createtime']=$sendtime;
										if($hufu['type']==0)
										{
											$data['leixing']=0;
											$data['content']=$hufu['name'];

											if(empty($data['content']))
											{
												$data['content']='hello!';
											}

											pdo_insert("jy_ppp_xinxi_temp",$data);

										}
										elseif ($hufu['type']==1) {
											$data['leixing']=1;
											$data['content']="您有一张新的图片消息！";
											$data['picurl']=tomedia($hufu['picurl']);

											pdo_insert("jy_ppp_xinxi_temp",$data);

										}
										elseif ($hufu['type']==2) {
											$data['leixing']=2;
											$data['content']="您有一条新的语音消息！";
											$data['media_id']=tomedia($hufu['media_id']);

											pdo_insert("jy_ppp_xinxi_temp",$data);
										}
										if(empty($kjmsg_jiange2))
										{
											$kjmsg_jiange=mt_rand($sitem['kjmsg_jiange'],$sitem['kjmsg_jiange2']);
											$sendtime+=$kjmsg_jiange;
										}
										else
										{
											$sendtime+=$kjmsg_jiange2;
										}
									}
								}
							}
							else
							{

								$data=array(
											'weid'=>$weid,
											'mid'=>$mid,
											'sendid'=>$value['id'],
											'type'=>2,
											'yuedu'=>0,
										);
								$data['createtime']=$sendtime;
								if($hufu['type']==0)
								{
									$data['leixing']=0;
									$data['content']=$hufu['name'];

									if(empty($data['content']))
									{
										$data['content']='hello!';
									}

									pdo_insert("jy_ppp_xinxi_temp",$data);

								}
								elseif ($hufu['type']==1) {
									$data['leixing']=1;
									$data['content']="您有一张新的图片消息！";
									$data['picurl']=tomedia($hufu['picurl']);

									pdo_insert("jy_ppp_xinxi_temp",$data);
								}
								elseif ($hufu['type']==2) {
									$data['leixing']=2;
									$data['content']="您有一条新的语音消息！";
									$data['media_id']=tomedia($hufu['media_id']);

									pdo_insert("jy_ppp_xinxi_temp",$data);

								}
							}
							if(empty($kjmsg_jiange2))
							{
								$kjmsg_jiange=mt_rand($sitem['kjmsg_jiange'],$sitem['kjmsg_jiange2']);
								$sendtime+=$kjmsg_jiange;
							}
							else
							{
								$sendtime+=$kjmsg_jiange2;
							}
						}
					}
					echo 1;
					exit;
				}
				else
				{
					if($password!=$member['pwd'])
					{
						echo 2;
						exit;
					}
					else
					{
						if(empty($weixin))
						{
							$_SESSION['mid']=$member['id'];
						}
						echo 3;
						exit;
					}
				}
			}
			else
			{
				echo 4;
				exit;
			}
		}
		if($op=='wechat')
		{
			$member=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND from_user='".$from_user."'");
			if(!empty($sex))
			{
				if(!empty($from_user) && $weixin==1)
				{
					$nicheng=$nickname;

					if($sitem['address']==1)
					{
						$province = $sitem['province'];
						if(empty($province))
						{
							$province=11;
						}
						$city = $sitem['city'];
						if(empty($city))
						{
							$city = $province."01";
						}
					}
					else
					{
						$IPaddress='';
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
						$url="http://ip.taobao.com/service/getIpInfo.php?ip=".$ip;
						$ipinfo=json_decode(file_get_contents($url));
						if($ipinfo->code=='1'){
							$province = $sitem['province'];
							if(empty($province))
							{
								$province=11;
							}
							$city = $sitem['city'];
							if(empty($city))
							{
								$city = $province."01";
							}
						}
						else
						{
							if(empty($sitem['dw_style']))
							{
								$_SESSION['moni_city'] = $ipinfo->data->city;
								$_SESSION['moni_province'] = $ipinfo->data->region;
								$_SESSION['address']=1;
								$_SESSION['address_time']=time()+3600*4;
							}
							$city = $ipinfo->data->city_id;
							$province = substr($city, 0,2);
							$city = substr($city, 0,4);
						}
					}

					if(empty($province))
					{
						$province=11;
					}
					if(empty($city))
					{
						$city=1101;
					}

					pdo_update('jy_ppp_member',array('status'=>0),array('weid'=>$weid,'from_user'=>$from_user));

					$wechat_member_temp=pdo_fetch("SELECT id,sex FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND from_user='".$from_user."' AND type=1 ");

					

					if(empty($wechat_member_temp))
					{
						$data=array(
							'weid'=>$weid,
							'sex'=>$sex,
							'nicheng'=>$nicheng,
							'province'=>$province,
							'city'=>$city,
							'brith'=>662659200,
							'status'=>1,
							'type'=>1,
							'from_user'=>$from_user,
							'uid'=>$uid,
							'createtime'=>TIMESTAMP,
						);
						if(!empty($rid))
						{
							$data['qrcode_id']=$rid;
						}

						pdo_insert('jy_ppp_member',$data);
						$mid=pdo_insertid();
						$dianyuan=pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_dianyuan')." WHERE weid=".$weid." AND uid>0 AND status=1 ");
						load()->func('communication');
						$access_token = WeAccount::token();
						if(!empty($dianyuan))
						{
							$image=$_W['siteroot']."addons/jy_ppp/images/notice2.png";
							$text2="有新用户（".$nicheng."）注册！赶紧去查看处理吧~";
							$text=urlencode($text2);
							$url2=$_W['siteroot']."app/".substr($this->createMobileUrl('dy_send',array('yhid'=>$mid)),2);
							$url=urlencode($url2);
							$description2="点击上方赶紧去查看处理吧";
							$description=urlencode($description2);
							foreach ($dianyuan as $key => $value) {
								$data = array(
								  "touser"=>$value['from_user'],
								  "msgtype"=>"news",
								  "news"=>array("articles"=>array(0=>(array("title"=>$text,"description"=>$description,"url"=>$url,'picurl'=>$image))))
								);
								$url3 = "https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token={$access_token}";
								$response = ihttp_request($url3, urldecode(json_encode($data)));
								$errcode=json_decode($response['content'],true);
								$data3=array(
										'weid'=>$weid,
										'type'=>'news',
										'content'=>$text2,
										'desc'=>$description2,
										'picurl'=>$image,
										'url'=>$url2,
										'status'=>$errcode['errcode'],
										'createtime'=>TIMESTAMP,
								);
								$data3['mid']=$value['id'];
								pdo_insert("jy_ppp_kefu",$data3);
							}
						}
						if($sex==1)
						{
							$xuni_arr=pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND sex=2 AND type=3 AND status=1 ORDER BY id DESC ");
							$sex2=2;
						}
						else
						{
							$xuni_arr=pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND sex=1 AND type=3 AND status=1 ORDER BY id DESC ");
							$sex2=1;
						}

						if(!empty($xuni_arr))
						{
							$hufu_arr=pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_hf')." WHERE weid=".$weid." AND enabled=1 AND sex!=".$sex2." AND parentid=0 ");
							if(empty($hufu_arr))
							{
								$hufu_arr=array();
								$hufu_arr[]=array('type'=>0,'name'=>'hello,你好哈~');
								$hufu_arr[]=array('type'=>0,'name'=>'在干嘛呐？');
								$hufu_arr[]=array('type'=>0,'name'=>'无聊ing，聊聊天呗');
								$hufu_arr[]=array('type'=>0,'name'=>'hey');
								$hufu_arr[]=array('type'=>0,'name'=>'我刚刚看到你在线了哦~');
								$hufu_arr[]=array('type'=>0,'name'=>'可以交个朋友吗?');
							}
							$xuni_count=count($xuni_arr);
							if($xuni_count>=$sitem['kjmsg_num'])
							{
								$xuni=array_rand($xuni_arr,$sitem['kjmsg_num']);
								if($sitem['kjmsg_num']==1)
								{
									$xuni=array('0'=>$xuni);
								}
							}
							else
							{
								if($xuni_count==1)
								{
									$xuni=array();
									$xuni[]=0;
								}
								else
								{
									$xuni=array_rand($xuni_arr,$xuni_count);
								}
							}
							$sendtime=time()+10;
							foreach ($xuni as $key2 => $value) {
								$value=$xuni_arr[$value];
								$hufu=array_rand($hufu_arr);
								$hufu=$hufu_arr[$hufu];
								if($hufu['type']==3)
								{
									$hufu_zh=pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_hf')." WHERE weid=".$weid." AND parentid=".$hufu['id']." AND enabled=1 ORDER BY displayorder DESC,id ASC");
									if(empty($hufu_zh))
									{
										continue;
									}
									else
									{
										foreach ($hufu_zh as $key3 => $hufu) {
											$data=array(
												'weid'=>$weid,
												'mid'=>$mid,
												'sendid'=>$value['id'],
												'type'=>2,
												'yuedu'=>0,
											);
											$data['createtime']=$sendtime;
											if($hufu['type']==0)
											{
												$data['leixing']=0;
												$data['content']=$hufu['name'];

												if(empty($data['content']))
												{
													$data['content']='hello!';
												}

												pdo_insert("jy_ppp_xinxi_temp",$data);

											}
											elseif ($hufu['type']==1) {
												$data['leixing']=1;
												$data['content']="您有一张新的图片消息！";
												$data['picurl']=tomedia($hufu['picurl']);

												pdo_insert("jy_ppp_xinxi_temp",$data);

											}
											elseif ($hufu['type']==2) {
												$data['leixing']=2;
												$data['content']="您有一条新的语音消息！";
												$data['media_id']=tomedia($hufu['media_id']);

												pdo_insert("jy_ppp_xinxi_temp",$data);
											}
											if(empty($kjmsg_jiange2))
											{
												$kjmsg_jiange=mt_rand($sitem['kjmsg_jiange'],$sitem['kjmsg_jiange2']);
												$sendtime+=$kjmsg_jiange;
											}
											else
											{
												$sendtime+=$kjmsg_jiange2;
											}
										}
									}
								}
								else
								{

									$data=array(
												'weid'=>$weid,
												'mid'=>$mid,
												'sendid'=>$value['id'],
												'type'=>2,
												'yuedu'=>0,
											);
									$data['createtime']=$sendtime;
									if($hufu['type']==0)
									{
										$data['leixing']=0;
										$data['content']=$hufu['name'];

										if(empty($data['content']))
										{
											$data['content']='hello!';
										}

										pdo_insert("jy_ppp_xinxi_temp",$data);

									}
									elseif ($hufu['type']==1) {
										$data['leixing']=1;
										$data['content']="您有一张新的图片消息！";
										$data['picurl']=tomedia($hufu['picurl']);

										pdo_insert("jy_ppp_xinxi_temp",$data);
									}
									elseif ($hufu['type']==2) {
										$data['leixing']=2;
										$data['content']="您有一条新的语音消息！";
										$data['media_id']=tomedia($hufu['media_id']);

										pdo_insert("jy_ppp_xinxi_temp",$data);

									}
								}

								if(empty($kjmsg_jiange2))
								{
									$kjmsg_jiange=mt_rand($sitem['kjmsg_jiange'],$sitem['kjmsg_jiange2']);
									$sendtime+=$kjmsg_jiange;
								}
								else
								{
									$sendtime+=$kjmsg_jiange2;
								}
							}
						}
					}
					else
					{
						if($wechat_member_temp['sex']!=$sex)
						{
							pdo_update("jy_ppp_member",array('nicheng'=>$nicheng,'from_user'=>$from_user,'uid'=>$uid,'status'=>1),array('id'=>$wechat_member_temp['id']));
						}
						else
						{
							pdo_update("jy_ppp_member",array('sex'=>$sex,'nicheng'=>$nicheng,'from_user'=>$from_user,'uid'=>$uid,'status'=>1),array('id'=>$wechat_member_temp['id']));
						}
						$mid=$wechat_member_temp['id'];
					}

					if(!empty($avatar))
					{
						$temp_thumb=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_thumb')." WHERE weid=".$weid." AND mid=".$mid." AND thumb='".$avatar."'");
						if(empty($temp_thumb))
						{
							$data2=array(
							'weid'=>$weid,
							'mid'=>$mid,
							'thumb'=>$avatar,
							'createtime'=>TIMESTAMP,
							);
							if(!empty($sitem['thumb']))
							{
								$data2['type']=0;
							}
							else
							{
								$data2['type']=1;
								pdo_update("jy_ppp_member",array('avatar'=>$avatar),array('id'=>$mid));
							}
							pdo_insert("jy_ppp_thumb",$data2);
						}
						// load ()->func ( 'file' );
						// $uniacid = intval ( $_W ['uniacid'] );
						// $path = "images/{$uniacid}/" . date ( 'Y/m/' );
						// // 生成目标文件夹－－！from func('file')
						// mkdirs ( ATTACHMENT_ROOT . '/' . $path );
						// // 生成目标文件名－－！from func('file')
						// $img_name = md5($avatar.time()).'.jpg';

						// $host = array("Host: wx.qlogo.cn");
						// $base_url = $path;
						// $base_dir = ATTACHMENT_ROOT. '/'.$path;
						// $file = fopen($base_dir.$img_name,'wb');
						// $ch = curl_init();
						// curl_setopt($ch,CURLOPT_URL,$avatar);
						// curl_setopt($ch,CURLOPT_HTTPHEADER,$host);
						// curl_setopt($ch,CURLOPT_FILE,$file);
						// curl_setopt($ch,CURLOPT_HEADER,0);
						// curl_setopt($ch,CURLOPT_FOLLOWLOCATION,1);
						// $re = curl_exec($ch);
						// fclose($file);
						// if($re == false){
						// 	// echo curl_error($ch), curl_errno($ch);
						// 	$avatar='';
						// }
						// else
						// {
						// 	$avatar = $base_url.$img_name;
						// 	$data2=array(
						// 		'weid'=>$weid,
						// 		'mid'=>$mid,
						// 		'type'=>0,
						// 		'thumb'=>$avatar,
						// 		'createtime'=>TIMESTAMP,
						// 	);
						// 	pdo_insert("jy_ppp_thumb",$data2);
						// }
						// curl_close($ch);
					}

					echo 1;
					exit;
				}
				else
				{
					echo 3;
					exit;
				}
			}
			else
			{
				echo 4;
				exit;
			}
		}
		include $this->template('zhuce2');