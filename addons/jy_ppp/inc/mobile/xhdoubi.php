<?php
global $_W,$_GPC;
		if ( 1==1 ) {
			$weixin=0;

			$weid=$_GPC['i'];

			$mid=$_SESSION['mid'];
			if(!empty($mid))
			{
				$member=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND id=".$mid." AND status=1");
			}
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
					window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'xhdoubi','id'=>$_GPC['id']))."';
				</script>";
			}
			else
			{
				$member_temp=pdo_fetch("SELECT uid,nickname,follow FROM ".tablename('mc_mapping_fans')." WHERE openid='$from_user' AND uniacid=".$weid);
				if(empty($member_temp['nickname']) || $member_temp['uid']==0)
				{
					unset($uid);
				}
				else
				{
					$uid=$member_temp['uid'];
					unset($member_temp);
				}
				if(empty($uid))
				{
					echo "<script>
						window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'xhdoubi','id'=>$_GPC['id']))."';
					</script>";
				}
				else
				{
					$member=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND from_user='".$from_user."' AND status=1");
					$mid=$member['id'];
				}
			}
		}

		if(!empty($member))
		{
			$sitem=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_setting')." WHERE weid=".$weid);
			$id=$_GPC['id'];
			if(empty($id))
			{
				echo "<script>
						window.location.href = '".$this->createMobileUrl('detail')."';
					</script>";
			}
			else
			{
				$op=$_GPC['op'];
				if($op=='xh')
				{
					$id=$_GPC['id'];
					$temp=pdo_fetch("SELECT id FROM ".tablename('jy_ppp_chat_doubi')." WHERE weid=".$weid." AND mid=".$mid." AND chatid=".$id);
					if(!empty($temp))
					{
						echo 2;
						exit;
					}
					else
					{
						if(empty($sitem['chat']))
						{
							$sitem['chat']=20;
						}
						$temp=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND id=".$mid);
						if($temp['credit']>$sitem['chat'])
						{
							$data=array(
								'weid'=>$weid,
								'mid'=>$mid,
								'chatid'=>$id,
								'createtime'=>TIMESTAMP,
							);
							pdo_insert('jy_ppp_chat_doubi',$data);
							pdo_update("jy_ppp_member",array('credit'=>$temp['credit']-$sitem['chat']),array('id'=>$mid));
							$data2=array(
									'weid'=>$weid,
									'mid'=>$mid,
									'credit'=>$sitem['chat'],
									'type'=>'reduce',
									'logid'=>$id,
									'log'=>2,
									'createtime'=>TIMESTAMP,
								);
							pdo_insert("jy_ppp_credit_log",$data2);
							echo 1;
							exit;
						}
						else
						{
							echo 3;
							exit;
						}
					}
				}
				else
				{
					$temp=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND id=".$id);
					if(empty($temp['province']))
					{
						$temp['province']='11';
					}
					$province=array('11'=>'?????????','12'=>'?????????','13'=>'?????????','14'=>'?????????','15'=>'?????????','21'=>'?????????','22'=>'?????????','23'=>'????????????','31'=>'?????????','32'=>'?????????','33'=>'?????????','34'=>'?????????','35'=>'?????????','36'=>'?????????','37'=>'?????????','41'=>'?????????','42'=>'?????????','43'=>'?????????','44'=>'?????????','45'=>'??????','46'=>'?????????','50'=>'?????????','51'=>'?????????','52'=>'?????????','53'=>'?????????','54'=>'??????','61'=>'?????????','62'=>'?????????','63'=>'?????????','64'=>'??????','65'=>'??????','71'=>'?????????','81'=>'??????','82'=>'??????');
					$birthday=$temp['brith'];
					if(empty($birthday))
					{
						$birthday=662688000;
					}
					$now=time();
				    $month=0;
				    if(date('m', $now)>date('m', $birthday))
				    $month=1;
				    if(date('m', $now)==date('m', $birthday))
				    if(date('d', $now)>=date('d', $birthday))
				    $month=1;
				    $nianlin=date('Y', $now)-date('Y', $birthday)+$month;
					include $this->template('xhdoubi');
				}
			}

		}
		else
		{
			if($weixin==1)
			{
				echo "<script>
						window.location.href = '".$this->createMobileUrl('zhuce')."';
					</script>";
			}
			else
			{
				echo "<script>
						window.location.href = '".$this->createMobileUrl('login')."';
					</script>";
			}
		}