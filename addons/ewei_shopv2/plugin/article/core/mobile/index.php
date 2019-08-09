<?php
if (!defined('IN_IA')) {
	exit('Access Denied');
}

class Index_EweiShopV2Page extends PluginMobilePage
{
	public function main()
	{
		global $_W;
		global $_GPC;
		$aid = intval($_GPC['aid']);
		$openid = $_W['openid'];


		if (!empty($openid)) {
			$followed = m('user')->followed($openid);
		}

		if (empty($aid)) {
			exit('url参数错误！');
		}

		$article = pdo_fetch('SELECT * FROM ' . tablename('ewei_shop_article') . ' WHERE id=:aid and article_state=1 and uniacid=:uniacid limit 1 ', array(':aid' => $aid, ':uniacid' => $_W['uniacid']));

		if (empty($article)) {
			$this->message('文章不存在!', mobileUrl('article/list'), 'error');
		}

		$article['article_content'] = $this->model->mid_replace(htmlspecialchars_decode($article['article_content']));
		$readnum = intval($article['article_readnum'] + $article['article_readnum_v']);
		$readnum = 100000 < $readnum ? '100000+' : $readnum;
		$likenum = intval($article['article_likenum'] + $article['article_likenum_v']);
		$likenum = 100000 < $likenum ? '100000+' : $likenum;

		if (empty($article['article_mp'])) {
			$mp = pdo_fetch('SELECT acid,uniacid,name FROM ' . tablename('account_wechats') . ' WHERE uniacid=:uniacid limit 1 ', array(':uniacid' => $_W['uniacid']));
			$article['article_mp'] = $mp['name'];
		}

		if (!empty($article['article_visit'])) {
			if (empty($_W['openid'])) {
				$_W['openid'] = m('account')->checkLogin();
				exit();
			}

			$article['article_visit_tip'] = iunserializer($article['article_visit_tip']);
			$article['article_visit_level'] = iunserializer($article['article_visit_level']);
			$visit_text = !empty($article['article_visit_tip']['text']) ? $article['article_visit_tip']['text'] : '您没有权限访问!';
			$visit_link = !empty($article['article_visit_tip']['link']) ? $article['article_visit_tip']['link'] : mobileUrl();
			$member = m('member')->getMember($_W['openid']);
			$visit_level_member = is_array($article['article_visit_level']['member']) ? $article['article_visit_level']['member'] : array();
			$visit_level_commission = is_array($article['article_visit_level']['commission']) ? $article['article_visit_level']['commission'] : array();
			if (!in_array(!empty($member['level']) ? $member['level'] : 'default', $visit_level_member) && (!in_array($member['agentlevel'], $visit_level_commission) || empty($member['isagent']))) {
				$this->message($visit_text, $visit_link);
			}
		}

		if (!empty($article['article_areas'])) {
			$article['areas'] = explode(',', $article['article_areas']);
		}

		$myid = m('member')->getMid();
		if (!empty($openid) && (is_weixin() || is_h5app()) && !empty($myid)) {
			$state = pdo_fetch('SELECT * FROM ' . tablename('ewei_shop_article_log') . ' WHERE openid=:openid and aid=:aid and uniacid=:uniacid limit 1 ', array(':openid' => $openid, ':aid' => $article['id'], ':uniacid' => $_W['uniacid']));

			if (empty($state['id'])) {
				$insert = array('aid' => $aid, 'read' => 1, 'uniacid' => $_W['uniacid'], 'openid' => $openid);
				pdo_insert('ewei_shop_article_log', $insert);
				$sid = pdo_insertid();
				pdo_update('ewei_shop_article', array('article_readnum' => $article['article_readnum'] + 1), array('id' => $article['id']));
			}
			else {
				$readtime = $article['article_readtime'];

				if ($readtime <= 0) {
					$readtime = 4;
				}

				if ($state['read'] < $readtime) {
					pdo_update('ewei_shop_article_log', array('read' => $state['read'] + 1), array('id' => $state['id']));
					pdo_update('ewei_shop_article', array('article_readnum' => $article['article_readnum'] + 1), array('id' => $article['id']));
				}
			}

			$_W['shopshare'] = array('title' => $article['article_title'], 'imgUrl' => tomedia($article['resp_img']), 'desc' => $article['resp_desc'], 'link' => mobileUrl('article', array('aid' => $article['id'], 'shareid' => $myid), true));

			if (p('commission')) {
				$set = p('commission')->getSet();

				if (!empty($set['level'])) {
					$member = m('member')->getMember($openid);
					if (!empty($member) && $member['status'] == 1 && $member['isagent'] == 1) {
						$_W['shopshare']['link'] = mobileUrl('article', array('aid' => $article['id'], 'shareid' => $myid, 'mid' => $member['id']), true);
					}
					else {
						if (!empty($_GPC['mid'])) {
							$_W['shopshare']['link'] = mobileUrl('article', array('aid' => $article['id'], 'shareid' => $myid, 'mid' => $_GPC['mid']), true);
						}
					}
				}
			}

			$_W['shopshare']['hideMenus'] = array('menuItem:share:qq', 'menuItem:share:QZone', 'menuItem:share:email');

			if ($article['page_set_option_nocopy']) {
				$_W['shopshare']['hideMenus'][] = 'menuItem:copyUrl';
				$_W['shopshare']['hideMenus'][] = 'menuItem:openWithSafari';
				$_W['shopshare']['hideMenus'][] = 'menuItem:openWithQQBrowser';
			}

			if ($article['page_set_option_noshare_tl']) {
				$_W['shopshare']['hideMenus'][] = 'menuItem:share:timeline';
			}

			if ($article['page_set_option_noshare_msg']) {
				$_W['shopshare']['hideMenus'][] = 'menuItem:share:appMessage';
			}

			if (empty($article['article_areas'])) {
				$shareid = intval($_GPC['shareid']);
				$this->model->doShare($article['id'], $shareid, $myid);
			}
		}
		else {
			$_W['shopshare'] = array('title' => $article['article_title'], 'imgUrl' => tomedia($article['resp_img']), 'desc' => $article['resp_desc'], 'link' => mobileUrl('article', array('aid' => $article['id']), true));
		}

		$advs = json_decode($article['product_advs'], true);
		if (!empty($advs) && $article['product_advs_type'] == 2) {
			$advnum = count($advs);
			$advrand = rand(0, $advnum - 1);
			$adv = $advs[$advrand];
			$advs = array();
			$advs[] = $adv;
		}

		if (!empty($advs)) {
			foreach ($advs as $i => $v) {
				$advs[$i]['link'] = $this->model->href_replace($v['link']);
			}
		}

//		推广二维码图片
        $qrcodeImg = $this->getqr();

		$article['product_advs_link'] = $this->model->href_replace($article['product_advs_link']);
		$article['article_linkurl'] = $this->model->href_replace($article['article_linkurl']);
		include $this->template();
	}

	public function share($params = array())
	{
		global $_W;
		global $_GPC;
		$myid = m('member')->getMid();
		$shareid = intval($_GPC['shareid']);
		$aid = intval($_GPC['aid']);
		$this->model->doShare($aid, $shareid, $myid);
	}

	public function getcontent()
	{
		global $_W;
		global $_GPC;
		$aid = intval($_GPC['aid']);

		if (empty($aid)) {
			show_json(0, '参数错误');
		}

		$article = pdo_fetch('SELECT article_content FROM ' . tablename('ewei_shop_article') . ' WHERE id=:aid and article_state=1 and uniacid=:uniacid limit 1 ', array(':aid' => $aid, ':uniacid' => $_W['uniacid']));

		if (empty($article)) {
			show_json(0, '文章不存在');
		}

		show_json(1, array('content' => base64_encode($article['article_content'])));
	}

	public function like()
	{
		global $_W;
		global $_GPC;
		$aid = intval($_GPC['aid']);
		$openid = $_W['openid'];
		if (!empty($aid) && !empty($openid)) {
			$state = pdo_fetch('SELECT * FROM ' . tablename('ewei_shop_article_log') . ' WHERE openid=:openid and aid=:aid and uniacid=:uniacid limit 1 ', array(':openid' => $_W['openid'], ':aid' => $aid, ':uniacid' => $_W['uniacid']));

			if (empty($state['like'])) {
				pdo_update('ewei_shop_article', 'article_likenum=article_likenum+1', array('id' => $aid));
				pdo_update('ewei_shop_article_log', array('like' => $state['like'] + 1), array('id' => $state['id']));
				show_json(0, array('status' => 1));
			}
			else {
				pdo_update('ewei_shop_article', 'article_likenum=article_likenum-1', array('id' => $aid));
				pdo_update('ewei_shop_article_log', array('like' => $state['like'] - 1), array('id' => $state['id']));
				show_json(0, array('status' => 0));
			}
		}
	}


	/**
	 * 获取推广二维码图片
	 *
	 */
	public function getQr(){
        global $_W;

        $p = p('poster');
        $openid = $_W['openid'];

        global $_W;
        global $_GPC;
        $shop_set = set_medias($_W['shopset']['shop'], 'signimg');
        $path = IA_ROOT . '/addons/ewei_shopv2/data/poster/' . $_W['uniacid'] . '/';
        if (!(is_dir($path)))
        {
            load()->func('file');
            mkdirs($path);
        }
        $mid = intval($_GPC['mid']);
        $openid = $_W['openid'];
        $me = m('member')->getMember($openid);
        if (($me['isagent'] == 1) && ($me['status'] == 1))
        {
            $userinfo = $me;
        }
        else
        {
            $mid = intval($_GPC['mid']);
            if (!(empty($mid)))
            {
                $userinfo = m('member')->getMember($mid);
            }
        }
        $md5 = md5(json_encode(array('openid' => $openid, 'signimg' => $shop_set['signimg'], 'shopset' => $shop_set, 'version' => 4)));
        $file = $md5 . '.jpg';

        $qrcode_file = tomedia($this->createMyShopQrcode($userinfo['id'])) ? tomedia($this->createMyShopQrcode($userinfo['id'])):'';
        if (!(is_file($path . $file)))
        {
            $qrcode_file = tomedia($this->createMyShopQrcode($userinfo['id']));
            $qrcode = $this->createImage($qrcode_file);
        }
//        var_dump($qrcode_file);

        return $qrcode_file;
    }


    public function createMyShopQrcode($mid = 0, $posterid = 0)
    {
        global $_W;
        $path = IA_ROOT . '/addons/ewei_shopv2/data/qrcode/' . $_W['uniacid'];
        if (!(is_dir($path)))
        {
            load()->func('file');
            mkdirs($path);
        }
        $url = mobileUrl('commission/myshop', array('mid' => $mid), true);
        if (!(empty($posterid)))
        {
            $url .= '&posterid=' . $posterid;
        }
        $file = 'myshop_' . $posterid . '_' . $mid . '.png';
        $qr_file = $path . '/' . $file;
        if (!(is_file($qr_file)))
        {
            require IA_ROOT . '/framework/library/qrcode/phpqrcode.php';
            QRcode::png($url, $qr_file, QR_ECLEVEL_H, 4);
        }
        return $_W['siteroot'] . 'addons/ewei_shopv2/data/qrcode/' . $_W['uniacid'] . '/' . $file;
    }

    private function createImage($url)
    {
        load()->func('communication');
        $resp = ihttp_request($url);
        return imagecreatefromstring($resp['content']);
    }



}

?>
