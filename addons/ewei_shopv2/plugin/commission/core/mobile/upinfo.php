<?php
if (!defined('IN_IA')) {
	exit('Access Denied');
}

require EWEI_SHOPV2_PLUGIN . 'commission/core/page_login_mobile.php';
class Upinfo_EweiShopV2Page extends CommissionMobileLoginPage
{

	public function main()
	{
		global $_W;
		global $_GPC;
		$member = $this->model->getInfo($_W['openid']);

        $agentid = $member['agentid'];
		$level0 = pdo_fetchall('select * from ' . tablename('ewei_shop_member') . ' where id=' .$agentid .'  and uniacid=:uniacid limit 1', array( ':uniacid' => $_W['uniacid']));

//		var_dump($level0);exit();

		$realname = '';
        $nickname = '';
        $mobile = '';
        $avatar = '';
        $weixin = '';
        foreach ($level0 as $item){
        	$realname = $item['realname'];
            $nickname = $item['nickname'];
            $mobile = $item['mobile'];
            $avatar = 'http://gxpeyo.host198.gxwinda.com/attachment/' . $item['avatar'];
            $weixin = $item['weixin'] ? $item['weixin']:'未知';
        }


		include $this->template();
	}


}

?>
