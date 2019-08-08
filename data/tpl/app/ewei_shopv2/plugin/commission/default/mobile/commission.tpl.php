<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('_header', TEMPLATE_INCLUDEPATH)) : (include template('_header', TEMPLATE_INCLUDEPATH));?>

<script>document.title = "<?php  echo $this->set['texts']['center']?>"; </script>

<script>

    document.documentElement.style.fontSize =document.documentElement.clientWidth/750*40 +"px";

</script>

<script src="//at.alicdn.com/t/font_82607_6xtuyfrxik6v42t9.js"></script>

<style type="text/css">

	.icon1 {

		width: .8rem; height: .8rem;

		vertical-align: -0.15em;

		fill: currentColor;

		overflow: hidden;

	}

</style>

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('commission/common', TEMPLATE_INCLUDEPATH)) : (include template('commission/common', TEMPLATE_INCLUDEPATH));?>

<div class="fui-page fui-page-current page-commission-index " style="background-color: #FFFFFF">

	<div class="fui-header">
		<div class="fui-header-left">
			<a class="back" onclick='location.back()'></a>
		</div>
		<div class="title"><?php  echo $this->set['texts']['center']?></div>
		<div class="fui-header-right"></div>
	</div>




    <div class='fui-content navbar' >

		<div class="clearfix retailCenter">
			<div class="clearfix ql-container">
		<div class="clearfix ql-editor" >


			<div class="clearfix borStyu">
				<div class="clearfix borStyuleftUl">
					<div class="uleftUl-left">
						<img src="<?php  echo $member['avatar'];?>" class="eftUl-lef">
						<div class="neirhoub">
							<div class="neirhoub3pp"><?php  echo $member['nickname'];?> </div>

							<?php  if(empty($up)) { ?>
							<div class="neirhoubpp"><?php  echo $this->set['texts']['up']?>:
								总店
							</div>
							<?php  } else { ?>
							<a href="<?php  echo mobileUrl('commission/upinfo')?>" class="neirhoubpp"><?php  echo $this->set['texts']['up']?>:
								<?php  echo $up['nickname'];?>
							</a>
								<?php  } ?>


						</div>
						<div class="dongshi"><img src="<?php  echo EWEI_SHOPV2_LOCAL?>static/new/images/ds.png" <?php  if($this->set['levelurl']!='') { ?>onclick='location.href="<?php  echo $this->set['levelurl']?>"'<?php  } ?>>
							<?php echo empty($level) ? ( empty($this->set['levelname'])?'普通等级':$this->set['levelname'] ) : $level['levelname']?>
							<?php  if($this->set['levelurl']!='') { ?><?php  } ?></div>
					</div>


				</div>
				<a href="<?php  echo mobileUrl('commission/withdraw')?>">
					<div class="borStyuPeice"><span><?php  echo number_format($member['commission_total'],2)?></span>元</div>
					<div class="borStyu-Peice">已为您创造业绩</div>
				</a>

			</div>



			<div class="clearfix bordeffLiStyu">
				<h2 class="bordeffLiStyuh2"><?php  echo number_format( $member['commission_ok'],2)?></h2>
				<div class="bordeffLiStyuh2pp">可提现佣金（元）</div>

				<?php  if($cansettle) { ?>

				<a class="bordeffLiStyuti" href="<?php  echo mobileUrl('commission/withdraw')?>"><span style="line-height: 1"><?php  echo $this->set['texts']['commission']?><?php  echo $this->set['texts']['withdraw']?></span></a>

				<?php  } else { ?>

				<div class="bordeffLiStyuti" onclick="FoxUI.toast.show('满 <?php  echo $this->set['withdraw']?> <?php  echo $this->set['texts']['yuan']?>才能提现!')"><?php  echo $this->set['texts']['commission']?><?php  echo $this->set['texts']['withdraw']?></div>

				<?php  } ?>

			</div>
			<div class="clearfix bordeffLiStyu">
				<h2 class="bordeffLiStyuh2"><?php  echo number_format($member['commission_pay'],2)?></h2>
				<div class="bordeffLiStyuh2pp">成功提现佣金（元）</div>
				<a href="<?php  echo mobileUrl('commission/log')?>" class="bordeffLiStyuti">提现明细</a>
			</div>
		</div>

				<div class="clearfix bordeff">
					<div class="ql-editor ql-snow ql-container">
						<div class="bordeffUl">

							<a class="bordeffUlList" href="<?php  echo mobileUrl('commission/order')?>">
								<img src="<?php  echo EWEI_SHOPV2_LOCAL?>static/new/images/dd01.png">
								<div class="bordeffUlH2">分销订单</div>
							</a>

							<a class="bordeffUlList" href="<?php  echo mobileUrl('commission/down')?>">
								<img src="<?php  echo EWEI_SHOPV2_LOCAL?>static/new/images/dd02.png">
								<div class="bordeffUlH2">我的团队</div>
							</a>

							<a class="bordeffUlList" href="<?php  echo mobileUrl('commission/qrcode')?>">
								<img src="<?php  echo EWEI_SHOPV2_LOCAL?>static/new/images/dd03.png">
								<div class="bordeffUlH2">推广二维码</div>
							</a>

						</div>

					</div>
				</div>

			</div>

		</div>

	</div>




		<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('_copyright', TEMPLATE_INCLUDEPATH)) : (include template('_copyright', TEMPLATE_INCLUDEPATH));?>

    </div>



    <?php  $this->footerMenus()?>


<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('_footer', TEMPLATE_INCLUDEPATH)) : (include template('_footer', TEMPLATE_INCLUDEPATH));?>