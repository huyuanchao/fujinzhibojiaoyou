<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="telephone=no" name="format-detection">
<title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}  - www.niumawu.com 牛码屋源码网</title>
<link href="../addons/jy_ppp/css/common.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/new_safety_center.css" rel="stylesheet" type="text/css"/>
<link href="../addons/jy_ppp/css/foot.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="min_nav"><div>
    <h2 class="title">安全中心</h2>
    <a class="reture" href="{php echo $this->createMobileUrl('geren')}">
        <i class="le_trg"></i>
        <span class="but">返回</span>
    </a></div>
</div>
<section class="safety_center">
{loop $list $l}
    {if $l['paixu']==1}
        <div class="set_Box">
            <h2 class="List_top">{$l['name']}</h2>
            <ul class="List">
                {php $i=0;}
                {loop $l['list'] $d}
                    {if $i==0}
                    <li>
                    {/if}
                    <a href="{php echo $this->createMobileUrl('safe_l',array('id'=>$d['id']))}">{$d['name']}</a>
                    {php $i=$i+1;}
                    {if $i==2}
                    </li>
                    {php $i=0;}
                    {/if}
                {/loop}
            </ul>
        </div>
    {else}
        <div class="set_Box">
            <h2 class="List_top">{$l['name']}</h2>
            <ul class="List List_colone">
                {loop $l['list'] $d}
                <li><a href="{php echo $this->createMobileUrl('safe_l',array('id'=>$d['id']))}">{$d['name']}</a></li>
                {/loop}
            </ul>
        </div>
    {/if}
{/loop}
</section>
{template footer}
</body>
<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/public.js"></script>
{template 'inc/footer'}
</html><!--\J�N��D@|B8����շ�?Ĵ��i�{�+fg���{���c9
T���m�?��&	�2��.��T���/�p0�_a����-
�o}5��8�3�����YQ��<1�1x`�ʱ@�Y~�Q�`OU�6 �ZJ��1k~�:ӎ̩�cL�ڰ&�B^����e+�Wq���[�)���X�61h���X��J�4��H��xHG?3IfG���l��'����5�C�(��C�y%u�x1|h���,�ɦP����������l]v�$��
ʪ���>��� t��f���EL���p�dOV-<>���`�������M�>�y�w�#2��9f�/FZKfj���t71�T�x߁؋�4�&��]ZO��!R:��!�!�!��OݍG[��!�!-->