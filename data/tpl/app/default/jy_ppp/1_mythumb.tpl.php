<html><head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="telephone=no" name="format-detection">
    <title>{if !empty($sitem['aname'])}{$sitem['aname']}{else}婚恋交友{/if}  -婚恋交友</title>

        <link href="../addons/jy_ppp/css/public_reset.css" rel="stylesheet" type="text/css">
        <link href="../addons/jy_ppp/css/public.css" rel="stylesheet" type="text/css">
        <link href="../addons/jy_ppp/css/public_disbox.css" rel="stylesheet" type="text/css">
        <link href="../addons/jy_ppp/css/public_headmessage.css" rel="stylesheet" type="text/css">
        <link href="../addons/jy_ppp/css/user_album.css" rel="stylesheet" type="text/css">
        <link href="../addons/jy_ppp/css/my_album.css" rel="stylesheet" type="text/css">

</head>
<body style="zoom: 1; background-color: rgb(0, 0, 0);" class="disbox-ver">



<nav class="nav">
    <h2>我的相册（<span id="now">1</span>/<span id="all">1</span>）</h2>
    <div class="left" onClick="{php echo $this->createMobileUrl('geren')}">
        <i class="le_trg"></i>返回
    </div>
</nav>
<div class="album disbox-flex disbox-hor">
    <ul class="disbox-hor" id="photo_list" style="width: 100%;">

        {loop $thumb $t}
        <li class="disbox-flex disbox-center" style="transform: translateX(0%);">
            <img data-id="{$t['id']}" data-ismain="false" {if $t['type']==1} data-cansetmain="true" {else} data-cansetmain="false" {/if} {if $t['type']==0 } data-checking="true" {else} data-checking="false" {/if} src="{php echo tomedia($t['thumb'])}">
        </li>
        {/loop}

    </ul>
</div>

<div class="album_foot">
    <span id="set" class="dark-gray">设为头像</span>
    <span id="remove" class="dark-gray">删除</span>
    <span id="back">关闭</span>
</div>
<!--删除弹窗-->
<div id="del_alert" class="del_alert hidden">
    <p class="detial">确定删除此照片？</p>
    <div class="btn">
        <span data-cancel="">取消</span>
        <span data-ok="">确定</span>
    </div>
</div>
<input type="hidden"  {if empty($i)} value="0" {else} value="{$i}" {/if} id="photo_index">
</body>


<script src="../addons/jy_ppp/js/zepto.min.js"></script>
<script src="../addons/jy_ppp/js/public.js"></script>
<script src="../addons/jy_ppp/js/waiting.js"></script>
<script src="../addons/jy_ppp/js/user_album.js"></script>
<script>
    var MyAlbum = (function () {
        return {
            getPhotoId: function () {
                var img = $('#photo_list img').eq(Album.index);
                if (img.length) {
                    return img.data('id');
                }
            },
            isChecking: function () {
                var img = $('#photo_list img').eq(Album.index);
                if (img.length) {
                    return img.data('checking');
                }
            },
            canSetMain:function(){
                var img = $('#photo_list img').eq(Album.index);
                if (img.length) {
                    return img.data('cansetmain');
                }
            },
            showAlert: function () {
                $("#del_alert").removeClass("hidden");
            },
            hideAlert: function () {
                $("#del_alert").addClass("hidden");
            },
            {if empty($_GPC['xuniid']) || $member['type']!=3}
                deletePhoto: function () {
                    var photoId = MyAlbum.getPhotoId();
                    $.ajax({url: "{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('mythumb',array('op'=>'del')),2);}", data: {id: photoId}, dataType: 'text', type: 'post', success: function (re) {
                        if (re == 1) {
                            $("#photo_list li").eq(Album.index).remove();
                            Album.size--;
                            Album.scrollLeft()
                        } else {
                            $.tips("删除失败");
                        }
                        MyAlbum.hideAlert();
                    }, error: function () {
                        $.tips("网络问题,请稍后重试");
                        MyAlbum.hideAlert();
                    }
                    });
                },
                setIcon: function () {
                    var photoId = MyAlbum.getPhotoId();
                    $.ajax({
                        url: "{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('mythumb',array('op'=>'set')),2);}",
                        data: {id: photoId},
                        dataType: 'text',
                        type: 'post',
                        success: function (re) {
                            if (re == 1) {
                                $.tips("已设为头像");
                            } else {
                                $.tips("不能设置为头像");
                            }
                        }, error: function () {
                            $.tips("网络问题,请稍后重试")
                        }});
                }
            {else}
                deletePhoto: function () {
                    var photoId = MyAlbum.getPhotoId();
                    $.ajax({url: "{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('mythumb',array('op'=>'del','xuniid'=>$_GPC['xuniid'])),2);}", data: {id: photoId}, dataType: 'text', type: 'post', success: function (re) {
                        if (re == 1) {
                            $("#photo_list li").eq(Album.index).remove();
                            Album.size--;
                            Album.scrollLeft()
                        } else {
                            $.tips("删除失败");
                        }
                        MyAlbum.hideAlert();
                    }, error: function () {
                        $.tips("网络问题,请稍后重试");
                        MyAlbum.hideAlert();
                    }
                    });
                },
                setIcon: function () {
                    var photoId = MyAlbum.getPhotoId();
                    $.ajax({
                        url: "{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('mythumb',array('op'=>'set','xuniid'=>$_GPC['xuniid'])),2);}",
                        data: {id: photoId},
                        dataType: 'text',
                        type: 'post',
                        success: function (re) {
                            if (re == 1) {
                                $.tips("已设为头像");
                            } else {
                                $.tips("不能设置为头像");
                            }
                        }, error: function () {
                            $.tips("网络问题,请稍后重试")
                        }});
                }
            {/if}
        }
    })();

    Album.scrollCallback=function(){
        if(!MyAlbum.canSetMain()){
            $("#set").addClass('dark-gray');
        }else{
            $("#set").removeClass('dark-gray');
        }
        if(MyAlbum.isChecking()){
            $("#remove").addClass('dark-gray');
        }else{
            $("#remove").removeClass('dark-gray');
        }
    }

    //查看照片 相册页
    $(function () {

        $("#remove").bind("click",function(){
            if (Album.size == 1) {
                $.tips("相册至少保留一张照片.");
                return
            }
            if(MyAlbum.isChecking()){
                return;
            }
            MyAlbum.showAlert();
        });
        $("#del_alert .btn [data-cancel]").bind("click",function(){
            MyAlbum.hideAlert();
        });
        $("#del_alert .btn [data-ok]").bind("click",function(){
            MyAlbum.deletePhoto();
        });
        $("#set").bind("click",function(){
            if(MyAlbum.canSetMain()){
                MyAlbum.setIcon();
            }
        });
        {if empty($_GPC['xuniid']) || $member['type']!=3}
        $("#back").bind("click",function(){
            window.location.href="{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('upload'),2)}";
        });
        {else}
        $("#back").bind("click",function(){
            window.location.href="{php echo $_W['siteroot'].'app/'.substr($this->createMobileUrl('upload',array('xuniid'=>$_GPC['xuniid'])),2)}";
        });
        {/if}

    })

</script>
<div></div>
{template 'inc/footer'}
</html>