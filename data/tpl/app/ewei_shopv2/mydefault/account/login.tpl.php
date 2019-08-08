<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('_header', TEMPLATE_INCLUDEPATH)) : (include template('_header', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="../addons/ewei_shopv2/template/account/default/style.css?v=2.0.0">
<style type="text/css">
    .account-top .logo2 img {     max-width: 100%; overflow: hidden;}
    .account-login-link { color:<?php  echo $set['wap']['color'];?>;  }
    .fui-cell-group .fui-cell-info .fui-input { color:<?php  echo $set['wap']['color'];?>; }
    /*.btn.account-btn { border:1px solid <?php  echo $set['wap']['color'];?>;color:<?php  echo $set['wap']['color'];?>;}*/
    .fui-cell-group .fui-cell:before {
        border-top: 1px solid<?php  echo $set['wap']['color'];?>;
        color: <?php  echo $set['wap']['color'];?>;
    }
</style>


<div class="layout" style="background-color: #FFFFFF">
    <div class="clearfix posfixed">
        <div class="menu_icon clear">
            <div class="Inn01-erSiteTop ">
                <a href="javascript:window.history.back(-1);" class="mxjhui"><i class="icon01"></i></a>
            </div>
            <div class="tiaotlNav">分销员中心</div>

        </div>
    </div>

<div class="fui-page">
    <?php  if(is_h5app()) { ?>
    <div class="fui-header">
        <div class="fui-header-left">
            <a class="back"> </a>
        </div>
        <div class="title">用户登录</div>
        <div class="fui-header-right" data-nomenu="true"></div>
    </div>
    <?php  } ?>
    <div class="fui-content" >
        <div class="account-bg">
            <img src="<?php echo empty($set['wap']['bg'])?'../addons/ewei_shopv2/template/account/default/bg.jpg':tomedia($set['wap']['bg'])?>" />
        </div>


        <div class="fui-cell-group fui-cell-group-o account-cell-group">

            <div class="fui-cell">
            <div class="account-top">
                <div class="logo2">
                    <img src="<?php  echo '../addons/ewei_shopv2/template/account/mydefault/logo.png'?>" />
                </div>
            </div>
            </div>

            <!--<div class="fui-cell">-->
                <!--<div class="fui-cell-info account-cell">-->
                    <!--<input type="tel" class="fui-input" name="mobile" id="mobile" placeholder="请输入手机号码" value="<?php  echo trim($_GPC['mobile'])?>" maxlength="11" />-->
                <!--</div>-->
            <!--</div>-->

            <div class="fui-cell">
                    <div class="icon-shouji2"><img src="<?php echo EWEI_SHOPV2_STATIC;?>images/p.png"></div>
                    <div class="van-fieldbody">
                        <input type="tel" placeholder="请输入手机号码" name="mobile" id="mobile" maxlength="11" value="<?php  echo trim($_GPC['mobile'])?>" class="van-fieldcontrol"></div>
            </div>

            <!--<div class="fui-cell">-->
                <!--<div class="fui-cell-info account-cell">-->
                    <!--<input type="password" class="fui-input"  name="pwd" id="pwd" placeholder="请输入登录密码" value=""/>-->
                <!--</div>-->
            <!--</div>-->

            <div class="fui-cell">
                <div class="icon-shouji2"><img src="<?php echo EWEI_SHOPV2_STATIC;?>images/s.png"></div>
                <div class="van-fieldbody">
                    <input type="password" class="van-fieldcontrol" name="pwd" id="pwd" placeholder="请输入登录密码" value="">
            </div>
            </div>

            <!--<div class="fui-cell">-->
                <!--<div class="fui-cell-info ">-->
                    <!--<div class="btn btn-default btn-default-o block account-btn" id="btnSubmit">立即登录</div>-->
                <!--</div>-->
            <!--</div>-->

            <div class="fui-cell">

            <div class="clearfix lCenterForm-grop" style="border:none;">
                <button class="lCenterForm-gropButton" id="btnSubmit">
                    <span>立即登录</span>

                </button>
            </div>
            </div>


            <div class="fui-cell-title" style="padding:0rem 1rem;;">
                    <a href="<?php  echo $set['wap']['regurl'];?>" class="account-login-link external pull-right" style="color: grey">立即注册</a>
                    <a href="<?php  echo $set['wap']['forgeturl'];?>" class="account-login-link  external"  style="color: grey">密码找回 </a>
             </div>
        </div>

        <?php  if(is_h5app()) { ?>
            <?php  if(!empty($sns['wx']) || !empty($sns['qq'])) { ?>
                <div class="sns-login">
                    <div class="title">
                        <div class="text">第三方登录</div>
                    </div>
                    <div class="icons">
                        <?php  if(!empty($sns['wx'])) { ?>
                        <div class="item btn-sns" data-sns="wx" style="display: none;" id="threeWX"><i class="icon icon-wechat1"></i></div>
                        <?php  } ?>
                        <?php  if(!empty($sns['qq'])) { ?>
                        <div class="item btn-sns" data-sns="qq"><i class="icon icon-qq" style="font-size: 1.5rem"></i></div>
                        <?php  } ?>
                    </div>
                </div>
            <?php  } ?>
        <?php  } ?>

        <script language='javascript'>
            require(['biz/member/account'], function (modal) {
                modal.initLogin({backurl:'<?php  echo $backurl;?>'});
            });
        </script>
    </div>
</div>

<?php  $initWX=true?>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('_footer', TEMPLATE_INCLUDEPATH)) : (include template('_footer', TEMPLATE_INCLUDEPATH));?>