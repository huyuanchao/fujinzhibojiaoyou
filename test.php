<?php
echo time();

$lianxi=pdo_fetchall("SELECT a.id,a.mid as mid,b.avatar,b.nicheng,b.province,b.brith,b.sex,c.height FROM ".tablename('jy_ppp_xinxi')." as a left join ".tablename('jy_ppp_member')." as b on a.mid=b.id left join ".tablename('jy_ppp_basic')." as c on a.mid=c.mid WHERE a.weid=".$weid." AND a.sendid=".$mid." AND a.type!=0 GROUP BY a.mid ORDER BY a.createtime DESC LIMIT 10 ");

?>