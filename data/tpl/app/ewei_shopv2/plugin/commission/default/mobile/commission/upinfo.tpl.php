<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('_header', TEMPLATE_INCLUDEPATH)) : (include template('_header', TEMPLATE_INCLUDEPATH));?>
<style>
	#file-avatar {
		opacity: 0;
		position: absolute;
		top: 0;
		left: 0;
		bottom: 0;
		right: 0;
		z-index: 9;
		background: red;
		width: 100%;
	}
	.fui-list-img{
		display: -webkit-box;
		display: -webkit-flex;
		display: flex;
		-webkit-flex-shrink: 0;
		-ms-flex: 0 0 auto;
		-webkit-flex-shrink: 0;
		flex-shrink: 0;
		-webkit-box-lines: single;
		-moz-box-lines: single;
		-webkit-flex-wrap: nowrap;
		flex-wrap: nowrap;
		box-sizing: border-box;
		-webkit-box-align: center;
		-webkit-align-items: center;
		align-items: center;
		margin-right: .6rem;
		color: #aaa;
		position: relative;
		margin-right: 0;
	}
	.fui-list-img img{
		width: 2.5rem;
		height: 2.5rem;
		border-radius: 50%;
	}
	.fui-cell-group .fui-cell  .fui-cell-remark.down:after {
		-webkit-transform: rotate(135deg);
		-ms-transform: rotate(135deg);
		transform: rotate(135deg);
		top:-.1rem;
	}
</style>
<div class='fui-page  fui-page-current' style="background-color: #FFFFFF">
	<div class="fui-header">
		<div class="fui-header-left">
			<a class="back" onclick='location.back()'></a>
		</div>
		<div class="title">我的上级</div>
		<div class="fui-header-right">&nbsp;</div>
	</div>

	<div class='fui-content'>
		<div class="fui-list-group">
			<input type="file" name="file-avatar" id="file-avatar" disabled="disabled" />

			<div class="van-uploader clearfix" id="btn-avatar">
				<div class="icon-touxiang">
					<img src="<?php  echo $avatar;?>" id="avatar"
						 data-wechat="<?php  echo $member['avatar_wechat'];?>"
						 data-filename="<?php  echo $avatar;?>"
						 onerror="this.src='../addons/ewei_shopv2/static/images/noface.png';">
				</div>

			</div>

		</div>


		<?php  if(empty($template_flag)) { ?>

		<div class="fui-cell-group">
			<div class="fui-cell">
				<div class="fui-cell-label">昵称</div>
				<div class="fui-cell-info"><input type="text" class='fui-input' id='nickname'  placeholder="请输入您的昵称"  value="<?php  echo $nickname;?>" /></div>
			</div>
			<div class="fui-cell">
				<div class="fui-cell-label ">真实姓名</div>
				<div class="fui-cell-info">
					<input type="text" class='fui-input' id='realname' name='realname'  value="<?php  echo $realname;?>" /></div>
			</div>

			<div class="fui-cell">
				<div class="fui-cell-label">手机号码</div>
				<div class="fui-cell-info c000">
					<input type="text" class='fui-input' id='mobile' name='mobile'   value="<?php  echo $mobile;?>" />
				</div>
			</div>

			<div class="fui-cell">
				<div class="fui-cell-label">微信号</div>
				<div class="fui-cell-info c000">
					<input type="text"  class='fui-input'  id='weixin' name='weixin' value="<?php  echo $weixin;?>" /></div>
			</div>



		</div>
		<?php  } else { ?>
		<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('diyform/formfields', TEMPLATE_INCLUDEPATH)) : (include template('diyform/formfields', TEMPLATE_INCLUDEPATH));?>
		<?php  } ?>

	</div>
	<script language='javascript'>

	</script>
	<script language='javascript'>
        require(['biz/member/info'], function (modal) {
            modal.initFace({});
        });
	</script>
</div>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('_footer', TEMPLATE_INCLUDEPATH)) : (include template('_footer', TEMPLATE_INCLUDEPATH));?>

