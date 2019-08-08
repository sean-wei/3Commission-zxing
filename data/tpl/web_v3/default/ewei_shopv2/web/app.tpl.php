<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('_header', TEMPLATE_INCLUDEPATH)) : (include template('_header', TEMPLATE_INCLUDEPATH));?>

<link href="../addons/ewei_shopv2/plugin/app/static/css/page.css?v=20170922" rel="stylesheet" type="text/css"/>

<div class="page-header">
    当前位置：
    <span class="text-primary"><?php  echo m('plugin')->getName('app')?></span>
</div>

<div class="page-content">

    <div class="alert alert-primary">
        <p><b>小程序说明</b></p>
        <p>小程序是微信小程序的管理后台，可在此设置个性化首页排版、基本设置、设置微信支付、审核发布。</p>
    </div>


    <div class="wxapp-list" style="padding: 0">
        <div class="wxapp-item" style="border: solid 1px #eaeaea;webkit-box-shadow: 0px 0px 17px rgba(0, 0, 0, 0.0);box-shadow: 0px 0px 17px rgba(0, 0, 0, 0.0);margin:0 20px 0 0;width: 240px">
 
            <div class="name">页面设计</div>
            <div class="qrcode" style="border-radius: 10px">
                <img src="../addons/ewei_shopv2/static/images/shop1.png" onerror="this.src='../addons/ewei_shopv2/static/images/nopic.png'" />
            </div>
            <div class="line"></div>
            <div class="text" style="padding:  20px 30px;">
            分为商城首页与自定义页面两种，自定义页面可以做为文章或商城主题活动使用。
				
<a href="index.php?c=site&a=entry&m=ewei_shopv2&do=web&r=app.page" class="btn btn-success btn-lg " style="margin-top: 15px;line-height: 12px;"  role="button">进入</a>
				
            </div>
        </div> 
		
        <div class="wxapp-item" style="border: solid 1px #eaeaea;webkit-box-shadow: 0px 0px 17px rgba(0, 0, 0, 0.0);box-shadow: 0px 0px 17px rgba(0, 0, 0, 0.0);margin:0 20px 0 0;width: 240px">
 
            <div class="name">小程序设置</div>
            <div class="qrcode" style="border-radius: 10px">
                <img src="../addons/ewei_shopv2/static/images/shop2.png" onerror="this.src='../addons/ewei_shopv2/static/images/nopic.png'" />
            </div>
            <div class="line"></div>
            <div class="text" style="padding:  20px 30px;">
            小程序发布前，AppID、AppSecret为必填配置，微信支付以为客服为可选功能。
			<a href="index.php?c=site&a=entry&m=ewei_shopv2&do=web&r=app.setting" class="btn btn-success btn-lg " style="margin-top: 15px;line-height: 12px;"  role="button">进入</a>
		
            </div>
        </div>
		
		
        <div class="wxapp-item" style="border: solid 1px #eaeaea;webkit-box-shadow: 0px 0px 17px rgba(0, 0, 0, 0.0);box-shadow: 0px 0px 17px rgba(0, 0, 0, 0.0);margin:0 20px 0 0;width: 240px">
 
            <div class="name">首页广告</div>
            <div class="qrcode" style="border-radius: 10px">
                <img src="../addons/ewei_shopv2/static/images/shop3.png" onerror="this.src='../addons/ewei_shopv2/static/images/nopic.png'" />
            </div>
            <div class="line"></div>
            <div class="text" style="padding:  20px 30px;">
            首页广告为弹出式，进商城首页时强出，先设置好广告，在商城首页的配置中引用。 
			<a href="index.php?c=site&a=entry&m=ewei_shopv2&do=web&r=app.startadv" class="btn btn-success btn-lg " style="margin-top: 15px;line-height: 12px;"  role="button">进入</a>
		
            </div>
        </div>
		
		
        <div class="wxapp-item" style="border: solid 1px #eaeaea;webkit-box-shadow: 0px 0px 17px rgba(0, 0, 0, 0.0);box-shadow: 0px 0px 17px rgba(0, 0, 0, 0.0);margin:0 20px 0 0;width: 240px">
 
            <div class="name">底部导航</div>
            <div class="qrcode" style="border-radius: 10px">
                <img src="../addons/ewei_shopv2/static/images/shop4.png" onerror="this.src='../addons/ewei_shopv2/static/images/nopic.png'" />
            </div>
            <div class="line"></div>
            <div class="text" style="padding: 20px 30px;">
            底部导航比较特别，改动后需重新提交微信审核，并且审核通过后才可生效。
			<a href="index.php?c=site&a=entry&m=ewei_shopv2&do=web&r=app.tabbar" class="btn btn-success btn-lg " style="margin-top: 15px;line-height: 12px;"  role="button">进入</a>
		
            </div>
        </div>
		
		
		
		
    </div>
	
</div>

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('_footer', TEMPLATE_INCLUDEPATH)) : (include template('_footer', TEMPLATE_INCLUDEPATH));?>