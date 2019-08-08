<?php defined('IN_IA') or exit('Access Denied');?> <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('_header', TEMPLATE_INCLUDEPATH)) : (include template('_header', TEMPLATE_INCLUDEPATH));?>
 <style>
    .trorder td{
        border-top:none !important;
     }
 </style>

<div class="page-header">
    当前位置：<span class="text-primary"><?php  echo $applytitle;?>提现申请</span>
    <span>发送总数:  <span class='text-danger'><?php  echo $total;?></span> <?php  if($status == 3) { ?>发送总金额:  <span class='text-danger'><?php  echo $realmoney_total;?></span><?php  } ?></span>
</div>

<div class="page-content">
    <form action="./index.php" method="get" class="form-horizontal  table-search" role="form" id="form1">
        <input type="hidden" name="c" value="site" />
        <input type="hidden" name="a" value="entry" />
        <input type="hidden" name="m" value="ewei_shopv2" />
        <input type="hidden" name="do" value="web" />
        <input type="hidden" name="r" value="commission.apply" />
        <input type="hidden" name="status" value="<?php  echo $status;?>" />
        <div class="page-toolbar m-b-sm m-t-sm">
            <div class="col-sm-6">
                <div class='input-group'   >
                    <?php  echo tpl_form_field_daterange('time', array('starttime'=>date('Y-m-d H:i', $starttime),'endtime'=>date('Y-m-d H:i', $endtime)),true);?>

                </div>
            </div>

            <div class="col-sm-6 pull-right">
                <div class="input-group">
                    <div class="input-group-select">
                        <select name='timetype'   class='form-control' >
                            <option value=''>不按时间</option>
                            <?php  if($status>=1) { ?><option value='applytime' <?php  if($_GPC['timetype']=='applytime') { ?>selected<?php  } ?>>申请时间</option><?php  } ?>
                            <?php  if($status>=2) { ?><option value='checktime' <?php  if($_GPC['timetype']=='checktime') { ?>selected<?php  } ?>>审核时间</option><?php  } ?>
                            <?php  if($status>=3) { ?><option value='paytime' <?php  if($_GPC['timetype']=='paytime') { ?>selected<?php  } ?>>打款时间</option><?php  } ?>
                        </select>
                    </div>
                    <div class="input-group-select">
                         <select name='agentlevel' class='form-control  input-sm select-md' style="width:100px;">
                             <option value=''>等级</option>
                             <?php  if(is_array($agentlevels)) { foreach($agentlevels as $level) { ?>
                             <option value='<?php  echo $level['id'];?>' <?php  if($_GPC['agentlevel']==$level['id']) { ?>selected<?php  } ?>><?php  echo $level['levelname'];?></option>
                             <?php  } } ?>
                         </select>
                    </div>
                    <div class="input-group-select">
                        <select name='searchfield'  class='form-control  input-sm select-md'   style="width:110px;"  >
                            <option value='member' <?php  if($_GPC['searchfield']=='member') { ?>selected<?php  } ?>>会员信息</option>
                            <option value='applyno' <?php  if($_GPC['searchfield']=='applyno') { ?>selected<?php  } ?>>提现单号</option>
                        </select>
                    </div>
                    <input type="text" class="form-control input-sm"  name="keyword" value="<?php  echo $_GPC['keyword'];?>" placeholder="请输入关键词"/>
                    <span class="input-group-btn">
                        <button class="btn  btn-primary" type="submit"> 搜索</button>
                           <?php if(cv('commission.apply.export')) { ?>
                                <button type="submit" name="export" value="1" class="btn btn-success ">导出</button>
                                <?php  } ?>
                    </span>
                </div>

            </div>
        </div>
    </form>

    <?php  if(count($list)>0) { ?>
    <?php  $col=7?>
    <table class="table ">
        <thead class="navbar-inner">
        <tr style="background: #f7f7f7">
            <th>提现单号</th>
            <th>分销等级</th>
            <th>提现方式</th>
            <th>申请佣金</th>
            <th><?php  if($status==3) { ?>实际到账<?php  } else { ?>实际佣金<?php  } ?></br>已发送金额 (微信红包)</th>
            <th>提现手续费</th>
            <?php  if($status==-1) { ?>
            <?php  $col++?>
            <th>无效时间</th>
            <?php  } else if($status>=3) { ?>
            <?php  $col++?>
            <th>打款时间</th>
            <?php  } else if($status>=2) { ?>
            <?php  $col++?>
            <th>审核时间</th>
            <?php  } else if($status>=1) { ?>
            <?php  $col++?>
            <th>申请时间</th>
            <?php  } ?>
            <th style="width: 40px">操作</th>
        </tr>
        <tr></tr>
        </thead>
        <tbody>
        <?php  if(is_array($list)) { foreach($list as $row) { ?>
        <tr class="trorder" style="border-bottom: none">
            <td colspan="<?php  echo $col;?>" style="background: #f7f7f7">
               提现单号： <?php  echo $row['applyno'];?>
            </td>
        </tr>
        <tr class="trorder" style="border-top: none;">
            <td>
                <?php if(cv('member.list.view')) { ?>
                <a  href="<?php  echo webUrl('member/list/detail',array('id' => $row['mid']));?>" target='_blank'>
                    <img class="radius50" src='<?php  echo tomedia($row['avatar'])?>' style='width:30px;height:30px;padding1px;border:1px solid #ccc'  onerror="this.src='../addons/ewei_shopv2/static/images/noface.png'"/> <?php  echo $row['nickname'];?>
                </a>
                <?php  } else { ?>
                <img class="radius50" src='<?php  echo tomedia($row['avatar'])?>' style='width:30px;height:30px;padding1px;border:1px solid #ccc' onerror="this.src='../addons/ewei_shopv2/static/images/noface.png'" /> <?php  echo $row['nickname'];?>
                <?php  } ?>
                <br/>
            </td>
            <td><?php  echo $row['levelname'];?></td>
            <td>
                <?php  if($row['type']==0) { ?>
                <i class="icow icow-yue text-warning"></i>余额
                <?php  } else if($row['type']==1) { ?>
               <i class="icow icow-weixinzhifu text-success"></i> 微信钱包
                <?php  } else if($row['type']==2) { ?>
               <i class="icow icow-zhifubaozhifu text-primary"></i>支付宝
                <?php  } else if($row['type']==3) { ?>
                <i class="text-primary icow icow-icon"></i>银行卡
                <?php  } ?>
            </td>
            <td class="text-danger"><?php  echo $row['commission'];?></td>
            <td class="text-danger">
                <?php  echo $row['realmoney'];?>
                </br>
                <?php  if((float)$row['sendmoney'] != 0) { ?><?php  echo $row['sendmoney'];?><?php  } else { ?><?php  } ?>
            </td>
            <td><?php  echo $row['charge'];?>%</td>
            <td >
                <?php  if($row['status']!=1) { ?><a data-toggle='popover' data-content="
                             <?php  if($status>=1 && $row['status']!=1) { ?>申请时间: <br/><?php  echo date('Y-m-d',$row['applytime'])?><br/><?php  echo date('H:i',$row['applytime'])?><?php  } ?>
                             <?php  if($status>=2 && $row['status']!=2) { ?><br/>审核时间: <br/><?php  echo date('Y-m-d',$row['checktime'])?><br/><?php  echo date('H:i',$row['checktime'])?><?php  } ?>
                             <?php  if($status>=3 && $row['status']!=3) { ?><br/>付款时间: <br/><?php  echo date('Y-m-d',$row['paytime'])?><br/><?php  echo date('H:i',$row['paytime'])?><?php  } ?>
                             <?php  if($status==-1) { ?><br/>无效时间: <br/><?php  echo date('Y-m-d',$row['invalidtime'])?><br/><?php  echo date('H:i',$row['invalidtime'])?><?php  } ?>

                                " data-html="true" data-trigger="hover"><?php  } ?>
                <?php  if($status>=1) { ?>
                <?php  echo date('Y-m-d',$row['applytime'])?> <?php  echo date('H:i',$row['applytime'])?>
                <?php  } else if($status>=2) { ?>
                <?php  echo date('Y-m-d',$row['checktime'])?> <?php  echo date('H:i',$row['applytime'])?>
                <?php  } else if($status>=3) { ?>
                <?php  echo date('Y-m-d',$row['paytime'])?> <?php  echo date('H:i',$row['paytime'])?>
                <?php  } else if($status==-1) { ?>
                <?php  echo date('Y-m-d',$row['invalidtime'])?> <?php  echo date('H:i',$row['invalidtime'])?>
                <?php  } ?>
                <?php  if($row['status']!=1) { ?><i class="fa fa-question-circle"></i></a><?php  } ?>
            </td>
            <td>
                <?php if(cv('commission.apply.detail')) { ?>
                    <a class='btn btn-default btn-sm btn-op btn-operation' href="<?php  echo webUrl('commission/apply/detail',array('id' => $row['id'],'status'=>$row['status']))?>">
                          <span data-toggle="tooltip" data-placement="top" title="" data-original-title="查看详情">
                                <i class='icow icow-chakan-copy'></i>
                           </span>
                    </a>
                <?php  } ?>
            </td>
        </tr>
        <tr></tr>
        <?php  } } ?>
        </tbody>
        <tfoot style="border: none;">
            <tr>
                <td  colspan="<?php  echo $col;?>" class="text-right" style="border:none"><?php  echo $pager;?></td>
            </tr>
        </tfoot>
    </table>
    <?php  } else { ?>
    <div class='panel panel-default'>
        <div class='panel-body' style='text-align: center;padding:30px;'>
            暂时没有任何<?php  echo $applytitle;?>提现申请!
        </div>
    </div>
    <?php  } ?>
</div>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('_footer', TEMPLATE_INCLUDEPATH)) : (include template('_footer', TEMPLATE_INCLUDEPATH));?>