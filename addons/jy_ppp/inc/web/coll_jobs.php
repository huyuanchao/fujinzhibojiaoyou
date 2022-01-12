<?php
global $_W, $_GPC;

$weid = $_W ['uniacid'];
checklogin ();

$operation = ! empty ( $_GPC ['op'] ) ? $_GPC ['op'] : 'index';

if ($operation == 'index') {

    $site_map = array(
        '1'=>'http://www.qqyou.com/zipai/nansheng/list',
        '2'=>'http://www.qqyou.com/zipai/nvsheng/list',
    );


    $sex = ! empty ( $_GPC ['sex'] ) ? $_GPC ['sex'] : 2;
    $page = ! empty ( $_GPC ['page'] ) ? $_GPC ['page'] : 1;
    if(!isset($site_map[$sex])){
        echo '采集参数错误，未识别到采集地址！';
        exit;
    }
    //采集地址
    $url = $site_map[$sex].$page.'.html';

    $rs = ihttp_get($url);
    if('OK'!=$rs['status'] || empty($rs['content'])){
        echo '采集地址打开异常，或已无数据:'.$url;
        exit;
    }
    $content = iconv('gbk','UTF-8',$rs['content']);
    $list = list_html($content);
    if(empty($list)){
        echo '地址打开正常，但是未采集到任何数据'.$url;
        exit;
    }
    //获取page信息
    $page_data = list_page($content);
    $page_html = '<div><ul class="pagination pagination-centered">';
    foreach($page_data as $value){
        $page_html .= '<li class=""><a href="javascript:void(0);" onclick="return rest_coll('.$value['page'].');" >'.$value['title'].'</a></li>';
    }
    $page_html .='</ul></div>';

    $num = count($list);
    $html = '<div class="panel-heading">
					本页采集总数:'.$num.' 个
				</div>
				<div class="panel-body table-responsive">
				'.$page_html.'
					<table class="table table-hover">

					<thead class="navbar-inner">
						<tr>
							<th style="width:8%;">编号</th>
							<th style="width:8%;">用户</th>
							<th style="width:15%;">头像</th>
							<th style="width:15%;">操作</th>
						</tr>
					</thead>

					<tbody id="main">';

    foreach($list as $key=>$value){
        $html .='<tr class="selectedTr">
							<td>'.($key+1).'
							</td>
							<td class="text-left">
								'.$value['title'].'
							</td>

							<td class="text-left">
								<img width="80" src="'.$value['img'].'" >
							</td>

							<td class="text-left">
							<a href="'.$this->createWebUrl ( 'one_coll', array ('url' => $value['href'],'sex'=>$sex ) ).'" target="coll">采集</a>
							</td>
						</tr>';
    }

				$html .='</tbody>
					</table>
					'.$page_html.'
				</div>';
    echo $html;

}
//获取列表数据
function list_html($content){
    $site = 'http://www.qqyou.com';
    $list_s = '<div class="water">';//开始标签
    $list_e = '<div id="loadgif" class="loading" style="display:none">';//结束标签

    $l_s = '<div class="ptu"><div class="bd"><ul class="pic">';//单条记录开始
    $l_e = '<\/div><\/div><div class="ft">';//单条记录结束

    $int = preg_match("/{$list_s}(.*?){$list_e}/ius",$content,$h1);
    if(!$int){
        echo '未匹配到列表页数据块';
        exit;
    }
    $h1 = $h1[1];

    $int = preg_match_all("/{$l_s}(.*?){$l_e}/ius",$h1,$h2);
    if(!$int){
        echo '未匹配到列表页数据记录';
        exit;
    }
    $h2 = $h2[1];
    $data = array();
    foreach($h2 as $key=>$value){
        $data[$key]['img'] = build_url(preg_img_src($value),$site);
        $data[$key]['title'] = preg_title($value);
        $data[$key]['href'] = build_url(preg_href($value),$site);;
    }
    return $data;

    //return $content;
}
//
function list_page($content){
    $list_s = '<div class="pagelistbox">';//开始标签
    $list_e = '<\/div><\/ul><\/div>';//结束标签

    $l_s = '<a href';//单条记录开始
    $l_e = '<\/a>';//单条记录结束

    $int = preg_match("/{$list_s}(.*?){$list_e}/ius",$content,$h1);
    if(!$int){
        return false;
    }
    $h1 = $h1[1];

    $int = preg_match_all("/{$l_s}(.*?){$l_e}/ius",$h1,$h2);
    if(!$int){
        return false;
    }
    $h2 = $h2[0];
    $data = array();
    foreach($h2 as $key=>$value){
        $data[$key]['page'] =  preg_num(preg_href($value));
        $data[$key]['title'] = preg_con($value);
    }
    return $data;
}
function build_url($url,$site){
    if(false !== strpos($url,'http')){
        return $url;
    }
    return $site.$url;
}

function preg_img_src($img){
    preg_match('/<img.*?src="(.*?)".*?>/ius',$img,$array);
    return $array[1];
}

function preg_title($img){
    preg_match('/<a.*?title="(.*?)".*?>/ius',$img,$array);
    return $array[1];
}

function preg_con($img){
    preg_match('/<a.*?>(.*?)<\/a>/ius',$img,$array);
    return $array[1];
}

function preg_num($img){
    preg_match('/[0-9]+/ius',$img,$array);
    return $array[0];
}

function preg_href($img){
    preg_match('/<a.*?href="(.*?)".*?>/ius',$img,$array);
    return $array[1];
}