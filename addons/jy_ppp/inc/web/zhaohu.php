<?php
global $_W,$_GPC;
		$weid=$_W['uniacid'];
		checklogin();
		$this->faxin();

		$operation = !empty($_GPC['op']) ? $_GPC['op'] : 'display';
	    if ($operation == 'display') {
	        if (!empty($_GPC['displayorder'])) {
	            foreach ($_GPC['displayorder'] as $id => $displayorder) {
	                pdo_update('jy_ppp_zhaohu', array('displayorder' => $displayorder), array('id' => $id));
	            }
	            message('打招呼更新成功！', $this->createWebUrl('zhaohu', array('op' => 'display')), 'success');
	        }
	        $children = array();
	        $category = pdo_fetchall("SELECT * FROM " . tablename('jy_ppp_zhaohu') . " WHERE weid = '{$_W['weid']}' ORDER BY displayorder DESC,id ASC");
	        foreach ($category as $index => $row) {
	            if (!empty($row['parentid'])) {
	                $children[$row['parentid']][] = $row;
	                unset($category[$index]);
	            }
	        }
	        if (checksubmit('submit2')) {
	        	$last=pdo_fetch("SELECT id FROM ".tablename('jy_ppp_zhaohu')." ORDER BY id DESC LIMIT 1 ");
	        	$lastid=$last['id'];
	        	$sql = "
	        		INSERT INTO ".tablename('jy_ppp_zhaohu')." (`id`, `weid`, `displayorder`, `parentid`, `name`, `description`, `enabled`) VALUES
	        			(".($lastid+1).",".$weid.",	0,	0,	'可以接受比你年龄小很多的女生吗？',	'',	1),
						(".($lastid+2).",".$weid.",	0,	".($lastid+1).",	'接受',	'我接受比我年龄小很多的女生，我觉得你很合适。',	1),
						(".($lastid+3).",".$weid.",	0,	".($lastid+1).",	'需要考虑',	'我需要考虑年龄比我小比较多的女生，我觉得你很合适。',	1),
						(".($lastid+4).",".$weid.",	0,	".($lastid+1).",	'不接受',	'我不接受年龄比我小比较多的女生，我觉得你很合适。',	1),
						(".($lastid+5).",".$weid.",	0,	0,	'你喜欢女生穿什么样的内衣？',	'',	1),
						(".($lastid+6).",".$weid.",	0,	".($lastid+5).",	'黑色蕾丝',	'我喜欢女生穿着黑色蕾丝材质的内衣，会很性感~',	1),
						(".($lastid+7).",".$weid.",	0,	".($lastid+5).",	'白色蕾丝',	'我喜欢女生穿着白色蕾丝材质的内衣，会很有趣~',	1),
						(".($lastid+8).",".$weid.",	0,	".($lastid+5).",	'卡通色彩',	'我喜欢女生穿着卡通色彩的内衣，会很有趣~',	1),
						(".($lastid+9).",".$weid.",	0,	".($lastid+5).",	'其他',	'我喜欢女生穿着其他材质的内衣，会很有趣~',	1),
						(".($lastid+10).",".$weid.",	0,	0,	'你喜欢看哪个国家（地区）的A片？',	'',	1),
						(".($lastid+11).",".$weid.",	0,	".($lastid+10).",	'岛国',	'岛国',	1),
						(".($lastid+12).",".$weid.",	0,	".($lastid+10).",	'欧美',	'欧美',	1),
						(".($lastid+13).",".$weid.",	0,	".($lastid+10).",	'香港',	'香港',	1),
						(".($lastid+14).",".$weid.",	0,	".($lastid+10).",	'国内',	'国内',	1),
						(".($lastid+15).",".$weid.",	0,	0,	'会不会觉得女生胸太大了不好看，影响美感？',	'',	1),
						(".($lastid+16).",".$weid.",	0,	".($lastid+15).",	'完全不影响',	'女生胸太大了完全不影响美感，你是哪种？',	1),
						(".($lastid+17).",".$weid.",	0,	".($lastid+15).",	'有点影响',	'女生胸太大了有点影响美感，你是哪种？',	1),
						(".($lastid+18).",".$weid.",	0,	".($lastid+15).",	'很影响',	'女生胸太大了很影响美感，你是哪种？',	1),
						(".($lastid+19).",".$weid.",	0,	0,	'对方的身材和相貌你更在乎哪个？',	'',	1),
						(".($lastid+20).",".$weid.",	0,	".($lastid+19).",	'身材',	'我还是比较看重身材的哈~',	1),
						(".($lastid+21).",".$weid.",	0,	".($lastid+19).",	'样貌',	'我还是比较看重样貌的哈~',	1),
						(".($lastid+22).",".$weid.",	0,	".($lastid+19).",	'都',	'我身材和样貌都是很在意的哈~',	1),
						(".($lastid+23).",".$weid.",	0,	0,	'爱爱喜欢开灯还是关灯？',	'',	1),
						(".($lastid+24).",".$weid.",	0,	".($lastid+23).",	'开灯',	'开灯',	1),
						(".($lastid+25).",".$weid.",	0,	".($lastid+23).",	'关灯',	'关灯',	1),
						(".($lastid+26).",".$weid.",	0,	0,	'黑丝袜和白丝袜你更喜欢女生穿哪个?',	'',	1),
						(".($lastid+27).",".$weid.",	0,	".($lastid+26).",	'黑丝袜',	'我觉得女生穿黑丝袜会比较好看，你平时会穿吗？',	1),
						(".($lastid+28).",".$weid.",	0,	".($lastid+26).",	'网袜',	'你觉得女生穿网袜会比较好看，你平时会穿吗？',	1),
						(".($lastid+29).",".$weid.",	0,	".($lastid+26).",	'白丝袜',	'我觉得女生穿白丝袜比较好看，你平时会穿吗？',	1),
						(".($lastid+30).",".$weid.",	0,	".($lastid+26).",	'其他',	'我觉得女生穿其他会比较好看，你平时会穿吗？',	1),
						(".($lastid+31).",".$weid.",	0,	0,	'你最想尝试的爱爱场所？',	'',	1),
						(".($lastid+32).",".$weid.",	0,	".($lastid+31).",	'旅馆',	'旅馆',	1),
						(".($lastid+33).",".$weid.",	0,	".($lastid+31).",	'车',	'车',	1),
						(".($lastid+34).",".$weid.",	0,	".($lastid+31).",	'户外',	'户外',	1),
						(".($lastid+35).",".$weid.",	0,	".($lastid+31).",	'公司',	'公司',	1),
						(".($lastid+36).",".$weid.",	0,	0,	'你看过日本的女明星演的电影多吗？',	'',	1),
						(".($lastid+37).",".$weid.",	0,	".($lastid+36).",	'比较多',	'我看过的日本女明星的电影比较多，你会介意？',	1),
						(".($lastid+38).",".$weid.",	0,	".($lastid+36).",	'不太多',	'我看过的日本女明星的电影不太多，你会介意？',	1),
						(".($lastid+39).",".$weid.",	0,	".($lastid+36).",	'没看过',	'我看过的日本女明星的电影没看过，你会介意？',	1),
						(".($lastid+40).",".$weid.",	0,	0,	'你认为一周性爱的频率怎么比较好？',	'',	1),
						(".($lastid+41).",".$weid.",	0,	".($lastid+40).",	'1次',	'我觉得一周性爱一次比较合适，你觉得呢？',	1),
						(".($lastid+42).",".$weid.",	0,	".($lastid+40).",	'3次',	'我觉得一周性爱三次比较合适，你觉得呢？',	1),
						(".($lastid+43).",".$weid.",	0,	".($lastid+40).",	'7次',	'我觉得一周性爱七次比较合适，你觉得呢？',	1),
						(".($lastid+44).",".$weid.",	0,	".($lastid+40).",	'不一定',	'我觉得一周性爱次数可不能确定哦，你觉得呢？',	1),
						(".($lastid+45).",".$weid.",	0,	0,	'你认为第一次约会最理想的场所在哪？',	'',	1),
						(".($lastid+46).",".$weid.",	0,	".($lastid+45).",	'公园',	'我希望第一次可以在公园约会，那里比较可以深入理解对方。',	1),
						(".($lastid+47).",".$weid.",	0,	".($lastid+45).",	'咖啡馆',	'我希望第一次可以在咖啡馆约会，那里比较可以深入理解对方。',	1),
						(".($lastid+48).",".$weid.",	0,	".($lastid+45).",	'电影院',	'我希望第一次可以在电影院约会，那里比较可以深入理解对方。',	1),
						(".($lastid+49).",".$weid.",	0,	".($lastid+45).",	'如家',	'我希望第一次可以在如家约会，那里比较可以深入理解对方。',	1),
						(".($lastid+50).",".$weid.",	0,	0,	'可以接受比你年龄大一点点的女生吗？',	'',	1),
						(".($lastid+51).",".$weid.",	0,	".($lastid+50).",	'接受',	'我接受年龄比我大一点的女生，我觉得你很合适。',	1),
						(".($lastid+52).",".$weid.",	0,	".($lastid+50).",	'需要考虑',	'我需要考虑年龄比我大一点的女生，我觉得你很合适。',	1),
						(".($lastid+53).",".$weid.",	0,	".($lastid+50).",	'不接受',	'我不接受年龄比我大一点的女生，我觉得你很合适。',	1),
						(".($lastid+54).",".$weid.",	0,	0,	'你觉得第一次约会可不可以去喝酒？',	'',	1),
						(".($lastid+55).",".$weid.",	0,	".($lastid+54).",	'可以',	'第一次约会的时候可以喝酒，红酒还是很不错的！',	1),
						(".($lastid+56).",".$weid.",	0,	0,	'你会跟另一半坦白你的性经历么？',	'',	1),
						(".($lastid+57).",".$weid.",	0,	".($lastid+56).",	'完全可以说',	'完全可以说',	1),
						(".($lastid+58).",".$weid.",	0,	".($lastid+56).",	'会有所保留',	'会有所保留',	1),
						(".($lastid+59).",".$weid.",	0,	".($lastid+56).",	'不喜欢提',	'不喜欢提',	1),
						(".($lastid+60).",".$weid.",	0,	0,	'你觉得带我回家的时候你爸妈会喜欢我吗？',	'',	1),
						(".($lastid+61).",".$weid.",	0,	".($lastid+60).",	'很喜欢',	'我觉得我如果带你回家我的父母对你很喜欢。',	1),
						(".($lastid+62).",".$weid.",	0,	".($lastid+60).",	'比较喜欢',	'我觉的我如果带你回家喔的父母对你比较喜欢~',	1),
						(".($lastid+63).",".$weid.",	0,	".($lastid+60).",	'一般般',	'我觉得我如果带你回家喔的父母对你一般般',	1),
						(".($lastid+64).",".$weid.",	0,	0,	'约会时你希望女伴的穿着是什么路线？',	'',	1),
						(".($lastid+65).",".$weid.",	0,	".($lastid+64).",	'性感火辣',	'我希望咱们第一次见面时对方穿的性感火辣，比较符合我的口味~',	1),
						(".($lastid+66).",".$weid.",	0,	".($lastid+64).",	'稳重得体',	'我希望咱们第一次见面时对方穿的稳重得体，比较符合我的口味~',	1),
						(".($lastid+67).",".$weid.",	0,	".($lastid+64).",	'可爱俏皮',	'我希望咱们第一次见面时对方穿的可爱俏皮，比较符合我的口味~',	1),
						(".($lastid+68).",".$weid.",	0,	0,	'你可以理解女生约会之前必须洗头这件事吗？',	'',	1),
						(".($lastid+69).",".$weid.",	0,	".($lastid+68).",	'可以理解',	'女生约会之前必须洗头这件事我可以理解，你出门前会洗头吗？要多久？',	1),
						(".($lastid+70).",".$weid.",	0,	".($lastid+68).",	'有点理解',	'女生约会前都会洗头这件事我有点理解，你出门钱会洗头吗？要多久？',	1),
						(".($lastid+71).",".$weid.",	0,	".($lastid+68).",	'不能理解',	'女生约会前都会洗头这件事我不能理解，你出门钱会洗头吗？要多久？',	1),
						(".($lastid+72).",".$weid.",	0,	0,	'你觉得一个人最性感的时候是？',	'',	1),
						(".($lastid+73).",".$weid.",	0,	".($lastid+72).",	'刚洗完澡',	'刚洗完澡',	1),
						(".($lastid+74).",".$weid.",	0,	".($lastid+72).",	'运动出汗',	'运动出汗',	1),
						(".($lastid+75).",".$weid.",	0,	".($lastid+72).",	'穿性感衣服',	'穿性感衣服',	1),
						(".($lastid+76).",".$weid.",	0,	".($lastid+72).",	'认真做事',	'认真做事',	1),
						(".($lastid+77).",".$weid.",	0,	0,	'你觉得泷泽萝拉和范冰冰谁计较漂亮？',	'',	1),
						(".($lastid+78).",".$weid.",	0,	".($lastid+77).",	'范冰冰',	'我觉得范冰冰很漂亮，你也很漂亮~',	1),
						(".($lastid+79).",".$weid.",	0,	".($lastid+77).",	'两个都',	'我觉得两个都很漂亮，你也很漂亮~',	1),
						(".($lastid+80).",".$weid.",	0,	".($lastid+77).",	'泷泽萝拉',	'我觉得泷泽萝拉很漂亮，你也很漂亮~',	1),
						(".($lastid+81).",".$weid.",	0,	0,	'你觉着一下哪种脱单途径希望更大？',	'',	1),
						(".($lastid+82).",".$weid.",	0,	".($lastid+81).",	'相亲',	'相亲',	1),
						(".($lastid+83).",".$weid.",	0,	".($lastid+81).",	'社交网络',	'社交网络',	1),
						(".($lastid+84).",".$weid.",	0,	".($lastid+81).",	'朋友介绍',	'朋友介绍',	1),
						(".($lastid+85).",".$weid.",	0,	".($lastid+81).",	'其他',	'其他',	1),
						(".($lastid+86).",".$weid.",	0,	0,	'确定交往后发现性生活不和谐怎么办？',	'',	1),
						(".($lastid+87).",".$weid.",	0,	".($lastid+86).",	'严重就分手',	'严重就分手',	1),
						(".($lastid+88).",".$weid.",	0,	".($lastid+86).",	'看其他条件',	'看其他条件',	1),
						(".($lastid+89).",".$weid.",	0,	".($lastid+86).",	'尽量解决',	'尽量解决',	1),
						(".($lastid+90).",".$weid.",	0,	".($lastid+86).",	'不太介意',	'不太介意',	1),
						(".($lastid+91).",".$weid.",	0,	".($lastid+86).",	'听不太懂',	'听不太懂',	1),
						(".($lastid+92).",".$weid.",	0,	0,	'如果我们在不同城市，你会愿意我来找你吗？',	'',	1),
						(".($lastid+93).",".$weid.",	0,	".($lastid+92).",	'十分愿意',	'我会十分愿意让你来找我，我可以来找你吗？',	1),
						(".($lastid+94).",".$weid.",	0,	".($lastid+92).",	'比较愿意',	'我会愿意让你来找我，我可以来找你吗？',	1),
						(".($lastid+95).",".$weid.",	0,	".($lastid+92).",	'不太愿意',	'我不太愿意让你来找我，我可以来找你吗？',	1),
						(".($lastid+96).",".$weid.",	0,	0,	'会不会觉得女生穿高跟鞋很好看？',	'',	1),
						(".($lastid+97).",".$weid.",	0,	".($lastid+96).",	'很好看',	'我觉得女生穿高跟鞋会很好看，你平时喜欢穿吗？',	1),
						(".($lastid+98).",".$weid.",	0,	".($lastid+96).",	'一般般',	'我觉得女生穿高跟鞋会一般般，你平时喜欢穿吗？',	1),
						(".($lastid+99).",".$weid.",	0,	".($lastid+96).",	'不好看',	'我觉得女生穿高跟鞋会不好看，你平时喜欢穿吗？',	1),
						(".($lastid+100).",".$weid.",	0,	0,	'如果去旅行我走累了，你愿意背我走吗？',	'',	1),
						(".($lastid+101).",".$weid.",	0,	".($lastid+100).",	'很愿意',	'旅行的时候如果你走累了，我很愿意背着你走。',	1),
						(".($lastid+102).",".$weid.",	0,	".($lastid+100).",	'愿意',	'旅行的时候如果你走累了，我愿意背着你走。',	1),
						(".($lastid+103).",".$weid.",	0,	".($lastid+100).",	'可以考虑',	'旅行的时候如果你走累了，我可以考虑背着你走。',	1),
						(".($lastid+104).",".$weid.",	0,	".($lastid+100).",	'不能',	'旅行的时候如果你走累了，我不能背着你走。',	1),
						(".($lastid+105).",".$weid.",	0,	0,	'你觉得你可以把我抱起来吗？',	'',	1),
						(".($lastid+106).",".$weid.",	0,	".($lastid+105).",	'很轻松',	'我估计把你抱起来很轻松，你喜欢是公主抱还是新娘抱？',	1),
						(".($lastid+107).",".$weid.",	0,	".($lastid+105).",	'有可能',	'我估计把你抱起来有可能，你喜欢是公主还是新娘抱？',	1),
						(".($lastid+108).",".$weid.",	0,	".($lastid+105).",	'有难度',	'我估计把你抱起来有难度，你喜欢是公主抱还是新娘抱？',	1),
						(".($lastid+109).",".$weid.",	0,	0,	'有没有被人欺骗过感情？',	'',	1),
						(".($lastid+110).",".$weid.",	0,	".($lastid+109).",	'有过',	'有过',	1),
						(".($lastid+111).",".$weid.",	0,	".($lastid+109).",	'没有过',	'没有过',	1),
						(".($lastid+112).",".$weid.",	0,	0,	'你觉得你的哪个部位最敏感？',	'',	1),
						(".($lastid+113).",".$weid.",	0,	".($lastid+112).",	'五官',	'我的五官比较敏感，不能轻易碰哦~你有哪些敏感部位呀？',	1),
						(".($lastid+114).",".$weid.",	0,	".($lastid+112).",	'胸部',	'我的胸部比较敏感，不能轻易碰哦~你有哪些敏感部位呀？',	1),
						(".($lastid+115).",".$weid.",	0,	".($lastid+112).",	'腿部',	'我的腿部比较敏感，不能轻易碰哦~你有哪些敏感部位呀？',	1),
						(".($lastid+116).",".$weid.",	0,	".($lastid+112).",	'其他',	'我的其他比较敏感，不能轻易碰哦~你有哪些敏感部位呀？',	1),
						(".($lastid+117).",".$weid.",	0,	0,	'可以接受女朋友夏天的时候穿热裤出门吗？',	'',	1),
						(".($lastid+118).",".$weid.",	0,	".($lastid+117).",	'完全接受',	'我完全接受女朋友穿着比较短的裤子出门，你平时穿吗？',	1),
						(".($lastid+119).",".$weid.",	0,	".($lastid+117).",	'需要考虑',	'我需要考虑女朋友穿的比较短的裤子出门，你平时喜欢吗？',	1),
						(".($lastid+120).",".$weid.",	0,	".($lastid+117).",	'不能接受',	'我不能接受女朋友穿着比较短的裤子出门，你平时喜欢穿吗？',	1),
						(".($lastid+121).",".$weid.",	0,	0,	'你觉得第一次约会的时间应该是？',	'',	1),
						(".($lastid+122).",".$weid.",	0,	".($lastid+121).",	'早上',	'我希望咱们第一次约会是在早上，这样可以更好的了解对方',	1),
						(".($lastid+123).",".$weid.",	0,	".($lastid+121).",	'下午',	'我希望咱们第一次约会是在下午，这样可以更好的了解对方～',	1),
						(".($lastid+124).",".$weid.",	0,	".($lastid+121).",	'晚上',	'我希望咱们第一次约会是在晚上，这样可以更好的了解对方',	1),
						(".($lastid+125).",".$weid.",	0,	".($lastid+121).",	'半夜',	'我希望咱们第一次约会是在半夜，这样可以更好的了解对方',	1),
						(".($lastid+126).",".$weid.",	0,	0,	'你觉得约会几次后才适合和女生发生“亲密行为”？',	'',	1),
						(".($lastid+127).",".$weid.",	0,	".($lastid+126).",	'一次',	'我认为在第一次次约会后才适合和女生发生“亲密关系”，你觉得那？',	1),
						(".($lastid+128).",".$weid.",	0,	".($lastid+126).",	'三次',	'我认为在第三次次约会后才适合和女生发生“亲密关系”，你觉得那？',	1),
						(".($lastid+129).",".$weid.",	0,	".($lastid+126).",	'十次',	'我认为在十次次约会后才适合和女生发生“亲密关系”，你觉得那？',	1),
						(".($lastid+130).",".$weid.",	0,	".($lastid+54).",	'看情况',	'第一次约会的时候看情况喝酒，红酒还是很不错的哟~',	1),
						(".($lastid+131).",".$weid.",	0,	".($lastid+54).",	'不可以',	'第一次约会的时候不可以喝酒，不过红酒还是不错的喔',	1),
						(".($lastid+132).",".$weid.",	0,	0,	'可以接受在C罩杯以下的女孩子吗？',	'',	1),
						(".($lastid+133).",".$weid.",	0,	".($lastid+132).",	'完全接受',	'我对于C罩杯的女孩子完全接受，你是哪一种？',	1),
						(".($lastid+134).",".$weid.",	0,	".($lastid+132).",	'需要考虑',	'我对于c罩杯的女孩子需要考虑，你是哪一种？',	1),
						(".($lastid+135).",".$weid.",	0,	".($lastid+132).",	'不能接受',	'我对于c罩杯的女孩子不能接受，你是哪一种？',	1),
						(".($lastid+136).",".$weid.",	0,	0,	'第一次约会在酒吧好不好',	'',	1),
						(".($lastid+137).",".$weid.",	0,	".($lastid+136).",	'当然可以',	'第一次约会当然可以去酒吧，我怕你喝醉喔。',	1),
						(".($lastid+138).",".$weid.",	0,	".($lastid+136).",	'需要考虑',	'第一次约会需要考虑去酒吧，我怕你喝醉喔。',	1),
						(".($lastid+139).",".$weid.",	0,	".($lastid+136).",	'不可以',	'第一次约会不考虑去酒吧，我怕你喝醉喔。',	1),
						(".($lastid+140).",".$weid.",	0,	0,	'如果要带我去旅行，你会带我去那个地方？',	'',	1),
						(".($lastid+141).",".$weid.",	0,	".($lastid+140).",	'我的家乡',	'我想要带女生去我家乡旅行，这样可以增进两个人的感情',	1),
						(".($lastid+142).",".$weid.",	0,	".($lastid+140).",	'海边',	'我想要带女生去海边旅行，这样可以增进两个人的感情～',	1),
						(".($lastid+143).",".$weid.",	0,	".($lastid+140).",	'国外',	'我想要带女生去国外旅行，这样可以增进两个人的感情～',	1),
						(".($lastid+144).",".$weid.",	0,	".($lastid+140).",	'高原',	'我想要带女生去高原旅行，这样可以增进两个人的感情～',	1),
						(".($lastid+145).",".$weid.",	0,	0,	'你觉得泷泽萝拉和范冰冰谁比较漂亮？',	'',	1),
						(".($lastid+146).",".$weid.",	0,	".($lastid+145).",	'范冰冰',	'我觉得范冰冰很漂亮，你也很漂亮～',	1),
						(".($lastid+147).",".$weid.",	0,	".($lastid+145).",	'两个都',	'我觉得两个都很漂亮，你也很漂亮～',	1),
						(".($lastid+148).",".$weid.",	0,	".($lastid+145).",	'泷泽萝拉',	'我觉得泷泽萝拉很漂亮，你也很漂亮～',	1),
						(".($lastid+149).",".$weid.",	0,	0,	'你觉得女生约会时应不应该化妆？',	'',	1),
						(".($lastid+150).",".$weid.",	0,	".($lastid+149).",	'必须要',	'我觉得女生约会必需要化妆，但是你不化妆也很漂亮',	1),
						(".($lastid+151).",".$weid.",	0,	".($lastid+149).",	'有时可以',	'我觉得女生约会有时可以化妆，但是你不化妆也很漂亮～',	1),
						(".($lastid+152).",".$weid.",	0,	".($lastid+149).",	'不需要',	'我觉得女生约会不需要化妆，但是你不化妆也很漂亮～',	1),
						(".($lastid+153).",".$weid.",	0,	0,	'约会时你希望女伴的穿着是什么路线？',	'',	1),
						(".($lastid+154).",".$weid.",	0,	".($lastid+153).",	'性感火辣',	'我希望咱们第一次见面时对方穿的性感火辣，比较符合我的口味～',	1),
						(".($lastid+155).",".$weid.",	0,	".($lastid+153).",	'稳重得体',	'我希望咱们第一次见面时对方穿的稳重得体，比较符合我的口味～',	1),
						(".($lastid+156).",".$weid.",	0,	".($lastid+153).",	'可爱俏皮',	'我希望咱们第一次面对对方穿的可爱俏皮，比较符合我的口味～',	1),
						(".($lastid+162).",".$weid.",	0,	0,	'你觉得我头发扎起来好看还是放下来？',	'',	1),
						(".($lastid+163).",".$weid.",	0,	".($lastid+162).",	'扎起来',	'我觉得你扎起来很好看，我很喜欢',	1),
						(".($lastid+164).",".$weid.",	0,	".($lastid+162).",	'放下来',	'我觉得你放下来很好看，我很喜欢',	1),
						(".($lastid+165).",".$weid.",	0,	".($lastid+162).",	'两种都',	'我觉得你两种都很好看，我很喜欢',	1),
						(".($lastid+166).",".$weid.",	0,	0,	'比较喜欢哪种风格的女生？',	'',	1),
						(".($lastid+167).",".$weid.",	0,	".($lastid+166).",	'可爱甜美',	'我比较喜欢可爱甜美的女生，我觉得你很符合～',	1),
						(".($lastid+168).",".$weid.",	0,	".($lastid+166).",	'成熟抚媚',	'我比较喜欢成熟抚媚的女生，我觉得你很符合～',	1),
						(".($lastid+169).",".$weid.",	0,	".($lastid+166).",	'性感火辣',	'我比较喜欢性感火辣的女生，我觉得你很符合～',	1),
						(".($lastid+170).",".$weid.",	0,	0,	'如果我希望你在大街上马上吻我，你会愿意吗？',	'',	1),
						(".($lastid+171).",".$weid.",	0,	".($lastid+170).",	'很愿意',	'我很愿意在大街上吻你，你会有什么反应？',	1),
						(".($lastid+172).",".$weid.",	0,	0,	'如果去旅行我走累了，你愿意背我走吗？',	'',	1),
						(".($lastid+173).",".$weid.",	0,	".($lastid+172).",	'很愿意',	'旅行的时候如果你走累了，我很愿意背着你走。',	1),
						(".($lastid+174).",".$weid.",	0,	".($lastid+172).",	'愿意',	'旅行的时候如果你走累了，我愿意背着你走。',	1),
						(".($lastid+175).",".$weid.",	0,	".($lastid+172).",	'可以考虑',	'旅行的时候如果你走累了，我可以考虑背着你走。',	1),
						(".($lastid+176).",".$weid.",	0,	".($lastid+172).",	'不能',	'旅行的时候如果你走累了，我不能背着你走。',	1),
						(".($lastid+177).",".$weid.",	0,	0,	'第一次约会去灯光比较暗的电影院你觉得怎么样？',	'',	1),
						(".($lastid+178).",".$weid.",	0,	".($lastid+177).",	'很不错',	'我觉得第一次约会去灯光比较暗的电影院很不错，你会不会害怕？',	1),
						(".($lastid+179).",".$weid.",	0,	".($lastid+177).",	'没感觉',	'我觉得第一次约会去灯光比较暗的电影院没感觉，你会不会害怕？',	1),
						(".($lastid+180).",".$weid.",	0,	".($lastid+177).",	'不太好',	'我觉得第一次约会去灯光比较暗的电影院不太好，你会不会害怕？',	1),
						(".($lastid+181).",".$weid.",	0,	0,	'第一次约会可以接受的亲密程度是？',	'',	1),
						(".($lastid+182).",".$weid.",	0,	".($lastid+181).",	'牵手',	'第一次约会如果女生同意的话，我可以接受的亲密程度时牵手，你可以吗？',	1),
						(".($lastid+183).",".$weid.",	0,	".($lastid+181).",	'接吻',	'第一次约会如果女生同意的话，我可以接受的亲密程度时接吻，你可以吗？',	1),
						(".($lastid+184).",".$weid.",	0,	".($lastid+181).",	'拥抱',	'第一次约会如果女生同意的话，我可以接受的亲密程度时拥抱，你可以吗？',	1),
						(".($lastid+185).",".$weid.",	0,	".($lastid+181).",	'其他',	'第一次约会如果女生同意的话，我可以接受的亲密程度时其他，你可以吗？',	1),
						(".($lastid+186).",".$weid.",	0,	0,	'如果约会时我穿了小护士装，你的反应会是什么？',	'',	1),
						(".($lastid+187).",".$weid.",	0,	".($lastid+186).",	'非常兴奋',	'看到约会对象穿小护士装，我会觉得非常兴奋你都喜欢穿什么？',	1),
						(".($lastid+188).",".$weid.",	0,	".($lastid+186).",	'都可以吧',	'看到约会对象穿小护士装，我会觉得都可以，你都喜欢穿什么？',	1),
						(".($lastid+189).",".$weid.",	0,	".($lastid+186).",	'不太开心',	'看到约会对象穿小护士装，我会觉得不太开心，你都喜欢穿什么？',	1),
						(".($lastid+190).",".$weid.",	0,	0,	'你会带女生去哪种地方共度良宵？',	'',	1),
						(".($lastid+191).",".$weid.",	0,	".($lastid+190).",	'高档酒店',	'如果女生愿意，我会带女生去高档酒店共度良宵，你觉得可以吗？',	1),
						(".($lastid+192).",".$weid.",	0,	".($lastid+190).",	'快捷酒店',	'如果女生愿意，我会带女生去快捷酒店共度良宵，你觉得可以吗？',	1),
						(".($lastid+193).",".$weid.",	0,	".($lastid+190).",	'自己家',	'如果女生愿意，我会带女生去自己家共度良宵，你觉得可以吗？',	1),
						(".($lastid+194).",".$weid.",	0,	0,	'约会时候你觉得谈论什么话题比较好？',	'',	1),
						(".($lastid+195).",".$weid.",	0,	".($lastid+194).",	'情感经历',	'我觉得约会的时候两个人谈谈情感经历比较有意思',	1),
						(".($lastid+196).",".$weid.",	0,	".($lastid+194).",	'约会经历',	'我觉得约会的时候两个人谈谈约会经历比较有意思',	1),
						(".($lastid+197).",".$weid.",	0,	".($lastid+194).",	'生活趣事',	'我觉得约会的时候两个人谈谈生活趣事比较有意思',	1),
						(".($lastid+198).",".$weid.",	0,	".($lastid+194).",	'其他',	'我觉得约会的时候两个人谈谈其他比较有意思',	1),
						(".($lastid+200).",".$weid.",	0,	0,	'你觉得那里最有魅力能电到我阿？',	'',	1),
						(".($lastid+201).",".$weid.",	0,	".($lastid+200).",	'眼睛',	'我觉得我眼睛比较有魅力，呵呵，不如我们先认识下吧~',	1),
						(".($lastid+202).",".$weid.",	0,	".($lastid+200).",	'鼻梁',	'我觉得我鼻梁比较有魅力，呵呵，不如我们先认识下吧~',	1),
						(".($lastid+203).",".$weid.",	0,	".($lastid+200).",	'手',	'我觉得我手比较有魅力，呵呵，不如我们先认识下吧~',	1),
						(".($lastid+204).",".$weid.",	0,	".($lastid+200).",	'笑容',	'我觉得我笑容比较有魅力，呵呵，不如我们先认识下吧~',	1),
						(".($lastid+205).",".$weid.",	0,	".($lastid+200).",	'嘴唇',	'我觉得我嘴唇比较有魅力，呵呵，不如我们先认识下吧~',	1),
						(".($lastid+206).",".$weid.",	0,	".($lastid+200).",	'胸部',	'我觉得我胸部比较有魅力，呵呵，不如我们先认识下吧~',	1),
						(".($lastid+207).",".$weid.",	0,	0,	'可以接受女朋友把第一次留到新婚之夜的想法吗？',	'',	1),
						(".($lastid+208).",".$weid.",	0,	".($lastid+207).",	'完全接受',	'我完全接受女生吧第一次留在新婚之夜的想法',	1),
						(".($lastid+209).",".$weid.",	0,	".($lastid+207).",	'需要考虑',	'我需要考虑女生吧第一次留在新婚之夜的想法',	1),
						(".($lastid+210).",".$weid.",	0,	".($lastid+207).",	'不能接受',	'我不能接受女生吧第一次留在新婚之夜的想法',	1),
						(".($lastid+213).",".$weid.",	0,	0,	'你会喜欢爱撒娇的女生吗？',	'',	1),
						(".($lastid+214).",".$weid.",	0,	".($lastid+213).",	'很喜欢',	'我很喜欢爱撒娇的女生，你是什么类型的？',	1),
						(".($lastid+215).",".$weid.",	0,	".($lastid+213).",	'可以接受',	'我可以接受爱撒娇的女生，你是什么类型的？',	1),
						(".($lastid+216).",".$weid.",	0,	".($lastid+213).",	'不喜欢',	'我不喜欢爱撒娇的女生，你是什么类型的？',	1),
						(".($lastid+219).",".$weid.",	0,	0,	'现在是在租房还是有自己的房子？我去会不会不方便？',	'',	1),
						(".($lastid+220).",".$weid.",	0,	".($lastid+219).",	'单独租房',	'我现在是单独租房，很欢迎你来！',	1),
						(".($lastid+221).",".$weid.",	0,	".($lastid+219).",	'住自己房子',	'我现在是住自己房子，很欢迎你来！',	1),
						(".($lastid+222).",".$weid.",	0,	".($lastid+219).",	'合租',	'我现在是和别人合租房子，很欢迎你来！',	1),
						(".($lastid+223).",".$weid.",	0,	0,	'以前有过几次感情经历？',	'',	1),
						(".($lastid+224).",".$weid.",	0,	".($lastid+223).",	'零次',	'我以前有过零次感情经历，但是这次我想要一段认真的感情。',	1),
						(".($lastid+225).",".$weid.",	0,	".($lastid+223).",	'不到三次',	'我以前有过不到三次情经历，但是这次我想要一段认真的感情。',	1),
						(".($lastid+226).",".$weid.",	0,	".($lastid+223).",	'不到五次',	'我以前有过不到五次经历，但是这次我想要一段认真的感情。',	1),
						(".($lastid+227).",".$weid.",	0,	".($lastid+223).",	'五次以上',	'我以前有过五次以上经历，但是这次我想要一段认真的感情。',	1),
						(".($lastid+228).",".$weid.",	0,	".($lastid+170).",	'比较愿意',	'我比较愿意在大街上吻你，你会有什么反应？',	1),
						(".($lastid+229).",".$weid.",	0,	".($lastid+170).",	'不太愿意',	'我不太愿意在大街上吻你，你会有什么反应？',	1),
						(".($lastid+230).",".$weid.",	0,	0,	'你是快捷酒店的会员吗？',	'',	1),
						(".($lastid+231).",".$weid.",	0,	".($lastid+230).",	'普通会员',	'我目前是普通会员，可以认识一下你吗？',	1),
						(".($lastid+232).",".$weid.",	0,	".($lastid+230).",	'白金会员',	'我目前是白金会员，可以认识一下你吗？',	1),
						(".($lastid+233).",".$weid.",	0,	".($lastid+230).",	'非会员',	'我目前是非会员，可以认识一下你吗？',	1),
						(".($lastid+234).",".$weid.",	0,	0,	'你愿意和我先这里交个朋友吗？',	'',	1),
						(".($lastid+235).",".$weid.",	0,	".($lastid+234).",	'当然愿意',	'我当然愿意和你交朋友',	1),
						(".($lastid+236).",".$weid.",	0,	".($lastid+234).",	'可以接受',	'我可以接受和你交朋友~',	1),
						(".($lastid+237).",".$weid.",	0,	".($lastid+234).",	'不太愿意',	'我不太愿意和你交朋友！',	1),
						(".($lastid+238).",".$weid.",	0,	0,	'约会时你觉得天气最好是？',	'',	1),
						(".($lastid+239).",".$weid.",	0,	".($lastid+238).",	'晴空万里',	'第一次约会时希望的天空晴空万里，这样很有情调！',	1),
						(".($lastid+240).",".$weid.",	0,	".($lastid+238).",	'阴雨绵绵',	'第一次约会时希望的天空阴雨绵绵，这样很有情调！',	1),
						(".($lastid+241).",".$weid.",	0,	".($lastid+238).",	'月黑风高',	'第一次约会时希望的天空月黑风高，这样很有情调！',	1);
	        	";
	        	pdo_query($sql);
	        	message('更新信息设置成功！', $this->createWebUrl('zhaohu', array('op' => 'display')), 'success');
	        }
	        include $this->template('web/zhaohu');
	    } elseif ($operation == 'post') {
	        $parentid = intval($_GPC['parentid']);
	        $id = intval($_GPC['id']);

	        if (!empty($id)) {
	            $category = pdo_fetch("SELECT * FROM " . tablename('jy_ppp_zhaohu') . " WHERE id = '$id'");
	        } else {
	            $category = array(
	                'displayorder' => 0,
	                'enabled' => 1,
	                'status' => 2,
	            );
	        }
	        if (!empty($parentid)) {
	            $parent = pdo_fetch("SELECT id, name,parentid FROM " . tablename('jy_ppp_zhaohu') . " WHERE id = '$parentid'");
	            if (empty($parent)) {
	                message('抱歉，不存在或是已经被删除！', $this->createWebUrl('post'), 'error');
	            }
	        }
	        if (checksubmit('submit')) {
	            if (empty($_GPC['catename'])) {
	                message('抱歉，请输入标题名称！');
	            }
	            $data = array(
	                'weid' => $_W['weid'],
	                'name' => $_GPC['catename'],
	                'description' => $_GPC['description'],
	                'enabled' => intval($_GPC['enabled']),
	                'displayorder' => intval($_GPC['displayorder']),
	                'enabled' => intval($_GPC['enabled']),
	                'parentid' => intval($parentid),
	            );


	            if (!empty($id)) {
	                unset($data['parentid']);
	                pdo_update('jy_ppp_zhaohu', $data, array('id' => $id));
	            } else {
	                pdo_insert('jy_ppp_zhaohu', $data);
	                $id = pdo_insertid();
	            }
	            message('更新信息设置成功！', $this->createWebUrl('zhaohu', array('op' => 'display')), 'success');
	        }
	        include $this->template('web/zhaohu');
	    } elseif ($operation == 'delete') {
	        $id = intval($_GPC['id']);
	        $category = pdo_fetch("SELECT id, parentid FROM " . tablename('jy_ppp_zhaohu') . " WHERE id = '$id'");
	        if (empty($category)) {
	            message('抱歉，不存在或是已经被删除！', $this->createWebUrl('zhaohu', array('op' => 'display')), 'error');
	        }
	        pdo_delete('jy_ppp_zhaohu', array('id' => $id, 'parentid' => $id), 'OR');
	        message('删除成功！', $this->createWebUrl('help', array('op' => 'display')), 'success');
	    }