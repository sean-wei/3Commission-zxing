<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('_header', TEMPLATE_INCLUDEPATH)) : (include template('_header', TEMPLATE_INCLUDEPATH));?>
<style>
    .cashier_info{
        border:1px solid #efefef;
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
    }
    .cashier_info .flex1{
        -webkit-box-flex: 1;
        -webkit-flex: 1;
        -ms-flex: 1;
        flex: 1;
    }
    .cashier_info .flex1 em{
        display: inline-block;
        width:80px;
        text-align: right;
    }
    .cashier_info .flex1 h6{
        font-weight: bold;
        font-size:14px;
    }
    .cashier_info>div{
        padding:30px 20px;
        border-right:1px solid #efefef;
    }
    .col-sm{
        text-align: right;
    }
    .pay_info{
        border:1px solid #efefef;
        padding: 10px;
    }
    .pay_info i{
        display: inline-block;
        width:120px;
        text-align: right;
    }
    .pay_info span{
        margin-left: 10px;
    }
    .trorder td{
        border-right:1px solid #efefef ;
        padding:20px 10px !important;
    }
    .ui-step-3 li{
        width: 33%;
    }
</style>
<div class="page-header">
    <span class='pull-right'>
        <?php  if($status==1 && cv('commission.apply.check')) { ?>
        <a href="javascript:;" onclick="checkall(true)" class="btn btn-success btn-sm">批量审核通过</a>
        <a href="javascript:;" onclick="checkall(false)" class="btn btn-danger btn-sm">批量审核不通过</a>
        <?php  } ?>
    </span>
    当前位置：<span class="text-primary">提现申请信息</span>
        <small> 共计 <span style="color:red; "><?php  echo $totalcount;?></span> 个订单 , 金额共计 <span style="color:red; "><?php  echo $totalmoney;?></span> 元 佣金总计 <span style="color:red; "><?php  echo $totalcommission;?></span> 元
        </small>
</div>
<div class="page-content">
<div class="step-region" >

    <ul class="ui-step <?php  if($status == 3) { ?>ui-step-3<?php  } else { ?>ui-step-4 <?php  } ?>" >
        <li <?php  if($apply['status']>=1||$apply['status']==-1||$apply['status']==-2) { ?>class="ui-step-done"<?php  } ?>>
            <div class="ui-step-number" >1</div>
            <div class="ui-step-title" >申请中</div>
            <div class="ui-step-meta" ><?php  if(1<=$apply['status']) { ?><?php  echo date('Y-m-d',$apply['applytime'])?><br/><?php  echo date('H:i:s',$apply['applytime'])?><?php  } ?></div>
        </li>
        <li  <?php  if($apply['status']>=2||$apply['status']==-1||$apply['status']==-2) { ?>class="ui-step-done"<?php  } ?>>
            <div class="ui-step-number">2</div>
            <div class="ui-step-title">商家审核</div>
            <div class="ui-step-meta"><?php  if(2<=$apply['status']) { ?><?php  echo date('Y-m-d',$apply['checktime'])?><br/><?php  echo date('H:i:s',$apply['checktime'])?><?php  } ?></div>
        </li>
        <?php  if($status !=-2 && $status !=-1) { ?>
        <li <?php  if($apply['status']>=3) { ?>class="ui-step-done"<?php  } ?>>
            <div class="ui-step-number" >3</div>
             <div class="ui-step-title">商家打款</div>
            <div class="ui-step-meta" ><?php  if(3<=$apply['status']) { ?><?php  echo date('Y-m-d',$apply['paytime'])?><br/><?php  echo date('H:i:s',$apply['paytime'])?><?php  } ?></div>
        </li>
        <?php  } ?>
        <?php  if($status !=3) { ?>
        <li <?php  if($apply['status']==-1||$apply['status']==-2) { ?>class="ui-step-done"<?php  } ?>>
            <div class="ui-step-number" >!</div>
            <div class="ui-step-title">无效</div>
            <div class="ui-step-meta" ><?php  if(-1==$apply['status']||-2==$apply['status']) { ?><?php  echo date('Y-m-d',$apply['invalidtime'])?><br/><?php  echo date('H:i:s',$apply['invalidtime'])?><?php  } ?></div>
        </li>
        <?php  } ?>
    </ul>
</div>

<form <?php if(cv('commission.apply.check|commission.apply.pay|commission.apply.cancel')) { ?>action="" method='post'<?php  } ?> class='form-horizontal form-validate'>

    <input type="hidden" name="c" value="site" />
    <input type="hidden" name="a" value="entry" />
    <input type="hidden" name="m" value="ewei_shopv2" />
    <input type="hidden" name="do" value="web" />
    <input type="hidden" name="r" value="commission.apply" />
    <input type="hidden" name="id" value="<?php  echo $apply['id'];?>" />



        <div class="cashier_info">
            <div style='width: 300px; ' >
                <h6 style="font-weight: bold;font-size: 14px"> 提现者信息</h6>
                <div class="flex">
                    <img class="radius50" src='<?php  echo $member['avatar'];?>' style='width:100px;height:100px;border:1px solid #ccc;padding:1px' onerror="this.src='../addons/ewei_shopv2/static/images/noface.png'"/>
                    <div >
                        <p style="overflow: hidden;text-overflow:ellipsis;white-space: nowrap;"><span class="col-sm">昵称：</span> <?php  echo $member['nickname'];?></p>
                        <p><span class="col-sm">姓名：</span> <?php  echo $member['realname'];?> </p>
                        <p><span class="col-sm">手机号：</span><?php  echo $member['mobile'];?></p>
                        <p><span class="col-sm">微信号：</span><?php  echo $member['weixin'];?></p>
                    </div>
                </div>
                <!--<p><b>昵称:</b> <?php  echo $member['nickname'];?>    <b>姓名:</b> <?php  echo $member['realname'];?>  <b>手机号:</b> <?php  echo $member['mobile'];?>    <b>微信号:</b> <?php  echo $member['weixin'];?></p>-->
            </div>
            <div style="width: 20%;">
                <h6>分销等级:</h6>
                <div>
                    <p> <?php  echo $agentLevel['levelname'];?></p>
                    <?php  if($this->set['level']>=1) { ?>
                    <p>
                        一级比例: <span class="text-danger"><?php  echo $agentLevel['commission1'];?>%</span>
                    </p>
                    <?php  } ?>
                    <?php  if($this->set['level']>=2) { ?>
                    <p>二级比例: <span class="text-danger"><?php  echo $agentLevel['commission2'];?>%</span></p>
                    <?php  } ?>
                    <?php  if($this->set['level']>=3) { ?>
                    <p>三级比例: <span class="text-danger"><?php  echo $agentLevel['commission3'];?>%</span></p>
                    <?php  } ?>
                </div>
            </div>
               <div style="width: 20%;">
                   <h6>分销下级</h6>
                   <div>
                       <p> 总共：<span class="text-danger"><?php  echo $member['agentcount'];?></span> 人</p>
                       <?php  if($this->set['level']>=1) { ?>
                       <p>一级：<span class="text-danger"><?php  echo $member['level1'];?></span>  人</p>
                       <?php  } ?>
                       <?php  if($this->set['level']>=2) { ?>
                           <p> 二级：<span class="text-danger"><?php  echo $member['level2'];?></span>  人</p>
                       <?php  } ?>
                       <?php  if($this->set['level']>=3) { ?>
                            <p>三级：<span class="text-danger"><?php  echo $member['level3'];?></span> 人</p>
                       <?php  } ?>
                       <!--<p>分享链接首次点击次数： <span class="text-danger"><?php  echo $member['clickcount'];?></span> 次</p>-->
                   </div>

               </div>

                <div style="width: 250px;">
                    <h6>分销佣金</h6>
                    <div>
                        <p><em>累计佣金：</em><span class="text-danger"><?php  echo $member['commission_total'];?></span> 元</p>
                        <p><em>待审核佣金： </em><span class="text-danger"><?php  echo $member['commission_apply'];?></span> 元</p>
                        <p><em>待打款佣金：</em><span class="text-danger"><?php  echo $member['commission_check'];?></span> 元</p>
                        <p><em>结算期佣金：</em> <span class="text-danger"><?php  echo $member['commission_lock'];?></span> 元</p>
                        <p><em>申请佣金:：</em><span class="text-danger"><?php  echo $apply['commission'];?></span> 元</p>

                        <?php  if((float)$apply['sendmoney']) { ?>
                       <p>已打款(红包才有)：<span style='color:red'><?php  echo $apply['sendmoney'];?></span> 元</p>
                        <?php  } ?>
                    </div>
                </div>
                <div style="width: 20%;">
                    <div>
                        <h6>打款方式</h6>
                        <p>
                            <?php  if(empty($apply['type'])) { ?>
                            <i class="icow icow-yue text-warning"></i> <?php  echo $apply_type[$apply['type']];?>
                        <?php  } else if($apply['type'] == 1) { ?>
                            <i class="icow icow-weixinzhifu text-success"></i><?php  echo $apply_type[$apply['type']];?>
                        <?php  } else if($apply['type'] == 2) { ?>
                            <i class="icow icow-zhifubaozhifu text-primary"></i><?php  echo $apply_type[$apply['type']];?>
                        </p>
                        <p>姓名: <span style='color:red' id="realname"><?php  echo $apply['realname'];?></span></p>
                        <p>支付宝帐号:<span style='color:red' id="alipay"><?php  echo $apply['alipay'];?></span></p>
                        <?php  } else if($apply['type'] == 3) { ?>
                        <p><span class='label label-danger'><?php  echo $apply_type[$apply['type']];?></span></p>
                        <p>姓名: <span style='color:red' id="realname"><?php  echo $apply['realname'];?></span></p>
                        <p>银行: <span style='color:red' id="bankname"><?php  echo $apply['bankname'];?></span></p>
                        <p>卡号: <span style='color:red' id="bankcard"><?php  echo $apply['bankcard'];?></span></p>
                        <p>身份证号: <span style='color:red' id="bankcard"><?php  echo $apply['realid'];?></span></p>
                        <p>银行手机号: <span style='color:red' id="bankcard"><?php  echo $apply['bankphone'];?></span></p>

                        <?php  } ?>
                    </div>
                </div>
        </div>

        <div >
            <p style="font-size: 16px;line-height: 67px;font-weight: bold">订单信息</p>
            <table class="table">
                <thead class="navbar-inner">
                    <tr style="background: #f7f7f7">
                        <th style="width: 50px;">商品</th>
                        <th></th>
                        <th style="width: 100px;"></th>
                        <th  style="width: 100px;text-align: center">金额</th>
                        <th style="width: 100px;text-align: center">付款方式</th>
                        <th style="width: 530px;text-align: center">佣金</th>
                    </tr>
                     <tr></tr>
                </thead>
                <tbody>
                    <?php  if(is_array($list)) { foreach($list as $row) { ?>
                    <?php  if(is_array($row['goods'])) { foreach($row['goods'] as $g) { ?>
                    <tr class="" style="background: #f7f7f7;border: 1px solid #efefef;">
                        <td colspan="6">
                           <span style="font-weight: bold"> <?php  echo date('Y-m-d H:i',$row['createtime'])?> </span>
                            <?php  echo $row['ordersn'];?>
                        </td>
                    </tr>
                    <tr  class="trorder" >
                        <td style="border-right:none;">
                            <img class="pull-left" src="<?php  echo tomedia($g['thumb'])?>" style="width: 30px; height: 30px;border:1px solid #ccc;padding:1px;" onerror="this.src='../addons/ewei_shopv2/static/images/nopic.png'"/>
                        </td>
                        <td style="border-right:none;">
                               <span><?php  echo $g['title'];?></span><br/><span><?php  echo $g['optionname'];?></span>
                        </td>
                        <td  style="border-right: 1px solid #efefef;text-align: right"><span>  <?php  echo number_format($g['price']/$g['total'],2)?><br/>x<?php  echo $g['total'];?></span></td>
                        <td style="text-align: center"
                            ><span class="text-danger"><?php  echo $row['price'];?></span> <a ><i class="fa fa-question-circle"  data-toggle='popover' data-placement='right' data-html='true' data-trigger='hover'
                                                       data-content="<table class='table table-hover'>
                                                       <tr><th>总金额</th><td><?php  echo $row['price'];?></td></tr>
                                                       <tr><th>商品小计</th><td><?php  echo $row['goodsprice'];?></td></tr>
                                                       <tr><th>运费</th><td><?php  echo $row['dispatchprice'];?></td></tr>
                                                       <tr><th>会员折扣</th><td><?php  if($row['discountprice']>0) { ?>-<?php  echo $row['discountprice'];?><?php  } ?></td></tr>
                                                       <tr><th>积分抵扣</th><td><?php  if($row['deductprice']>0) { ?>-<?php  echo $row['deductprice'];?><?php  } ?></td></tr>
                                                       <tr><th>余额抵扣</th><td><?php  if($row['deductcredit2']>0) { ?>-<?php  echo $row['deductcredit2'];?><?php  } ?></td></tr>
                                                       <tr><th>满额立减</th><td><?php  if($row['deductenough']>0) { ?>-<?php  echo $row['deductenough'];?><?php  } ?></td></tr>
                                                       <tr><th>优惠券优惠</th><td><?php  if($row['couponprice']>0) { ?>-<?php  echo $row['couponprice'];?><?php  } ?></td></tr>
                                                       <tr><th>卖家改价</th><td><?php  if(0<$item['changeprice']) { ?>+<?php  } else { ?>-<?php  } ?><?php  echo number_format(abs($item['changeprice']),2)?></td></tr>
                                                       <tr><th>卖家改运费</th><td><?php  if(0<$item['changedipatchpriceprice']) { ?>+<?php  } else { ?>-<?php  } ?><?php  echo number_format(abs($item['changedipatchpriceprice']),2)?></td></tr>
                                                       </table>"></i></a></td>

                        <td style="text-align: center"><?php  if($row['paytype'] == 1) { ?>
                                <i class="icow icow-yue text-warning"></i>余额支付
                            <?php  } else if($row['paytype'] == 11) { ?>
                                <i class="icow icow-kuajingzhifuiconfukuan text-danger" style="font-size: 17px"></i>后台付款
                            <?php  } else if($row['paytype'] == 21) { ?>
                                 <i class="icow icow-weixin text-success" style="font-size: 17px"></i> 微信支付
                            <?php  } else if($row['paytype'] == 22) { ?>
                                <i class="icow icow-zhifubao text-primary" style="font-size: 17px"></i>支付宝支付
                            <?php  } else if($row['paytype'] == 22) { ?>
                            <i class="icow icow-iconzhizuomoban text-info" style="font-size: 17px"></i>银联支付
                            <?php  } else if($row['paytype'] == 3) { ?>
                                <i class="text-primary icow icow-icon" style="font-size: 17px"></i> 货到付款
                            <?php  } ?>
                        </td>
                        <td class="flex" style="text-align: center;justify-content: space-around;-webkit-justify-content: space-around" >

                            <?php  if($this->set['level']>=1 && $row['level']==1) { ?>

                            <div class='input-group'>
                                <span class='input-group-addon'>一级佣金</span>
                                <span class='input-group-addon' style='width:80px;'><?php  echo $g['commission1'];?></span>

                                                <span class='input-group-addon'>
                                                    <?php  if($g['status1']==-1) { ?>
                                                    <span class='label label-default'>未通过</span>
                                                    <?php  } else if($g['status1']==1) { ?>

                                                    <label class='radio-inline' style='margin-top:-7px;'><input type='radio'  class='status1' value='-1'  name="status1[<?php  echo $g['id'];?>]" /> 不通过</label>
                                                    <label class='radio-inline'  style='margin-top:-7px;'><input type='radio'  value='2'   name="status1[<?php  echo $g['id'];?>]"  /> 通过</label>


                                                    <?php  } else if($g['status1']==2) { ?>
                                                    <span class='text-success'>通过</span>
                                                    <?php  } else if($g['status1']==3) { ?>
                                                    <span class='text-warning'>已打款</span>
                                                    <?php  } ?>
                                                </span>
                                <span class='input-group-addon'>备注</span>
                                <input type='text' class='form-control' name='content1[<?php  echo $g['id'];?>]' style='width:150px;' value="<?php  echo $g['content1'];?>"/>
                            </div>

                            <?php  } ?>

                            <?php  if($this->set['level']>=2  && $row['level']==2) { ?><p>

                            <div class='input-group'>
                                <span class='input-group-addon'  style='width:80px;' >二级佣金</span>
                                <span class='input-group-addon' style='background:#fff;'><?php  echo $g['commission2'];?></span>
                                <!--<span class='input-group-addon'>状态</span>-->
                                                <span class='input-group-addon' style='background:#fff'>
                                                    <?php  if($g['status2']==-1) { ?>
                                                    <span class='label label-default'>未通过</span>
                                                    <?php  } else if($g['status2']==1) { ?>

                                                    <label class='radio-inline' style='margin-top:-7px;'><input type='radio' class='status2' value='-1'  name="status2[<?php  echo $g['id'];?>]" /> 不通过</label>
                                                    <label class='radio-inline' style='margin-top:-7px;'><input type='radio'  value='2'  name="status2[<?php  echo $g['id'];?>]"  /> 通过</label>

                                                    <?php  } else if($g['status2']==2) { ?>
                                                    <span class='label label-success'>通过</span>
                                                    <?php  } else if($g['status2']==3) { ?>
                                                    <span class='label label-warning'>已打款</span>
                                                    <?php  } ?>
                                                </span>
                                <span class='input-group-addon'>备注</span>
                                <input type='text' class='form-control' name='content2[<?php  echo $g['id'];?>]' style='width:150px;' value="<?php  echo $g['content2'];?>">
                            </div>
                            </p>
                            <?php  } ?>
                            <?php  if($this->set['level']>=2  && $row['level']==3) { ?><p>
                            <div class='input-group'>
                                <span class='input-group-addon'  style='width:80px;'>三级佣金</span>
                                <span class='input-group-addon' style='background:#fff;'><?php  echo $g['commission3'];?></span>
                                <!--<span class='input-group-addon'>状态</span>-->
                                <span class='input-group-addon' style='background:#fff'>
                                    <?php  if($g['status3']==-1) { ?>
                                    <span class='label label-default'>未通过</span>
                                    <?php  } else if($g['status3']==1) { ?>

                                    <label class='radio-inline' style='margin-top:-7px;'><input type='radio' class='status3' value='-1' name="status3[<?php  echo $g['id'];?>]" /> 不通过</label>
                                    <label class='radio-inline' style='margin-top:-7px;'><input type='radio' value='2' name="status3[<?php  echo $g['id'];?>]"  /> 通过</label>

                                    <?php  } else if($g['status3']==2) { ?>
                                    <span class='label label-success'>通过</span>
                                    <?php  } else if($g['status3']==3) { ?>
                                    <span class='label label-warning'>已打款</span>
                                    <?php  } ?>
                                </span>
                                <span class='input-group-addon'>备注</span>
                                <input type='text' class='form-control' name='content3[<?php  echo $g['id'];?>]' style='width:150px;'  value="<?php  echo $g['content3'];?>"/>
                            </div>
                            </p>
                            <?php  } ?>
                        </td>
                    </tr>
                    <tr></tr>
                    <?php  } } ?>
                <?php  } } ?>
            </table>
        </div>

        <?php  if($apply['status']==2) { ?>
        <p style="font-size: 16px;line-height: 67px;font-weight: bold">
            打款信息
        </p>
        <div class='pay_info' style="border: 1px solid #efefef;padding: 10px">
           <p> <i>此次佣金总额：</i><span style="font-weight: bold;"><?php  echo $totalcommission;?></span> 元</p>
            <p><i> 应该打款：</i><span class="text-danger"><?php  echo $totalpay;?></span> 元</p>
            <p>
                <i>实际佣金：</i><span class="text-danger">
                <?php  if($deductionmoney > 0) { ?>
                <?php  echo $realmoney;?>
                <?php  } else { ?>
                <?php  echo $totalpay;?>
                <?php  } ?>
            </span> 元
            </p>
            <p><i>提现手续费金额：</i><span class="text-danger"><?php  echo $deductionmoney;?></span> 元</p>
            <p><i>提现手续费：</i><span class="text-danger"><?php  echo $charge;?>%</span></p>


        </div>
        <?php  } ?>

        <?php  if($apply['status']==3) { ?>
        <p style="font-size: 16px;line-height: 67px;font-weight: bold">
            打款信息
        </p>
        <div class="pay_info" style="border: 1px solid #efefef;padding: 10px">
            <p><i> 此次佣金总额：</i>  <span style="font-weight: bold;"><?php  echo $totalcommission;?>元</span> </p>
            <p><i>实际打款：</i><span class="text-danger" style="font-weight: bold;"><?php  echo $totalpay;?></span> 元</p>
              <p>
                 <i> 实际到账：</i><span class="text-danger">
                    <?php  if($deductionmoney > 0) { ?>
                    <?php  echo $realmoney;?>
                    <?php  } else { ?>
                    <?php  echo $totalpay;?>
                    <?php  } ?>
                </span> 元
              </p>
           <p><i> 提现手续费金额：</i><span><?php  echo $deductionmoney;?></span> 元</p>
           <p> <i>提现手续费：</i><span class="text-danger"><?php  echo $charge;?>%</span></p>
        </div>
        <?php  } ?>


    <div class="form-group col-sm-12" style="margin-top: 20px">
                <?php  if($apply['status']==1) { ?>
                <?php if(cv('commission.apply.refuse')) { ?>
                <input type="submit" name="submit_refuse" value="驳回申请" class="btn btn-danger" onclick='return refuse()'/>
                <?php  } ?>
                <?php if(cv('commission.apply.check')) { ?>
                <input type="submit" name="submit_check" value="提交审核" class="btn btn-primary" onclick='return check()'/>
                <?php  } ?>
                <?php  } ?>

                <?php  if($apply['status']==2) { ?>

                <?php if(cv('commission.apply.cancel')) { ?>
                <input type="submit" name="submit_cancel" value="重新审核" class="btn btn-default"  onclick='return cancel()'/>
                <?php  } ?>
                <?php if(cv('commission.apply.pay')) { ?>
                <?php  if(empty($apply['type'])) { ?>
                <input type="submit" name="submit_pay" value="打款到余额账户" class="btn btn-primary"  style='margin-left:10px;' onclick='return pay_credit()'/>
                <?php  } else if($apply['type'] == 1) { ?>
                <input type="submit" name="submit_pay" value="打款到微信钱包" class="btn btn-primary" style='margin-left:10px;' onclick='return pay_weixin()'/>
                <?php  } else if($apply['type'] == 2) { ?>
                <input type="submit" name="submit_pay" value="确认打款到支付宝" class="btn btn-primary" style='margin-left:10px;' onclick='return pay_alipay()'/>
                <?php  } else if($apply['type'] == 3) { ?>
                <input type="submit" name="submit_pay" value="确认打款到银行卡" class="btn btn-primary" style='margin-left:10px;' onclick='return pay_bank()'/>

                <?php  } ?>
                <input type="submit" name="submit_pay" value="手动处理" class="btn btn-warning" style='margin-left:10px;' onclick='return payed()'/>
                <?php  } ?>
                <?php  } ?>
                <?php  if($apply['status']==-1) { ?>
                <?php if(cv('commission.apply.cancel')) { ?>
                <input type="submit" name="submit_cancel" value="重新审核" class="btn btn-default"  onclick='return cancel()'/>
                <?php  } ?>

                <?php  } ?>

                <input type="button" class="btn btn-default" name="submit" onclick="history.go(-1)" value="返回" style='margin-left:10px;' />

            </div>
            </form>
        </div>

    </div>

<script language='javascript'>
    function checkall(ischeck) {
        var val = ischeck ? 2 : -1;

        $('.status1,.status2,.status3').each(function () {
            $(this).closest('.input-group-addon').find(":radio[value='" + val + "']").get(0).checked = true;
        });
    }
    function check() {
        var pass = true;
        $('.status1,.status2,.status3').each(function () {
            if (!$(this).get(0).checked && !$(this).parent().next().find(':radio').get(0).checked) {
                tip.msgbox.err('请选择审核状态!');
                $(this).closest('.input-group-addon').popover({
                    container: $(document.body),
                    placement: 'top',
                    html: true,
                    content: "<span class='text-danger'>请选择审核状态</span>"
                }).popover('show');
                $(this).focus();
                pass = false;
                return false;
            } else {
                $(this).closest('.input-group-addon').popover('destroy');
            }
        });
        if (!pass) {
            return false;
        }
        $(':input[name=r]').val('commission.apply.check');
        return confirm('确认已核实成功并要提交?\r\n(提交后还可以撤销审核状态, 申请将恢复到申请状态)');
    }
    function refuse() {
        $(':input[name=r]').val('commission.apply.refuse');
        return confirm('确认驳回申请?\r\n( 分销商可以重新提交提现申请)');
    }
    function cancel() {
       $(':input[name=r]').val('commission.apply.cancel');
        return confirm('确认撤销审核?\r\n( 所有状态恢复到申请状态)');
    }
    function pay_credit() {
        $(':input[name=r]').val('commission.apply.pay');
        return confirm('确认打款到此用户的余额账户?');
    }
    function pay_weixin() {
        $(':input[name=r]').val('commission.apply.pay');
        return confirm('确认打款到此用户的微信钱包?');
    }
    function pay_alipay() {
        $(':input[name=r]').val('commission.apply.pay');
        return confirm('确认打款到此用户的支付宝? 姓名:' + $("#realname").html() + ' 支付宝帐号:' + $("#alipay").html());
    }

    function pay_bank() {
        $(':input[name=r]').val('commission.apply.pay');
        return confirm('确认打款到此用户的银行卡? ' + $("#bankname").html() + ' 姓名: 卡号:' + $("#bankcard").html());
    }

    function payed() {
        $(':input[name=r]').val('commission.apply.payed');
        return confirm('选择手动处理 , 系统不进行任何打款操作!\r\n请确认你已通过线下方式为用户打款!!!\r\n是否进行手动处理 ');
    }
</script>

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('_footer', TEMPLATE_INCLUDEPATH)) : (include template('_footer', TEMPLATE_INCLUDEPATH));?>