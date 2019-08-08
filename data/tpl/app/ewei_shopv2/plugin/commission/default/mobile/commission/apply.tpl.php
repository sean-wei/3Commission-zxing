<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('_header', TEMPLATE_INCLUDEPATH)) : (include template('_header', TEMPLATE_INCLUDEPATH));?>
<script>document.title = "<?php  echo $this->set['texts']['center']?>"; </script>
<style>
    .fui-cell-group .fui-cell .fui-cell-icon{
        width: auto;
    }
    .fui-cell-group .fui-cell .fui-cell-icon img{
        width: 1.3rem;
        height: 1.3rem;
    }
    .fui-cell-group .fui-cell.no-border{
        padding-top: 0;
    }
    .fui-cell-group .fui-cell.no-border .fui-cell-info{
        font-size: .6rem;
        color: #999;
    }
</style>
<div class='fui-page  fui-page-current'>
    <div class="fui-header">
        <div class="fui-header-left">
            <a class="back"></a>
        </div>
        <div class="title">申请<?php  echo $this->set['texts']['withdraw']?></div>

    </div>
    <div class='fui-content' >
        <div class='fui-cell-group'>

            <div class='fui-cell no-border'style="padding-top: 1rem">
                <div class='fui-cell-info' style="font-size: .7rem;color: #666;">我的<?php  echo $this->set['texts']['commission_ok']?></div>
            </div>
            <div class='fui-cell' style="padding-top: 0;padding-bottom: 1rem;font-size:1rem;color: #ceb78b;">
                ￥<div class='fui-cell-info' style='font-size:1rem;color: #ceb78b;' id='current'><?php  echo number_format($commission_ok,2)?></div>
            </div>
        </div>
        <div class='fui-cell-group'>
            <!--<div class="fui-cell">-->
                <!--<div class="fui-cell-label" style="width: 120px;"><span class="re-g">提现方式</span></div>-->
                <!--<div class="fui-cell-info">-->

                    <!--<select id="applytype">-->
                        <?php  if(is_array($type_array)) { foreach($type_array as $key => $value) { ?>
                        <!--<option value="<?php  echo $key;?>" <?php  if(!empty($value['checked'])) { ?>selected<?php  } ?>><?php  echo $value['title'];?></option>-->
                        <?php  } } ?>
                    <!--</select>-->
                <!--</div>-->
                <!--<div class="fui-cell-remark"></div>-->
            <!--</div>-->
            <div class="fui-cell">
                <div class="fui-cell-label" style="width: 120px;"><span class="re-g">提现方式</span></div>
            </div>
            <?php  if(!empty($type_array['0'])) { ?>
            <div class="fui-cell applyradio">
                <div class="fui-cell-icon"><img src="<?php echo EWEI_SHOPV2_STATIC;?>images/ye.png" alt=""></div>
                <div class="fui-cell-info">
                    <?php  echo $this->set['texts']['withdraw']?>到余额
                </div>
                <div class="fui-cell-remark noremark"><input name="1" type="radio"class="fui-radio fui-radio-danger"   data-type="0" <?php  if(!empty($type_array[0]['checked']) ) { ?>checked="cheched"<?php  } ?>></div>
            </div>
            <?php  } ?>
            <?php  if(!empty($type_array['1'])) { ?>
            <div class="fui-cell applyradio">
                <div class="fui-cell-icon"><img src="<?php echo EWEI_SHOPV2_STATIC;?>images/wx.png" alt=""></div>
                <div class="fui-cell-info">
                    <?php  echo $this->set['texts']['withdraw']?>到微信钱包
                </div>
                <div class="fui-cell-remark noremark"><input   name="1" type="radio"class="fui-radio fui-radio-danger"  data-type="1" <?php  if(!empty($type_array[1]['checked']) ) { ?>checked="cheched"<?php  } ?>></div>
            </div>
            <?php  } ?>
            <?php  if(!empty($type_array['2'])) { ?>
            <div class="fui-cell applyradio">
                <div class="fui-cell-icon"><img src="<?php echo EWEI_SHOPV2_STATIC;?>images/zfb.png" alt=""></div>
                <div class="fui-cell-info">
                    <?php  echo $this->set['texts']['withdraw']?>到支付宝
                </div>
                <div class="fui-cell-remark noremark"><input  name="1"  type="radio"class="fui-radio fui-radio-danger" data-type="2"  <?php  if(!empty($type_array[2]['checked']) ) { ?>checked="cheched"<?php  } ?>></div>
            </div>
            <?php  } ?>
            <?php  if(!empty($type_array['2'])) { ?>
                    <div class="fui-cell ab-group" <?php  if(empty($type_array[2]['checked']) || empty($type_array[3]['checked']) ) { ?>style="display: none;"<?php  } ?>>
                    <div class="fui-cell-label" style="width: 120px;">姓名</div>
                    <div class="fui-cell-info"><input type="text" id="realname" name="realname" placeholder="请输入姓名" class='fui-input' value="<?php  echo $last_data['realname'];?>" max="25"/></div>
                </div>
                <?php  } ?>

                <?php  if(!empty($type_array['2'])) { ?>
                <div class="fui-cell alipay-group" <?php  if(empty($type_array[2]['checked'])) { ?>style="display: none;"<?php  } ?>>
                <div class="fui-cell-label" style="width: 120px;">支付宝帐号</div>
                <div class="fui-cell-info"><input type="text" id="alipay" name="alipay" placeholder="请输入支付宝账号" class='fui-input' value="<?php  echo $last_data['alipay'];?>" max="25"/></div>
            </div>

            <div class="fui-cell alipay-group" <?php  if(empty($type_array[2]['checked'])) { ?>style="display: none;"<?php  } ?>>
            <div class="fui-cell-label" style="width: 120px;">确认帐号</div>
            <div class="fui-cell-info"><input type="text" id="alipay1" name="alipay1"placeholder="请确认帐号" class='fui-input' value="<?php  echo $last_data['alipay'];?>" max="25"/></div>
        </div>
        <?php  } ?>



<?php  if(!empty($type_array['3'])) { ?>
<form action="<?php  echo mobileUrl('commission/apply')?>" method="post">

            <div class="fui-cell applyradio">
                <div class="fui-cell-icon"><img src="<?php echo EWEI_SHOPV2_STATIC;?>images/yinhangka.png" alt=""></div>
                <div class="fui-cell-info">
                    <?php  echo $this->set['texts']['withdraw']?>到银行卡
                </div>
                <div class="fui-cell-remark noremark">
                    <input  name="1"  type="radio" class="fui-radio fui-radio-danger" data-type="3"  checked="cheched"></div>
                    <input type="hidden" id="paytype" name="paytype" value="3"/>
            </div>
<?php  } ?>

            <?php  if(!empty($type_array['3'])) { ?>
            <div class="fui-cell ab-group2" >
            <div class="fui-cell-label" style="width: 120px;">姓名</div>
            <div class="fui-cell-info"><input type="text" id="realname2" name="realname" placeholder="请输入姓名" class='fui-input' value="<?php  echo $last_data['realname'];?>" max="25"/></div>
            </div>

<div class="fui-cell ab-group2" >
<div class="fui-cell-label" style="width: 120px;">身份证号</div>
<div class="fui-cell-info"><input type="text" id="realid" name="realid" placeholder="请输入身份证号" class='fui-input' value="<?php  echo $last_data['realid'];?>" max="18"/></div>
</div>
            <?php  } ?>
            <?php  if(!empty($type_array['3'])) { ?>
            <!--<div class="fui-cell bank-group" <?php  if(empty($type_array[3]['checked'])) { ?>style="display: none;"<?php  } ?>>-->
                <!--<div class="fui-cell-label" style="width: 120px;"><span class="re-g">选择银行</span></div>-->
                <!--<div class="fui-cell-info">-->

                    <!--<select id="bankname" name="bankname">-->
                        <?php  if(is_array($banklist)) { foreach($banklist as $key => $value) { ?>
                        <!--<option value="<?php  echo $bankname;?>" <?php  if(!empty($last_data) && $last_data['bankname'] == $value['bankname']) { ?>selected<?php  } ?>><?php  echo $value['bankname'];?></option>-->
                        <?php  } } ?>
                    <!--</select>-->
                    <!--<input type="hidden" name="bankname" value="<?php  echo $bankname;?>"/>-->
                <!--</div>-->
                <!--<div class="fui-cell-remark"></div>-->
            <!--</div>-->

            <div class="fui-cell bank-group" >
                <div class="fui-cell-label" style="width: 120px;">银行卡号</div>
                <div class="fui-cell-info"><input type="text" id="bankcard" name="bankcard"placeholder="请输入银行卡号" class='fui-input' value="<?php  echo $last_data['bankcard'];?>" max="25"/></div>
            </div>

            <div class="fui-cell bank-group">
                <div class="fui-cell-label" style="width: 120px;">银行预留手机号</div>
                <div class="fui-cell-info"><input type="text" id="bankphone" name="bankphone" placeholder="请输入银行预留手机号" class='fui-input' value="<?php  echo $last_data['bankphone'];?>" max="11"/></div>
            </div>
            <?php  } ?>


        <button type="submit" style="width: 94%;background: #ceb78b;border: 1px solid #ceb78b;" class='btn btn-warning mtop block btn-submit <?php  if(!$cansettle) { ?>disabled<?php  } ?>' data-type="1">下一步</button>

</form>
        <!--<div class='fui-cell-group' <?php  if(empty($set_array['charge'])) { ?>style="display: none;"<?php  } ?>>-->
            <!--<div class='fui-cell'>-->
                <!--<div class='fui-cell-info' id="chargeinfo">查看详细信息</div>-->
            <!--</div>-->

            <?php  if(!empty($set_array['charge'])) { ?>
            <!--<div class='fui-cell charge-group' style="display: none;">-->
                <!--<div class='fui-cell-info'>佣金提现<?php  echo $this->set['texts']['commission_charge']?> <?php  echo $set_array['charge'];?>%</div>-->
            <!--</div>-->
            <?php  } ?>

            <?php  if(!empty($set_array['end'])) { ?>
            <!--<div class='fui-cell charge-group' style="display: none;">-->
                <!--<div class='fui-cell-info'> <?php  echo $this->set['texts']['commission_charge']?>金额在￥<?php  echo $set_array['begin'];?>到￥<?php  echo $set_array['end'];?>间免收</div>-->
            <!--</div>-->
            <?php  } ?>

            <?php  if(!empty($deductionmoney)) { ?>
            <!--<div class='fui-cell charge-group' style="display: none;">-->
                <!--<div class='fui-cell-info'>本次提现将<?php  echo $this->set['texts']['commission_charge']?>金额 ￥ <?php  echo $deductionmoney;?></div>-->
            <!--</div>-->
            <?php  } ?>

            <?php  if(!empty($set_array['charge'])) { ?>
            <!--<div class='fui-cell charge-group' style="display: none;">-->
                <!--<div class='fui-cell-info'>本次提现实际到账金额 ￥ <?php  echo $realmoney;?></div>-->
            <!--</div>-->
            <?php  } ?>

        <!--</div>-->
            <div class='fui-cell-group' style="background: transparent;padding-top: 1rem;padding-bottom: 1rem; <?php  if(empty($set_array['charge'])) { ?>display: none;<?php  } ?>  ">
                <div class='fui-cell no-border'>
                    <div class='fui-cell-info'>详细说明：</div>
                </div>
                <?php  if(!empty($set_array['charge'])) { ?>
                <div class='fui-cell no-border charge-group' >
                    <div class='fui-cell-info'>佣金提现<?php  echo $this->set['texts']['commission_charge']?> <?php  echo $set_array['charge'];?>%</div>
                </div>
                <?php  } ?>
                <?php  if(!empty($set_array['end'])) { ?>
                <div class='fui-cell no-border charge-group' >
                    <div class='fui-cell-info'> <?php  echo $this->set['texts']['commission_charge']?>金额在￥<?php  echo $set_array['begin'];?>到￥<?php  echo $set_array['end'];?>间免收</div>
                </div>
                <?php  } ?>
                <?php  if(!empty($deductionmoney)) { ?>

                <div class='fui-cell no-border charge-group'>
                    <div class='fui-cell-info'>本次提现将<?php  echo $this->set['texts']['commission_charge']?>金额 ￥ <?php  echo $deductionmoney;?></div>
                </div>
                <?php  } ?>
                <?php  if(!empty($set_array['charge'])) { ?>

                <div class='fui-cell no-border charge-group' >
                    <div class='fui-cell-info'>本次提现实际到账金额 <span class="text-warning">￥ <?php  echo $realmoney;?></span></div>
                </div>
                <?php  } ?>

            </div>
    </div>
    <script language='javascript'>
        // require(['../addons/ewei_shopv2/plugin/commission/static/js/apply.js'], function (modal) {
        //     modal.init({
        //         withdraw:<?php  echo floatval($withdraw)?>
        //     });
        // });
    </script>
</div>

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('_footer', TEMPLATE_INCLUDEPATH)) : (include template('_footer', TEMPLATE_INCLUDEPATH));?>

<!--青岛易联互动网络科技有限公司-->