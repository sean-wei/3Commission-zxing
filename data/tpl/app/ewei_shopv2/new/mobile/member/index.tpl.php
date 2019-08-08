<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('_header', TEMPLATE_INCLUDEPATH)) : (include template('_header', TEMPLATE_INCLUDEPATH));?>
<style>
	.fui-icon-col.external.before:before{
		content: '';
		position: absolute;
		top: 1rem;
		bottom: 1rem;
		left: 0;
		width: 1px;
		background-color: #ebebeb;
		display: block;
		z-index: 15;
	}

</style>
<div class='fui-page  fui-page-current'>
	<div class="fui-header">
		<div class="fui-header-left">
			<a class="back" onclick='location.back()'></a>
		</div>
		<div class="title">会员中心</div>
		<div class="fui-header-right"></div>
	</div>

	<div class='fui-content member-page navbar'>
		<div class="clearfix IslayBodys">
			<div class="uleftUl-left">
				<img src="<?php  echo $member['avatar'];?>" onerror="this.src='../addons/ewei_shopv2/static/images/noface.png'" class="eftUl-lef">
				<div class="neirhoub">
					<div class="neirhoub3pp" style="line-height: 2;"><?php  echo $member['nickname'];?></div>
					<div class="neirhoubpp"><img src="<?php  echo EWEI_SHOPV2_LOCAL?>static/new/images/c01.png" class="c01png"><?php  echo $member['mobile'];?></div>
				</div>

				<div class="clearfix"><a href="<?php  echo mobileUrl('commission')?>" class="fxyCenter">分销员中心</a></div>
			</div>
		</div>




		<?php  if(p('task')) { ?>
		<?php  if(p('task')->get_unread()) { ?>
		<div class="fui-cell-group fui-cell-click" style="border-top: 1px solid #ebebeb;border-bottom: 1px solid #ebebeb;    margin-bottom: 0.5rem;">
			<a class="fui-cell external" href="<?php  echo mobileUrl('task')?>">
				<div class="fui-cell-icon"><i class="icon icon-gifts"></i></div>
				<style>
					.task-red-mark{background-color: #ff5555;position: absolute;width: 6.9px;height: 6.9px;border-radius: 50%;display: block;left: 6.9rem;top: 0.69rem}
				</style>
				<div class="fui-cell-text"><p>您有奖励待领取</p><span class="task-red-mark"></span></div>
				<div class="fui-cell-remark"></div>
			</a>
		</div>
		<?php  } else if(p('task')->TasknewEntrance()) { ?>
		<div class="fui-cell-group fui-cell-click" style="border-top: 1px solid #ebebeb;border-bottom: 1px solid #ebebeb;    margin-bottom: 0.5rem;">
			<a class="fui-cell" href="<?php  echo mobileUrl('task')?>">
				<div class="fui-cell-icon"><i class="icon icon-gifts"></i></div>
				<div class="fui-cell-text"><p>任务中心</p></div>
				<div class="fui-cell-remark"></div>
			</a>
		</div>
		<?php  } ?>
		<?php  } ?>



		<!--我的订单-->
		<div class="fui-cell-group fui-cell-click" style="margin-top: 0">

			<a class="fui-cell external" href="<?php  echo mobileUrl('order')?>">
				<div class="fui-cell-icon"><img src="<?php  echo EWEI_SHOPV2_LOCAL?>static/new/images/c02.png"></img></div>
				<div class="fui-cell-text">我的订单</div>
				<div class="fui-cell-remark" style="font-size: 0.65rem;">查看订单</div>
			</a>


			<div class="clearfix centerVidy">
				<a href="<?php  echo mobileUrl('order',array('status'=>0))?>" class="centerVidyList"><img src="<?php  echo EWEI_SHOPV2_LOCAL?>static/new/
images/cd01.png">
					<p>已预约</p>
				</a>
				<a href="<?php  echo mobileUrl('order',array('status'=>-1))?>" class="centerVidyList"><img src="<?php  echo EWEI_SHOPV2_LOCAL?>static/new/
images/cd02.png">
					<p>已取消</p>
				</a>

				<a href="<?php  echo mobileUrl('order',array('status'=>3))?>" class="centerVidyList"><img src="<?php  echo EWEI_SHOPV2_LOCAL?>static/new/
images/cd03.png">
					<p>已消费</p>
				</a>
			</div>


		</div>
		<?php  if($needbind) { ?>
		<div class="fui-cell-group fui-cell-click external">
			<a class="fui-cell"  href="<?php  echo mobileUrl('member/bind')?>">
				<div class="fui-cell-text">
					<i class="icon icon-shouji" style="color: #666;"></i>
					绑定手机号
					<div class="fui-cell-tip">如果您用手机号注册过会员或您想通过微信外购物请绑定您的手机号码</div>
				</div>
				<div class="fui-cell-remark"></div>
			</a>
		</div>
		<?php  } ?>

		<?php  if(!empty($roleuser)) { ?>
		<div class="fui-cell-group fui-cell-click external">
			<a class="fui-cell"  href="<?php  echo mobileUrl('mmanage')?>" data-nocache="true">
				<div class="fui-cell-text">
					<i class="icon icon-shouji" style="color: #666;"></i>
					<?php  echo m('plugin')->getName('mmanage')?>
					<div class="fui-cell-tip">当前用户已绑定操作员，您可以通过手机管理商城</div>
				</div>
				<div class="fui-cell-remark"></div>
			</a>
		</div>
		<?php  } ?>

		<!--add-->
		<div class="clearfix ql-container" style="height: 60%;">
			<div class="clearfix ql-editor" style="padding-top: 0px; background-color: #FFFFFF">

				<div class="centeritem-box">
					<a href="<?php  echo mobileUrl('sale/coupon/my')?>" class="clearfix">
						<div class="icon-etong"><img src="<?php  echo EWEI_SHOPV2_LOCAL?>static/new/images/c03.png"></div>
						<span class="mymenu-name">优惠券</span>
						<div class="cententer-icon"></div>
						<?php  if($statics['coupon']>0) { ?><div class="hunberCenter"><?php  echo $statics['coupon'];?></div><?php  } ?>

					</a>
				</div>

				<div class="centeritem-box">
					<a href="<?php  echo mobileUrl('member/favorite');?>" class="clearfix">
						<div class="icon-etong"><img src="<?php  echo EWEI_SHOPV2_LOCAL?>static/new/images/c04.png"></div>
						<span class="mymenu-name">收藏夹</span>
						<div class="cententer-icon"></div>
						<?php  if($statics['favorite']>0) { ?><div class="hunberCenter"><?php  echo $statics['favorite'];?></div><?php  } ?>

					</a>
				</div>

				<div class="centeritem-box">
					<a href="<?php  echo mobileUrl('member/cart')?>" class="clearfix">
						<div class="icon-etong"><img src="<?php  echo EWEI_SHOPV2_LOCAL?>static/new/images/c05.png"></div>
						<span class="mymenu-name">购物车</span>
						<div class="cententer-icon"></div>
						<?php  if($statics['cart']>0) { ?><div class="hunberCenter"><?php  echo $statics['cart'];?></div><?php  } ?>
					</a>
				</div>

				<div class="centeritem-box">
					<a href="<?php  echo mobileUrl('member/info')?>" class="clearfix">
						<div class="icon-etong"><img src="<?php  echo EWEI_SHOPV2_LOCAL?>static/new/images/c06.png"></div>
						<span class="mymenu-name ">个人资料</span>
						<div class="cententer-icon"></div>
					</a>
				</div>


			</div>
		</div>


		<?php  if($newstore_plugin) { ?>
		<div class="fui-cell-group fui-cell-click">
			<a class="fui-cell external" href="<?php  echo mobileUrl('newstore/norder')?>">
				<div class="fui-cell-icon"><i class="icon icon-list"></i></div>
				<div class="fui-cell-text">我的预约</div>
				<div class="fui-cell-remark" style="font-size: 0.65rem;">查看全部预约</div>
			</a>
			<div class="fui-icon-group selecter">
				<a class="fui-icon-col external" href="<?php  echo mobileUrl('newstore/norder',array('status'=>0))?>">
					<?php  if($statics['norder_0']>0) { ?><div class="badge"><?php  echo $statics['norder_0'];?></div><?php  } ?>
					<div class="icon icon-green radius"><i class="icon icon-pay"></i></div>
					<div class="text">待付款</div>
				</a>
				<a class="fui-icon-col external" href="<?php  echo mobileUrl('newstore/norder',array('status'=>1))?>">
					<?php  if($statics['norder_1']>0) { ?><div class="badge"><?php  echo $statics['norder_1'];?></div><?php  } ?>
					<div class="icon icon-orange radius"><i class="icon icon-like"></i></div>
					<div class="text">待使用</div>
				</a>
				<a class="fui-icon-col external" href="<?php  echo mobileUrl('newstore/norder',array('status'=>3))?>">
					<?php  if($statics['norder_3']>0) { ?><div class="badge"><?php  echo $statics['norder_3'];?></div><?php  } ?>
					<div class="icon icon-blue radius"><i class="icon icon-discover"></i></div>
					<div class="text">已完成</div>
				</a>
				<a class="fui-icon-col external" href="<?php  echo mobileUrl('newstore/norder',array('status'=>4))?>">
					<?php  if($statics['norder_4']>0) { ?><div class="badge"><?php  echo $statics['norder_4'];?></div><?php  } ?>
					<div class="icon icon-pink radius"><i class="icon icon-remind"></i></div>
					<div class="text">取消预约</div>
				</a>
			</div>
		</div>
		<?php  } ?>


		<?php  if(!empty($haveverifygoods)) { ?>
		<!--<div class="fui-cell-group fui-cell-click">-->
			<!--<a class="fui-cell external" href="<?php  echo mobileUrl('verifygoods')?>">-->
				<!--<div class="fui-cell-icon"><i class="icon icon-list"></i></div>-->
				<!--<div class="fui-cell-text">待使用商品信息</div>-->
				<!--<div class="fui-cell-remark" style="font-size: 0.5rem;"></div>-->
			<!--</a>-->

			<?php  if(!empty($verifygoods)) { ?>
			<!--<div class="fui-icon-group selecter" style="overflow: scroll;">-->
				<!--<ul class="banner-ul">-->
					<?php  if(is_array($verifygoods)) { foreach($verifygoods as $item) { ?>
					<!--<li   <?php  if($item['numlimit']) { ?>class="banner-li-blue"<?php  } ?>>-->
					<!--<a  <?php  if($item['cangetcard']) { ?> href="javascript:;" onclick="addCard('<?php  echo $item['card_id'];?>','<?php  echo $item['cardcode'];?>')" <?php  } else { ?> href="<?php  echo mobileUrl('verifygoods/detail',array('id'=>$item['id']))?>" <?php  } ?>>-->
					<!--<div></div>-->
					<!--<span>  <?php  if($item['cangetcard']) { ?>  待激活 <?php  } else { ?>待使用<?php  } ?></span>-->
					<!--<img src="<?php  echo $item['thumb'];?>" alt="">-->
					<!--<p>	<?php  echo $item['title'];?></p>-->
					<!--</a>-->
					<!--</li>-->
					<?php  } } ?>
				<!--</ul>-->
			<!--</div>-->
			<?php  } ?>
		<!--</div>-->
		<?php  } ?>

		<?php  if($hasdividend) { ?>
		<div class="fui-cell-group fui-cell-click">
			<a class="fui-cell external"  href="<?php  echo mobileUrl('dividend')?>">
				<div class="fui-cell-icon"><i class="icon icon-profile"></i></div>
				<div class="fui-cell-text"><p><?php  echo $dividendData['texts']['agent'];?></p></div>
				<div class="fui-cell-remark"></div>
			</a>
		</div>
		<?php  } ?>

		<?php  if($hasThreen) { ?>
		<div class="fui-cell-group fui-cell-click">
			<a class="fui-cell"  href="<?php  echo mobileUrl('threen')?>">
				<div class="fui-cell-icon"><i class="icon icon-profile"></i></div>
				<div class="fui-cell-text"><p><?php  echo $plugin_threen_set['texts']['threen'];?></p></div>
				<div class="fui-cell-remark"></div>
			</a>
		</div>
		<?php  } ?>
		<?php  if($haslive) { ?>
		<div class="fui-cell-group fui-cell-click">
			<a class="fui-cell" href="<?php  echo mobileUrl('live')?>">
				<div class="fui-cell-icon"><i class="icon icon-zhibo1"></i></div>
				<div class="fui-cell-text"><p><?php  echo $live_set['pluginname'];?></p></div>
				<div class="fui-cell-remark"></div>
			</a>
		</div>
		<?php  } ?>
		<?php  if($hassign) { ?>
		<div class="fui-cell-group fui-cell-click">
			<a class="fui-cell" href="<?php  echo mobileUrl('sign')?>">
				<div class="fui-cell-icon"><i class="icon icon-qiandao"></i></div>
				<div class="fui-cell-text"><p><?php  echo $hassign;?></p></div>
				<div class="fui-cell-remark"></div>
			</a>
		</div>
		<?php  } ?>

		<?php  if($hasglobonus) { ?>
		<div class="fui-cell-group fui-cell-click">
			<a class="fui-cell"  href="<?php  echo mobileUrl('globonus')?>">
				<div class="fui-cell-icon"><i class="icon icon-gudong1"></i></div>
				<div class="fui-cell-text"><p><?php  echo $plugin_globonus_set['texts']['center'];?></p></div>
				<div class="fui-cell-remark"></div>
			</a>
		</div>
		<?php  } ?>

		<?php  if($hasabonus) { ?>
		<div class="fui-cell-group fui-cell-click">
			<a class="fui-cell"  href="<?php  echo mobileUrl('abonus')?>">
				<div class="fui-cell-icon"><i class="icon icon-profile"></i></div>
				<div class="fui-cell-text"><p><?php  echo $plugin_abonus_set['texts']['center'];?></p></div>
				<div class="fui-cell-remark"></div>
			</a>
		</div>
		<?php  } ?>


		<?php  if($hasauthor) { ?>
		<div class="fui-cell-group fui-cell-click">
			<a class="fui-cell"  href="<?php  echo mobileUrl('author')?>">
				<div class="fui-cell-icon"><i class="icon icon-profile"></i></div>
				<div class="fui-cell-text"><p><?php  echo $plugin_author_set['texts']['center'];?></p></div>
				<div class="fui-cell-remark"></div>
			</a>
		</div>
		<?php  } ?>

		<?php  if(!empty($showcard)) { ?>
		<div class="fui-cell-group fui-cell-click">
			<a class="fui-cell" href="javascript:;" onclick="addCard('<?php  echo $card['card_id'];?>','')">
				<div class="fui-cell-icon"><i class="icon icon-same"></i></div>
				<div class="fui-cell-text"><p><?php  echo $cardtag;?></p></div>
				<div class="fui-cell-remark"></div>
			</a>
		</div>
		<?php  } ?>

		<?php  if($hasqa) { ?>
		<div class="fui-cell-group fui-cell-click">
			<a class="fui-cell external" href="<?php  echo mobileUrl('qa')?>">
				<div class="fui-cell-icon"><i class="icon icon-bangzhu1"></i></div>
				<div class="fui-cell-text"><p>帮助中心</p></div>
				<div class="fui-cell-remark"></div>
			</a>
		</div>
		<?php  } ?>
		<?php  if(!is_weixin()) { ?>
		<div class="fui-cell-group fui-cell-click transparent">
		<a class="fui-cell external changepwd" href="<?php  if(!empty($member['mobileverify'])) { ?><?php  echo mobileUrl('member/changepwd')?><?php  } else { ?><?php  echo mobileUrl('member/bind')?><?php  } ?>">
		<div class="fui-cell-text" style="text-align: center;border: 1px solid #c2a674;color:#c2a674"><p>修改密码</p></div>
		</a>
		<a class="fui-cell external btn-logout">
		<div class="fui-cell-text" style="text-align: center;background:#c2a674"><p>退出登录</p></div>
		</a>
		</div>

		<div class="pop-apply-hidden" style="display: none">
			<div class="verify-pop pop">
				<div class="close"><i class="icon icon-roundclose"></i></div>
				<div class="qrcode">
					<div class="inner">
						<div class="title"><?php  echo $set['applytitle'];?></div>
						<div class="text"><?php  echo $set['applycontent'];?></div>
					</div>
					<div class="inner-btn" style="padding: 0.5rem">
						<div class="btn btn-warning" style="width: 100%; margin: 0">我已阅读</div>
					</div>
				</div>
			</div>
		</div>

		<?php  } ?>
		<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('_copyright', TEMPLATE_INCLUDEPATH)) : (include template('_copyright', TEMPLATE_INCLUDEPATH));?>
	</div>
	<script language='javascript'>
        require(['biz/member/index'], function (modal) {
            modal.init();
        });
	</script>
</div>

<script  language='javascript'>
    var lis = $('.banner-ul').find('li');
    $('.banner-ul').width(lis.length*8.3+'rem');

    function addCard(card_id,code) {

        var data = {'openid': '<?php  echo $_W["openid"]?>', 'card_id': card_id, 'code': code};
        $.ajax({
            url: "<?php  echo mobileUrl('sale/coupon/getsignature')?>",
            data: data,
            cache: false
        }).done(function (result) {
            var data = jQuery.parseJSON(result);
            if (data.status == 1) {
                wx.addCard({
                    cardList: [
                        {
                            cardId: card_id,
                            cardExt: data.result.cardExt
                        }
                    ],
                    success: function (res) {
                        //alert('已添加卡券：' + JSON.stringify(res.cardList));
                    },
                    cancel: function (res) {
                        //alert(JSON.stringify(res))
                    }
                });
            } else {
                alert("微信接口繁忙,请稍后再试!");
                alert(data.result.message);
            }
        });
    }

</script>

<?php  if(empty($_GPC['isnewstore']) ) { ?>
<?php  $this->footerMenus()?>
<?php  } else { ?>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('../../../plugin/newstore/template/mobile/default/_menu', TEMPLATE_INCLUDEPATH)) : (include template('../../../plugin/newstore/template/mobile/default/_menu', TEMPLATE_INCLUDEPATH));?>
<?php  } ?>

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('_footer', TEMPLATE_INCLUDEPATH)) : (include template('_footer', TEMPLATE_INCLUDEPATH));?>
