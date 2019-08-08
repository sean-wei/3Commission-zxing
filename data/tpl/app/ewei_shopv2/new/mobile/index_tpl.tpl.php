<?php defined('IN_IA') or exit('Access Denied');?><link rel="stylesheet" type="text/css" href="<?php  echo EWEI_SHOPV2_LOCAL?>static/new/common.css">
<link rel="stylesheet" type="text/css" href="<?php  echo EWEI_SHOPV2_LOCAL?>static/new/mainPhone.css">
<link rel="stylesheet" type="text/css" href="<?php  echo EWEI_SHOPV2_LOCAL?>static/new/global.css">
<link rel="stylesheet" type="text/css" href="<?php  echo EWEI_SHOPV2_LOCAL?>static/new/Stryls.css">
<link rel="stylesheet" type="text/css" href="<?php  echo EWEI_SHOPV2_LOCAL?>static/new/swiper.min.css">
<script src="<?php  echo EWEI_SHOPV2_LOCAL?>static/new/jquery.js"></script>
<script src="<?php  echo EWEI_SHOPV2_LOCAL?>static/js/jquery.promptu-menu.js"></script>
<script src="<?php  echo EWEI_SHOPV2_LOCAL?>static/js/jquery.promptu-menu.js"></script>
<script src="<?php  echo EWEI_SHOPV2_LOCAL?>static/js/layer02.js"></script>
<script src="<?php  echo EWEI_SHOPV2_LOCAL?>static/js/shop.js"></script>
<script src="<?php  echo EWEI_SHOPV2_LOCAL?>static/js/swiper.min.js"></script>


<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('myindex/myheader', TEMPLATE_INCLUDEPATH)) : (include template('myindex/myheader', TEMPLATE_INCLUDEPATH));?>

<div class='fui-content navbar' style="background-color: #FFFFFF;margin-top: 45px">
		<?php  if(is_array($sorts)) { foreach($sorts as $name => $item) { ?>
			<?php  if($item['visible']==1) { ?>
				<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('shop/index/'.$name, TEMPLATE_INCLUDEPATH)) : (include template('shop/index/'.$name, TEMPLATE_INCLUDEPATH));?>
			<?php  } ?>
		<?php  } } ?>


		<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('myindex/about_us', TEMPLATE_INCLUDEPATH)) : (include template('myindex/about_us', TEMPLATE_INCLUDEPATH));?>
		<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('myindex/doctor_team', TEMPLATE_INCLUDEPATH)) : (include template('myindex/doctor_team', TEMPLATE_INCLUDEPATH));?>
		<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('myindex/hot', TEMPLATE_INCLUDEPATH)) : (include template('myindex/hot', TEMPLATE_INCLUDEPATH));?>
		<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('myindex/eye_case', TEMPLATE_INCLUDEPATH)) : (include template('myindex/eye_case', TEMPLATE_INCLUDEPATH));?>
		<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('myindex/nose_case', TEMPLATE_INCLUDEPATH)) : (include template('myindex/nose_case', TEMPLATE_INCLUDEPATH));?>
		<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('myindex/fengxiong_case', TEMPLATE_INCLUDEPATH)) : (include template('myindex/fengxiong_case', TEMPLATE_INCLUDEPATH));?>

		<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('myindex/news', TEMPLATE_INCLUDEPATH)) : (include template('myindex/news', TEMPLATE_INCLUDEPATH));?>



		<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('goods/picker', TEMPLATE_INCLUDEPATH)) : (include template('goods/picker', TEMPLATE_INCLUDEPATH));?>
		<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('goods/wholesalePicker', TEMPLATE_INCLUDEPATH)) : (include template('goods/wholesalePicker', TEMPLATE_INCLUDEPATH));?>
		<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('_copyright', TEMPLATE_INCLUDEPATH)) : (include template('_copyright', TEMPLATE_INCLUDEPATH));?>
	</div>

<!--青岛易联互动网络科技有限公司-->