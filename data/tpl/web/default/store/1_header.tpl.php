<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header-base', TEMPLATE_INCLUDEPATH)) : (include template('common/header-base', TEMPLATE_INCLUDEPATH));?>
<?php  $frames = buildframes(FRAME);_calc_current_frames($frames);?>
<div data-skin="default" class="skin-default <?php  if($_GPC['main-lg']) { ?> main-lg-body <?php  } ?>">
<?php  if($_W['template'] == 'black') { ?>
<div class="skin-black" data-skin="black">
	<div class="head">
		<nav class="navbar navbar-default" role="navigation">
			<div class="container ">
				<div class="navbar-header">
					<a class="navbar-brand" href="<?php  echo $_W['siteroot'];?>">
						<img src="<?php  if(!empty($_W['setting']['copyright']['blogo'])) { ?><?php  echo tomedia($_W['setting']['copyright']['blogo'])?><?php  } else { ?>./resource/images/logo/logo.png<?php  } ?>" class="pull-left" width="110px" height="35px">
					</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-left">
						<?php  global $top_nav?>
						<?php  if(is_array($top_nav)) { foreach($top_nav as $nav) { ?>
						<li<?php  if($nav['name'] == 'store') { ?> class="active"<?php  } ?>><a href="<?php  if(empty($nav['url'])) { ?><?php  echo url('home/welcome/' . $nav['name']);?><?php  } else { ?><?php  echo $nav['url'];?><?php  } ?>" <?php  if(!empty($nav['blank'])) { ?>target="_blank"<?php  } ?>><?php  echo $nav['title'];?></a></li>
						<?php  } } ?>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"><i class="wi wi-user color-gray"></i><?php  echo $_W['user']['username'];?> <span class="caret"></span></a>
							<ul class="dropdown-menu color-gray" role="menu">
								<li>
									<a href="<?php  echo url('user/profile');?>" target="_blank"><i class="wi wi-account color-gray"></i> 我的账号</a>
								</li>
								<li class="divider"></li>
								<?php  if($_W['isfounder'] && !user_is_vice_founder()) { ?>
								<li><a href="<?php  echo url('cloud/upgrade');?>" target="_blank"><i class="wi wi-update color-gray"></i> 自动更新</a></li>
								<?php  } ?>
								<li><a href="<?php  echo url('system/updatecache');?>" target="_blank"><i class="wi wi-cache color-gray"></i> 更新缓存</a></li>
								<li class="divider"></li>
								<li>
									<a href="<?php  echo url('user/logout');?>"><i class="fa fa-sign-out color-gray"></i> 退出系统</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</div>

<div class="main">
	<div class="container">
		<div class="panel panel-content main-panel-content ">
			<div class="panel-body clearfix main-panel-body ">
				<div class="left-menu">
					<div class="left-menu-content">
						<div class="left-menu-top skin-black">
							<div class="account-info-name">
								<a href="./index.php?c=home&a=welcome&do=account&"><i class="wi wi-back-circle"></i></a>
								<span class="account-name"><a href="./index.php?c=home&a=welcome&do=account&">商城</a></span>
							</div>
						</div>
						<?php  if(is_array($this->left_menus)) { foreach($this->left_menus as $key => $menus) { ?>
						<?php  if($key == 'store_manage' && !($_W['isfounder'] && !user_is_vice_founder())) { ?>
							<?php  continue;?>
						<?php  } ?>
						<div class="panel panel-menu">
							<div class="panel-heading">
								<span class=""><?php  echo $menus['title'];?></span>
							</div>
							<ul class="list-group">
								<?php  if(is_array($menus['menu'])) { foreach($menus['menu'] as $menu_key => $menu) { ?>
								<?php  if($key == 'store_goods' && !empty($_W['setting']['store'][$menu_key])) { ?>
									<?php  continue;?>
								<?php  } ?>
								<li class="list-group-item <?php  if(($_GPC['type'] == $menu['type'] && $_GPC['do'] == 'goodsbuyer') || ($_GPC['do'] == $menu['type'] && $_GPC['do'] != 'goodsbuyer')) { ?>active<?php  } ?>">
									<a href="<?php  echo $menu['url'];?>" class="text-over" >
										<i class="<?php  echo $menu['icon'];?>"></i> <?php  echo $menu['title'];?></a>
								</li>
								<?php  } } ?>
							</ul>
						</div>
						<?php  } } ?>
					</div>
				</div>
				<div class="right-content">
<?php  } else { ?>
<div class="head">
<nav class="navbar navbar-default" role="navigation">
<div class="container ">
	<div class="navbar-header">
		<a class="navbar-brand" href="<?php  echo $_W['siteroot'];?>">
			<img src="<?php  if(!empty($_W['setting']['copyright']['blogo'])) { ?><?php  echo tomedia($_W['setting']['copyright']['blogo'])?><?php  } else { ?>./resource/images/logo/logo.png<?php  } ?>" class="pull-left" width="110px" height="35px">
		</a>
	</div>
	<div class="collapse navbar-collapse">
		<ul class="nav navbar-nav navbar-left">
			<?php  global $top_nav?>
			<?php  if(is_array($top_nav)) { foreach($top_nav as $nav) { ?>
			<li<?php  if($nav['name'] == 'store') { ?> class="active"<?php  } ?>><a href="<?php  if(empty($nav['url'])) { ?><?php  echo url('home/welcome/' . $nav['name']);?><?php  } else { ?><?php  echo $nav['url'];?><?php  } ?>" <?php  if(!empty($nav['blank'])) { ?>target="_blank"<?php  } ?>><?php  echo $nav['title'];?></a></li>
			<?php  } } ?>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
				<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"><i class="wi wi-user color-gray"></i><?php  echo $_W['username']?> <span class="caret"></span></a>
				<ul class="dropdown-menu color-gray" role="menu">
					<li>
						<a href="<?php  echo url('user/profile');?>" target="_blank"><i class="wi wi-account color-gray"></i> 我的账号</a>
					</li>
					<li class="divider"></li>
					<?php  if($_W['isfounder'] && !user_is_vice_founder()) { ?>
					<li><a href="<?php  echo url('cloud/upgrade');?>" target="_blank"><i class="wi wi-update color-gray"></i> 自动更新</a></li>
					<?php  } ?>
					<li><a href="<?php  echo url('system/updatecache');?>" target="_blank"><i class="wi wi-cache color-gray"></i> 更新缓存</a></li>
					<li class="divider"></li>
					<li>
						<a href="<?php  echo url('user/logout');?>"><i class="fa fa-sign-out color-gray"></i> 退出系统</a>
					</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</nav>
</div>

<div class="main">
<div class="container">
<a href="javascript:;" class="js-big-main button-to-big color-gray" title="加宽">宽屏</a>
<div class="panel panel-content main-panel-content">
	<div class="content-head panel-heading main-panel-heading">
		<span class="font-lg"><i class="wi wi-store"></i> 商城</span></div>
	<div class="panel-body clearfix main-panel-body">
		<div class="left-menu">
			<div class="left-menu-content">
				<?php  if(is_array($this->left_menus)) { foreach($this->left_menus as $key => $menus) { ?>
				<?php  if($key == 'store_manage' && !($_W['isfounder'] && !user_is_vice_founder())) { ?>
					<?php  continue;?>
				<?php  } ?>
				<div class="panel panel-menu">
					<div class="panel-heading">
						<span class="no-collapse"><?php  echo $menus['title'];?><i class="wi wi-appsetting pull-right setting"></i></span>
					</div>
					<ul class="list-group">
						<?php  if(is_array($menus['menu'])) { foreach($menus['menu'] as $menu_key => $menu) { ?>
						<?php  if($key == 'store_goods' && !empty($_W['setting']['store'][$menu_key])) { ?>
							<?php  continue;?>
						<?php  } ?>
						<li class="list-group-item <?php  if(($_GPC['type'] == $menu['type'] && $_GPC['do'] == 'goodsbuyer') || ($_GPC['do'] == $menu['type'] && $_GPC['do'] != 'goodsbuyer')) { ?>active<?php  } ?>">
							<a href="<?php  echo $menu['url'];?>" class="text-over" >
								<i class="<?php  echo $menu['icon'];?>"></i> <?php  echo $menu['title'];?></a>
						</li>
						<?php  } } ?>
					</ul>
				</div>
				<?php  } } ?>
			</div>
		</div>
		<div class="right-content">
<?php  } ?>