/*
 Navicat Premium Data Transfer

 Source Server         : 连接
 Source Server Type    : MySQL
 Source Server Version : 50557
 Source Host           : 122.114.243.252:3306
 Source Schema         : we7_hcexe_com

 Target Server Type    : MySQL
 Target Server Version : 50557
 File Encoding         : 65001

 Date: 03/06/2018 21:26:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ims_ewei_shop_abonus_bill
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_abonus_bill`;
CREATE TABLE `ims_ewei_shop_abonus_bill`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `billno` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytype` int(11) NULL DEFAULT 0,
  `year` int(11) NULL DEFAULT 0,
  `month` int(11) NULL DEFAULT 0,
  `week` int(11) NULL DEFAULT 0,
  `ordercount` int(11) NULL DEFAULT 0,
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  `paytime` int(11) NULL DEFAULT 0,
  `aagentcount1` int(11) NULL DEFAULT 0,
  `aagentcount2` int(11) NULL DEFAULT 0,
  `aagentcount3` int(11) NULL DEFAULT 0,
  `bonusmoney1` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney_send1` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney_pay1` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney2` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney_send2` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney_pay2` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney3` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney_send3` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney_pay3` decimal(10, 2) NULL DEFAULT 0.00,
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `starttime` int(11) NULL DEFAULT 0,
  `endtime` int(11) NULL DEFAULT 0,
  `confirmtime` int(11) NULL DEFAULT 0,
  `ceshi` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_paytype`(`paytype`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_paytime`(`paytime`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_month`(`month`) USING BTREE,
  INDEX `idx_week`(`week`) USING BTREE,
  INDEX `idx_year`(`year`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_abonus_billo
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_abonus_billo`;
CREATE TABLE `ims_ewei_shop_abonus_billo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `billid` int(11) NULL DEFAULT 0,
  `orderid` int(11) NULL DEFAULT 0,
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_billid`(`billid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_abonus_billp
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_abonus_billp`;
CREATE TABLE `ims_ewei_shop_abonus_billp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `billid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `payno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytype` tinyint(3) NULL DEFAULT 0,
  `bonus1` decimal(10, 4) NULL DEFAULT 0.0000,
  `bonus2` decimal(10, 4) NULL DEFAULT 0.0000,
  `bonus3` decimal(10, 4) NULL DEFAULT 0.0000,
  `money1` decimal(10, 2) NULL DEFAULT 0.00,
  `realmoney1` decimal(10, 2) NULL DEFAULT 0.00,
  `paymoney1` decimal(10, 2) NULL DEFAULT 0.00,
  `money2` decimal(10, 2) NULL DEFAULT 0.00,
  `realmoney2` decimal(10, 2) NULL DEFAULT 0.00,
  `paymoney2` decimal(10, 2) NULL DEFAULT 0.00,
  `money3` decimal(10, 2) NULL DEFAULT 0.00,
  `realmoney3` decimal(10, 2) NULL DEFAULT 0.00,
  `paymoney3` decimal(10, 2) NULL DEFAULT 0.00,
  `chargemoney1` decimal(10, 2) NULL DEFAULT 0.00,
  `chargemoney2` decimal(10, 2) NULL DEFAULT 0.00,
  `chargemoney3` decimal(10, 2) NULL DEFAULT 0.00,
  `charge` decimal(10, 2) NULL DEFAULT 0.00,
  `status` tinyint(3) NULL DEFAULT 0,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_billid`(`billid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_abonus_level
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_abonus_level`;
CREATE TABLE `ims_ewei_shop_abonus_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `levelname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `bonus1` decimal(10, 4) NULL DEFAULT 0.0000,
  `bonus2` decimal(10, 4) NULL DEFAULT 0.0000,
  `bonus3` decimal(10, 4) NULL DEFAULT 0.0000,
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  `ordercount` int(11) NULL DEFAULT 0,
  `bonusmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `downcount` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_adv`;
CREATE TABLE `ims_ewei_shop_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  `shopid` int(11) NULL DEFAULT 0,
  `iswxapp` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_area_config
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_area_config`;
CREATE TABLE `ims_ewei_shop_area_config`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `new_area` tinyint(3) NOT NULL DEFAULT 0,
  `address_street` tinyint(3) NOT NULL DEFAULT 0,
  `createtime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_article
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_article`;
CREATE TABLE `ims_ewei_shop_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `resp_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `resp_img` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `article_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `article_category` int(11) NOT NULL DEFAULT 0,
  `article_date_v` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_mp` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_readnum_v` int(11) NOT NULL DEFAULT 0,
  `article_readnum` int(11) NOT NULL DEFAULT 0,
  `article_likenum_v` int(11) NOT NULL DEFAULT 0,
  `article_likenum` int(11) NOT NULL DEFAULT 0,
  `article_linkurl` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_rule_daynum` int(11) NOT NULL DEFAULT 0,
  `article_rule_allnum` int(11) NOT NULL DEFAULT 0,
  `article_rule_credit` int(11) NOT NULL DEFAULT 0,
  `article_rule_money` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `page_set_option_nocopy` int(1) NOT NULL DEFAULT 0,
  `page_set_option_noshare_tl` int(1) NOT NULL DEFAULT 0,
  `page_set_option_noshare_msg` int(1) NOT NULL DEFAULT 0,
  `article_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_report` int(1) NOT NULL DEFAULT 0,
  `product_advs_type` int(1) NOT NULL DEFAULT 0,
  `product_advs_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `product_advs_more` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `product_advs_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `product_advs` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `article_state` int(1) NOT NULL DEFAULT 0,
  `network_attachment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `article_rule_credittotal` int(11) NULL DEFAULT 0,
  `article_rule_moneytotal` decimal(10, 2) NULL DEFAULT 0.00,
  `article_rule_credit2` int(11) NOT NULL DEFAULT 0,
  `article_rule_money2` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `article_rule_creditm` int(11) NOT NULL DEFAULT 0,
  `article_rule_moneym` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `article_rule_creditm2` int(11) NOT NULL DEFAULT 0,
  `article_rule_moneym2` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `article_readtime` int(11) NULL DEFAULT 0,
  `article_areas` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `article_endtime` int(11) NULL DEFAULT 0,
  `article_hasendtime` tinyint(3) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `article_keyword2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_advance` int(11) NULL DEFAULT 0,
  `article_virtualadd` tinyint(3) NULL DEFAULT 0,
  `article_visit` tinyint(3) NULL DEFAULT 0,
  `article_visit_level` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `article_visit_tip` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_article_title`(`article_title`) USING BTREE,
  INDEX `idx_article_content`(`article_content`(10)) USING BTREE,
  INDEX `idx_article_keyword`(`article_keyword`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '营销文章' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_article_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_article_category`;
CREATE TABLE `ims_ewei_shop_article_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  `isshow` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_category_name`(`category_name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '营销表单分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_article_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_article_comment`;
CREATE TABLE `ims_ewei_shop_article_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `articleid` int(11) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `headimgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `reply_createtime` int(11) NULL DEFAULT NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `deleted` tinyint(3) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  `reply_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_article_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_article_log`;
CREATE TABLE `ims_ewei_shop_article_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL DEFAULT 0,
  `read` int(11) NOT NULL DEFAULT 0,
  `like` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `uniacid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_aid`(`aid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 621 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '点赞/阅读记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_article_report
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_article_report`;
CREATE TABLE `ims_ewei_shop_article_report`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `aid` int(11) NULL DEFAULT 0,
  `cate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cons` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `uniacid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户举报记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_article_share
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_article_share`;
CREATE TABLE `ims_ewei_shop_article_share`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL DEFAULT 0,
  `share_user` int(11) NOT NULL DEFAULT 0,
  `click_user` int(11) NOT NULL DEFAULT 0,
  `click_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `add_credit` int(11) NOT NULL DEFAULT 0,
  `add_money` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_aid`(`aid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户分享数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_article_sys
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_article_sys`;
CREATE TABLE `ims_ewei_shop_article_sys`  (
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `article_message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_image` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_shownum` int(11) NOT NULL DEFAULT 0,
  `article_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_temp` int(11) NOT NULL DEFAULT 0,
  `article_source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uniacid`) USING BTREE,
  INDEX `idx_article_message`(`article_message`) USING BTREE,
  INDEX `idx_article_keyword`(`article_keyword`) USING BTREE,
  INDEX `idx_article_title`(`article_title`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章设置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_author_bill
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_author_bill`;
CREATE TABLE `ims_ewei_shop_author_bill`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `billno` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytype` int(11) NULL DEFAULT 0,
  `year` int(11) NULL DEFAULT 0,
  `month` int(11) NULL DEFAULT 0,
  `week` int(11) NULL DEFAULT 0,
  `ordercount` int(11) NULL DEFAULT 0,
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusrate` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney_send` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney_pay` decimal(10, 2) NULL DEFAULT 0.00,
  `paytime` int(11) NULL DEFAULT 0,
  `partnercount` int(11) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `starttime` int(11) NULL DEFAULT 0,
  `endtime` int(11) NULL DEFAULT 0,
  `confirmtime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_paytype`(`paytype`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_paytime`(`paytime`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_month`(`month`) USING BTREE,
  INDEX `idx_week`(`week`) USING BTREE,
  INDEX `idx_year`(`year`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_author_billo
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_author_billo`;
CREATE TABLE `ims_ewei_shop_author_billo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `billid` int(11) NULL DEFAULT 0,
  `authorid` int(11) NULL DEFAULT NULL,
  `orderid` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_billid`(`billid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_author_billp
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_author_billp`;
CREATE TABLE `ims_ewei_shop_author_billp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `billid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `payno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytype` tinyint(3) NULL DEFAULT 0,
  `bonus` decimal(10, 2) NULL DEFAULT 0.00,
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `realmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `paymoney` decimal(10, 2) NULL DEFAULT 0.00,
  `charge` decimal(10, 2) NULL DEFAULT 0.00,
  `chargemoney` decimal(10, 2) NULL DEFAULT 0.00,
  `status` tinyint(3) NULL DEFAULT 0,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_billid`(`billid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_author_level
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_author_level`;
CREATE TABLE `ims_ewei_shop_author_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `levelname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `bonus` decimal(10, 4) NULL DEFAULT 0.0000,
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  `ordercount` int(11) NULL DEFAULT 0,
  `commissionmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `downcount` int(11) NULL DEFAULT 0,
  `bonus_fg` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_author_team
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_author_team`;
CREATE TABLE `ims_ewei_shop_author_team`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `teamno` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `year` int(11) NULL DEFAULT 0,
  `month` int(11) NULL DEFAULT 0,
  `team_count` int(11) NULL DEFAULT 0,
  `team_ids` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` tinyint(1) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `paytime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `teamno`(`teamno`) USING BTREE,
  INDEX `year`(`year`) USING BTREE,
  INDEX `month`(`month`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_author_team_pay
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_author_team_pay`;
CREATE TABLE `ims_ewei_shop_author_team_pay`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `teamid` int(11) NULL DEFAULT 0,
  `mid` int(11) NULL DEFAULT 0,
  `payno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `paymoney` decimal(10, 2) NULL DEFAULT 0.00,
  `paytime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_teamid`(`teamid`) USING BTREE,
  INDEX `idx_mid`(`mid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_banner
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_banner`;
CREATE TABLE `ims_ewei_shop_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `bannername` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  `shopid` int(11) NULL DEFAULT 0,
  `iswxapp` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_bargain_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_bargain_account`;
CREATE TABLE `ims_ewei_shop_bargain_account`  (
  `id` int(11) NOT NULL,
  `mall_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mall_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mall_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mall_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message` int(11) NULL DEFAULT 0,
  `partin` int(11) NULL DEFAULT 0,
  `rule` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `end_message` int(11) NULL DEFAULT 0,
  `follow_swi` tinyint(1) NOT NULL DEFAULT 0,
  `sharestyle` tinyint(1) NOT NULL DEFAULT 0
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_bargain_actor
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_bargain_actor`;
CREATE TABLE `ims_ewei_shop_bargain_actor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `now_price` decimal(9, 2) NOT NULL,
  `created_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `bargain_times` int(10) NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `head_image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bargain_price` decimal(9, 2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `account_id` int(11) NOT NULL,
  `initiate` tinyint(4) NOT NULL DEFAULT 0,
  `order` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_bargain_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_bargain_goods`;
CREATE TABLE `ims_ewei_shop_bargain_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `goods_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `end_price` decimal(10, 2) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `status` tinyint(2) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `user_set` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `rule` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `act_times` int(11) NOT NULL,
  `mode` tinyint(4) NOT NULL,
  `total_time` int(11) NOT NULL,
  `each_time` int(11) NOT NULL,
  `time_limit` int(11) NOT NULL,
  `probability` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `custom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maximum` int(11) NULL DEFAULT NULL,
  `initiate` tinyint(4) NOT NULL DEFAULT 0,
  `myself` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_bargain_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_bargain_record`;
CREATE TABLE `ims_ewei_shop_bargain_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor_id` int(11) NOT NULL,
  `bargain_price` decimal(9, 2) NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `head_image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bargain_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_carrier
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_carrier`;
CREATE TABLE `ims_ewei_shop_carrier`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `realname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `deleted` tinyint(1) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_category`;
CREATE TABLE `ims_ewei_shop_cashier_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `catename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_clearing
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_clearing`;
CREATE TABLE `ims_ewei_shop_cashier_clearing`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `cashierid` int(11) NULL DEFAULT 0,
  `clearno` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(3) NULL DEFAULT 0,
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `realmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `orderids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `paytime` int(11) NULL DEFAULT 0,
  `deleted` tinyint(3) NULL DEFAULT 0,
  `paytype` tinyint(1) NULL DEFAULT 0,
  `payinfo` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `charge` decimal(10, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `storeid`(`cashierid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `createtime`(`createtime`) USING BTREE,
  INDEX `deleted`(`deleted`) USING BTREE,
  INDEX `clearno`(`clearno`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_goods`;
CREATE TABLE `ims_ewei_shop_cashier_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `cashierid` int(11) NULL DEFAULT 0,
  `createtime` int(10) UNSIGNED NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `categoryid` tinyint(1) NULL DEFAULT 0,
  `price` decimal(10, 2) NULL DEFAULT 0.00,
  `total` int(11) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  `goodssn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `cashierid`(`cashierid`) USING BTREE,
  INDEX `goodssn`(`goodssn`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_goods_category`;
CREATE TABLE `ims_ewei_shop_cashier_goods_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `cashierid` int(11) NULL DEFAULT 0,
  `catename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_cashierid`(`cashierid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_operator
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_operator`;
CREATE TABLE `ims_ewei_shop_cashier_operator`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `cashierid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `manageopenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `salt` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `perm` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(10) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `cashierid`(`cashierid`) USING BTREE,
  INDEX `manageopenid`(`manageopenid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_order`;
CREATE TABLE `ims_ewei_shop_cashier_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `ordersn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `price` decimal(10, 2) NULL DEFAULT 0.00,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `payopenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(10) UNSIGNED NULL DEFAULT 0,
  `status` tinyint(4) NULL DEFAULT 0,
  `paytime` int(10) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_pay_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_pay_log`;
CREATE TABLE `ims_ewei_shop_cashier_pay_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `cashierid` int(11) NULL DEFAULT 0,
  `operatorid` int(11) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytype` tinyint(3) NULL DEFAULT NULL,
  `logno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `status` int(11) NULL DEFAULT 0,
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `paytime` int(11) NULL DEFAULT 0,
  `is_applypay` tinyint(1) NULL DEFAULT 0,
  `randommoney` decimal(10, 2) NULL DEFAULT 0.00,
  `enough` decimal(10, 2) NULL DEFAULT 0.00,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `deduction` decimal(10, 2) NULL DEFAULT 0.00,
  `discountmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `discount` decimal(5, 2) NULL DEFAULT 0.00,
  `isgoods` tinyint(1) NULL DEFAULT 0,
  `orderid` int(11) NULL DEFAULT 0,
  `orderprice` decimal(10, 2) NULL DEFAULT 0.00,
  `goodsprice` decimal(10, 2) NULL DEFAULT 0.00,
  `couponpay` decimal(10, 2) NULL DEFAULT 0.00,
  `payopenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `nosalemoney` decimal(10, 2) NULL DEFAULT 0.00,
  `coupon` int(11) NULL DEFAULT 0,
  `usecoupon` int(11) NULL DEFAULT 0,
  `usecouponprice` decimal(10, 2) NULL DEFAULT 0.00,
  `present_credit1` int(11) NULL DEFAULT 0,
  `refundsn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `refunduser` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_type`(`paytype`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_storeid`(`cashierid`) USING BTREE,
  INDEX `idx_logno`(`logno`) USING BTREE,
  INDEX `is_applypay`(`is_applypay`) USING BTREE,
  INDEX `orderid`(`orderid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_pay_log_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_pay_log_goods`;
CREATE TABLE `ims_ewei_shop_cashier_pay_log_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cashierid` int(11) NULL DEFAULT 0,
  `logid` int(11) NULL DEFAULT 0,
  `goodsid` int(11) NULL DEFAULT 0,
  `price` decimal(10, 2) NULL DEFAULT 0.00,
  `total` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `logid`(`logid`) USING BTREE,
  INDEX `goodsid`(`goodsid`) USING BTREE,
  INDEX `cashierid`(`cashierid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_qrcode
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_qrcode`;
CREATE TABLE `ims_ewei_shop_cashier_qrcode`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `cashierid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `goodstitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `createtime` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `cashierid`(`cashierid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_user
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_user`;
CREATE TABLE `ims_ewei_shop_cashier_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `storeid` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `setmeal` tinyint(3) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `manageopenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isopen_commission` tinyint(1) NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `categoryid` int(11) NULL DEFAULT 0,
  `wechat_status` tinyint(1) NULL DEFAULT 0,
  `wechatpay` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `alipay_status` tinyint(1) NULL DEFAULT 0,
  `alipay` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `withdraw` decimal(10, 2) NULL DEFAULT 0.00,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `diyformfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `salt` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lifetimestart` int(10) UNSIGNED NULL DEFAULT 0,
  `lifetimeend` int(10) UNSIGNED NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  `set` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `deleted` tinyint(1) NULL DEFAULT 0,
  `can_withdraw` tinyint(1) NULL DEFAULT 0,
  `show_paytype` tinyint(1) NULL DEFAULT 0,
  `couponid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `management` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `notice_openids` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `openid`(`manageopenid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_category`;
CREATE TABLE `ims_ewei_shop_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parentid` int(11) NULL DEFAULT 0,
  `isrecommand` int(10) NULL DEFAULT 0,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `displayorder` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `enabled` tinyint(1) NULL DEFAULT 1,
  `ishome` tinyint(3) NULL DEFAULT 0,
  `advimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `advurl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `level` tinyint(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_parentid`(`parentid`) USING BTREE,
  INDEX `idx_isrecommand`(`isrecommand`) USING BTREE,
  INDEX `idx_ishome`(`ishome`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1174 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_city_express
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_city_express`;
CREATE TABLE `ims_ewei_shop_city_express`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `start_fee` decimal(10, 2) NULL DEFAULT 0.00,
  `start_km` int(11) NULL DEFAULT 0,
  `pre_km` int(11) NULL DEFAULT 0,
  `pre_km_fee` decimal(10, 2) NULL DEFAULT 0.00,
  `fixed_km` int(11) NULL DEFAULT 0,
  `fixed_fee` decimal(10, 2) NULL DEFAULT 0.00,
  `receive_goods` int(11) NULL DEFAULT NULL,
  `lng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `range` int(11) NULL DEFAULT 0,
  `zoom` int(11) NOT NULL DEFAULT 13,
  `express_type` int(11) NOT NULL DEFAULT 0,
  `config` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tel1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `tel2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `is_sum` tinyint(1) NULL DEFAULT 0,
  `is_dispatch` tinyint(1) NULL DEFAULT 1,
  `enabled` tinyint(1) NULL DEFAULT 0,
  `geo_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_apply
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_apply`;
CREATE TABLE `ims_ewei_shop_commission_apply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `applyno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mid` int(11) NULL DEFAULT 0,
  `type` tinyint(3) NULL DEFAULT 0,
  `orderids` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `commission` decimal(10, 2) NULL DEFAULT 0.00,
  `commission_pay` decimal(10, 2) NULL DEFAULT 0.00,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` tinyint(3) NULL DEFAULT 0,
  `applytime` int(11) NULL DEFAULT 0,
  `checktime` int(11) NULL DEFAULT 0,
  `paytime` int(11) NULL DEFAULT 0,
  `invalidtime` int(11) NULL DEFAULT 0,
  `refusetime` int(11) NULL DEFAULT 0,
  `realmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `charge` decimal(10, 2) NULL DEFAULT 0.00,
  `deductionmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `beginmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `endmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `alipay` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bankname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bankcard` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `realname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `repurchase` decimal(10, 2) NULL DEFAULT 0.00,
  `alipay1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bankname1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bankcard1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sendmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `senddata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_mid`(`mid`) USING BTREE,
  INDEX `idx_checktime`(`checktime`) USING BTREE,
  INDEX `idx_paytime`(`paytime`) USING BTREE,
  INDEX `idx_applytime`(`applytime`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_invalidtime`(`invalidtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_bank
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_bank`;
CREATE TABLE `ims_ewei_shop_commission_bank`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `bankname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_clickcount
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_clickcount`;
CREATE TABLE `ims_ewei_shop_commission_clickcount`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `from_openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `clicktime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_from_openid`(`from_openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 301 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_level
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_level`;
CREATE TABLE `ims_ewei_shop_commission_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `levelname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `commission1` decimal(10, 2) NULL DEFAULT 0.00,
  `commission2` decimal(10, 2) NULL DEFAULT 0.00,
  `commission3` decimal(10, 2) NULL DEFAULT 0.00,
  `commissionmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  `downcount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `ordercount` int(11) NULL DEFAULT 0,
  `withdraw` decimal(10, 2) NULL DEFAULT 0.00,
  `repurchase` decimal(10, 2) NULL DEFAULT 0.00,
  `goodsids` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_log`;
CREATE TABLE `ims_ewei_shop_commission_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `applyid` int(11) NULL DEFAULT 0,
  `mid` int(11) NULL DEFAULT 0,
  `commission` decimal(10, 2) NULL DEFAULT 0.00,
  `createtime` int(11) NULL DEFAULT 0,
  `commission_pay` decimal(10, 2) NULL DEFAULT 0.00,
  `realmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `charge` decimal(10, 2) NULL DEFAULT 0.00,
  `deductionmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `type` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_applyid`(`applyid`) USING BTREE,
  INDEX `idx_mid`(`mid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_rank
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_rank`;
CREATE TABLE `ims_ewei_shop_commission_rank`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `num` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_repurchase
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_repurchase`;
CREATE TABLE `ims_ewei_shop_commission_repurchase`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `year` int(4) NULL DEFAULT 0,
  `month` tinyint(2) NULL DEFAULT 0,
  `repurchase` decimal(10, 2) NULL DEFAULT 0.00,
  `applyid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `applyid`(`applyid`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_shop
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_shop`;
CREATE TABLE `ims_ewei_shop_commission_shop`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `mid` int(11) NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `selectgoods` tinyint(3) NULL DEFAULT 0,
  `selectcategory` tinyint(3) NULL DEFAULT 0,
  `goodsids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_mid`(`mid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon`;
CREATE TABLE `ims_ewei_shop_coupon`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `catid` int(11) NULL DEFAULT 0,
  `couponname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `gettype` tinyint(3) NULL DEFAULT 0,
  `getmax` int(11) NULL DEFAULT 0,
  `usetype` tinyint(3) NULL DEFAULT 0,
  `returntype` tinyint(3) NULL DEFAULT 0,
  `bgcolor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `enough` decimal(10, 2) NULL DEFAULT 0.00,
  `timelimit` tinyint(3) NULL DEFAULT 0,
  `coupontype` tinyint(3) NULL DEFAULT 0,
  `timedays` int(11) NULL DEFAULT 0,
  `timestart` int(11) NULL DEFAULT 0,
  `timeend` int(11) NULL DEFAULT 0,
  `discount` decimal(10, 2) NULL DEFAULT 0.00,
  `deduct` decimal(10, 2) NULL DEFAULT 0.00,
  `backtype` tinyint(3) NULL DEFAULT 0,
  `backmoney` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `backcredit` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `backredpack` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `backwhen` tinyint(3) NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `total` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `respdesc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `respthumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `resptitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `respurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `credit` int(11) NULL DEFAULT 0,
  `usecredit2` tinyint(3) NULL DEFAULT 0,
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `descnoset` tinyint(3) NULL DEFAULT 0,
  `pwdkey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `pwdsuc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pwdfail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pwdurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `pwdask` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pwdstatus` tinyint(3) NULL DEFAULT 0,
  `pwdtimes` int(11) NULL DEFAULT 0,
  `pwdfull` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pwdwords` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pwdopen` tinyint(3) NULL DEFAULT 0,
  `pwdown` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pwdexit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `pwdexitstr` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `displayorder` int(11) NULL DEFAULT 0,
  `pwdkey2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `merchid` int(11) NULL DEFAULT 0,
  `limitgoodtype` tinyint(1) NULL DEFAULT 0,
  `limitgoodcatetype` tinyint(1) NULL DEFAULT 0,
  `limitgoodcateids` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `limitgoodids` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `islimitlevel` tinyint(1) NULL DEFAULT 0,
  `limitmemberlevels` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `limitagentlevels` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `limitpartnerlevels` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `limitaagentlevels` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `tagtitle` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `settitlecolor` tinyint(1) NULL DEFAULT 0,
  `titlecolor` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `limitdiscounttype` tinyint(1) NULL DEFAULT 1,
  `quickget` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_coupontype`(`coupontype`) USING BTREE,
  INDEX `idx_timestart`(`timestart`) USING BTREE,
  INDEX `idx_timeend`(`timeend`) USING BTREE,
  INDEX `idx_timelimit`(`timelimit`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_givetype`(`backtype`) USING BTREE,
  INDEX `idx_catid`(`catid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_category`;
CREATE TABLE `ims_ewei_shop_coupon_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `status` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_data
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_data`;
CREATE TABLE `ims_ewei_shop_coupon_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `couponid` int(11) NULL DEFAULT 0,
  `gettype` tinyint(3) NULL DEFAULT 0,
  `used` int(11) NULL DEFAULT 0,
  `usetime` int(11) NULL DEFAULT 0,
  `gettime` int(11) NULL DEFAULT 0,
  `senduid` int(11) NULL DEFAULT 0,
  `ordersn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `back` tinyint(3) NULL DEFAULT 0,
  `backtime` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `isnew` tinyint(1) NULL DEFAULT 1,
  `nocount` tinyint(1) NULL DEFAULT 1,
  `shareident` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `textkey` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_couponid`(`couponid`) USING BTREE,
  INDEX `idx_gettype`(`gettype`) USING BTREE,
  INDEX `idx_used`(`used`) USING BTREE,
  INDEX `idx_gettime`(`gettime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_goodsendtask
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_goodsendtask`;
CREATE TABLE `ims_ewei_shop_coupon_goodsendtask`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `goodsid` int(11) NULL DEFAULT 0,
  `couponid` int(11) NULL DEFAULT 0,
  `starttime` int(11) NULL DEFAULT 0,
  `endtime` int(11) NULL DEFAULT 0,
  `sendnum` int(11) NULL DEFAULT 1,
  `num` int(11) NULL DEFAULT 0,
  `sendpoint` tinyint(1) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_guess
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_guess`;
CREATE TABLE `ims_ewei_shop_coupon_guess`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `couponid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `times` int(11) NULL DEFAULT 0,
  `pwdkey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `ok` tinyint(3) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_couponid`(`couponid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_log`;
CREATE TABLE `ims_ewei_shop_coupon_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `logno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `couponid` int(11) NULL DEFAULT 0,
  `status` int(11) NULL DEFAULT 0,
  `paystatus` tinyint(3) NULL DEFAULT 0,
  `creditstatus` tinyint(3) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `paytype` tinyint(3) NULL DEFAULT 0,
  `getfrom` tinyint(3) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_couponid`(`couponid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_paystatus`(`paystatus`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_getfrom`(`getfrom`) USING BTREE,
  INDEX `idx_logno`(`logno`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_sendshow
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_sendshow`;
CREATE TABLE `ims_ewei_shop_coupon_sendshow`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `showkey` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uniacid` int(11) NOT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `coupondataid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_sendtasks
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_sendtasks`;
CREATE TABLE `ims_ewei_shop_coupon_sendtasks`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `enough` decimal(10, 2) NULL DEFAULT 0.00,
  `couponid` int(11) NULL DEFAULT 0,
  `starttime` int(11) NULL DEFAULT 0,
  `endtime` int(11) NULL DEFAULT 0,
  `sendnum` int(11) NULL DEFAULT 1,
  `num` int(11) NULL DEFAULT 0,
  `sendpoint` tinyint(1) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_taskdata
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_taskdata`;
CREATE TABLE `ims_ewei_shop_coupon_taskdata`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `taskid` int(11) NULL DEFAULT 0,
  `couponid` int(11) NULL DEFAULT 0,
  `sendnum` int(11) NULL DEFAULT 0,
  `tasktype` tinyint(1) NULL DEFAULT 0,
  `orderid` int(11) NULL DEFAULT 0,
  `parentorderid` int(11) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  `sendpoint` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_usesendtasks
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_usesendtasks`;
CREATE TABLE `ims_ewei_shop_coupon_usesendtasks`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `usecouponid` int(11) NULL DEFAULT 0,
  `couponid` int(11) NULL DEFAULT 0,
  `starttime` int(11) NULL DEFAULT 0,
  `endtime` int(11) NULL DEFAULT 0,
  `sendnum` int(11) NULL DEFAULT 1,
  `num` int(11) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_adv`;
CREATE TABLE `ims_ewei_shop_creditshop_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_category`;
CREATE TABLE `ims_ewei_shop_creditshop_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `displayorder` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `enabled` tinyint(1) NULL DEFAULT 1,
  `advimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `advurl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isrecommand` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_comment`;
CREATE TABLE `ims_ewei_shop_creditshop_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `logid` int(11) NOT NULL DEFAULT 0,
  `logno` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `goodsid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `headimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` tinyint(3) NOT NULL DEFAULT 0,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `time` int(11) NOT NULL DEFAULT 0,
  `reply_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reply_images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `reply_time` int(11) NOT NULL DEFAULT 0,
  `append_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `append_images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `append_time` int(11) NOT NULL DEFAULT 0,
  `append_reply_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `append_reply_images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `append_reply_time` int(11) NOT NULL DEFAULT 0,
  `istop` tinyint(3) NOT NULL DEFAULT 0,
  `checked` tinyint(3) NOT NULL DEFAULT 0,
  `append_checked` tinyint(3) NOT NULL DEFAULT 0,
  `virtual` tinyint(3) NOT NULL DEFAULT 0,
  `deleted` tinyint(3) NOT NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_goods`;
CREATE TABLE `ims_ewei_shop_creditshop_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `cate` int(11) NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `price` decimal(10, 2) NULL DEFAULT 0.00,
  `type` tinyint(3) NULL DEFAULT 0,
  `credit` int(11) NULL DEFAULT 0,
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `total` int(11) NULL DEFAULT 0,
  `totalday` int(11) NULL DEFAULT 0,
  `chance` int(11) NULL DEFAULT 0,
  `chanceday` int(11) NULL DEFAULT 0,
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `rate1` int(11) NULL DEFAULT 0,
  `rate2` int(11) NULL DEFAULT 0,
  `endtime` int(11) NULL DEFAULT 0,
  `joins` int(11) NULL DEFAULT 0,
  `views` int(11) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `deleted` tinyint(3) NULL DEFAULT 0,
  `showlevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `buylevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `showgroups` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `buygroups` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `vip` tinyint(3) NULL DEFAULT 0,
  `istop` tinyint(3) NULL DEFAULT 0,
  `isrecommand` tinyint(3) NULL DEFAULT 0,
  `istime` tinyint(3) NULL DEFAULT 0,
  `timestart` int(11) NULL DEFAULT 0,
  `timeend` int(11) NULL DEFAULT 0,
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `share_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `share_desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `followneed` tinyint(3) NULL DEFAULT 0,
  `followtext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `subdetail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `noticedetail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `usedetail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `goodsdetail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `isendtime` tinyint(3) NULL DEFAULT 0,
  `usecredit2` tinyint(3) NULL DEFAULT 0,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `dispatch` decimal(10, 2) NULL DEFAULT 0.00,
  `storeids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `noticeopenid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `noticetype` tinyint(3) NULL DEFAULT 0,
  `isverify` tinyint(3) NULL DEFAULT 0,
  `goodstype` tinyint(3) NULL DEFAULT 0,
  `couponid` int(11) NULL DEFAULT 0,
  `goodsid` int(11) NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  `productprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `mincredit` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `minmoney` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `maxcredit` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `maxmoney` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `dispatchtype` tinyint(3) NOT NULL DEFAULT 0,
  `dispatchid` int(11) NOT NULL DEFAULT 0,
  `verifytype` tinyint(3) NOT NULL DEFAULT 0,
  `verifynum` int(11) NOT NULL DEFAULT 0,
  `grant1` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `grant2` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `goodssn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `productsn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `weight` int(11) NOT NULL,
  `showtotal` tinyint(3) NOT NULL,
  `totalcnf` tinyint(3) NOT NULL DEFAULT 0,
  `usetime` int(11) NOT NULL DEFAULT 0,
  `hasoption` tinyint(3) NOT NULL DEFAULT 0,
  `noticedetailshow` tinyint(3) NOT NULL DEFAULT 0,
  `detailshow` tinyint(3) NOT NULL DEFAULT 0,
  `packetmoney` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `surplusmoney` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `packetlimit` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `packettype` tinyint(3) NOT NULL DEFAULT 0,
  `minpacketmoney` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `packettotal` int(11) NOT NULL DEFAULT 0,
  `packetsurplus` int(11) NOT NULL DEFAULT 0,
  `maxpacketmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `hascommission` tinyint(3) NULL DEFAULT NULL,
  `nocommission` tinyint(10) NULL DEFAULT NULL,
  `commission` decimal(10, 2) NULL DEFAULT 0.00,
  `commission1_rate` decimal(10, 2) NULL DEFAULT 0.00,
  `marketprice` decimal(10, 2) NULL DEFAULT 0.00,
  `commission1_pay` decimal(10, 2) NULL DEFAULT 0.00,
  `maxprice` mediumint(10) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_endtime`(`endtime`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE,
  INDEX `idx_istop`(`istop`) USING BTREE,
  INDEX `idx_isrecommand`(`isrecommand`) USING BTREE,
  INDEX `idx_istime`(`istime`) USING BTREE,
  INDEX `idx_timestart`(`timestart`) USING BTREE,
  INDEX `idx_timeend`(`timeend`) USING BTREE,
  INDEX `idx_goodstype`(`goodstype`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_log`;
CREATE TABLE `ims_ewei_shop_creditshop_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `logno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `eno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `goodsid` int(11) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `paystatus` tinyint(3) NULL DEFAULT 0,
  `paytype` tinyint(3) NULL DEFAULT -1,
  `dispatchstatus` tinyint(3) NULL DEFAULT 0,
  `creditpay` tinyint(3) NULL DEFAULT 0,
  `addressid` int(11) NULL DEFAULT 0,
  `dispatchno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `usetime` int(11) NULL DEFAULT 0,
  `express` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `expresssn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `expresscom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `verifyopenid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `storeid` int(11) NULL DEFAULT 0,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `couponid` int(11) NULL DEFAULT 0,
  `dupdate1` tinyint(3) NULL DEFAULT 0,
  `transid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `dispatchtransid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `optionid` int(11) NOT NULL DEFAULT 0,
  `time_send` int(11) NOT NULL DEFAULT 0,
  `time_finish` int(11) NOT NULL DEFAULT 0,
  `iscomment` tinyint(3) NOT NULL DEFAULT 0,
  `dispatchtime` int(11) NOT NULL DEFAULT 0,
  `verifynum` int(11) NOT NULL DEFAULT 1,
  `verifytime` int(11) NOT NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  `remarksaler` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `dispatch` decimal(10, 2) NULL DEFAULT 0.00,
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `credit` int(11) NULL DEFAULT 0,
  `goods_num` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_option
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_option`;
CREATE TABLE `ims_ewei_shop_creditshop_option`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `goodsid` int(10) NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `credit` int(10) NOT NULL DEFAULT 0,
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `total` int(11) NULL DEFAULT 0,
  `weight` decimal(10, 2) NULL DEFAULT 0.00,
  `displayorder` int(11) NULL DEFAULT 0,
  `specs` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `skuId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `goodssn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `productsn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `virtual` int(11) NULL DEFAULT 0,
  `exchange_stock` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_spec
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_spec`;
CREATE TABLE `ims_ewei_shop_creditshop_spec`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `goodsid` int(11) NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displaytype` tinyint(3) NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `displayorder` int(11) NULL DEFAULT 0,
  `propId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_spec_item
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_spec_item`;
CREATE TABLE `ims_ewei_shop_creditshop_spec_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `specid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `show` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `valueId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `virtual` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_verify
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_verify`;
CREATE TABLE `ims_ewei_shop_creditshop_verify`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `logid` int(11) NULL DEFAULT 0,
  `verifycode` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `storeid` int(11) NULL DEFAULT 0,
  `verifier` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `isverify` tinyint(3) NULL DEFAULT 0,
  `verifytime` int(11) NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_customer
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_customer`;
CREATE TABLE `ims_ewei_shop_customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `kf_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kf_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `kf_nick` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `kf_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `kf_headimgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_customer_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_customer_category`;
CREATE TABLE `ims_ewei_shop_customer_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_customer_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_customer_guestbook`;
CREATE TABLE `ims_ewei_shop_customer_guestbook`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `realname` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `weixin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` tinyint(3) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `deleted` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_customer_robot
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_customer_robot`;
CREATE TABLE `ims_ewei_shop_customer_robot`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `cate` int(11) NULL DEFAULT 0,
  `keywords` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_cate`(`cate`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_designer
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_designer`;
CREATE TABLE `ims_ewei_shop_designer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `pagename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pagetype` tinyint(3) NOT NULL DEFAULT 0,
  `pageinfo` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `savetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `setdefault` tinyint(3) NOT NULL DEFAULT 0,
  `datas` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_pagetype`(`pagetype`) USING BTREE,
  INDEX `idx_keyword`(`keyword`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_designer_menu
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_designer_menu`;
CREATE TABLE `ims_ewei_shop_designer_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `menuname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isdefault` tinyint(3) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `menus` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_isdefault`(`isdefault`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_dispatch
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_dispatch`;
CREATE TABLE `ims_ewei_shop_dispatch`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `dispatchname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `dispatchtype` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `firstprice` decimal(10, 2) NULL DEFAULT 0.00,
  `secondprice` decimal(10, 2) NULL DEFAULT 0.00,
  `firstweight` int(11) NULL DEFAULT 0,
  `secondweight` int(11) NULL DEFAULT 0,
  `express` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `areas` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `carriers` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `enabled` int(11) NULL DEFAULT 0,
  `calculatetype` tinyint(1) NULL DEFAULT 0,
  `firstnum` int(11) NULL DEFAULT 0,
  `secondnum` int(11) NULL DEFAULT 0,
  `firstnumprice` decimal(10, 2) NULL DEFAULT 0.00,
  `secondnumprice` decimal(10, 2) NULL DEFAULT 0.00,
  `isdefault` tinyint(1) NULL DEFAULT 0,
  `shopid` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `nodispatchareas` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `nodispatchareas_code` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `isdispatcharea` tinyint(3) NOT NULL DEFAULT 0,
  `freeprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_diyform_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diyform_category`;
CREATE TABLE `ims_ewei_shop_diyform_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_diyform_data
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diyform_data`;
CREATE TABLE `ims_ewei_shop_diyform_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `typeid` int(11) NOT NULL DEFAULT 0,
  `cid` int(11) NULL DEFAULT 0,
  `diyformfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `fields` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` tinyint(2) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_typeid`(`typeid`) USING BTREE,
  INDEX `idx_cid`(`cid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_diyform_temp
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diyform_temp`;
CREATE TABLE `ims_ewei_shop_diyform_temp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `typeid` int(11) NULL DEFAULT 0,
  `cid` int(11) NOT NULL DEFAULT 0,
  `diyformfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `fields` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` tinyint(1) NULL DEFAULT 0,
  `diyformid` int(11) NULL DEFAULT 0,
  `diyformdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `carrier_realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `carrier_mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_cid`(`cid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_diyform_type
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diyform_type`;
CREATE TABLE `ims_ewei_shop_diyform_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `cate` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fields` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usedata` int(11) NOT NULL DEFAULT 0,
  `alldata` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 1,
  `savedata` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_cate`(`cate`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_diypage
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diypage`;
CREATE TABLE `ims_ewei_shop_diypage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(11) NOT NULL DEFAULT 0,
  `lastedittime` int(11) NOT NULL DEFAULT 0,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `diymenu` int(11) NOT NULL DEFAULT 0,
  `merch` int(11) NOT NULL DEFAULT 0,
  `diyadv` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_keyword`(`keyword`) USING BTREE,
  INDEX `idx_lastedittime`(`lastedittime`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_diypage_menu
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diypage_menu`;
CREATE TABLE `ims_ewei_shop_diypage_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(11) NOT NULL DEFAULT 0,
  `lastedittime` int(11) NOT NULL DEFAULT 0,
  `merch` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_lastedittime`(`lastedittime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_diypage_plu
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diypage_plu`;
CREATE TABLE `ims_ewei_shop_diypage_plu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(11) NOT NULL DEFAULT 0,
  `lastedittime` int(11) NOT NULL DEFAULT 0,
  `merch` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_lastedittime`(`lastedittime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_diypage_template
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diypage_template`;
CREATE TABLE `ims_ewei_shop_diypage_template`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `preview` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tplid` int(11) NULL DEFAULT 0,
  `cate` int(11) NULL DEFAULT 0,
  `deleted` tinyint(3) NULL DEFAULT 0,
  `merch` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_cate`(`cate`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_ewei_shop_diypage_template
-- ----------------------------
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (1, 0, 2, '系统模板01', 'eyJwYWdlIjp7InR5cGUiOiIyIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwMSIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwMSIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6IiIsImJhY2tncm91bmQiOiIjZmFmYWZhIiwiZGl5bWVudSI6Ii0xIn0sIml0ZW1zIjp7Ik0xNDY1ODAyOTg0ODg1Ijp7InN0eWxlIjp7ImRvdHN0eWxlIjoicm91bmQiLCJkb3RhbGlnbiI6ImNlbnRlciIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwibGVmdHJpZ2h0IjoiNSIsImJvdHRvbSI6IjEwIiwib3BhY2l0eSI6IjAuOCJ9LCJkYXRhIjp7IkMxNDY1ODAyOTg0ODg1Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9iYW5uZXJfMS5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODAyOTg0ODg2Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9iYW5uZXJfMi5qcGciLCJsaW5rdXJsIjoiIn0sIk0xNDY1ODAzMDE0ODM3Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9iYW5uZXJfMy5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6ImJhbm5lciJ9LCJNMTQ2NTgwMzY5MjkzMiI6eyJzdHlsZSI6eyJoZWlnaHQiOiIxMCIsImJhY2tncm91bmQiOiIjZmZmZmZmIn0sImlkIjoiYmxhbmsifSwiTTE0NjU4MDMzMTk4NTMiOnsic3R5bGUiOnsibmF2c3R5bGUiOiIiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInJvd251bSI6IjUifSwiZGF0YSI6eyJDMTQ2NTgwMzMxOTg1MyI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0MVwvbWVudV8xLnBuZyIsImxpbmt1cmwiOiIiLCJ0ZXh0IjoiXHU2NWIwXHU1NGMxIiwiY29sb3IiOiIjNjY2NjY2In0sIkMxNDY1ODAzMzE5ODU0Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9tZW51XzIucG5nIiwibGlua3VybCI6IiIsInRleHQiOiJcdTcwZWRcdTUzNTYiLCJjb2xvciI6IiM2NjY2NjYifSwiQzE0NjU4MDMzMTk4NTUiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDFcL21lbnVfMy5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1NGZjM1x1OTUwMCIsImNvbG9yIjoiIzY2NjY2NiJ9LCJDMTQ2NTgwMzMxOTg1NiI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0MVwvbWVudV80LnBuZyIsImxpbmt1cmwiOiIiLCJ0ZXh0IjoiXHU4YmEyXHU1MzU1IiwiY29sb3IiOiIjNjY2NjY2In0sIk0xNDY1ODAzMzQ3MDQ1Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9tZW51XzUucG5nIiwibGlua3VybCI6IiIsInRleHQiOiJcdTdiN2VcdTUyMzAiLCJjb2xvciI6IiM2NjY2NjYifX0sImlkIjoibWVudSJ9LCJNMTQ2NTgwMzM1OTEwMCI6eyJzdHlsZSI6eyJuYXZzdHlsZSI6IiIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwicm93bnVtIjoiNSJ9LCJkYXRhIjp7IkMxNDY1ODAzMzU5MTAwIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9tZW51XzYucG5nIiwibGlua3VybCI6IiIsInRleHQiOiJcdTRlMGFcdTg4NjMiLCJjb2xvciI6IiM2NjY2NjYifSwiQzE0NjU4MDMzNTkxMDEiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDFcL21lbnVfNy5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1NGUwYlx1ODg2MyIsImNvbG9yIjoiIzY2NjY2NiJ9LCJDMTQ2NTgwMzM1OTEwMiI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0MVwvbWVudV84LnBuZyIsImxpbmt1cmwiOiIiLCJ0ZXh0IjoiXHU5NzhiXHU1YjUwIiwiY29sb3IiOiIjNjY2NjY2In0sIkMxNDY1ODAzMzU5MTAzIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9tZW51XzkucG5nIiwibGlua3VybCI6IiIsInRleHQiOiJcdTUxODVcdTg4NjMiLCJjb2xvciI6IiM2NjY2NjYifSwiTTE0NjU4MDM0NTA4MjciOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDFcL21lbnVfMTAucG5nIiwibGlua3VybCI6IiIsInRleHQiOiJcdTUxNjhcdTkwZTgiLCJjb2xvciI6IiM2NjY2NjYifX0sImlkIjoibWVudSJ9LCJNMTQ2NTgwMzcwMDEzMiI6eyJzdHlsZSI6eyJoZWlnaHQiOiIxMCIsImJhY2tncm91bmQiOiIjZmZmZmZmIn0sImlkIjoiYmxhbmsifSwiTTE0NjU4MDM2MjE5ODAiOnsicGFyYW1zIjp7Imljb251cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2Mlwvc3RhdGljXC9pbWFnZXNcL2hvdGRvdC5qcGciLCJub3RpY2VkYXRhIjoiMSIsInNwZWVkIjoiNCIsIm5vdGljZW51bSI6IjUifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJpY29uY29sb3IiOiIjZmQ1NDU0IiwiY29sb3IiOiIjNjY2NjY2In0sImRhdGEiOnsiQzE0NjU4MDM2MjE5ODAiOnsidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTdiMmNcdTRlMDBcdTY3NjFcdTgxZWFcdTViOWFcdTRlNDlcdTUxNmNcdTU0NGFcdTc2ODRcdTY4MDdcdTk4OTgiLCJsaW5rdXJsIjoiaHR0cDpcL1wvd3d3LmJhaWR1LmNvbSJ9LCJDMTQ2NTgwMzYyMTk4MSI6eyJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1N2IyY1x1NGU4Y1x1Njc2MVx1ODFlYVx1NWI5YVx1NGU0OVx1NTE2Y1x1NTQ0YVx1NzY4NFx1NjgwN1x1OTg5OCIsImxpbmt1cmwiOiJodHRwOlwvXC93d3cuYmFpZHUuY29tIn19LCJpZCI6Im5vdGljZSJ9LCJNMTQ2NTgwMzkzMjQ2MCI6eyJwYXJhbXMiOnsicm93IjoiMiJ9LCJkYXRhIjp7IkMxNDY1ODAzOTMyNDYwIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9waWN0dXJld18xLmpwZyIsImxpbmt1cmwiOiIifSwiQzE0NjU4MDM5MzI0NjMiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDFcL3BpY3R1cmV3XzIuanBnIiwibGlua3VybCI6IiJ9fSwiaWQiOiJwaWN0dXJldyIsInN0eWxlIjp7InBhZGRpbmd0b3AiOiIxNiIsInBhZGRpbmdsZWZ0IjoiNCJ9fSwiTTE0NjU4MDQwMjU1MDgiOnsicGFyYW1zIjp7InRpdGxlIjoiXHU2NWIwXHU1NGMxXHU0ZTBhXHU1ZTAyIiwiaWNvbiI6Imljb24tbmV3In0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwiY29sb3IiOiIjZjA2MjkyIiwidGV4dGFsaWduIjoiY2VudGVyIiwiZm9udHNpemUiOiIxOCIsInBhZGRpbmd0b3AiOiI1IiwicGFkZGluZ2xlZnQiOiI1In0sImlkIjoidGl0bGUifSwiTTE0NjU4MTMzNjgwODUiOnsicGFyYW1zIjp7InNob3d0aXRsZSI6IjEiLCJzaG93cHJpY2UiOiIxIiwiZ29vZHNkYXRhIjoiMCIsImNhdGVpZCI6IiIsImNhdGVuYW1lIjoiIiwiZ3JvdXBpZCI6IiIsImdyb3VwbmFtZSI6IiIsImdvb2Rzc29ydCI6IjAiLCJnb29kc251bSI6IjYiLCJzaG93aWNvbiI6IjAiLCJpY29ucG9zaXRpb24iOiJsZWZ0IHRvcCJ9LCJzdHlsZSI6eyJsaXN0c3R5bGUiOiJibG9jayIsImJ1eXN0eWxlIjoiYnV5YnRuLTEiLCJnb29kc2ljb24iOiJyZWNvbW1hbmQiLCJwcmljZWNvbG9yIjoiI2VkMjgyMiIsImljb25wYWRkaW5ndG9wIjoiMCIsImljb25wYWRkaW5nbGVmdCI6IjAiLCJidXlidG5jb2xvciI6IiNmZTU0NTUiLCJpY29uem9vbSI6IjEwMCIsInRpdGxlY29sb3IiOiIjMjYyNjI2In0sImRhdGEiOnsiQzE0NjU4MTMzNjgwODUiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMS5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MTMzNjgwODYiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMi5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MTMzNjgwODciOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMy5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MTMzNjgwODgiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtNC5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifX0sImlkIjoiZ29vZHMifSwiTTE0NjU4MDU4MjEwNjciOnsicGFyYW1zIjp7InRpdGxlIjoiXHU3MGVkXHU1MzU2XHU1NTQ2XHU1NGMxIiwiaWNvbiI6Imljb24taG90In0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwiY29sb3IiOiIjZmFjMDQyIiwidGV4dGFsaWduIjoiY2VudGVyIiwiZm9udHNpemUiOiIxOCIsInBhZGRpbmd0b3AiOiI1IiwicGFkZGluZ2xlZnQiOiI1In0sImlkIjoidGl0bGUifSwiTTE0NjU4MTMzNzY4OTIiOnsicGFyYW1zIjp7InNob3d0aXRsZSI6IjEiLCJzaG93cHJpY2UiOiIxIiwiZ29vZHNkYXRhIjoiMCIsImNhdGVpZCI6IiIsImNhdGVuYW1lIjoiIiwiZ3JvdXBpZCI6IiIsImdyb3VwbmFtZSI6IiIsImdvb2Rzc29ydCI6IjAiLCJnb29kc251bSI6IjYiLCJzaG93aWNvbiI6IjEiLCJpY29ucG9zaXRpb24iOiJsZWZ0IHRvcCJ9LCJzdHlsZSI6eyJsaXN0c3R5bGUiOiJibG9jayIsImJ1eXN0eWxlIjoiYnV5YnRuLTEiLCJnb29kc2ljb24iOiJyZWNvbW1hbmQiLCJwcmljZWNvbG9yIjoiI2VkMjgyMiIsImljb25wYWRkaW5ndG9wIjoiMCIsImljb25wYWRkaW5nbGVmdCI6IjAiLCJidXlidG5jb2xvciI6IiNmZTU0NTUiLCJpY29uem9vbSI6IjEwMCIsInRpdGxlY29sb3IiOiIjMjYyNjI2In0sImRhdGEiOnsiQzE0NjU4MTMzNzY4OTIiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMS5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MTMzNzY4OTMiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMi5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MTMzNzY4OTQiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMy5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MTMzNzY4OTUiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtNC5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifX0sImlkIjoiZ29vZHMifX19', '../addons/ewei_shopv2/plugin/diypage/static/template/default1/preview.jpg', 1, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (2, 0, 1, '系统模板02', 'eyJwYWdlIjp7InR5cGUiOiIxIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwMiIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwMiIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6IiIsImJhY2tncm91bmQiOiIjZmFmYWZhIiwiZGl5bWVudSI6Ii0xIn0sIml0ZW1zIjp7Ik0xNDY1ODA4NTU2MDAxIjp7InN0eWxlIjp7ImRvdHN0eWxlIjoicm91bmQiLCJkb3RhbGlnbiI6InJpZ2h0IiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJsZWZ0cmlnaHQiOiIxMCIsImJvdHRvbSI6IjEwIiwib3BhY2l0eSI6IjAuOCJ9LCJkYXRhIjp7IkMxNDY1ODA4NTU2MDAxIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQyXC9iYW5uZXJfMS5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODA4NTU2MDAyIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQyXC9iYW5uZXJfMi5qcGciLCJsaW5rdXJsIjoiIn0sIk0xNDY1ODA4NTc1MTIyIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQyXC9iYW5uZXJfMy5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6ImJhbm5lciJ9LCJNMTQ2NTgwODcwNTA2NCI6eyJzdHlsZSI6eyJoZWlnaHQiOiIyMCIsImJhY2tncm91bmQiOiIjZmZmZmZmIn0sImlkIjoiYmxhbmsifSwiTTE0NjU4MDg2NzMwNDAiOnsicGFyYW1zIjp7InJvdyI6IjIifSwiZGF0YSI6eyJDMTQ2NTgwODY3MzA0MCI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0MlwvcGljdHVyZXdfMS5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODA4NjczMDQxIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQyXC9waWN0dXJld18yLmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoicGljdHVyZXciLCJzdHlsZSI6eyJwYWRkaW5ndG9wIjoiMCIsInBhZGRpbmdsZWZ0IjoiMCJ9fSwiTTE0NjU4MDg3MDkyODAiOnsic3R5bGUiOnsiaGVpZ2h0IjoiMjAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiJ9LCJpZCI6ImJsYW5rIn0sIk0xNDY1ODA4NzY2NTY3Ijp7InBhcmFtcyI6eyJyb3ciOiIyIn0sImRhdGEiOnsiQzE0NjU4MDg3NjY1NzAiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDJcL3BpY3R1cmV3XzMuanBnIiwibGlua3VybCI6IiJ9LCJDMTQ2NTgwODc2NjU3MSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0MlwvcGljdHVyZXdfNC5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6InBpY3R1cmV3Iiwic3R5bGUiOnsicGFkZGluZ3RvcCI6IjAiLCJwYWRkaW5nbGVmdCI6IjAifX0sIk0xNDY1ODA4NzkxMDcyIjp7InN0eWxlIjp7ImhlaWdodCI6IjIwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYifSwiaWQiOiJibGFuayJ9LCJNMTQ2NTgwODg3MDY4MCI6eyJkYXRhIjp7IkMxNDY1ODA4ODcwNjgwIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQyXC9iYW5uZXJfMy5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6InBpY3R1cmUiLCJzdHlsZSI6eyJwYWRkaW5ndG9wIjoiMCIsInBhZGRpbmdsZWZ0IjoiMCJ9fSwiTTE0NjU4MDkwMTA0MTUiOnsic3R5bGUiOnsiaGVpZ2h0IjoiMjAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiJ9LCJpZCI6ImJsYW5rIn0sIk0xNDY1ODA4OTgxNTk5Ijp7InBhcmFtcyI6eyJyb3ciOiIyIn0sImRhdGEiOnsiQzE0NjU4MDg5ODE1OTkiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDJcL3BpY3R1cmV3XzUuanBnIiwibGlua3VybCI6IiJ9LCJDMTQ2NTgwODk4MTYwMCI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0MlwvcGljdHVyZXdfNi5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6InBpY3R1cmV3Iiwic3R5bGUiOnsicGFkZGluZ3RvcCI6IjAiLCJwYWRkaW5nbGVmdCI6IjAifX0sIk0xNDY1ODg5MzczNTY3Ijp7InBhcmFtcyI6eyJzaG93dGl0bGUiOiIxIiwic2hvd3ByaWNlIjoiMSIsImdvb2RzZGF0YSI6IjAiLCJjYXRlaWQiOiIiLCJjYXRlbmFtZSI6IiIsImdyb3VwaWQiOiIiLCJncm91cG5hbWUiOiIiLCJnb29kc3NvcnQiOiIwIiwiZ29vZHNudW0iOiI2Iiwic2hvd2ljb24iOiIxIiwiaWNvbnBvc2l0aW9uIjoibGVmdCB0b3AifSwic3R5bGUiOnsibGlzdHN0eWxlIjoiYmxvY2siLCJidXlzdHlsZSI6ImJ1eWJ0bi0xIiwiZ29vZHNpY29uIjoicmVjb21tYW5kIiwicHJpY2Vjb2xvciI6IiNlZDI4MjIiLCJpY29ucGFkZGluZ3RvcCI6IjAiLCJpY29ucGFkZGluZ2xlZnQiOiIwIiwiYnV5YnRuY29sb3IiOiIjZmU1NDU1IiwiaWNvbnpvb20iOiIxMDAiLCJ0aXRsZWNvbG9yIjoiIzI2MjYyNiJ9LCJkYXRhIjp7IkMxNDY1ODg5MzczNTY3Ijp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTEuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn0sIkMxNDY1ODg5MzczNTY4Ijp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTIuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn0sIkMxNDY1ODg5MzczNTY5Ijp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTMuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn0sIkMxNDY1ODg5MzczNTcwIjp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTQuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn19LCJpZCI6Imdvb2RzIn0sIk0xNDY1ODg5Mzc3NDIzIjp7InBhcmFtcyI6eyJjb250ZW50IjoiUEhBZ2MzUjViR1U5SW5SbGVIUXRZV3hwWjI0NklHTmxiblJsY2pzaVB1V2J2dWVKaCthZHBlYTZrT1M2anVlOWtlZTduTys4ak9lSmlPYWRnK1c5a3VXT24rUzluT2lBaGVhSmdPYWNpVHd2Y0Q0PSJ9LCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInBhZGRpbmciOiIyMCJ9LCJpZCI6InJpY2h0ZXh0In19fQ==', '../addons/ewei_shopv2/plugin/diypage/static/template/default2/preview.jpg', 2, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (3, 0, 2, '系统模板03', 'eyJwYWdlIjp7InR5cGUiOiIyIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwMyIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwMyIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6IiIsImJhY2tncm91bmQiOiIjZmFmYWZhIiwiZGl5bWVudSI6Ii0xIn0sIml0ZW1zIjp7Ik0xNDY1ODA5MjQyOTc2Ijp7InN0eWxlIjp7ImRvdHN0eWxlIjoicm91bmQiLCJkb3RhbGlnbiI6ImxlZnQiLCJiYWNrZ3JvdW5kIjoiIzM0YmVkYyIsImxlZnRyaWdodCI6IjEwIiwiYm90dG9tIjoiMTAiLCJvcGFjaXR5IjoiMC43In0sImRhdGEiOnsiQzE0NjU4MDkyNDI5NzYiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDNcL2Jhbm5lcl8xLmpwZyIsImxpbmt1cmwiOiIifSwiQzE0NjU4MDkyNDI5NzciOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDNcL2Jhbm5lcl8yLmpwZyIsImxpbmt1cmwiOiIifSwiTTE0NjU4MDkyNjU5OTIiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDNcL2Jhbm5lcl8zLmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoiYmFubmVyIn0sIk0xNDY1ODA5NTQxNTM1Ijp7InBhcmFtcyI6eyJyb3ciOiIxIn0sImRhdGEiOnsiQzE0NjU4MDk1NDE1MzUiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDNcL3BpY3R1cmV3XzEuanBnIiwibGlua3VybCI6IiJ9LCJDMTQ2NTgwOTU0MTUzNiI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0M1wvcGljdHVyZXdfMi5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODA5NTQxNTM3Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQzXC9waWN0dXJld18zLmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoicGljdHVyZXciLCJzdHlsZSI6eyJwYWRkaW5ndG9wIjoiNSIsInBhZGRpbmdsZWZ0IjoiNSIsImJhY2tncm91bmQiOiIjZmFmYWZhIn19LCJNMTQ2NTgwOTc2MzQxNSI6eyJzdHlsZSI6eyJoZWlnaHQiOiI1IiwiYmFja2dyb3VuZCI6IiNmYWZhZmEifSwiaWQiOiJibGFuayJ9LCJNMTQ2NTgwOTcwOTA0MCI6eyJwYXJhbXMiOnsidGl0bGUiOiJcdTY1YjBcdTU0YzFcdTRlMGFcdTVlMDIiLCJpY29uIjoiaWNvbi1uZXcifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiMyOGMxOTIiLCJjb2xvciI6IiNmZmZmZmYiLCJ0ZXh0YWxpZ24iOiJsZWZ0IiwiZm9udHNpemUiOiIxOCIsInBhZGRpbmd0b3AiOiI1IiwicGFkZGluZ2xlZnQiOiI1In0sImlkIjoidGl0bGUifSwiTTE0NjU4MDk3OTEyMzEiOnsicGFyYW1zIjp7InNob3d0aXRsZSI6IjEiLCJzaG93cHJpY2UiOiIxIiwiZ29vZHNkYXRhIjoiMCIsImNhdGVpZCI6IiIsImNhdGVuYW1lIjoiIiwiZ3JvdXBpZCI6IiIsImdyb3VwbmFtZSI6IiIsImdvb2Rzc29ydCI6IjAiLCJnb29kc251bSI6IjYiLCJzaG93aWNvbiI6IjAiLCJpY29ucG9zaXRpb24iOiJsZWZ0IHRvcCJ9LCJzdHlsZSI6eyJsaXN0c3R5bGUiOiJibG9jayIsImJ1eXN0eWxlIjoiYnV5YnRuLTMiLCJnb29kc2ljb24iOiJyZWNvbW1hbmQiLCJwcmljZWNvbG9yIjoiIzI4YzE5MiIsImljb25wYWRkaW5ndG9wIjoiMCIsImljb25wYWRkaW5nbGVmdCI6IjAiLCJidXlidG5jb2xvciI6IiMyOGMxOGYiLCJpY29uem9vbSI6IjEwMCIsInRpdGxlY29sb3IiOiIjMjhjMTkyIn0sImRhdGEiOnsiQzE0NjU4MDk3OTEyMzEiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMS5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MDk3OTEyMzIiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMi5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MDk3OTEyMzMiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMy5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MDk3OTEyMzQiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtNC5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifX0sImlkIjoiZ29vZHMifSwiTTE0NjU4MDk5NTA4NDciOnsicGFyYW1zIjp7InRpdGxlIjoiXHU2MzhjXHU2N2RjXHU2M2E4XHU4MzUwIiwiaWNvbiI6Imljb24tYXBwcmVjaWF0ZSJ9LCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmYmQzMyIsImNvbG9yIjoiI2ZmZmZmZiIsInRleHRhbGlnbiI6InJpZ2h0IiwiZm9udHNpemUiOiIxOCIsInBhZGRpbmd0b3AiOiI1IiwicGFkZGluZ2xlZnQiOiI1In0sImlkIjoidGl0bGUifSwiTTE0NjU4MDk5NDMyMzEiOnsicGFyYW1zIjp7InNob3d0aXRsZSI6IjEiLCJzaG93cHJpY2UiOiIxIiwiZ29vZHNkYXRhIjoiMCIsImNhdGVpZCI6IiIsImNhdGVuYW1lIjoiIiwiZ3JvdXBpZCI6IiIsImdyb3VwbmFtZSI6IiIsImdvb2Rzc29ydCI6IjAiLCJnb29kc251bSI6IjYiLCJzaG93aWNvbiI6IjEiLCJpY29ucG9zaXRpb24iOiJsZWZ0IHRvcCJ9LCJzdHlsZSI6eyJsaXN0c3R5bGUiOiJibG9jayIsImJ1eXN0eWxlIjoiYnV5YnRuLTEiLCJnb29kc2ljb24iOiJyZWNvbW1hbmQiLCJwcmljZWNvbG9yIjoiI2VkMjgyMiIsImljb25wYWRkaW5ndG9wIjoiMCIsImljb25wYWRkaW5nbGVmdCI6IjAiLCJidXlidG5jb2xvciI6IiNmZTU0NTUiLCJpY29uem9vbSI6IjEwMCIsInRpdGxlY29sb3IiOiIjMjYyNjI2In0sImRhdGEiOnsiQzE0NjU4MDk5NDMyMzEiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMS5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MDk5NDMyMzIiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMi5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MDk5NDMyMzMiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMy5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MDk5NDMyMzQiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtNC5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifX0sImlkIjoiZ29vZHMifSwiTTE0NjU4MTAwNTk2OTQiOnsicGFyYW1zIjp7ImNvbnRlbnQiOiJQSEFnYzNSNWJHVTlJblJsZUhRdFlXeHBaMjQ2SUdObGJuUmxjanNpUGp4aWNpOCtQQzl3UGp4d0lITjBlV3hsUFNKMFpYaDBMV0ZzYVdkdU9pQmpaVzUwWlhJN0lqN25pWWptbllQbWlZRG1uSWtvWXlsWVdPV1ZodVdmamp3dmNENDhjRDRtYm1KemNEczhZbkl2UGp3dmNEND0ifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYifSwiaWQiOiJyaWNodGV4dCJ9fX0=', '../addons/ewei_shopv2/plugin/diypage/static/template/default3/preview.jpg', 3, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (4, 0, 1, '系统模板04', 'eyJwYWdlIjp7InR5cGUiOiIxIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNCIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNCIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6IiIsImJhY2tncm91bmQiOiIjZmFmYWZhIiwiZGl5bWVudSI6Ii0xIn0sIml0ZW1zIjp7Ik0xNDY1ODEwMzUyODk0Ijp7ImRhdGEiOnsiQzE0NjU4MTAzNTI4OTQiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDRcL3BpY3R1cmVfMS5wbmciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEwMzUyODk1Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ0XC9waWN0dXJlXzIucG5nIiwibGlua3VybCI6IiJ9LCJNMTQ2NTgxMDM3MDM5OSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NFwvcGljdHVyZV8zLnBuZyIsImxpbmt1cmwiOiIifSwiTTE0NjU4MTAzNzE3MDEiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDRcL3BpY3R1cmVfNC5wbmciLCJsaW5rdXJsIjoiIn0sIk0xNDY1ODEwMzcyNzkxIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ0XC9waWN0dXJlXzUucG5nIiwibGlua3VybCI6IiJ9fSwiaWQiOiJwaWN0dXJlIiwic3R5bGUiOnsicGFkZGluZ3RvcCI6IjAiLCJwYWRkaW5nbGVmdCI6IjAifX0sIk0xNDY1ODg5OTQ0NzY5Ijp7InBhcmFtcyI6eyJjb250ZW50IjoiUEhBZ2MzUjViR1U5SW5SbGVIUXRZV3hwWjI0NklHTmxiblJsY2pzaVB1V2J2dWVKaCthZHBlYTZrT1M2anVlOWtlZTduTys4ak9lSmlPYWRnK1c5a3VXT24rUzluT2lBaGVhSmdPYWNpVHd2Y0Q0PSJ9LCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInBhZGRpbmciOiIyMCJ9LCJpZCI6InJpY2h0ZXh0In19fQ==', '../addons/ewei_shopv2/plugin/diypage/static/template/default4/preview.jpg', 4, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (5, 0, 2, '系统模板05', 'eyJwYWdlIjp7InR5cGUiOiIyIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNSIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNSIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6InQ1IiwiYmFja2dyb3VuZCI6IiNmYWZhZmEiLCJkaXltZW51IjoiLTEifSwiaXRlbXMiOnsiTTE0NjU4MTA3NTE4MDciOnsic3R5bGUiOnsiZG90c3R5bGUiOiJyb3VuZCIsImRvdGFsaWduIjoibGVmdCIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwibGVmdHJpZ2h0IjoiMTAiLCJib3R0b20iOiIxMCIsIm9wYWNpdHkiOiIwLjcifSwiZGF0YSI6eyJDMTQ2NTgxMDc1MTgwNyI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvYmFubmVyXzEuanBnIiwibGlua3VybCI6IiJ9LCJDMTQ2NTgxMDc1MTgwOCI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvYmFubmVyXzIuanBnIiwibGlua3VybCI6IiJ9LCJNMTQ2NTgxMDc2NjQ4NiI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvYmFubmVyXzMuanBnIiwibGlua3VybCI6IiJ9fSwiaWQiOiJiYW5uZXIifSwiTTE0NjU4MTA5NzA0OTQiOnsic3R5bGUiOnsibmF2c3R5bGUiOiIiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInJvd251bSI6IjQifSwiZGF0YSI6eyJDMTQ2NTgxMDk3MDQ5NCI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvbWVudV8xLnBuZyIsImxpbmt1cmwiOiIiLCJ0ZXh0IjoiSE9NRSIsImNvbG9yIjoiIzY2NjY2NiJ9LCJDMTQ2NTgxMDk3MDQ5NSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvbWVudV8yLnBuZyIsImxpbmt1cmwiOiIiLCJ0ZXh0IjoiTkVXIiwiY29sb3IiOiIjNjY2NjY2In0sIkMxNDY1ODEwOTcwNDk2Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ1XC9tZW51XzMucG5nIiwibGlua3VybCI6IiIsInRleHQiOiJIT1QiLCJjb2xvciI6IiM2NjY2NjYifSwiQzE0NjU4MTA5NzA0OTciOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDVcL21lbnVfNC5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6IkxJU1QiLCJjb2xvciI6IiM2NjY2NjYifX0sImlkIjoibWVudSJ9LCJNMTQ2NTgxMTA5OTI0MCI6eyJwYXJhbXMiOnsicm93IjoiMyJ9LCJkYXRhIjp7IkMxNDY1ODExMDk5MjQwIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ1XC9waWN0dXJld18xLmpwZyIsImxpbmt1cmwiOiIifSwiQzE0NjU4MTEwOTkyNDEiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDVcL3BpY3R1cmV3XzQuanBnIiwibGlua3VybCI6IiJ9LCJDMTQ2NTgxMTA5OTI0MyI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvcGljdHVyZXdfMS5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6InBpY3R1cmV3Iiwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJwYWRkaW5ndG9wIjoiNSIsInBhZGRpbmdsZWZ0IjoiNSJ9fSwiTTE0NjU4MTIzOTAxNzQiOnsicGFyYW1zIjp7InJvdyI6IjIifSwiZGF0YSI6eyJDMTQ2NTgxMjM5MDE3NSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvcGljdHVyZXdfMy5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEyMzkwMTc2Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ1XC9waWN0dXJld18zLmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoicGljdHVyZXciLCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInBhZGRpbmd0b3AiOiIwIiwicGFkZGluZ2xlZnQiOiI1In19LCJNMTQ2NTg3MjQ4NTQ4NiI6eyJzdHlsZSI6eyJoZWlnaHQiOiIxMCIsImJhY2tncm91bmQiOiIjZmFmYWZhIn0sImlkIjoiYmxhbmsifSwiTTE0NjU4MTExNzQ5NTgiOnsiZGF0YSI6eyJDMTQ2NTgxMTE3NDk1OSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvcGljdHVyZV8xLmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoicGljdHVyZSIsInN0eWxlIjp7InBhZGRpbmd0b3AiOiIwIiwicGFkZGluZ2xlZnQiOiIwIn19LCJNMTQ2NTgxMjQxMTM4MSI6eyJwYXJhbXMiOnsic2hvd3RpdGxlIjoiMSIsInNob3dwcmljZSI6IjEiLCJnb29kc2RhdGEiOiIwIiwiY2F0ZWlkIjoiIiwiY2F0ZW5hbWUiOiIiLCJncm91cGlkIjoiIiwiZ3JvdXBuYW1lIjoiIiwiZ29vZHNzb3J0IjoiMCIsImdvb2RzbnVtIjoiNiIsInNob3dpY29uIjoiMSIsImljb25wb3NpdGlvbiI6ImxlZnQgdG9wIn0sInN0eWxlIjp7Imxpc3RzdHlsZSI6ImJsb2NrIiwiYnV5c3R5bGUiOiJidXlidG4tMSIsImdvb2RzaWNvbiI6InJlY29tbWFuZCIsInByaWNlY29sb3IiOiIjZWQyODIyIiwiaWNvbnBhZGRpbmd0b3AiOiIwIiwiaWNvbnBhZGRpbmdsZWZ0IjoiMCIsImJ1eWJ0bmNvbG9yIjoiI2ZlNTQ1NSIsImljb256b29tIjoiMTAwIiwidGl0bGVjb2xvciI6IiMyNjI2MjYifSwiZGF0YSI6eyJDMTQ2NTgxMjQxMTM4MSI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy0xLmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9LCJDMTQ2NTgxMjQxMTM4MiI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy0yLmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9LCJDMTQ2NTgxMjQxMTM4MyI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy0zLmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9LCJDMTQ2NTgxMjQxMTM4NCI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy00LmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9fSwiaWQiOiJnb29kcyJ9LCJNMTQ2NTgxMjQ2Njg5MyI6eyJwYXJhbXMiOnsiY29udGVudCI6IlBIQWdjM1I1YkdVOUluUmxlSFF0WVd4cFoyNDZJR05sYm5SbGNqc2lQanhpY2k4K1BDOXdQanh3SUhOMGVXeGxQU0owWlhoMExXRnNhV2R1T2lCalpXNTBaWEk3SWo3a3U2WGt1SXJsbTc3bmlZZmxuWWZtbmFYbXVwRGt1bzdudlpIbnU1enZ2SXpuaVlqbW5ZUGx2WkxsanBcL2t2WnpvZ0lYbWlZRG1uSW5qZ0lJOEwzQStQSEErUEdKeUx6NDhMM0ErIn0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIn0sImlkIjoicmljaHRleHQifX19', '../addons/ewei_shopv2/plugin/diypage/static/template/default5/preview.jpg', 5, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (6, 0, 1, '系统模板06', 'eyJwYWdlIjp7InR5cGUiOiIxIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNiIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNiIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6IiIsImJhY2tncm91bmQiOiIjZmFmYWZhIiwiZGl5bWVudSI6Ii0xIn0sIml0ZW1zIjp7Ik0xNDY1ODEyNjAyOTMzIjp7ImRhdGEiOnsiQzE0NjU4MTI2MDI5MzMiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDZcL3BpY3R1cmVfMS5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEyNjAyOTM0Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ2XC9waWN0dXJlXzIuanBnIiwibGlua3VybCI6IiJ9LCJNMTQ2NTgxMjYwNDQ5NCI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NlwvcGljdHVyZV8zLmpwZyIsImxpbmt1cmwiOiIifSwiTTE0NjU4MTI2MDUyNDUiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDZcL3BpY3R1cmVfNC5qcGciLCJsaW5rdXJsIjoiIn0sIk0xNDY1ODEyNjA1OTgwIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ2XC9waWN0dXJlXzUuanBnIiwibGlua3VybCI6IiJ9LCJNMTQ2NTgxMjYwNzA0NSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NlwvcGljdHVyZV82LmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoicGljdHVyZSIsInN0eWxlIjp7InBhZGRpbmd0b3AiOiIwIiwicGFkZGluZ2xlZnQiOiIwIn19LCJNMTQ2NTg5MDE4NDY1MCI6eyJwYXJhbXMiOnsiY29udGVudCI6IlBIQWdjM1I1YkdVOUluUmxlSFF0WVd4cFoyNDZJR05sYm5SbGNqc2lQdVdidnVlSmgrYWRwZWE2a09TNmp1ZTlrZWU3bk8rOGpPZUppT2FkZytXOWt1V09uK1M5bk9pQWhlYUpnT2FjaVR3dmNEND0ifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJwYWRkaW5nIjoiMjAifSwiaWQiOiJyaWNodGV4dCJ9fX0=', '../addons/ewei_shopv2/plugin/diypage/static/template/default6/preview.jpg', 6, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (7, 0, 2, '系统模板07', 'eyJwYWdlIjp7InR5cGUiOiIyIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNyIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNyIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6IiIsImJhY2tncm91bmQiOiIjZmFmYWZhIiwiZGl5bWVudSI6Ii0xIn0sIml0ZW1zIjp7Ik0xNDY1ODEyNjkxMzg5Ijp7ImRhdGEiOnsiQzE0NjU4MTI2OTEzODkiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDdcL3BpY3R1cmVfMS5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6InBpY3R1cmUiLCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInBhZGRpbmd0b3AiOiIwIiwicGFkZGluZ2xlZnQiOiIwIn19LCJNMTQ2NTgxMjcyODgyMSI6eyJwYXJhbXMiOnsicGxhY2Vob2xkZXIiOiJcdThiZjdcdThmOTNcdTUxNjVcdTUxNzNcdTk1MmVcdTViNTdcdThmZGJcdTg4NGNcdTY0MWNcdTdkMjIifSwic3R5bGUiOnsiaW5wdXRiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImJhY2tncm91bmQiOiIjZjFmMWYyIiwiaWNvbmNvbG9yIjoiI2I0YjRiNCIsImNvbG9yIjoiIzk5OTk5OSIsInBhZGRpbmd0b3AiOiIxMCIsInBhZGRpbmdsZWZ0IjoiMTAiLCJ0ZXh0YWxpZ24iOiJsZWZ0Iiwic2VhcmNoc3R5bGUiOiIifSwiaWQiOiJzZWFyY2gifSwiTTE0NjU4MTI3MzkxOTciOnsicGFyYW1zIjp7InJvdyI6IjMifSwiZGF0YSI6eyJDMTQ2NTgxMjczOTE5NyI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0N1wvcGljdHVyZXdfMS5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEyNzM5MTk4Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ3XC9waWN0dXJld18yLmpwZyIsImxpbmt1cmwiOiIifSwiQzE0NjU4MTI3MzkxOTkiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDdcL3BpY3R1cmV3XzMuanBnIiwibGlua3VybCI6IiJ9fSwiaWQiOiJwaWN0dXJldyIsInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwicGFkZGluZ3RvcCI6IjAiLCJwYWRkaW5nbGVmdCI6IjUifX0sIk0xNDY1ODEyNzg0NTY1Ijp7ImRhdGEiOnsiQzE0NjU4MTI3ODQ1NjUiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDdcL3BpY3R1cmVfMy5qcGciLCJsaW5rdXJsIjoiIn0sIk0xNDY1ODEyODE5OTQ4Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ3XC9waWN0dXJlXzIuanBnIiwibGlua3VybCI6IiJ9fSwiaWQiOiJwaWN0dXJlIiwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJwYWRkaW5ndG9wIjoiNCIsInBhZGRpbmdsZWZ0IjoiMCJ9fSwiTTE0NjU4MTI4NzU5ODgiOnsicGFyYW1zIjp7InJvdyI6IjIifSwiZGF0YSI6eyJDMTQ2NTgxMjg3NTk4OCI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0N1wvcGljdHVyZXdfNC5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEyODc1OTg5Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ3XC9waWN0dXJld181LmpwZyIsImxpbmt1cmwiOiIifSwiQzE0NjU4MTI4NzU5OTAiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDdcL3BpY3R1cmV3XzYuanBnIiwibGlua3VybCI6IiJ9LCJDMTQ2NTgxMjg3NTk5MSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0N1wvcGljdHVyZXdfNy5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6InBpY3R1cmV3Iiwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJwYWRkaW5ndG9wIjoiMCIsInBhZGRpbmdsZWZ0IjoiMCJ9fSwiTTE0NjU4NzI4OTQxMjAiOnsic3R5bGUiOnsiaGVpZ2h0IjoiMTAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiJ9LCJpZCI6ImJsYW5rIn0sIk0xNDY1ODcyODMyODk1Ijp7InBhcmFtcyI6eyJ0aXRsZSI6Ilx1NzBlZFx1OTUwMFx1NTU0Nlx1NTRjMSIsImljb24iOiIifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmMjMyNGMiLCJjb2xvciI6IiNmZmZmZmYiLCJ0ZXh0YWxpZ24iOiJjZW50ZXIiLCJmb250c2l6ZSI6IjE4IiwicGFkZGluZ3RvcCI6IjUiLCJwYWRkaW5nbGVmdCI6IjUifSwiaWQiOiJ0aXRsZSJ9LCJNMTQ2NTgxMjkwNDA1MyI6eyJwYXJhbXMiOnsic2hvd3RpdGxlIjoiMSIsInNob3dwcmljZSI6IjEiLCJnb29kc2RhdGEiOiIwIiwiY2F0ZWlkIjoiIiwiY2F0ZW5hbWUiOiIiLCJncm91cGlkIjoiIiwiZ3JvdXBuYW1lIjoiIiwiZ29vZHNzb3J0IjoiMCIsImdvb2RzbnVtIjoiNiIsInNob3dpY29uIjoiMSIsImljb25wb3NpdGlvbiI6ImxlZnQgdG9wIn0sInN0eWxlIjp7Imxpc3RzdHlsZSI6ImJsb2NrIiwiYnV5c3R5bGUiOiJidXlidG4tMSIsImdvb2RzaWNvbiI6InJlY29tbWFuZCIsInByaWNlY29sb3IiOiIjZWQyODIyIiwiaWNvbnBhZGRpbmd0b3AiOiIwIiwiaWNvbnBhZGRpbmdsZWZ0IjoiMCIsImJ1eWJ0bmNvbG9yIjoiI2ZlNTQ1NSIsImljb256b29tIjoiMTAwIiwidGl0bGVjb2xvciI6IiMyNjI2MjYifSwiZGF0YSI6eyJDMTQ2NTgxMjkwNDA1MyI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy0xLmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9LCJDMTQ2NTgxMjkwNDA1NCI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy0yLmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9LCJDMTQ2NTgxMjkwNDA1NSI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy0zLmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9LCJDMTQ2NTgxMjkwNDA1NiI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy00LmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9fSwiaWQiOiJnb29kcyJ9LCJNMTQ2NTg4ODU1MjYwNiI6eyJwYXJhbXMiOnsiY29udGVudCI6IlBIQWdjM1I1YkdVOUluUmxlSFF0WVd4cFoyNDZJR05sYm5SbGNqc2lQdVdidnVlSmgrYWRwZWE2a09TNmp1ZTlrZWU3bk8rOGpPZUppT2FkZytXOWt1V09uK1M5bk9pQWhlYUpnT2FjaVR3dmNEND0ifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJwYWRkaW5nIjoiMjAifSwiaWQiOiJyaWNodGV4dCJ9fX0=', '../addons/ewei_shopv2/plugin/diypage/static/template/default7/preview.jpg', 7, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (8, 0, 2, '系统模板08', 'eyJwYWdlIjp7InR5cGUiOiIyIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwOCIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwOCIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6IiIsImJhY2tncm91bmQiOiIjZmFmYWZhIiwiZGl5bWVudSI6Ii0xIn0sIml0ZW1zIjp7Ik0xNDY1ODEyOTk3MDQ1Ijp7ImRhdGEiOnsiQzE0NjU4MTI5OTcwNDUiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDhcL3BpY3R1cmVfMS5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6InBpY3R1cmUiLCJzdHlsZSI6eyJwYWRkaW5ndG9wIjoiMCIsInBhZGRpbmdsZWZ0IjoiMCJ9fSwiTTE0NjU4MTMwMTc1NDkiOnsicGFyYW1zIjp7InJvdyI6IjMifSwiZGF0YSI6eyJDMTQ2NTgxMzAxNzU1MCI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0OFwvcGljdHVyZXdfMS5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEzMDE3NTUxIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ4XC9waWN0dXJld18yLmpwZyIsImxpbmt1cmwiOiIifSwiQzE0NjU4MTMwMTc1NTIiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDhcL3BpY3R1cmV3XzMuanBnIiwibGlua3VybCI6IiJ9fSwiaWQiOiJwaWN0dXJldyIsInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwicGFkZGluZ3RvcCI6IjAiLCJwYWRkaW5nbGVmdCI6IjAifX0sIk0xNDY1ODEzMDQyODc2Ijp7ImRhdGEiOnsiQzE0NjU4MTMwNDI4NzYiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDhcL3BpY3R1cmVfMi5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEzMDQyODc3Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ4XC9waWN0dXJlXzMuanBnIiwibGlua3VybCI6IiJ9fSwiaWQiOiJwaWN0dXJlIiwic3R5bGUiOnsicGFkZGluZ3RvcCI6IjAiLCJwYWRkaW5nbGVmdCI6IjAifX0sIk0xNDY1ODEzMDg4ODA0Ijp7InBhcmFtcyI6eyJyb3ciOiI0In0sImRhdGEiOnsiQzE0NjU4MTMwODg4MDQiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDhcL3BpY3R1cmV3XzQuanBnIiwibGlua3VybCI6IiJ9LCJDMTQ2NTgxMzA4ODgwNSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0OFwvcGljdHVyZXdfNS5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEzMDg4ODA2Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ4XC9waWN0dXJld182LmpwZyIsImxpbmt1cmwiOiIifSwiQzE0NjU4MTMwODg4MDciOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDhcL3BpY3R1cmV3XzcuanBnIiwibGlua3VybCI6IiJ9fSwiaWQiOiJwaWN0dXJldyIsInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwicGFkZGluZ3RvcCI6IjAiLCJwYWRkaW5nbGVmdCI6IjAifX0sIk0xNDY1ODEzMTMxMzgwIjp7InBhcmFtcyI6eyJzaG93dGl0bGUiOiIxIiwic2hvd3ByaWNlIjoiMSIsImdvb2RzZGF0YSI6IjAiLCJjYXRlaWQiOiIiLCJjYXRlbmFtZSI6IiIsImdyb3VwaWQiOiIiLCJncm91cG5hbWUiOiIiLCJnb29kc3NvcnQiOiIwIiwiZ29vZHNudW0iOiI2Iiwic2hvd2ljb24iOiIxIiwiaWNvbnBvc2l0aW9uIjoibGVmdCB0b3AifSwic3R5bGUiOnsibGlzdHN0eWxlIjoiYmxvY2siLCJidXlzdHlsZSI6ImJ1eWJ0bi0xIiwiZ29vZHNpY29uIjoicmVjb21tYW5kIiwicHJpY2Vjb2xvciI6IiNlZDI4MjIiLCJpY29ucGFkZGluZ3RvcCI6IjAiLCJpY29ucGFkZGluZ2xlZnQiOiIwIiwiYnV5YnRuY29sb3IiOiIjZmU1NDU1IiwiaWNvbnpvb20iOiIxMDAiLCJ0aXRsZWNvbG9yIjoiIzI2MjYyNiJ9LCJkYXRhIjp7IkMxNDY1ODEzMTMxMzgwIjp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTEuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn0sIkMxNDY1ODEzMTMxMzgxIjp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTIuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn0sIkMxNDY1ODEzMTMxMzgyIjp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTMuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn0sIkMxNDY1ODEzMTMxMzgzIjp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTQuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn19LCJpZCI6Imdvb2RzIn0sIk0xNDY1ODg4ODMxMjc4Ijp7InBhcmFtcyI6eyJjb250ZW50IjoiUEhBZ2MzUjViR1U5SW5SbGVIUXRZV3hwWjI0NklHTmxiblJsY2pzaVB1V2J2dWVKaCthZHBlYTZrT1M2anVlOWtlZTduTys4ak9lSmlPYWRnK1c5a3VXT24rUzluT2lBaGVhSmdPYWNpVHd2Y0Q0PSJ9LCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInBhZGRpbmciOiIyMCJ9LCJpZCI6InJpY2h0ZXh0In19fQ==', '../addons/ewei_shopv2/plugin/diypage/static/template/default8/preview.jpg', 8, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (9, 0, 3, '会员中心01', 'eyJwYWdlIjp7InR5cGUiOiIzIiwidGl0bGUiOiJcdTRmMWFcdTU0NThcdTRlMmRcdTVmYzMiLCJuYW1lIjoiXHU0ZjFhXHU1NDU4XHU0ZTJkXHU1ZmMzIiwiZGVzYyI6IiIsImljb24iOiIiLCJrZXl3b3JkIjoiIiwiYmFja2dyb3VuZCI6IiNmYWZhZmEiLCJkaXltZW51IjoiMCIsImZvbGxvd2JhciI6IjAiLCJ2aXNpdCI6IjAiLCJ2aXNpdGxldmVsIjp7Im1lbWJlciI6IiIsImNvbW1pc3Npb24iOiIifSwibm92aXNpdCI6eyJ0aXRsZSI6IiIsImxpbmsiOiIifX0sIml0ZW1zIjp7Ik0xNDc0NTI2MTM0ODE0Ijp7InBhcmFtcyI6eyJzdHlsZSI6ImRlZmF1bHQxIiwibGV2ZWxsaW5rIjoiIiwic2V0aWNvbiI6Imljb24tc2V0dGluZ3MiLCJzZXRsaW5rIjoiIiwibGVmdG5hdiI6Ilx1NTE0NVx1NTAzYyIsImxlZnRuYXZsaW5rIjoiIiwicmlnaHRuYXYiOiJcdTUxNTFcdTYzNjIiLCJyaWdodG5hdmxpbmsiOiIifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZTU0NTUiLCJ0ZXh0Y29sb3IiOiIjZmZmZmZmIiwidGV4dGxpZ2h0IjoiI2ZlZjMxZiIsImhlYWRzdHlsZSI6IiJ9LCJpbmZvIjp7ImF2YXRhciI6IiIsIm5pY2tuYW1lIjoiIiwibGV2ZWxuYW1lIjoiIiwidGV4dG1vbmV5IjoiIiwidGV4dGNyZWRpdCI6IiIsIm1vbmV5IjoiIiwiY3JlZGl0IjoiIn0sImlkIjoibWVtYmVyIn0sIk0xNDc0NTI2MTM4OTEwIjp7InBhcmFtcyI6eyJsaW5rdXJsIjoiIiwidGl0bGUiOiJcdTdlZDFcdTViOWFcdTYyNGJcdTY3M2FcdTUzZjciLCJ0ZXh0IjoiXHU1OTgyXHU2NzljXHU2MGE4XHU3NTI4XHU2MjRiXHU2NzNhXHU1M2Y3XHU2Y2U4XHU1MThjXHU4ZmM3XHU0ZjFhXHU1NDU4XHU2MjE2XHU2MGE4XHU2MGYzXHU5MDFhXHU4ZmM3XHU1ZmFlXHU0ZmUxXHU1OTE2XHU4ZDJkXHU3MjY5XHU4YmY3XHU3ZWQxXHU1YjlhXHU2MGE4XHU3Njg0XHU2MjRiXHU2NzNhXHU1M2Y3XHU3ODAxIiwiaWNvbmNsYXNzIjoiaWNvbi1tb2JpbGUifSwic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInRpdGxlY29sb3IiOiIjZmYwMDExIiwidGV4dGNvbG9yIjoiIzk5OTk5OSIsImljb25jb2xvciI6IiM5OTk5OTkifSwiaWQiOiJiaW5kbW9iaWxlIn0sIk0xNDc0NTI2MTQzNDg3Ijp7InN0eWxlIjp7Im1hcmdpbnRvcCI6IjEwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJpY29uY29sb3IiOiIjOTk5OTk5IiwidGV4dGNvbG9yIjoiIzMzMzMzMyIsInJlbWFya2NvbG9yIjoiIzg4ODg4OCJ9LCJkYXRhIjp7IkMxNDc0NTI2MTQzNDg5Ijp7InRleHQiOiJcdTYyMTFcdTc2ODRcdThiYTJcdTUzNTUiLCJsaW5rdXJsIjoiIiwiaWNvbmNsYXNzIjoiaWNvbi1saXN0IiwicmVtYXJrIjoiXHU2N2U1XHU3NzBiXHU1MTY4XHU5MGU4IiwiZG90bnVtIjoiIn19LCJpZCI6Imxpc3RtZW51In0sIk0xNDc0NTI2MTgxNDMxIjp7InBhcmFtcyI6eyJyb3dudW0iOiI0IiwiYm9yZGVyIjoiMSIsImJvcmRlcnRvcCI6IjAiLCJib3JkZXJib3R0b20iOiIxIn0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwiYm9yZGVyY29sb3IiOiIjZWJlYmViIiwidGV4dGNvbG9yIjoiIzdhN2E3YSIsImljb25jb2xvciI6IiNhYWFhYWEiLCJkb3Rjb2xvciI6IiNmZjAwMTEifSwiZGF0YSI6eyJDMTQ3NDUyNjE4MTQzMSI6eyJpY29uY2xhc3MiOiJpY29uLWNhcmQiLCJ0ZXh0IjoiXHU1Zjg1XHU0ZWQ4XHU2YjNlIiwibGlua3VybCI6IiIsImRvdG51bSI6IjAifSwiQzE0NzQ1MjYxODE0MzIiOnsiaWNvbmNsYXNzIjoiaWNvbi1ib3giLCJ0ZXh0IjoiXHU1Zjg1XHU1M2QxXHU4ZDI3IiwibGlua3VybCI6IiIsImRvdG51bSI6IjAifSwiQzE0NzQ1MjYxODE0MzMiOnsiaWNvbmNsYXNzIjoiaWNvbi1kZWxpdmVyIiwidGV4dCI6Ilx1NWY4NVx1NjUzNlx1OGQyNyIsImxpbmt1cmwiOiIiLCJkb3RudW0iOiIwIn0sIkMxNDc0NTI2MTgxNDM0Ijp7Imljb25jbGFzcyI6Imljb24tZWxlY3RyaWNhbCIsInRleHQiOiJcdTkwMDBcdTYzNjJcdThkMjciLCJsaW5rdXJsIjoiIiwiZG90bnVtIjoiMCJ9fSwiaWQiOiJpY29uZ3JvdXAifSwiTTE0NzQ1MjYxOTkxMDIiOnsic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImljb25jb2xvciI6IiM5OTk5OTkiLCJ0ZXh0Y29sb3IiOiIjMzMzMzMzIiwicmVtYXJrY29sb3IiOiIjODg4ODg4In0sImRhdGEiOnsiQzE0NzQ1MjYxOTkxMDIiOnsidGV4dCI6Ilx1NTIwNlx1OTUwMFx1NGUyZFx1NWZjMyIsImxpbmt1cmwiOiIiLCJpY29uY2xhc3MiOiJpY29uLWdyb3VwIiwicmVtYXJrIjoiXHU2N2U1XHU3NzBiIiwiZG90bnVtIjoiIn0sIkMxNDc0NTI2MTk5MTAzIjp7InRleHQiOiJcdTc5ZWZcdTUyMDZcdTdiN2VcdTUyMzAiLCJsaW5rdXJsIjoiIiwiaWNvbmNsYXNzIjoiaWNvbi1naWZ0cyIsInJlbWFyayI6Ilx1NjdlNVx1NzcwYiIsImRvdG51bSI6IiJ9LCJDMTQ3NDUyNjE5OTEwNCI6eyJ0ZXh0IjoiXHU3OWVmXHU1MjA2XHU1NTQ2XHU1N2NlIiwibGlua3VybCI6IiIsImljb25jbGFzcyI6Imljb24tY3JlZGl0bGV2ZWwiLCJyZW1hcmsiOiJcdTY3ZTVcdTc3MGIiLCJkb3RudW0iOiIifX0sImlkIjoibGlzdG1lbnUifSwiTTE0NzQ1MjYyMjIyMDYiOnsic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImljb25jb2xvciI6IiM5OTk5OTkiLCJ0ZXh0Y29sb3IiOiIjMzMzMzMzIiwicmVtYXJrY29sb3IiOiIjODg4ODg4In0sImRhdGEiOnsiQzE0NzQ1MjYyMjIyMDYiOnsidGV4dCI6Ilx1OTg4Nlx1NTNkNlx1NGYxOFx1NjBlMFx1NTIzOCIsImxpbmt1cmwiOiIiLCJpY29uY2xhc3MiOiJpY29uLXNhbWUiLCJyZW1hcmsiOiJcdTY3ZTVcdTc3MGIiLCJkb3RudW0iOiIifSwiQzE0NzQ1MjYyMjIyMDciOnsidGV4dCI6Ilx1NjIxMVx1NzY4NFx1NGYxOFx1NjBlMFx1NTIzOCIsImxpbmt1cmwiOiIiLCJpY29uY2xhc3MiOiJpY29uLWNhcmQiLCJyZW1hcmsiOiJcdTY3ZTVcdTc3MGIiLCJkb3RudW0iOiIifX0sImlkIjoibGlzdG1lbnUifSwiTTE0NzQ1MjYyNTM2MTQiOnsic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImljb25jb2xvciI6IiM5OTk5OTkiLCJ0ZXh0Y29sb3IiOiIjMzMzMzMzIiwicmVtYXJrY29sb3IiOiIjODg4ODg4In0sImRhdGEiOnsiQzE0NzQ1MjYyNTM2MTQiOnsidGV4dCI6Ilx1NzllZlx1NTIwNlx1NjM5Mlx1ODg0YyIsImxpbmt1cmwiOiIiLCJpY29uY2xhc3MiOiJpY29uLXJhbmsiLCJyZW1hcmsiOiJcdTY3ZTVcdTc3MGIiLCJkb3RudW0iOiIifSwiQzE0NzQ1MjYyNTM2MTUiOnsidGV4dCI6Ilx1NmQ4OFx1OGQzOVx1NjM5Mlx1ODg0YyIsImxpbmt1cmwiOiIiLCJpY29uY2xhc3MiOiJpY29uLW1vbmV5IiwicmVtYXJrIjoiXHU2N2U1XHU3NzBiIiwiZG90bnVtIjoiIn19LCJpZCI6Imxpc3RtZW51In0sIk0xNDc0NTI2MjgxNzYwIjp7InN0eWxlIjp7Im1hcmdpbnRvcCI6IjEwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJpY29uY29sb3IiOiIjOTk5OTk5IiwidGV4dGNvbG9yIjoiIzMzMzMzMyIsInJlbWFya2NvbG9yIjoiIzg4ODg4OCJ9LCJkYXRhIjp7IkMxNDc0NTI2MjgxNzYwIjp7InRleHQiOiJcdTYyMTFcdTc2ODRcdThkMmRcdTcyNjlcdThmNjYiLCJsaW5rdXJsIjoiIiwiaWNvbmNsYXNzIjoiaWNvbi1jYXJ0IiwicmVtYXJrIjoiXHU2N2U1XHU3NzBiIiwiZG90bnVtIjoiIn0sIkMxNDc0NTI2MjgxNzYxIjp7InRleHQiOiJcdTYyMTFcdTc2ODRcdTUxNzNcdTZjZTgiLCJsaW5rdXJsIjoiIiwiaWNvbmNsYXNzIjoiaWNvbi1saWtlIiwicmVtYXJrIjoiXHU2N2U1XHU3NzBiIiwiZG90bnVtIjoiIn0sIkMxNDc0NTI2MjgxNzYyIjp7InRleHQiOiJcdTYyMTFcdTc2ODRcdThkYjNcdThmZjkiLCJsaW5rdXJsIjoiIiwiaWNvbmNsYXNzIjoiaWNvbi1mb290cHJpbnQiLCJyZW1hcmsiOiJcdTY3ZTVcdTc3MGIiLCJkb3RudW0iOiIifSwiTTE0NzQ1MjYzMDA1NDMiOnsidGV4dCI6Ilx1NmQ4OFx1NjA2Zlx1NjNkMFx1OTE5Mlx1OGJiZVx1N2Y2ZSIsImxpbmt1cmwiOiIiLCJpY29uY2xhc3MiOiJpY29uLW5vdGljZSIsInJlbWFyayI6Ilx1NjdlNVx1NzcwYiIsImRvdG51bSI6IiJ9fSwiaWQiOiJsaXN0bWVudSJ9LCJNMTQ3NDUyNjMwNzI3MCI6eyJzdHlsZSI6eyJtYXJnaW50b3AiOiIxMCIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwiaWNvbmNvbG9yIjoiIzk5OTk5OSIsInRleHRjb2xvciI6IiMzMzMzMzMiLCJyZW1hcmtjb2xvciI6IiM4ODg4ODgifSwiZGF0YSI6eyJDMTQ3NDUyNjMwNzI3MCI6eyJ0ZXh0IjoiXHU2NTM2XHU4ZDI3XHU1NzMwXHU1NzQwXHU3YmExXHU3NDA2IiwibGlua3VybCI6IiIsImljb25jbGFzcyI6Imljb24tYWRkcmVzcyIsInJlbWFyayI6Ilx1NjdlNVx1NzcwYiIsImRvdG51bSI6IiJ9LCJDMTQ3NDUyNjMwNzI3MSI6eyJ0ZXh0IjoiXHU1ZTJlXHU1MmE5XHU0ZTJkXHU1ZmMzIiwibGlua3VybCI6IiIsImljb25jbGFzcyI6Imljb24tcXVlc3Rpb25maWxsIiwicmVtYXJrIjoiXHU2N2U1XHU3NzBiIiwiZG90bnVtIjoiIn19LCJpZCI6Imxpc3RtZW51In0sIk0xNDc0NTk3NzI2NTU2Ijp7InBhcmFtcyI6eyJiaW5kdXJsIjoiIiwibG9nb3V0dXJsIjoiIn0sInN0eWxlIjp7InRleHRjb2xvciI6IiNmZjAwMTEiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsIm1hcmdpbnRvcCI6IjEwIn0sImlkIjoibG9nb3V0In0sIk0xNDc0NTk3OTcxMjE4Ijp7InBhcmFtcyI6eyJjb250ZW50IjoiUEhBZ2MzUjViR1U5SW5SbGVIUXRZV3hwWjI0NklHTmxiblJsY2pzaVB1ZUppT2FkZythSmdPYWNpU0FvWXlrZ2VIaDQ1WldHNVorT1BDOXdQZz09In0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwicGFkZGluZyI6IjIwIn0sImlkIjoicmljaHRleHQifX19', '../addons/ewei_shopv2/plugin/diypage/static/template/member1/preview.jpg', 9, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (10, 0, 4, '分销中心01', 'eyJwYWdlIjp7InR5cGUiOiI0IiwidGl0bGUiOiJcdThiZjdcdThmOTNcdTUxNjVcdTk4NzVcdTk3NjJcdTY4MDdcdTk4OTgiLCJuYW1lIjoiXHU2NzJhXHU1NDdkXHU1NDBkXHU5ODc1XHU5NzYyIiwiZGVzYyI6IiIsImljb24iOiIiLCJrZXl3b3JkIjoiIiwiYmFja2dyb3VuZCI6IiNmYWZhZmEiLCJkaXltZW51IjoiLTEiLCJmb2xsb3diYXIiOiIwIiwidmlzaXQiOiIwIiwidmlzaXRsZXZlbCI6eyJtZW1iZXIiOiIiLCJjb21taXNzaW9uIjoiIn0sIm5vdmlzaXQiOnsidGl0bGUiOiIiLCJsaW5rIjoiIn19LCJpdGVtcyI6eyJNMTQ3NTk3NjIxMDU0NiI6eyJwYXJhbXMiOnsic3R5bGUiOiJkZWZhdWx0MSIsInNldGljb24iOiJpY29uLXNldHRpbmdzIiwic2V0bGluayI6IiIsImxlZnRuYXYiOiJcdTYzZDBcdTczYjAxIiwibGVmdG5hdmxpbmsiOiIiLCJyaWdodG5hdiI6Ilx1NjNkMFx1NzNiMDIiLCJyaWdodG5hdmxpbmsiOiIiLCJjZW50ZXJuYXYiOiJcdTYzZDBcdTczYjAiLCJjZW50ZXJuYXZsaW5rIjoiIn0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmU1NDU1IiwidGV4dGNvbG9yIjoiI2ZmZmZmZiIsInRleHRsaWdodCI6IiNmZWYzMWYifSwiaWQiOiJtZW1iZXJjIn0sIk0xNDc1OTc2MjEyMzA1Ijp7InBhcmFtcyI6eyJyb3dudW0iOiIzIn0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwidGlwY29sb3IiOiIjZmViMzEyIn0sImRhdGEiOnsiQzE0NzU5NzYyMTIzMDUiOnsiaWNvbmNsYXNzIjoiaWNvbi1tb25leSIsImljb25jb2xvciI6IiNmZWIzMTIiLCJ0ZXh0IjoiXHU1MjA2XHU5NTAwXHU0ZjYzXHU5MWQxIiwidGV4dGNvbG9yIjoiIzY2NjY2NiIsImxpbmt1cmwiOiIiLCJ0aXBudW0iOiIwLjAwIiwidGlwdGV4dCI6Ilx1NTE0MyJ9LCJDMTQ3NTk3NjIxMjMwNiI6eyJpY29uY2xhc3MiOiJpY29uLWxpc3QiLCJpY29uY29sb3IiOiIjNTBiNmZlIiwidGV4dCI6Ilx1NGY2M1x1OTFkMVx1NjYwZVx1N2VjNiIsInRleHRjb2xvciI6IiM2NjY2NjYiLCJsaW5rdXJsIjoiIiwidGlwbnVtIjoiNTAiLCJ0aXB0ZXh0IjoiXHU3YjE0In0sIkMxNDc1OTc2MjEyMzA4Ijp7Imljb25jbGFzcyI6Imljb24tbWFuYWdlb3JkZXIiLCJpY29uY29sb3IiOiIjZmY3NDFkIiwidGV4dCI6Ilx1NjNkMFx1NzNiMFx1NjYwZVx1N2VjNiIsInRleHRjb2xvciI6IiM2NjY2NjYiLCJsaW5rdXJsIjoiIiwidGlwbnVtIjoiMTAiLCJ0aXB0ZXh0IjoiXHU3YjE0In0sIkMxNDc1OTc2MjEyMzA5Ijp7Imljb25jbGFzcyI6Imljb24tZ3JvdXAiLCJpY29uY29sb3IiOiIjZmY3NDFkIiwidGV4dCI6Ilx1NjIxMVx1NzY4NFx1NGUwYlx1N2ViZiIsInRleHRjb2xvciI6IiM2NjY2NjYiLCJsaW5rdXJsIjoiIiwidGlwbnVtIjoiMiIsInRpcHRleHQiOiJcdTRlYmEifSwiQzE0NzU5NzYyMTIzMTAiOnsiaWNvbmNsYXNzIjoiaWNvbi1xcmNvZGUiLCJpY29uY29sb3IiOiIjZmViMzEyIiwidGV4dCI6Ilx1NjNhOFx1NWU3Zlx1NGU4Y1x1N2VmNFx1NzgwMSIsInRleHRjb2xvciI6IiM2NjY2NjYiLCJsaW5rdXJsIjoiIiwidGlwbnVtIjoiIiwidGlwdGV4dCI6IiJ9LCJDMTQ3NTk3NjIxMjMxMSI6eyJpY29uY2xhc3MiOiJpY29uLXNob3BmaWxsIiwiaWNvbmNvbG9yIjoiIzUwYjZmZSIsInRleHQiOiJcdTVjMGZcdTVlOTdcdThiYmVcdTdmNmUiLCJ0ZXh0Y29sb3IiOiIjNjY2NjY2IiwibGlua3VybCI6IiIsInRpcG51bSI6IiIsInRpcHRleHQiOiIifSwiQzE0NzU5NzYyMTIzMTIiOnsiaWNvbmNsYXNzIjoiaWNvbi1yYW5rIiwiaWNvbmNvbG9yIjoiI2ZmNzQxZCIsInRleHQiOiJcdTRmNjNcdTkxZDFcdTYzOTJcdTU0MGQiLCJ0ZXh0Y29sb3IiOiIjNjY2NjY2IiwibGlua3VybCI6IiIsInRpcG51bSI6IiIsInRpcHRleHQiOiIifX0sImlkIjoiYmxvY2tncm91cCJ9fX0=', '../addons/ewei_shopv2/plugin/diypage/static/template/commission1/preview.jpg', 10, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (11, 0, 5, '商品详情', 'eyJwYWdlIjp7InR5cGUiOiI1IiwidGl0bGUiOiJcdTU1NDZcdTU0YzFcdThiZTZcdTYwYzUiLCJuYW1lIjoiXHU1NTQ2XHU1NGMxXHU4YmU2XHU2MGM1IiwiZGVzYyI6IiIsImljb24iOiIiLCJrZXl3b3JkIjoiIiwiYmFja2dyb3VuZCI6IiNmYWZhZmEiLCJkaXltZW51IjoiLTEiLCJmb2xsb3diYXIiOiIwIiwidmlzaXQiOiIwIiwidmlzaXRsZXZlbCI6eyJtZW1iZXIiOiIiLCJjb21taXNzaW9uIjoiIn0sIm5vdmlzaXQiOnsidGl0bGUiOiIiLCJsaW5rIjoiIn0sImRpeWxheWVyIjoiMSJ9LCJpdGVtcyI6eyJNMTQ3ODc4Mjg4ODAyOCI6eyJ0eXBlIjoiNSIsIm1heCI6IjEiLCJwYXJhbXMiOnsiZ29vZHN0ZXh0IjoiXHU1NTQ2XHU1NGMxIiwiZGV0YWlsdGV4dCI6Ilx1OGJlNlx1NjBjNSJ9LCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2Y3ZjdmNyIsInRleHRjb2xvciI6IiM2NjY2NjYiLCJhY3RpdmVjb2xvciI6IiNlZjRmNGYifSwiaWQiOiJkZXRhaWxfdGFiIn0sIk0xNDc4NzgyODkwMTA3Ijp7InR5cGUiOiI1IiwibWF4IjoiMSIsInN0eWxlIjp7ImRvdHN0eWxlIjoicmVjdGFuZ2xlIiwiZG90YWxpZ24iOiJsZWZ0IiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJsZWZ0cmlnaHQiOiI1IiwiYm90dG9tIjoiNSIsIm9wYWNpdHkiOiIwLjgifSwiaWQiOiJkZXRhaWxfc3dpcGUifSwiTTE0Nzg3ODMxMzUzNjUiOnsidHlwZSI6IjUiLCJtYXgiOiIxIiwicGFyYW1zIjp7InNoYXJlIjoiXHU1MjA2XHU0ZWFiIiwic2hhcmVfbGluayI6IiJ9LCJzdHlsZSI6eyJtYXJnaW50b3AiOiIwIiwibWFyZ2luYm90dG9tIjoiMCIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwidGl0bGVjb2xvciI6IiMzMzMzMzMiLCJzdWJ0aXRsZWNvbG9yIjoiI2VmNGY0ZiIsInByaWNlY29sb3IiOiIjZWY0ZjRmIiwidGV4dGNvbG9yIjoiI2MwYzBjMCIsInRpbWVjb2xvciI6IiNlZjRmNGYiLCJ0aW1ldGV4dGNvbG9yIjoiI2VmNGY0ZiJ9LCJpZCI6ImRldGFpbF9pbmZvIn0sIk0xNDc4NzgyOTAzODE5Ijp7InR5cGUiOiI1IiwibWF4IjoiMSIsInN0eWxlIjp7Im1hcmdpbnRvcCI6IjAiLCJtYXJnaW5ib3R0b20iOiIwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJ0ZXh0Y29sb3IiOiIjNjY2NjY2IiwidGV4dGNvbG9yaGlnaCI6IiNlZjRmNGYifSwiZGF0YSI6eyJDMTQ3ODc4MjkwMzgxOSI6eyJuYW1lIjoiXHU0ZThjXHU2YjIxXHU4ZDJkXHU0ZTcwIiwidHlwZSI6ImVyY2kifSwiQzE0Nzg3ODI5MDM4MjAiOnsibmFtZSI6Ilx1NGYxYVx1NTQ1OFx1NGVmNyIsInR5cGUiOiJodWl5dWFuIn0sIkMxNDc4NzgyOTAzODIxIjp7Im5hbWUiOiJcdTRmMThcdTYwZTAiLCJ0eXBlIjoieW91aHVpIn0sIkMxNDc4NzgyOTAzODIyIjp7Im5hbWUiOiJcdTc5ZWZcdTUyMDYiLCJ0eXBlIjoiamlmZW4ifSwiQzE0Nzg3ODI5MDM4MjMiOnsibmFtZSI6Ilx1NGUwZFx1OTE0ZFx1OTAwMVx1NTMzYVx1NTdkZiIsInR5cGUiOiJidXBlaXNvbmcifSwiQzE0Nzg3ODI5MDM4MjQiOnsibmFtZSI6Ilx1NTU0Nlx1NTRjMVx1NjgwN1x1N2I3ZSIsInR5cGUiOiJiaWFvcWlhbiJ9fSwiaWQiOiJkZXRhaWxfc2FsZSJ9LCJNMTQ3ODc4MzE5MDI1NSI6eyJ0eXBlIjoiNSIsIm1heCI6IjEiLCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInRleHRjb2xvciI6IiMzMzMzMzMiLCJtYXJnaW50b3AiOiIxMCIsIm1hcmdpbmJvdHRvbSI6IjAifSwiaWQiOiJkZXRhaWxfc3BlYyJ9LCJNMTQ3ODc4MzE5NjIxOSI6eyJ0eXBlIjoiNSIsIm1heCI6IjEiLCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsIm1hcmdpbnRvcCI6IjEwIiwibWFyZ2luYm90dG9tIjoiMCIsInRleHRjb2xvciI6IiM3YzdjN2MifSwiaWQiOiJkZXRhaWxfcGFja2FnZSJ9LCJNMTQ3ODc4MjkyNDA3NiI6eyJ0eXBlIjoiNSIsIm1heCI6IjEiLCJwYXJhbXMiOnsic2hvcGxvZ28iOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2Mlwvc3RhdGljXC9pbWFnZXNcL2Rlc2lnbmVyLmpwZyIsInNob3BuYW1lIjoiIiwic2hvcGRlc2MiOiIiLCJoaWRlbnVtIjoiMCIsImxlZnRuYXZ0ZXh0IjoiXHU1MTY4XHU5MGU4XHU1NTQ2XHU1NGMxIiwibGVmdG5hdmxpbmsiOiIiLCJyaWdodG5hdnRleHQiOiJcdThmZGJcdTVlOTdcdTkwMWJcdTkwMWIiLCJyaWdodG5hdmxpbmsiOiIifSwic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJtYXJnaW5ib3R0b20iOiIwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJnb29kc251bWNvbG9yIjoiIzMzMzMzMyIsImdvb2RzdGV4dGNvbG9yIjoiIzdjN2M3YyIsInJpZ2h0bmF2Y29sb3IiOiIjN2M3YzdjIiwic2hvcG5hbWVjb2xvciI6IiMzMzMzMzMiLCJzaG9wZGVzY2NvbG9yIjoiIzQ0NDQ0NCJ9LCJpZCI6ImRldGFpbF9zaG9wIn0sIk0xNDc4NzgyOTI4ODg0Ijp7InR5cGUiOiI1IiwibWF4IjoiMSIsInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwibWFyZ2ludG9wIjoiMTAiLCJtYXJnaW5ib3R0b20iOiIwIiwidGl0bGVjb2xvciI6IiMzMzMzMzMiLCJzaG9wbmFtZWNvbG9yIjoiIzMzMzMzMyIsInNob3BpbmZvY29sb3IiOiIjNjY2NjY2IiwibmF2dGVsY29sb3IiOiIjMDA4MDAwIiwibmF2bG9jYXRpb25jb2xvciI6IiNmZjk5MDAifSwiaWQiOiJkZXRhaWxfc3RvcmUifSwiTTE0Nzg3ODMyMTAxNDciOnsidHlwZSI6IjUiLCJtYXgiOiIxIiwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJtYXJnaW50b3AiOiIxMCIsIm1hcmdpbmJvdHRvbSI6IjAifSwiaWQiOiJkZXRhaWxfYnV5c2hvdyJ9LCJNMTQ3ODc4MzIxNDg3OSI6eyJ0eXBlIjoiNSIsIm1heCI6IjEiLCJzdHlsZSI6eyJtYXJnaW50b3AiOiIxMCIsIm1hcmdpbmJvdHRvbSI6IjEwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJtYWluY29sb3IiOiIjZmQ1NDU0Iiwic3ViY29sb3IiOiIjN2M3YzdjIiwidGV4dGNvbG9yIjoiIzMzMzMzMyJ9LCJpZCI6ImRldGFpbF9jb21tZW50In0sIk0xNDc4NzgzMjI1MTU4Ijp7InR5cGUiOiI1IiwibWF4IjoiMSIsInBhcmFtcyI6eyJoaWRlbGlrZSI6IjAiLCJoaWRlc2hvcCI6IjAiLCJoaWRlY2FydCI6IjAiLCJoaWRlY2FydGJ0biI6IjAiLCJ0ZXh0YnV5IjoiXHU3YWNiXHU1MjNiXHU4ZDJkXHU0ZTcwIiwiZ29vZHN0ZXh0IjoiXHU1NTQ2XHU1NGMxIiwibGlrZXRleHQiOiJcdTUxNzNcdTZjZTgiLCJsaWtlaWNvbmNsYXNzIjoiaWNvbi1saWtlIiwibGlrZWxpbmsiOiJpY29uLWxpa2UiLCJzaG9wdGV4dCI6Ilx1NWU5N1x1OTRmYSIsInNob3BpY29uY2xhc3MiOiJpY29uLXNob3AiLCJjYXJ0dGV4dCI6Ilx1OGQyZFx1NzI2OVx1OGY2NiIsImNhcnRpY29uY2xhc3MiOiJpY29uLWNhcnQifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJ0ZXh0Y29sb3IiOiIjOTk5OTk5IiwiaWNvbmNvbG9yIjoiIzk5OTk5OSIsImNhcnRjb2xvciI6IiNmZTk0MDIiLCJidXljb2xvciI6IiNmZDU1NTUiLCJkb3Rjb2xvciI6IiNmZjAwMTEifSwiaWQiOiJkZXRhaWxfbmF2YmFyIn19fQ==', '../addons/ewei_shopv2/plugin/diypage/static/template/detail1/preview.jpg', 11, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (12, 0, 7, '整点秒杀', 'eyJwYWdlIjp7InR5cGUiOiI3IiwidGl0bGUiOiJcdTY1NzRcdTcwYjlcdTc5ZDJcdTY3NDAiLCJuYW1lIjoiXHU2NTc0XHU3MGI5XHU3OWQyXHU2NzQwIiwiZGVzYyI6IiIsImljb24iOiIiLCJrZXl3b3JkIjoiIiwiYmFja2dyb3VuZCI6IiNmYWZhZmEiLCJkaXltZW51IjoiLTEiLCJmb2xsb3diYXIiOiIwIiwidmlzaXQiOiIwIiwidmlzaXRsZXZlbCI6eyJtZW1iZXIiOiIiLCJjb21taXNzaW9uIjoiIn0sIm5vdmlzaXQiOnsidGl0bGUiOiIiLCJsaW5rIjoiIn19LCJpdGVtcyI6eyJNMTQ4MDQ5ODExNTc4MCI6eyJ0eXBlIjoiNyIsIm1heCI6IjEiLCJzdHlsZSI6eyJtYXJnaW50b3AiOiIwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJjb2xvciI6IiMzMzMzMzMiLCJiZ2NvbG9yIjoiI2ZmZmZmZiIsInNlbGVjdGVkY29sb3IiOiIjZmYzMzAwIiwic2VsZWN0ZWRiZ2NvbG9yIjoiI2ZmZmZmZiJ9LCJpZCI6InNlY2tpbGxfdGltZXMifSwiTTE0ODA0OTgxMTgwMTkiOnsidHlwZSI6IjciLCJtYXgiOiIxIiwic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJtYXJnaW5ib3R0b20iOiIwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYifSwiaWQiOiJzZWNraWxsX2FkdnMifSwiTTE0ODA0OTgxMTcwNDMiOnsidHlwZSI6IjciLCJtYXgiOiIxIiwic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImNvbG9yIjoiIzMzMzMzMyIsImJnY29sb3IiOiIjZmZmZmZmIiwic2VsZWN0ZWRjb2xvciI6IiNlZjRmNGYiLCJzZWxlY3RlZGJnY29sb3IiOiIjZmZmZmZmIn0sImlkIjoic2Vja2lsbF9yb29tcyJ9LCJNMTQ4MDQ5ODExODQ1MyI6eyJ0eXBlIjoiNyIsIm1heCI6IjEiLCJwYXJhbXMiOnsidGl0bGV0ZXh0IjoiXHU1MTQ4XHU0ZTBiXHU1MzU1XHU1MTQ4XHU1Zjk3XHU1NGU2fiIsInRpdGxlb3ZlcnRleHQiOiJcdThmZDhcdTUzZWZcdTRlZTVcdTdlZTdcdTdlZWRcdTYyYTJcdThkMmRcdTU0ZTZ+IiwidGl0bGV3YWl0dGV4dCI6Ilx1NTM3M1x1NWMwNlx1NWYwMFx1NTljYiBcdTUxNDhcdTRlMGJcdTUzNTVcdTUxNDhcdTVmOTdcdTU0ZTYiLCJidG50ZXh0IjoiXHU2MmEyXHU4ZDJkXHU0ZTJkIiwiYnRub3ZlcnRleHQiOiJcdTVkZjJcdTYyYTJcdTViOGMiLCJidG53YWl0dGV4dCI6Ilx1N2I0OVx1NWY4NVx1NjJhMlx1OGQyZCJ9LCJzdHlsZSI6eyJtYXJnaW50b3AiOiIxMCIsIm1hcmdpbmJvdHRvbSI6IjAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInRvcGJnY29sb3IiOiIjZjBmMmY1IiwidG9wY29sb3IiOiIjMzMzMzMzIiwidGltZWJnY29sb3IiOiIjNDY0NTUzIiwidGltZWNvbG9yIjoiI2ZmZmZmZiIsInRpdGxlY29sb3IiOiIjMzMzMzMzIiwicHJpY2Vjb2xvciI6IiNlZjRmNGYiLCJtYXJrZXRwcmljZWNvbG9yIjoiIzk0OTU5OCIsImJ0bmJnY29sb3IiOiIjZWY0ZjRmIiwiYnRub3ZlcmJnY29sb3IiOiIjZjdmN2Y3IiwiYnRud2FpdGJnY29sb3IiOiIjMDRiZTAyIiwiYnRuY29sb3IiOiIjZmZmZmZmIiwiYnRub3ZlcmNvbG9yIjoiIzMzMzMzMyIsImJ0bndhaXRjb2xvciI6IiNmZmZmZmYiLCJwcm9jZXNzdGV4dGNvbG9yIjoiI2QwZDFkMiIsInByb2Nlc3NiZ2NvbG9yIjoiI2ZmOGY4ZiJ9LCJpZCI6InNlY2tpbGxfbGlzdCJ9fX0=', '../addons/ewei_shopv2/plugin/diypage/static/template/seckill/preview.png', 12, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (13, 0, 6, '积分商城', 'eyJwYWdlIjp7InR5cGUiOiI2IiwidGl0bGUiOiJcdTc5ZWZcdTUyMDZcdTU1NDZcdTU3Y2UiLCJuYW1lIjoiXHU2ZDRiXHU4YmQ1XHU3OWVmXHU1MjA2XHU1NTQ2XHU1N2NlXHU5ODc1XHU5NzYyIiwiZGVzYyI6IiIsImljb24iOiIiLCJrZXl3b3JkIjoiIiwiYmFja2dyb3VuZCI6IiNmYWZhZmEiLCJkaXltZW51IjoiLTEiLCJmb2xsb3diYXIiOiIwIiwidmlzaXQiOiIwIiwidmlzaXRsZXZlbCI6eyJtZW1iZXIiOiIiLCJjb21taXNzaW9uIjoiIn0sIm5vdmlzaXQiOnsidGl0bGUiOiIiLCJsaW5rIjoiIn19LCJpdGVtcyI6eyJNMTQ3OTI2MTA2MTY0NSI6eyJzdHlsZSI6eyJkb3RzdHlsZSI6InJvdW5kIiwiZG90YWxpZ24iOiJjZW50ZXIiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImxlZnRyaWdodCI6IjUiLCJib3R0b20iOiI1Iiwib3BhY2l0eSI6IjAuOCJ9LCJkYXRhIjp7IkMxNDc5MjYxMDYxNjQ1Ijp7ImltZ3VybCI6Imh0dHA6XC9cL29mNm9kaGRxMS5ia3QuY2xvdWRkbi5jb21cLzA2M2E2ZWM4NGY0NWE3MGQ2Y2NhOGQ4ZjI2NWQxYjcyLmpwZyIsImxpbmt1cmwiOiIuXC9pbmRleC5waHA/aT0xMiZjPWVudHJ5Jm09ZXdlaV9zaG9wdjImZG89bW9iaWxlJnI9Y3JlZGl0c2hvcC5kZXRhaWwmaWQ9MTE3In0sIkMxNDc5MjYxMDYxNjQ2Ijp7ImltZ3VybCI6Imh0dHA6XC9cL29mNm9kaGRxMS5ia3QuY2xvdWRkbi5jb21cLzQwMTgzYzEyY2M0MWIxYWYwMjY3NDIwYzUwNjQyODliLmpwZyIsImxpbmt1cmwiOiIuXC9pbmRleC5waHA/aT0xMiZjPWVudHJ5Jm09ZXdlaV9zaG9wdjImZG89bW9iaWxlJnI9Y3JlZGl0c2hvcC5saXN0cyJ9fSwiaWQiOiJiYW5uZXIifSwiTTE0NzkyNjgxMTQxNjEiOnsic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiJ9LCJkYXRhIjp7IkMxNDc5MjY4MTE0MTYxIjp7InRleHQiOiJcdTYyMTFcdTc2ODRcdTc5ZWZcdTUyMDYiLCJpY29uY2xhc3MiOiJpY29uLWppZmVuIiwidGV4dGNvbG9yIjoiIzY2NjY2NiIsImljb25jb2xvciI6IiM2NjY2NjYiLCJsaW5rdXJsIjoiLlwvaW5kZXgucGhwP2k9MTImYz1lbnRyeSZtPWV3ZWlfc2hvcHYyJmRvPW1vYmlsZSZyPWNyZWRpdHNob3AuY3JlZGl0bG9nIn0sIkMxNDc5MjY4MTE0MTYyIjp7InRleHQiOiJcdTUxNTFcdTYzNjJcdThiYjBcdTVmNTUiLCJpY29uY2xhc3MiOiJpY29uLWxpc3QiLCJ0ZXh0Y29sb3IiOiIjNjY2NjY2IiwiaWNvbmNvbG9yIjoiIzY2NjY2NiIsImxpbmt1cmwiOiIuXC9pbmRleC5waHA/aT0xMiZjPWVudHJ5Jm09ZXdlaV9zaG9wdjImZG89bW9iaWxlJnI9Y3JlZGl0c2hvcC5sb2cifX0sImlkIjoibWVudTIifSwiTTE0NzkyOTA3OTU0MjciOnsicGFyYW1zIjp7InBsYWNlaG9sZGVyIjoiXHU4YmY3XHU4ZjkzXHU1MTY1XHU1MTczXHU5NTJlXHU1YjU3XHU4ZmRiXHU4ODRjXHU2NDFjXHU3ZDIyIiwiZ29vZHN0eXBlIjoiMSJ9LCJzdHlsZSI6eyJpbnB1dGJhY2tncm91bmQiOiIjZmZmZmZmIiwiYmFja2dyb3VuZCI6IiNmMWYxZjIiLCJpY29uY29sb3IiOiIjYjRiNGI0IiwiY29sb3IiOiIjOTk5OTk5IiwicGFkZGluZ3RvcCI6IjYiLCJwYWRkaW5nbGVmdCI6IjEwIiwidGV4dGFsaWduIjoibGVmdCIsInNlYXJjaHN0eWxlIjoiIn0sImlkIjoic2VhcmNoIn0sIk0xNDc5NTQ0NjE5NDQwIjp7InN0eWxlIjp7ImhlaWdodCI6IjEwIiwiYmFja2dyb3VuZCI6IiNmYWZhZmEifSwiaWQiOiJibGFuayJ9LCJNMTQ3OTI2MTA3NjMzMyI6eyJzdHlsZSI6eyJuYXZzdHlsZSI6IiIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwicm93bnVtIjoiNCIsInNob3d0eXBlIjoiMCIsInNob3dkb3QiOiIxIiwicGFnZW51bSI6IjgifSwiZGF0YSI6eyJDMTQ3OTI2MTA3NjMzMyI6eyJpbWd1cmwiOiJodHRwOlwvXC9vZjZvZGhkcTEuYmt0LmNsb3VkZG4uY29tXC9mNGM0ZWZlNjEwMzJiNGE5N2VjYTAzNWM3ZTcyNTA2OC5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1NzNiMFx1OTFkMVx1N2VhMlx1NTMwNSIsImNvbG9yIjoiIzY2NjY2NiJ9LCJDMTQ3OTI2MTA3NjMzNCI6eyJpbWd1cmwiOiJodHRwOlwvXC9vZjZvZGhkcTEuYmt0LmNsb3VkZG4uY29tXC83MTg2ZWI1NDE2OWExMzU1YTcwMjQxNjA1OGY1ODg2My5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1N2NiZVx1N2Y4ZVx1NWI5ZVx1NzI2OSIsImNvbG9yIjoiIzY2NjY2NiJ9LCJDMTQ3OTI2MTA3NjMzNSI6eyJpbWd1cmwiOiJodHRwOlwvXC9vZjZvZGhkcTEuYmt0LmNsb3VkZG4uY29tXC85NzFhODQxYzI1NzdlZDlhYjQyNDJlOTkxZjU5YWE1My5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1NGYxOFx1NjBlMFx1NTIzOCIsImNvbG9yIjoiIzY2NjY2NiJ9LCJDMTQ3OTI2MTA3NjMzNiI6eyJpbWd1cmwiOiJodHRwOlwvXC9vZjZvZGhkcTEuYmt0LmNsb3VkZG4uY29tXC80NWE3NDYwOTRlOWM5NmY2ZTY5Njg0OWFlNmYxMDFhZS5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1NGY1OVx1OTg5ZFx1NTk1Nlx1NTJiMSIsImNvbG9yIjoiIzY2NjY2NiJ9fSwiaWQiOiJtZW51In0sIk0xNDc5MjYxNDUwNzM0Ijp7InN0eWxlIjp7Im1hcmdpbnRvcCI6IjEwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJpY29uY29sb3IiOiIjOTk5OTk5IiwidGV4dGNvbG9yIjoiIzMzMzMzMyIsInJlbWFya2NvbG9yIjoiIzg4ODg4OCJ9LCJkYXRhIjp7IkMxNDc5MjYxNDUwNzM0Ijp7InRleHQiOiJcdTdjYmVcdTdmOGVcdTViOWVcdTcyNjlcdTYyYmRcdTU5NTYiLCJsaW5rdXJsIjoiIiwiaWNvbmNsYXNzIjoiaWNvbi1naWZ0cyIsInJlbWFyayI6Ilx1NjZmNFx1NTkxYSIsImRvdG51bSI6IiJ9fSwiaWQiOiJsaXN0bWVudSJ9LCJNMTQ3OTU0Mzc4MTg2NyI6eyJwYXJhbXMiOnsiZ29vZHN0eXBlIjoiMSIsInNob3d0aXRsZSI6IjEiLCJzaG93cHJpY2UiOiIxIiwic2hvd3RhZyI6IjIiLCJnb29kc2RhdGEiOiI1IiwiY2F0ZWlkIjoiIiwiY2F0ZW5hbWUiOiIiLCJncm91cGlkIjoiIiwiZ3JvdXBuYW1lIjoiIiwiZ29vZHNzb3J0IjoiMCIsImdvb2RzbnVtIjoiNiIsInNob3dpY29uIjoiMSIsImljb25wb3NpdGlvbiI6ImxlZnQgdG9wIiwicHJvZHVjdHByaWNlIjoiMSIsImdvb2Rzc2Nyb2xsIjoiMSJ9LCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImxpc3RzdHlsZSI6ImJsb2NrIiwiYnV5c3R5bGUiOiJidXlidG4tMSIsImdvb2RzaWNvbiI6InJlY29tbWFuZCIsInByaWNlY29sb3IiOiIjZWQyODIyIiwiaWNvbnBhZGRpbmd0b3AiOiIwIiwiaWNvbnBhZGRpbmdsZWZ0IjoiMCIsImJ1eWJ0bmNvbG9yIjoiI2ZlNTQ1NSIsImljb256b29tIjoiMTAwIiwidGl0bGVjb2xvciI6IiMyNjI2MjYiLCJ0YWdiYWNrZ3JvdW5kIjoiI2ZlNTQ1NSJ9LCJkYXRhIjp7IkMxNDc5NTQzNzgxODY3Ijp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTEuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIiwiYmFyZ2FpbiI6IjAiLCJjcmVkaXQiOiIwIiwiY3R5cGUiOiIxIn0sIkMxNDc5NTQzNzgxODY4Ijp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTIuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIiwiYmFyZ2FpbiI6IjAiLCJjcmVkaXQiOiIwIiwiY3R5cGUiOiIxIn0sIkMxNDc5NTQzNzgxODY5Ijp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTMuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIiwiYmFyZ2FpbiI6IjAiLCJjcmVkaXQiOiIwIiwiY3R5cGUiOiIwIn0sIkMxNDc5NTQzNzgxODcwIjp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTQuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIiwiYmFyZ2FpbiI6IjAiLCJjcmVkaXQiOiIwIiwiY3R5cGUiOiIwIn19LCJpZCI6Imdvb2RzIn0sIk0xNDc5MjYxNTk0MDc3Ijp7InN0eWxlIjp7Im1hcmdpbnRvcCI6IjEwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJpY29uY29sb3IiOiIjOTk5OTk5IiwidGV4dGNvbG9yIjoiIzMzMzMzMyIsInJlbWFya2NvbG9yIjoiIzg4ODg4OCJ9LCJkYXRhIjp7IkMxNDc5MjYxNTk0MDc3Ijp7InRleHQiOiJcdTU1NDZcdTU3Y2VcdTRmMThcdTYwZTBcdTUyMzgiLCJsaW5rdXJsIjoiIiwiaWNvbmNsYXNzIjoiaWNvbi1naWZ0cyIsInJlbWFyayI6Ilx1NjZmNFx1NTkxYSIsImRvdG51bSI6IiJ9fSwiaWQiOiJsaXN0bWVudSJ9LCJNMTQ3OTI2MTY1NTkxOSI6eyJwYXJhbXMiOnsic2hvd3RpdGxlIjoiMSIsInNob3dwcmljZSI6IjEiLCJnb29kc2RhdGEiOiIxIiwiY2F0ZWlkIjoiOTAiLCJjYXRlbmFtZSI6Ilx1NmQ0Ylx1OGJkNVx1NTIwNlx1N2M3YjAxMCIsImdyb3VwaWQiOiIiLCJncm91cG5hbWUiOiIiLCJnb29kc3NvcnQiOiIwIiwiZ29vZHNudW0iOiI2Iiwic2hvd2ljb24iOiIxIiwiaWNvbnBvc2l0aW9uIjoibGVmdCB0b3AiLCJnb29kc3R5cGUiOiIxIiwiZ29vZHNzY3JvbGwiOiIwIn0sInN0eWxlIjp7Imxpc3RzdHlsZSI6IiIsImJ1eXN0eWxlIjoiYnV5YnRuLTEiLCJnb29kc2ljb24iOiJyZWNvbW1hbmQiLCJwcmljZWNvbG9yIjoiI2VkMjgyMiIsImljb25wYWRkaW5ndG9wIjoiMCIsImljb25wYWRkaW5nbGVmdCI6IjAiLCJidXlidG5jb2xvciI6IiNmZTU0NTUiLCJpY29uem9vbSI6IjEwMCIsInRpdGxlY29sb3IiOiIjMjYyNjI2In0sImRhdGEiOnsiQzE0NzkyNjE2NTU5MTkiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMS5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIiLCJiYXJnYWluIjoiMCJ9LCJDMTQ3OTI2MTY1NTkyMCI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy0yLmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiIsImJhcmdhaW4iOiIwIn0sIkMxNDc5MjYxNjU1OTIxIjp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTMuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIiwiYmFyZ2FpbiI6IjAifSwiQzE0NzkyNjE2NTU5MjIiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtNC5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIiLCJiYXJnYWluIjoiMCJ9fSwiaWQiOiJnb29kcyJ9fX0=', '../addons/ewei_shopv2/plugin/diypage/static/template/creditshop/preview.png', 13, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (14, 0, 8, '兑换中心', 'eyJwYWdlIjp7InR5cGUiOiI4IiwidGl0bGUiOiJcdTUxNTFcdTYzNjJcdTRlMmRcdTVmYzMiLCJuYW1lIjoiXHU1MTUxXHU2MzYyXHU0ZTJkXHU1ZmMzXHU2YTIxXHU2NzdmIiwiZGVzYyI6IiIsImljb24iOiIiLCJrZXl3b3JkIjoiIiwiYmFja2dyb3VuZCI6IiNmYWZhZmEiLCJkaXltZW51IjoiLTEiLCJkaXlsYXllciI6IjAiLCJkaXlnb3RvcCI6IjAiLCJmb2xsb3diYXIiOiIwIiwidmlzaXQiOiIwIiwidmlzaXRsZXZlbCI6eyJtZW1iZXIiOiIiLCJjb21taXNzaW9uIjoiIn0sIm5vdmlzaXQiOnsidGl0bGUiOiIiLCJsaW5rIjoiIn19LCJpdGVtcyI6eyJNMTQ4MjM3Mjk0MjA3NSI6eyJtYXgiOiIxIiwidHlwZSI6IjgiLCJwYXJhbXMiOnsiZGF0YXR5cGUiOiIwIn0sInN0eWxlIjp7ImRvdHN0eWxlIjoicm91bmQiLCJkb3RhbGlnbiI6ImNlbnRlciIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwibGVmdHJpZ2h0IjoiNSIsImJvdHRvbSI6IjUiLCJvcGFjaXR5IjoiMC44In0sImRhdGEiOnsiQzE0ODIzNzI5NDIwNzUiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2Jhbm5lci0xLmpwZyIsImxpbmt1cmwiOiIifSwiQzE0ODIzNzI5NDIwNzYiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2Jhbm5lci0yLmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoiZXhjaGFuZ2VfYmFubmVyIn0sIk0xNDgyMzcyOTQyNTE1Ijp7Im1heCI6IjEiLCJ0eXBlIjoiOCIsInBhcmFtcyI6eyJwcmV2aWV3IjoiMCIsInRpdGxlIjoiXHU1MTUxXHU2MzYyXHU3ODAxXHU1MTUxXHU2MzYyIiwicGxhY2Vob2xkZXIiOiJcdThiZjdcdThmOTNcdTUxNjVcdTUxNTFcdTYzNjJcdTc4MDEiLCJidG50ZXh0IjoiXHU3YWNiXHU1MzczXHU1MTUxXHU2MzYyIiwiYmFja2J0biI6Ilx1OGZkNFx1NTZkZVx1OTFjZFx1NjViMFx1OGY5M1x1NTE2NVx1NTE1MVx1NjM2Mlx1NzgwMSIsImV4YnRudGV4dCI6Ilx1NTE1MVx1NjM2MiIsImV4YnRuMnRleHQiOiJcdTVkZjJcdTUxNTFcdTYzNjIiLCJjcmVkaXRpY29uIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2ljb25fY3JlZGl0LnBuZyIsIm1vbmV5aWNvbiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9pY29uX21vbmV5LnBuZyIsImNvdXBvbmljb24iOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvaWNvbl9jb3Vwb24ucG5nIiwicmVkYmFnaWNvbiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9pY29uX3JlZGJhZy5wbmciLCJnb29kc2ljb24iOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvaWNvbl9nb29kcy5wbmcifSwic3R5bGUiOnsidGl0bGVjb2xvciI6IiM0NDQ0NDQiLCJidG5jb2xvciI6IiNmZmZmZmYiLCJidG5iYWNrZ3JvdW5kIjoiI2VkNTU2NSIsImlucHV0Y29sb3IiOiIjNjY2NjY2IiwiaW5wdXRiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImlucHV0Ym9yZGVyIjoiI2VmZWZlZiIsImNvZGVjb2xvciI6IiM0NDQ0NDQiLCJudW1jb2xvciI6IiM5OTk5OTkiLCJleGJ0bmNvbG9yIjoiI2ZmZmZmZiIsImV4YnRuYmFja2dyb3VuZCI6IiNlZDU1NjUiLCJleGJ0bjJjb2xvciI6IiNmZmZmZmYiLCJleGJ0bjJiYWNrZ3JvdW5kIjoiI2NjY2NjYyIsImJhY2tidG5jb2xvciI6IiM0NDQ0NDQiLCJiYWNrYnRuYm9yZGVyIjoiI2U3ZWFlYyIsImJhY2tidG5iYWNrZ3JvdW5kIjoiI2Y3ZjdmNyIsImdvb2RzdGl0bGUiOiIjNDQ0NDQ0IiwiZ29vZHNwcmljZSI6IiNhYWFhYWEifSwiaWQiOiJleGNoYW5nZV9pbnB1dCJ9LCJNMTQ4MjM3Mjk0MzE3MyI6eyJtYXgiOiIxIiwidHlwZSI6IjgiLCJwYXJhbXMiOnsicnVsZXRpdGxlIjoiXHU1MTUxXHU2MzYyXHU4OWM0XHU1MjE5In0sInN0eWxlIjp7InJ1bGV0aXRsZWNvbG9yIjoiIzU1NTU1NSJ9LCJpZCI6ImV4Y2hhbmdlX3J1bGUifX19', '../addons/ewei_shopv2/plugin/diypage/static/template/exchange/preview.png', 14, 0, 0, 0);

-- ----------------------------
-- Table structure for ims_ewei_shop_diypage_template_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diypage_template_category`;
CREATE TABLE `ims_ewei_shop_diypage_template_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `merch` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_exchange_cart
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exchange_cart`;
CREATE TABLE `ims_ewei_shop_exchange_cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsid` int(11) NULL DEFAULT NULL,
  `total` int(10) NULL DEFAULT 1,
  `marketprice` decimal(10, 2) NULL DEFAULT NULL,
  `optionid` int(11) NULL DEFAULT NULL,
  `selected` tinyint(1) NULL DEFAULT 1,
  `deleted` tinyint(1) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `groupid` int(11) NULL DEFAULT NULL,
  `serial` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_exchange_code
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exchange_code`;
CREATE TABLE `ims_ewei_shop_exchange_code`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL DEFAULT 0,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `endtime` datetime NOT NULL DEFAULT '2016-10-01 00:00:00',
  `status` int(2) NOT NULL DEFAULT 1,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT 0,
  `scene` int(11) NOT NULL DEFAULT 0,
  `qrcode_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `serial` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `balancestatus` int(11) NULL DEFAULT 1,
  `redstatus` int(11) NULL DEFAULT 1,
  `scorestatus` int(11) NULL DEFAULT 1,
  `couponstatus` int(11) NULL DEFAULT 1,
  `goodsstatus` int(11) NULL DEFAULT NULL,
  `repeatcount` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`, `key`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_exchange_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exchange_group`;
CREATE TABLE `ims_ewei_shop_exchange_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` int(2) NOT NULL DEFAULT 0,
  `endtime` datetime NOT NULL DEFAULT '2016-10-01 00:00:00',
  `mode` int(2) NOT NULL DEFAULT 0,
  `status` int(2) NOT NULL DEFAULT 0,
  `max` int(2) NOT NULL DEFAULT 0,
  `value` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `starttime` datetime NOT NULL DEFAULT '2016-10-01 00:00:00',
  `goods` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `coupon` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `use` int(11) NOT NULL DEFAULT 0,
  `total` int(11) NOT NULL DEFAULT 0,
  `red` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `balance` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `balance_left` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `balance_right` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `red_left` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `red_right` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `score_left` int(11) NOT NULL DEFAULT 0,
  `score_right` int(11) NOT NULL DEFAULT 0,
  `balance_type` int(11) NOT NULL,
  `red_type` int(11) NOT NULL,
  `score_type` int(11) NOT NULL,
  `title_reply` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `rule` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `coupon_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `basic_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reply_type` int(11) NOT NULL DEFAULT 0,
  `code_type` int(11) NOT NULL DEFAULT 0,
  `binding` int(11) NOT NULL DEFAULT 0,
  `showcount` int(11) NULL DEFAULT 0,
  `postage` decimal(10, 2) NULL DEFAULT 0.00,
  `postage_type` int(11) NULL DEFAULT 0,
  `banner` varchar(800) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `keyword_reply` int(11) NULL DEFAULT 0,
  `reply_status` int(11) NULL DEFAULT 1,
  `reply_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `input_banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `diypage` int(11) NOT NULL DEFAULT 0,
  `sendname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `wishing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `actname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `repeat` int(11) NOT NULL DEFAULT 0,
  `koulingstart` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `koulingend` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `kouling` tinyint(1) NOT NULL DEFAULT 0,
  `chufa` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `chufaend` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_exchange_query
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exchange_query`;
CREATE TABLE `ims_ewei_shop_exchange_query`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `querykey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `querytime` int(11) NOT NULL DEFAULT 0,
  `unfreeze` int(11) NOT NULL DEFAULT 0,
  `errorcount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`, `openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_exchange_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exchange_record`;
CREATE TABLE `ims_ewei_shop_exchange_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `uniacid` int(11) NULL DEFAULT NULL,
  `goods` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `orderid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `time` int(11) NOT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mode` int(11) NOT NULL DEFAULT 0,
  `balance` decimal(10, 2) NULL DEFAULT 0.00,
  `red` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `coupon` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `groupid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `serial` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ordersn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `goods_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `key`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_exchange_setting
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exchange_setting`;
CREATE TABLE `ims_ewei_shop_exchange_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `freeze` int(11) NOT NULL DEFAULT 0,
  `mistake` int(11) NOT NULL DEFAULT 0,
  `grouplimit` int(11) NOT NULL DEFAULT 0,
  `alllimit` int(11) NOT NULL DEFAULT 0,
  `no_qrimg` tinyint(3) NOT NULL DEFAULT 1,
  `rule` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`, `uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_exhelper_esheet
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exhelper_esheet`;
CREATE TABLE `ims_ewei_shop_exhelper_esheet`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `express` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `datas` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_ewei_shop_exhelper_esheet
-- ----------------------------
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (1, '顺丰', '', 'SF', 'a:2:{i:0;a:4:{s:5:\"style\";s:9:\"二联150\";s:4:\"spec\";s:33:\"（宽100mm高150mm切点90/60）\";s:4:\"size\";s:3:\"150\";s:9:\"isdefault\";i:1;}i:1;a:4:{s:5:\"style\";s:9:\"三联210\";s:4:\"spec\";s:38:\"（宽100mm 高210mm 切点90/60/60）\";s:4:\"size\";s:3:\"210\";s:9:\"isdefault\";i:0;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (2, '百世快递', '', 'HTKY', 'a:2:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:0;}i:1;a:4:{s:5:\"style\";s:9:\"二联183\";s:4:\"spec\";s:37:\"（宽100mm 高183mm 切点87/5/91）\";s:4:\"size\";s:3:\"183\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (3, '韵达', '', 'YD', 'a:2:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:0;}i:1;a:4:{s:5:\"style\";s:9:\"二联203\";s:4:\"spec\";s:36:\"（宽100mm 高203mm 切点152/51）\";s:4:\"size\";s:3:\"203\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (4, '申通', '', 'STO', 'a:2:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}i:1;a:4:{s:5:\"style\";s:9:\"二联150\";s:4:\"spec\";s:35:\"（宽100mm 高150mm 切点90/60）\";s:4:\"size\";s:3:\"150\";s:9:\"isdefault\";i:0;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (5, '圆通', '', 'YTO', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (6, 'EMS', '', 'EMS', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联150\";s:4:\"spec\";s:33:\"（宽100mm高150mm切点90/60）\";s:4:\"size\";s:3:\"150\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (7, '中通', '', 'ZTO', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (8, '德邦', '', 'DBL', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联177\";s:4:\"spec\";s:34:\"（宽100mm高177mm切点107/70）\";s:4:\"size\";s:3:\"177\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (9, '优速', '', 'UC', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (10, '宅急送', '', 'ZJS', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联120\";s:4:\"spec\";s:33:\"（宽100mm高116mm切点98/10）\";s:4:\"size\";s:3:\"120\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (11, '京东', '', 'JD', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联110\";s:4:\"spec\";s:33:\"（宽100mm高110mm切点60/50）\";s:4:\"size\";s:3:\"110\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (12, '信丰', '', 'XFEX', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联150\";s:4:\"spec\";s:33:\"（宽100mm高150mm切点90/60）\";s:4:\"size\";s:3:\"150\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (13, '全峰', '', 'QFKD', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (14, '跨越速运', '', 'KYSY', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联137\";s:4:\"spec\";s:34:\"（宽100mm高137mm切点101/36）\";s:4:\"size\";s:3:\"137\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (15, '安能', '', 'ANE', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"三联180\";s:4:\"spec\";s:37:\"（宽100mm高180mm切点110/30/40）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (16, '快捷', '', 'FAST', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (17, '国通', '', 'GTO', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (18, '天天', '', 'HHTT', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (19, '中铁快运', '', 'ZTKY', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联150\";s:4:\"spec\";s:33:\"（宽100mm高150mm切点90/60）\";s:4:\"size\";s:3:\"150\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (20, '邮政快递包裹', '', 'YZPY', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');

-- ----------------------------
-- Table structure for ims_ewei_shop_exhelper_esheet_temp
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exhelper_esheet_temp`;
CREATE TABLE `ims_ewei_shop_exhelper_esheet_temp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `esheetid` int(11) NOT NULL DEFAULT 0,
  `esheetname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `customername` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `customerpwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `monthcode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sendsite` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `paytype` tinyint(3) NOT NULL DEFAULT 1,
  `templatesize` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `isnotice` tinyint(3) NOT NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  `issend` tinyint(3) NOT NULL DEFAULT 1,
  `isdefault` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_isdefault`(`isdefault`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_exhelper_express
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exhelper_express`;
CREATE TABLE `ims_ewei_shop_exhelper_express`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `type` int(1) NOT NULL DEFAULT 1,
  `expressname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `expresscom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `express` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `width` decimal(10, 2) NULL DEFAULT 0.00,
  `datas` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `height` decimal(10, 2) NULL DEFAULT 0.00,
  `bg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isdefault` tinyint(3) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_isdefault`(`isdefault`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_exhelper_senduser
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exhelper_senduser`;
CREATE TABLE `ims_ewei_shop_exhelper_senduser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `sendername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `sendertel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `sendersign` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `sendercode` int(11) NULL DEFAULT NULL,
  `senderaddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `sendercity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isdefault` tinyint(3) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `province` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `city` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `area` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_isdefault`(`isdefault`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_exhelper_sys
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exhelper_sys`;
CREATE TABLE `ims_ewei_shop_exhelper_sys`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'localhost',
  `port` int(11) NOT NULL DEFAULT 8000,
  `ip_cloud` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `port_cloud` int(11) NOT NULL DEFAULT 8000,
  `is_cloud` int(1) NOT NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `ebusiness` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `apikey` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_express
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_express`;
CREATE TABLE `ims_ewei_shop_express`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `express` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(1) NULL DEFAULT 1,
  `displayorder` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 92 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_ewei_shop_express
-- ----------------------------
INSERT INTO `ims_ewei_shop_express` VALUES (1, '顺丰', 'shunfeng', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (2, '申通', 'shentong', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (3, '韵达快运', 'yunda', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (4, '天天快递', 'tiantian', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (5, '圆通速递', 'yuantong', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (6, '中通速递', 'zhongtong', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (7, 'ems快递', 'ems', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (8, '汇通快运', 'huitongkuaidi', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (9, '全峰快递', 'quanfengkuaidi', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (10, '宅急送', 'zhaijisong', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (11, 'aae全球专递', 'aae', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (12, '安捷快递', 'anjie', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (13, '安信达快递', 'anxindakuaixi', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (14, '彪记快递', 'biaojikuaidi', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (15, 'bht', 'bht', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (16, '百福东方国际物流', 'baifudongfang', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (17, '中国东方（COE）', 'coe', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (18, '长宇物流', 'changyuwuliu', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (19, '大田物流', 'datianwuliu', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (20, '德邦物流', 'debangwuliu', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (21, 'dhl', 'dhl', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (22, 'dpex', 'dpex', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (23, 'd速快递', 'dsukuaidi', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (24, '递四方', 'disifang', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (25, 'fedex（国外）', 'fedex', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (26, '飞康达物流', 'feikangda', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (27, '凤凰快递', 'fenghuangkuaidi', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (28, '飞快达', 'feikuaida', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (29, '国通快递', 'guotongkuaidi', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (30, '港中能达物流', 'ganzhongnengda', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (31, '广东邮政物流', 'guangdongyouzhengwuliu', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (32, '共速达', 'gongsuda', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (33, '恒路物流', 'hengluwuliu', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (34, '华夏龙物流', 'huaxialongwuliu', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (35, '海红', 'haihongwangsong', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (36, '海外环球', 'haiwaihuanqiu', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (37, '佳怡物流', 'jiayiwuliu', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (38, '京广速递', 'jinguangsudikuaijian', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (39, '急先达', 'jixianda', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (40, '佳吉物流', 'jjwl', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (41, '加运美物流', 'jymwl', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (42, '金大物流', 'jindawuliu', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (43, '嘉里大通', 'jialidatong', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (44, '晋越快递', 'jykd', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (45, '快捷速递', 'kuaijiesudi', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (46, '联邦快递（国内）', 'lianb', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (47, '联昊通物流', 'lianhaowuliu', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (48, '龙邦物流', 'longbanwuliu', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (49, '立即送', 'lijisong', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (50, '乐捷递', 'lejiedi', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (51, '民航快递', 'minghangkuaidi', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (52, '美国快递', 'meiguokuaidi', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (53, '门对门', 'menduimen', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (54, 'OCS', 'ocs', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (55, '配思货运', 'peisihuoyunkuaidi', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (56, '全晨快递', 'quanchenkuaidi', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (57, '全际通物流', 'quanjitong', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (58, '全日通快递', 'quanritongkuaidi', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (59, '全一快递', 'quanyikuaidi', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (60, '如风达', 'rufengda', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (61, '三态速递', 'santaisudi', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (62, '盛辉物流', 'shenghuiwuliu', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (63, '速尔物流', 'sue', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (64, '盛丰物流', 'shengfeng', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (65, '赛澳递', 'saiaodi', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (66, '天地华宇', 'tiandihuayu', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (67, 'tnt', 'tnt', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (68, 'ups', 'ups', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (69, '万家物流', 'wanjiawuliu', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (70, '文捷航空速递', 'wenjiesudi', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (71, '伍圆', 'wuyuan', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (72, '万象物流', 'wxwl', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (73, '新邦物流', 'xinbangwuliu', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (74, '信丰物流', 'xinfengwuliu', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (75, '亚风速递', 'yafengsudi', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (76, '一邦速递', 'yibangwuliu', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (77, '优速物流', 'youshuwuliu', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (78, '邮政包裹挂号信', 'youzhengguonei', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (79, '邮政国际包裹挂号信', 'youzhengguoji', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (80, '远成物流', 'yuanchengwuliu', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (81, '源伟丰快递', 'yuanweifeng', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (82, '元智捷诚快递', 'yuanzhijiecheng', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (83, '运通快递', 'yuntongkuaidi', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (84, '越丰物流', 'yuefengwuliu', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (85, '源安达', 'yad', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (86, '银捷速递', 'yinjiesudi', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (87, '中铁快运', 'zhongtiekuaiyun', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (88, '中邮物流', 'zhongyouwuliu', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (89, '忠信达', 'zhongxinda', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (90, '芝麻开门', 'zhimakaimen', 1, 0, '');
INSERT INTO `ims_ewei_shop_express` VALUES (91, '安能物流', 'annengwuliu', 1, 0, '');

-- ----------------------------
-- Table structure for ims_ewei_shop_express_cache
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_express_cache`;
CREATE TABLE `ims_ewei_shop_express_cache`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expresssn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `express` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lasttime` int(11) NOT NULL,
  `datas` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_expresssn`(`expresssn`) USING BTREE,
  INDEX `idx_express`(`express`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_feedback
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_feedback`;
CREATE TABLE `ims_ewei_shop_feedback`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `type` tinyint(1) NULL DEFAULT 1,
  `status` tinyint(1) NULL DEFAULT 0,
  `feedbackid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `transid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `reason` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `solution` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_feedbackid`(`feedbackid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_transid`(`transid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_form
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_form`;
CREATE TABLE `ims_ewei_shop_form`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `isrequire` tinyint(3) NULL DEFAULT 0,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `values` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `cate` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_form_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_form_category`;
CREATE TABLE `ims_ewei_shop_form_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_fullback_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_fullback_goods`;
CREATE TABLE `ims_ewei_shop_fullback_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `goodsid` int(11) NOT NULL DEFAULT 0,
  `titles` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `marketprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `minallfullbackallprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `maxallfullbackallprice` decimal(10, 2) NOT NULL,
  `minallfullbackallratio` decimal(10, 2) NULL DEFAULT NULL,
  `maxallfullbackallratio` decimal(10, 2) NULL DEFAULT NULL,
  `day` int(11) NOT NULL DEFAULT 0,
  `fullbackprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `fullbackratio` decimal(10, 2) NULL DEFAULT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  `hasoption` tinyint(3) NOT NULL DEFAULT 0,
  `optionid` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `startday` int(11) NOT NULL DEFAULT 0,
  `refund` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_fullback_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_fullback_log`;
CREATE TABLE `ims_ewei_shop_fullback_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `orderid` int(11) NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `priceevery` decimal(10, 2) NOT NULL,
  `day` int(10) NOT NULL,
  `fullbackday` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `fullbacktime` int(10) NOT NULL,
  `isfullback` tinyint(3) NOT NULL DEFAULT 0,
  `goodsid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_funbar
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_funbar`;
CREATE TABLE `ims_ewei_shop_funbar`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0,
  `datas` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_gift
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_gift`;
CREATE TABLE `ims_ewei_shop_gift`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `activity` tinyint(3) NOT NULL DEFAULT 1,
  `orderprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `goodsid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `giftgoodsid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `starttime` int(11) NOT NULL DEFAULT 0,
  `endtime` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_globonus_bill
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_globonus_bill`;
CREATE TABLE `ims_ewei_shop_globonus_bill`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `billno` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytype` int(11) NULL DEFAULT 0,
  `year` int(11) NULL DEFAULT 0,
  `month` int(11) NULL DEFAULT 0,
  `week` int(11) NULL DEFAULT 0,
  `ordercount` int(11) NULL DEFAULT 0,
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney_send` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney_pay` decimal(10, 2) NULL DEFAULT 0.00,
  `paytime` int(11) NULL DEFAULT 0,
  `partnercount` int(11) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `starttime` int(11) NULL DEFAULT 0,
  `endtime` int(11) NULL DEFAULT 0,
  `confirmtime` int(11) NULL DEFAULT 0,
  `bonusordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusrate` decimal(10, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_paytype`(`paytype`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_paytime`(`paytime`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_month`(`month`) USING BTREE,
  INDEX `idx_week`(`week`) USING BTREE,
  INDEX `idx_year`(`year`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_globonus_billo
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_globonus_billo`;
CREATE TABLE `ims_ewei_shop_globonus_billo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `billid` int(11) NULL DEFAULT 0,
  `orderid` int(11) NULL DEFAULT 0,
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_billid`(`billid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_globonus_billp
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_globonus_billp`;
CREATE TABLE `ims_ewei_shop_globonus_billp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `billid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `payno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytype` tinyint(3) NULL DEFAULT 0,
  `bonus` decimal(10, 2) NULL DEFAULT 0.00,
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `realmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `paymoney` decimal(10, 2) NULL DEFAULT 0.00,
  `charge` decimal(10, 2) NULL DEFAULT 0.00,
  `chargemoney` decimal(10, 2) NULL DEFAULT 0.00,
  `status` tinyint(3) NULL DEFAULT 0,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_billid`(`billid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_globonus_level
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_globonus_level`;
CREATE TABLE `ims_ewei_shop_globonus_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `levelname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `bonus` decimal(10, 4) NULL DEFAULT 0.0000,
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  `ordercount` int(11) NULL DEFAULT 0,
  `commissionmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `downcount` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods`;
CREATE TABLE `ims_ewei_shop_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `pcate` int(11) NULL DEFAULT 0,
  `ccate` int(11) NULL DEFAULT 0,
  `type` tinyint(1) NULL DEFAULT 1,
  `status` tinyint(1) NULL DEFAULT 1,
  `displayorder` int(11) NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `unit` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `goodssn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `productsn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `productprice` decimal(10, 2) NULL DEFAULT 0.00,
  `marketprice` decimal(10, 2) NULL DEFAULT 0.00,
  `costprice` decimal(10, 2) NULL DEFAULT 0.00,
  `originalprice` decimal(10, 2) NULL DEFAULT 0.00,
  `total` int(10) NULL DEFAULT 0,
  `totalcnf` int(11) NULL DEFAULT 0,
  `sales` int(11) NULL DEFAULT 0,
  `salesreal` int(11) NULL DEFAULT 0,
  `spec` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `weight` decimal(10, 2) NULL DEFAULT 0.00,
  `credit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maxbuy` int(11) NULL DEFAULT 0,
  `usermaxbuy` int(11) NULL DEFAULT 0,
  `hasoption` int(11) NULL DEFAULT 0,
  `dispatch` int(11) NULL DEFAULT 0,
  `thumb_url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `isnew` tinyint(1) NULL DEFAULT 0,
  `ishot` tinyint(1) NULL DEFAULT 0,
  `isdiscount` tinyint(1) NULL DEFAULT 0,
  `isrecommand` tinyint(1) NULL DEFAULT 0,
  `issendfree` tinyint(1) NULL DEFAULT 0,
  `istime` tinyint(1) NULL DEFAULT 0,
  `iscomment` tinyint(1) NULL DEFAULT 0,
  `timestart` int(11) NULL DEFAULT 0,
  `timeend` int(11) NULL DEFAULT 0,
  `viewcount` int(11) NULL DEFAULT 0,
  `deleted` tinyint(3) NULL DEFAULT 0,
  `hascommission` tinyint(3) NULL DEFAULT 0,
  `commission1_rate` decimal(10, 2) NULL DEFAULT 0.00,
  `commission1_pay` decimal(10, 2) NULL DEFAULT 0.00,
  `commission2_rate` decimal(10, 2) NULL DEFAULT 0.00,
  `commission2_pay` decimal(10, 2) NULL DEFAULT 0.00,
  `commission3_rate` decimal(10, 2) NULL DEFAULT 0.00,
  `commission3_pay` decimal(10, 2) NULL DEFAULT 0.00,
  `score` decimal(10, 2) NULL DEFAULT 0.00,
  `taobaoid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `taotaoid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `taobaourl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `updatetime` int(11) NULL DEFAULT 0,
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `share_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `cash` tinyint(3) NULL DEFAULT 0,
  `commission_thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isnodiscount` tinyint(3) NULL DEFAULT 0,
  `showlevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `buylevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `showgroups` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `buygroups` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `isverify` tinyint(3) NULL DEFAULT 0,
  `storeids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `noticeopenid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `tcate` int(11) NULL DEFAULT 0,
  `noticetype` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `needfollow` tinyint(3) NULL DEFAULT 0,
  `followtip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `followurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `deduct` decimal(10, 2) NULL DEFAULT 0.00,
  `virtual` int(11) NULL DEFAULT 0,
  `ccates` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `discounts` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `nocommission` tinyint(3) NULL DEFAULT 0,
  `hidecommission` tinyint(3) NULL DEFAULT 0,
  `pcates` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `tcates` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `cates` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `artid` int(11) NULL DEFAULT 0,
  `detail_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `detail_shopname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `detail_btntext1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `detail_btnurl1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `detail_btntext2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `detail_btnurl2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `detail_totaltitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `saleupdate42392` tinyint(3) NULL DEFAULT 0,
  `deduct2` decimal(10, 2) NULL DEFAULT 0.00,
  `ednum` int(11) NULL DEFAULT 0,
  `saleupdate` tinyint(3) NULL DEFAULT 0,
  `edmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `edareas` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformtype` tinyint(1) NULL DEFAULT 0,
  `diyformid` int(11) NULL DEFAULT 0,
  `diymode` tinyint(1) NULL DEFAULT 0,
  `dispatchtype` tinyint(1) NULL DEFAULT 0,
  `dispatchid` int(11) NULL DEFAULT 0,
  `dispatchprice` decimal(10, 2) NULL DEFAULT 0.00,
  `manydeduct` tinyint(1) NULL DEFAULT 0,
  `shorttitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isdiscount_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isdiscount_time` int(11) NULL DEFAULT 0,
  `isdiscount_discounts` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `commission` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `saleupdate37975` tinyint(3) NULL DEFAULT 0,
  `shopid` int(11) NULL DEFAULT 0,
  `allcates` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `minbuy` int(11) NULL DEFAULT 0,
  `invoice` tinyint(3) NULL DEFAULT 0,
  `repair` tinyint(3) NULL DEFAULT 0,
  `seven` tinyint(3) NULL DEFAULT 0,
  `money` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `minprice` decimal(10, 2) NULL DEFAULT 0.00,
  `maxprice` decimal(10, 2) NULL DEFAULT 0.00,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `buyshow` tinyint(1) NULL DEFAULT 0,
  `buycontent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `saleupdate51117` tinyint(3) NULL DEFAULT 0,
  `virtualsend` tinyint(1) NULL DEFAULT 0,
  `virtualsendcontent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `verifytype` tinyint(1) NULL DEFAULT 0,
  `diyfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diysaveid` int(11) NULL DEFAULT 0,
  `diysave` tinyint(1) NULL DEFAULT 0,
  `quality` tinyint(3) NULL DEFAULT 0,
  `groupstype` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `showtotal` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `minpriceupdated` tinyint(1) NULL DEFAULT 0,
  `newgoods` tinyint(3) NOT NULL DEFAULT 0,
  `sharebtn` tinyint(1) NOT NULL DEFAULT 0,
  `catesinit3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `showtotaladd` tinyint(1) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `checked` tinyint(3) NULL DEFAULT 0,
  `thumb_first` tinyint(3) NULL DEFAULT 0,
  `merchsale` tinyint(1) NULL DEFAULT 0,
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `catch_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `catch_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `catch_source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `saleupdate40170` tinyint(3) NULL DEFAULT 0,
  `saleupdate35843` tinyint(3) NULL DEFAULT 0,
  `labelname` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `autoreceive` int(11) NULL DEFAULT 0,
  `cannotrefund` tinyint(3) NULL DEFAULT 0,
  `saleupdate33219` tinyint(3) NULL DEFAULT 0,
  `bargain` int(11) NULL DEFAULT 0,
  `buyagain` decimal(10, 2) NULL DEFAULT 0.00,
  `buyagain_islong` tinyint(1) NULL DEFAULT 0,
  `buyagain_condition` tinyint(1) NULL DEFAULT 0,
  `buyagain_sale` tinyint(1) NULL DEFAULT 0,
  `buyagain_commission` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `saleupdate32484` tinyint(3) NULL DEFAULT 0,
  `saleupdate36586` tinyint(3) NULL DEFAULT 0,
  `diypage` int(11) NULL DEFAULT NULL,
  `cashier` tinyint(1) NULL DEFAULT 0,
  `saleupdate53481` tinyint(3) NULL DEFAULT 0,
  `saleupdate30424` tinyint(3) NULL DEFAULT 0,
  `isendtime` tinyint(3) NOT NULL DEFAULT 0,
  `usetime` int(11) NOT NULL DEFAULT 0,
  `endtime` int(11) NOT NULL DEFAULT 0,
  `merchdisplayorder` int(11) NOT NULL DEFAULT 0,
  `exchange_stock` int(11) NULL DEFAULT 0,
  `exchange_postage` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `ispresell` tinyint(3) NOT NULL DEFAULT 0,
  `presellprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `presellover` tinyint(3) NOT NULL DEFAULT 0,
  `presellovertime` int(11) NOT NULL,
  `presellstart` tinyint(3) NOT NULL DEFAULT 0,
  `preselltimestart` int(11) NOT NULL DEFAULT 0,
  `presellend` tinyint(3) NOT NULL DEFAULT 0,
  `preselltimeend` int(11) NOT NULL DEFAULT 0,
  `presellsendtype` tinyint(3) NOT NULL DEFAULT 0,
  `presellsendstatrttime` int(11) NOT NULL DEFAULT 0,
  `presellsendtime` int(11) NOT NULL DEFAULT 0,
  `edareas_code` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unite_total` tinyint(3) NOT NULL DEFAULT 0,
  `buyagain_price` decimal(10, 2) NULL DEFAULT 0.00,
  `threen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `intervalfloor` tinyint(1) NULL DEFAULT 0,
  `intervalprice` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isfullback` tinyint(3) NOT NULL DEFAULT 0,
  `isstatustime` tinyint(3) NOT NULL DEFAULT 0,
  `statustimestart` int(10) NOT NULL DEFAULT 0,
  `statustimeend` int(10) NOT NULL DEFAULT 0,
  `nosearch` tinyint(1) NOT NULL DEFAULT 0,
  `showsales` tinyint(3) NOT NULL DEFAULT 1,
  `islive` int(11) NOT NULL DEFAULT 0,
  `liveprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `opencard` tinyint(1) NULL DEFAULT 0,
  `cardid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `verifygoodsnum` int(11) NULL DEFAULT 1,
  `verifygoodsdays` int(11) NULL DEFAULT 1,
  `verifygoodslimittype` tinyint(1) NULL DEFAULT 0,
  `verifygoodslimitdate` int(11) NULL DEFAULT 0,
  `minliveprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `maxliveprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `dowpayment` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `tempid` int(11) NOT NULL DEFAULT 0,
  `isstoreprice` tinyint(11) NOT NULL DEFAULT 0,
  `beforehours` int(11) NOT NULL DEFAULT 0,
  `video` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `officthumb` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `verifygoodstype` tinyint(1) NULL DEFAULT 0,
  `isforceverifystore` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_pcate`(`pcate`) USING BTREE,
  INDEX `idx_ccate`(`ccate`) USING BTREE,
  INDEX `idx_isnew`(`isnew`) USING BTREE,
  INDEX `idx_ishot`(`ishot`) USING BTREE,
  INDEX `idx_isdiscount`(`isdiscount`) USING BTREE,
  INDEX `idx_isrecommand`(`isrecommand`) USING BTREE,
  INDEX `idx_iscomment`(`iscomment`) USING BTREE,
  INDEX `idx_issendfree`(`issendfree`) USING BTREE,
  INDEX `idx_istime`(`istime`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE,
  INDEX `idx_tcate`(`tcate`) USING BTREE,
  INDEX `idx_scate`(`tcate`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE,
  INDEX `idx_checked`(`checked`) USING BTREE,
  INDEX `idx_productsn`(`productsn`) USING BTREE,
  FULLTEXT INDEX `idx_buylevels`(`buylevels`),
  FULLTEXT INDEX `idx_showgroups`(`showgroups`),
  FULLTEXT INDEX `idx_buygroups`(`buygroups`)
) ENGINE = MyISAM AUTO_INCREMENT = 199 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_cards
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_cards`;
CREATE TABLE `ims_ewei_shop_goods_cards`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `card_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_brand_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_totalquantity` int(11) NULL DEFAULT NULL,
  `card_quantity` int(11) NULL DEFAULT NULL,
  `card_logoimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_logowxurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_backgroundtype` tinyint(1) NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_backgroundimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_backgroundwxurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `prerogative` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `freewifi` tinyint(1) NULL DEFAULT NULL,
  `withpet` tinyint(1) NULL DEFAULT NULL,
  `freepark` tinyint(1) NULL DEFAULT NULL,
  `deliver` tinyint(1) NULL DEFAULT NULL,
  `custom_cell1` tinyint(1) NULL DEFAULT NULL,
  `custom_cell1_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `custom_cell1_tips` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `custom_cell1_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `color2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_comment`;
CREATE TABLE `ims_ewei_shop_goods_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `goodsid` int(10) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `headimgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_goodsid`(`goodsid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_group`;
CREATE TABLE `ims_ewei_shop_goods_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `goodsids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_label
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_label`;
CREATE TABLE `ims_ewei_shop_goods_label`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `labelname` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_labelstyle
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_labelstyle`;
CREATE TABLE `ims_ewei_shop_goods_labelstyle`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `style` int(3) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_option
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_option`;
CREATE TABLE `ims_ewei_shop_goods_option`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `goodsid` int(10) NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `productprice` decimal(10, 2) NULL DEFAULT 0.00,
  `marketprice` decimal(10, 2) NULL DEFAULT 0.00,
  `costprice` decimal(10, 2) NULL DEFAULT 0.00,
  `stock` int(11) NULL DEFAULT 0,
  `weight` decimal(10, 2) NULL DEFAULT 0.00,
  `displayorder` int(11) NULL DEFAULT 0,
  `specs` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `skuId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `goodssn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `productsn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `virtual` int(11) NULL DEFAULT 0,
  `exchange_stock` int(11) NULL DEFAULT 0,
  `exchange_postage` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `presellprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `day` int(3) NOT NULL,
  `allfullbackprice` decimal(10, 2) NOT NULL,
  `fullbackprice` decimal(10, 2) NOT NULL,
  `allfullbackratio` decimal(10, 2) NULL DEFAULT NULL,
  `fullbackratio` decimal(10, 2) NULL DEFAULT NULL,
  `isfullback` tinyint(3) NOT NULL,
  `islive` int(11) NOT NULL,
  `liveprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `cycelbuy_periodic` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_goodsid`(`goodsid`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_productsn`(`productsn`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 405 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_param
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_param`;
CREATE TABLE `ims_ewei_shop_goods_param`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `goodsid` int(10) NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `displayorder` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_goodsid`(`goodsid`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1110 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_spec
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_spec`;
CREATE TABLE `ims_ewei_shop_goods_spec`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `goodsid` int(11) NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displaytype` tinyint(3) NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `displayorder` int(11) NULL DEFAULT 0,
  `propId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `iscycelbuy` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_goodsid`(`goodsid`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 93 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_spec_item
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_spec_item`;
CREATE TABLE `ims_ewei_shop_goods_spec_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `specid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `show` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `valueId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `virtual` int(11) NULL DEFAULT 0,
  `cycelbuy_periodic` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_specid`(`specid`) USING BTREE,
  INDEX `idx_show`(`show`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 291 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_goodscode_good
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goodscode_good`;
CREATE TABLE `ims_ewei_shop_goodscode_good`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `goodsid` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qrcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL,
  `displayorder` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_adv`;
CREATE TABLE `ims_ewei_shop_groups_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_category`;
CREATE TABLE `ims_ewei_shop_groups_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `displayorder` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `enabled` tinyint(1) NULL DEFAULT 1,
  `advimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `advurl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isrecommand` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_goods`;
CREATE TABLE `ims_ewei_shop_groups_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displayorder` int(11) UNSIGNED NULL DEFAULT 0,
  `uniacid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `category` int(11) NULL DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `price` decimal(10, 2) NULL DEFAULT 0.00,
  `groupsprice` decimal(10, 2) NULL DEFAULT 0.00,
  `singleprice` decimal(10, 2) NULL DEFAULT 0.00,
  `goodsnum` int(11) NOT NULL DEFAULT 1,
  `units` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '件',
  `freight` decimal(10, 2) NULL DEFAULT 0.00,
  `endtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `groupnum` int(10) NOT NULL DEFAULT 0,
  `sales` int(10) NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `ishot` tinyint(3) NOT NULL DEFAULT 0,
  `deleted` tinyint(3) NOT NULL DEFAULT 0,
  `goodsid` int(11) NOT NULL DEFAULT 0,
  `followneed` tinyint(2) NOT NULL DEFAULT 0,
  `followtext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodssn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productsn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `showstock` tinyint(2) NOT NULL,
  `purchaselimit` int(11) NOT NULL DEFAULT 0,
  `single` tinyint(2) NOT NULL DEFAULT 0,
  `dispatchtype` tinyint(2) NOT NULL,
  `dispatchid` int(11) NOT NULL,
  `isindex` tinyint(3) NOT NULL DEFAULT 0,
  `followurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deduct` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `rights` tinyint(2) NOT NULL DEFAULT 1,
  `thumb_url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `gid` int(11) NULL DEFAULT 0,
  `discount` tinyint(3) NULL DEFAULT 0,
  `headstype` tinyint(3) NULL DEFAULT NULL,
  `headsmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `headsdiscount` int(11) NULL DEFAULT 0,
  `isdiscount` tinyint(3) NULL DEFAULT 0,
  `isverify` tinyint(3) NULL DEFAULT 0,
  `verifytype` tinyint(3) NULL DEFAULT 0,
  `verifynum` int(11) NULL DEFAULT 0,
  `storeids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `merchid` int(11) NULL DEFAULT 0,
  `shorttitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `teamnum` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_type`(`category`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_istop`(`isindex`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_goods_atlas
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_goods_atlas`;
CREATE TABLE `ims_ewei_shop_groups_goods_atlas`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `g_id` int(11) NOT NULL,
  `thumb` varchar(145) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_order`;
CREATE TABLE `ims_ewei_shop_groups_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `orderno` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `groupnum` int(11) NOT NULL,
  `paytime` int(11) NOT NULL,
  `price` decimal(11, 2) NULL DEFAULT 0.00,
  `freight` decimal(11, 2) NULL DEFAULT 0.00,
  `status` int(9) NOT NULL,
  `pay_type` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodid` int(11) NOT NULL,
  `teamid` int(11) NOT NULL,
  `is_team` int(2) NOT NULL,
  `heads` int(11) NULL DEFAULT 0,
  `starttime` int(11) NOT NULL,
  `endtime` int(45) NOT NULL,
  `createtime` int(11) NOT NULL,
  `success` int(2) NOT NULL DEFAULT 0,
  `delete` int(2) NOT NULL DEFAULT 0,
  `credit` int(11) NULL DEFAULT 0,
  `creditmoney` decimal(11, 2) NULL DEFAULT 0.00,
  `dispatchid` int(11) NULL DEFAULT NULL,
  `addressid` int(11) NOT NULL DEFAULT 0,
  `address` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `discount` decimal(10, 2) NULL DEFAULT 0.00,
  `canceltime` int(11) NOT NULL DEFAULT 0,
  `finishtime` int(11) NOT NULL DEFAULT 0,
  `refundid` int(11) NOT NULL DEFAULT 0,
  `refundstate` tinyint(2) NOT NULL DEFAULT 0,
  `refundtime` int(11) NOT NULL DEFAULT 0,
  `express` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expresscom` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expresssn` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sendtime` int(45) NULL DEFAULT 0,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remarkclose` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `remarksend` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deleted` int(2) NOT NULL DEFAULT 0,
  `realname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isverify` tinyint(3) NULL DEFAULT 0,
  `verifytype` tinyint(3) NULL DEFAULT 0,
  `verifycode` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `verifynum` int(11) NULL DEFAULT 0,
  `printstate` int(11) NOT NULL DEFAULT 0,
  `printstate2` int(11) NOT NULL DEFAULT 0,
  `apppay` tinyint(3) NOT NULL DEFAULT 0,
  `isborrow` tinyint(1) NULL DEFAULT 0,
  `borrowopenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_order_refund
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_order_refund`;
CREATE TABLE `ims_ewei_shop_groups_order_refund`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `orderid` int(11) NOT NULL DEFAULT 0,
  `refundno` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `refundstatus` tinyint(3) NOT NULL DEFAULT 0,
  `refundaddressid` int(11) NOT NULL DEFAULT 0,
  `refundaddress` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `applytime` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `applycredit` int(11) NOT NULL DEFAULT 0,
  `applyprice` decimal(11, 2) NOT NULL DEFAULT 0.00,
  `reply` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `refundtype` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rtype` int(3) NOT NULL DEFAULT 0,
  `refundtime` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `endtime` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operatetime` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `realcredit` int(11) NOT NULL,
  `realmoney` decimal(11, 2) NOT NULL,
  `express` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expresscom` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expresssn` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sendtime` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `returntime` int(11) NOT NULL DEFAULT 0,
  `rexpress` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rexpresscom` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rexpresssn` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_paylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_paylog`;
CREATE TABLE `ims_ewei_shop_groups_paylog`  (
  `plid` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uniacid` int(11) NOT NULL,
  `acid` int(10) UNSIGNED NOT NULL,
  `openid` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `credit` int(10) NOT NULL DEFAULT 0,
  `creditmoney` decimal(10, 2) NOT NULL,
  `fee` decimal(10, 2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_usecard` tinyint(3) UNSIGNED NOT NULL,
  `card_type` tinyint(3) UNSIGNED NOT NULL,
  `card_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `encrypt_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uniontid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`plid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_tid`(`tid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `uniontid`(`uniontid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_set
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_set`;
CREATE TABLE `ims_ewei_shop_groups_set`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `groups` int(2) NOT NULL DEFAULT 0,
  `followurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `groupsurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `groups_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `description` int(2) NOT NULL DEFAULT 0,
  `followqrcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creditdeduct` tinyint(2) NOT NULL DEFAULT 0,
  `groupsdeduct` tinyint(2) NOT NULL DEFAULT 0,
  `credit` int(11) NOT NULL DEFAULT 1,
  `groupsmoney` decimal(11, 2) NOT NULL DEFAULT 0.00,
  `refund` int(11) NOT NULL DEFAULT 0,
  `refundday` int(11) NOT NULL DEFAULT 0,
  `goodsid` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rules` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `receive` int(11) NULL DEFAULT 0,
  `discount` tinyint(3) NULL DEFAULT 0,
  `headstype` tinyint(3) NULL DEFAULT 0,
  `headsmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `headsdiscount` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_verify
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_verify`;
CREATE TABLE `ims_ewei_shop_groups_verify`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `orderid` int(11) NULL DEFAULT 0,
  `verifycode` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `storeid` int(11) NULL DEFAULT 0,
  `verifier` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `isverify` tinyint(3) NULL DEFAULT 0,
  `verifytime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_invitation
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_invitation`;
CREATE TABLE `ims_ewei_shop_invitation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `scan` int(11) NOT NULL DEFAULT 0,
  `follow` int(11) NOT NULL DEFAULT 0,
  `qrcode` tinyint(3) NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL,
  `createtime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_invitation_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_invitation_log`;
CREATE TABLE `ims_ewei_shop_invitation_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `invitation_id` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `invitation_openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `scan_time` int(10) NOT NULL DEFAULT 0,
  `follow` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_posterid`(`invitation_id`) USING BTREE,
  INDEX `idx_scantime`(`scan_time`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_invitation_qr
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_invitation_qr`;
CREATE TABLE `ims_ewei_shop_invitation_qr`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `invitationid` int(11) NOT NULL,
  `roomid` int(11) NOT NULL DEFAULT 0,
  `sceneid` int(11) NOT NULL,
  `ticket` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(11) NOT NULL,
  `expire` int(11) NOT NULL DEFAULT 0,
  `qrimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_live
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_live`;
CREATE TABLE `ims_ewei_shop_live`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `livetype` tinyint(3) NOT NULL DEFAULT 0,
  `liveidentity` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `screen` tinyint(3) NOT NULL DEFAULT 0,
  `goodsid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT 0,
  `url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hot` tinyint(3) NOT NULL DEFAULT 0,
  `recommend` tinyint(3) NOT NULL DEFAULT 0,
  `living` tinyint(3) NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  `livetime` int(10) NOT NULL DEFAULT 0,
  `lastlivetime` int(11) NOT NULL DEFAULT 0,
  `createtime` int(10) NOT NULL DEFAULT 0,
  `introduce` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `packetmoney` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `packettotal` int(11) NOT NULL DEFAULT 0,
  `packetprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `packetdes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `couponid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_icon` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `subscribe` int(11) NOT NULL DEFAULT 0,
  `subscribenotice` tinyint(3) NOT NULL DEFAULT 0,
  `visit` int(11) NOT NULL DEFAULT 0,
  `video` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `covertype` tinyint(3) NOT NULL DEFAULT 0,
  `cover` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `iscoupon` tinyint(3) NOT NULL DEFAULT 0,
  `nestable` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tabs` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `invitation_id` int(11) NOT NULL DEFAULT 0,
  `showlevels` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `showgroups` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `showcommission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jurisdiction_url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jurisdictionurl_show` tinyint(3) NOT NULL DEFAULT 0,
  `notice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `notice_url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `followqrcode` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `coupon_num` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE,
  INDEX `idx_category`(`category`) USING BTREE,
  INDEX `idx_hot`(`hot`) USING BTREE,
  INDEX `idx_recommend`(`recommend`) USING BTREE,
  INDEX `idx_living`(`living`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_livetime`(`livetime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_live_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_live_adv`;
CREATE TABLE `ims_ewei_shop_live_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_live_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_live_category`;
CREATE TABLE `ims_ewei_shop_live_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `displayorder` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `enabled` tinyint(1) NULL DEFAULT 1,
  `advimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `advurl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isrecommand` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_live_coupon
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_live_coupon`;
CREATE TABLE `ims_ewei_shop_live_coupon`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `roomid` int(11) NOT NULL DEFAULT 0,
  `couponid` int(11) NOT NULL DEFAULT 0,
  `coupontotal` int(11) NOT NULL DEFAULT 0,
  `couponlimit` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_roomid`(`roomid`) USING BTREE,
  INDEX `idx_couponid`(`couponid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_live_favorite
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_live_favorite`;
CREATE TABLE `ims_ewei_shop_live_favorite`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `roomid` int(11) NOT NULL DEFAULT 0,
  `openid` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deleted` tinyint(3) NOT NULL DEFAULT 0,
  `createtime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_roomid`(`roomid`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_live_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_live_goods`;
CREATE TABLE `ims_ewei_shop_live_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `goodsid` int(11) NOT NULL DEFAULT 0,
  `liveid` int(11) NOT NULL DEFAULT 0,
  `liveprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `minliveprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `maxliveprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_live_goods_option
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_live_goods_option`;
CREATE TABLE `ims_ewei_shop_live_goods_option`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `goodsid` int(11) NOT NULL,
  `optionid` int(11) NOT NULL DEFAULT 0,
  `liveid` int(11) NOT NULL DEFAULT 0,
  `liveprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_live_setting
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_live_setting`;
CREATE TABLE `ims_ewei_shop_live_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `ismember` tinyint(3) NOT NULL DEFAULT 0,
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_icon` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `livenoticetime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_ismember`(`ismember`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_live_status
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_live_status`;
CREATE TABLE `ims_ewei_shop_live_status`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `roomid` int(11) NOT NULL DEFAULT 0,
  `starttime` int(11) NOT NULL DEFAULT 0,
  `endtime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_live_view
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_live_view`;
CREATE TABLE `ims_ewei_shop_live_view`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roomid` int(11) NOT NULL DEFAULT 0,
  `viewing` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_roomid`(`roomid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_lottery
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_lottery`;
CREATE TABLE `ims_ewei_shop_lottery`  (
  `lottery_id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `lottery_title` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lottery_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lottery_banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lottery_cannot` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lottery_type` tinyint(1) NULL DEFAULT NULL,
  `is_delete` tinyint(1) NULL DEFAULT 0,
  `addtime` int(11) NULL DEFAULT NULL,
  `lottery_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_goods` tinyint(1) NULL DEFAULT 0,
  `lottery_days` int(11) NULL DEFAULT 0,
  `task_type` tinyint(1) NULL DEFAULT 0,
  `task_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `start_time` int(11) NULL DEFAULT NULL,
  `end_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`lottery_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_lottery_default
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_lottery_default`;
CREATE TABLE `ims_ewei_shop_lottery_default`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `addtime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_lottery_join
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_lottery_join`;
CREATE TABLE `ims_ewei_shop_lottery_join`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `join_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lottery_id` int(11) NULL DEFAULT NULL,
  `lottery_num` int(10) NULL DEFAULT 0,
  `lottery_tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addtime` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_lottery_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_lottery_log`;
CREATE TABLE `ims_ewei_shop_lottery_log`  (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `lottery_id` int(11) NULL DEFAULT 0,
  `join_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lottery_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_reward` tinyint(1) NULL DEFAULT 0,
  `addtime` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_mc_merchant
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_mc_merchant`;
CREATE TABLE `ims_ewei_shop_mc_merchant`  (
  `id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `merchant_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `salt` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `contact_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `contact_mobile` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `contact_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `createtime` int(11) NOT NULL,
  `validitytime` int(11) NOT NULL,
  `industry` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member`;
CREATE TABLE `ims_ewei_shop_member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `uid` int(11) NULL DEFAULT 0,
  `groupid` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `level` int(11) NULL DEFAULT 0,
  `agentid` int(11) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `realname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `pwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `weixin` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `commission` decimal(10, 2) NULL DEFAULT 0.00,
  `commission_pay` decimal(10, 2) NULL DEFAULT 0.00,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(10) NULL DEFAULT 0,
  `agenttime` int(10) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  `isagent` tinyint(1) NULL DEFAULT 0,
  `clickcount` int(11) NULL DEFAULT 0,
  `agentlevel` int(11) NULL DEFAULT 0,
  `noticeset` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `credit1` decimal(10, 2) NULL DEFAULT 0.00,
  `credit2` decimal(10, 2) NULL DEFAULT 0.00,
  `birthyear` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `birthmonth` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `gender` tinyint(3) NULL DEFAULT 0,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `childtime` int(11) NULL DEFAULT 0,
  `inviter` int(11) NULL DEFAULT 0,
  `agentnotupgrade` int(11) NULL DEFAULT 0,
  `agentselectgoods` tinyint(3) NULL DEFAULT 0,
  `agentblack` int(11) NULL DEFAULT 0,
  `fixagentid` tinyint(3) NULL DEFAULT 0,
  `diymemberid` int(11) NULL DEFAULT 0,
  `diymemberfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diymemberdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diymemberdataid` int(11) NULL DEFAULT 0,
  `diycommissionid` int(11) NULL DEFAULT 0,
  `diycommissionfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diycommissiondata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diycommissiondataid` int(11) NULL DEFAULT 0,
  `isblack` int(11) NULL DEFAULT 0,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `commission_total` decimal(10, 2) NULL DEFAULT 0.00,
  `endtime2` int(11) NULL DEFAULT 0,
  `ispartner` tinyint(3) NULL DEFAULT 0,
  `partnertime` int(11) NULL DEFAULT 0,
  `partnerstatus` tinyint(3) NULL DEFAULT 0,
  `partnerblack` tinyint(3) NULL DEFAULT 0,
  `partnerlevel` int(11) NULL DEFAULT 0,
  `partnernotupgrade` tinyint(3) NULL DEFAULT 0,
  `diyglobonusid` int(11) NULL DEFAULT 0,
  `diyglobonusdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyglobonusfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `isaagent` tinyint(3) NULL DEFAULT 0,
  `aagentlevel` int(11) NULL DEFAULT 0,
  `aagenttime` int(11) NULL DEFAULT 0,
  `aagentstatus` tinyint(3) NULL DEFAULT 0,
  `aagentblack` tinyint(3) NULL DEFAULT 0,
  `aagentnotupgrade` tinyint(3) NULL DEFAULT 0,
  `aagenttype` tinyint(3) NULL DEFAULT 0,
  `aagentprovinces` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `aagentcitys` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `aagentareas` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyaagentid` int(11) NULL DEFAULT 0,
  `diyaagentdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyaagentfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `salt` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobileverify` tinyint(3) NULL DEFAULT 0,
  `mobileuser` tinyint(3) NULL DEFAULT 0,
  `carrier_mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `isauthor` tinyint(1) NULL DEFAULT 0,
  `authortime` int(11) NULL DEFAULT 0,
  `authorstatus` tinyint(1) NULL DEFAULT 0,
  `authorblack` tinyint(1) NULL DEFAULT 0,
  `authorlevel` int(11) NULL DEFAULT 0,
  `authornotupgrade` tinyint(1) NULL DEFAULT 0,
  `diyauthorid` int(11) NULL DEFAULT 0,
  `diyauthordata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyauthorfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `authorid` int(11) NULL DEFAULT 0,
  `comefrom` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `openid_qq` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `openid_wx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `diymaxcredit` tinyint(3) NULL DEFAULT 0,
  `maxcredit` int(11) NULL DEFAULT 0,
  `datavalue` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `openid_wa` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname_wechat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `avatar_wechat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `updateaddress` tinyint(1) NOT NULL DEFAULT 0,
  `membercardid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `membercardcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `membershipnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `membercardactive` tinyint(1) NULL DEFAULT 0,
  `idnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wxcardupdatetime` int(11) NULL DEFAULT 0,
  `hasnewcoupon` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_shareid`(`agentid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_agenttime`(`agenttime`) USING BTREE,
  INDEX `idx_isagent`(`isagent`) USING BTREE,
  INDEX `idx_uid`(`uid`) USING BTREE,
  INDEX `idx_level`(`level`) USING BTREE,
  INDEX `idx_mobile`(`mobile`) USING BTREE,
  INDEX `idx_groupid`(`groupid`(333)) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2188 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_address
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_address`;
CREATE TABLE `ims_ewei_shop_member_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `realname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `province` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `city` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `area` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `address` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isdefault` tinyint(1) NULL DEFAULT 0,
  `zipcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `deleted` tinyint(1) NULL DEFAULT 0,
  `street` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `datavalue` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `streetdatavalue` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `lng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `lat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_isdefault`(`isdefault`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 83 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_cart
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_cart`;
CREATE TABLE `ims_ewei_shop_member_cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `goodsid` int(11) NULL DEFAULT 0,
  `total` int(11) NULL DEFAULT 0,
  `marketprice` decimal(10, 2) NULL DEFAULT 0.00,
  `deleted` tinyint(1) NULL DEFAULT 0,
  `optionid` int(11) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `diyformdataid` int(11) NULL DEFAULT 0,
  `diyformdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformid` int(11) NULL DEFAULT 0,
  `selected` tinyint(1) NULL DEFAULT 1,
  `selectedadd` tinyint(1) NULL DEFAULT 1,
  `merchid` int(11) NULL DEFAULT 0,
  `isnewstore` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_goodsid`(`goodsid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_favorite
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_favorite`;
CREATE TABLE `ims_ewei_shop_member_favorite`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `goodsid` int(10) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `deleted` tinyint(1) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `type` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_goodsid`(`goodsid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_group`;
CREATE TABLE `ims_ewei_shop_member_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `groupname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_group_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_group_log`;
CREATE TABLE `ims_ewei_shop_member_group_log`  (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT 0,
  `add_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`log_id`) USING BTREE,
  INDEX `group_id`(`group_id`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_history
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_history`;
CREATE TABLE `ims_ewei_shop_member_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `goodsid` int(10) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `deleted` tinyint(1) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `times` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_goodsid`(`goodsid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2234 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_level
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_level`;
CREATE TABLE `ims_ewei_shop_member_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `level` int(11) NULL DEFAULT 0,
  `levelname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  `ordercount` int(10) NULL DEFAULT 0,
  `discount` decimal(10, 2) NULL DEFAULT 0.00,
  `enabled` tinyint(3) NULL DEFAULT 0,
  `enabledadd` tinyint(1) NULL DEFAULT 0,
  `buygoods` tinyint(1) NOT NULL DEFAULT 0,
  `goodsids` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_log`;
CREATE TABLE `ims_ewei_shop_member_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `type` tinyint(3) NULL DEFAULT NULL,
  `logno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `status` int(11) NULL DEFAULT 0,
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `rechargetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `gives` decimal(10, 2) NULL DEFAULT NULL,
  `couponid` int(11) NULL DEFAULT 0,
  `transid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `realmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `charge` decimal(10, 2) NULL DEFAULT 0.00,
  `deductionmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `isborrow` tinyint(3) NULL DEFAULT 0,
  `borrowopenid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `apppay` tinyint(3) NOT NULL DEFAULT 0,
  `alipay` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bankname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bankcard` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `realname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `applytype` tinyint(3) NOT NULL DEFAULT 0,
  `sendmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `senddata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 106 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_mergelog
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_mergelog`;
CREATE TABLE `ims_ewei_shop_member_mergelog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `mergetime` int(11) NOT NULL DEFAULT 0,
  `openid_a` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid_b` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mid_a` int(11) NOT NULL,
  `mid_b` int(11) NOT NULL,
  `detail_a` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `detail_b` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `detail_c` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_mid_a`(`mid_a`) USING BTREE,
  INDEX `idx_mid_b`(`mid_b`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_message_template
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_message_template`;
CREATE TABLE `ims_ewei_shop_member_message_template`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `template_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `first` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `firstcolor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remarkcolor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `sendtimes` int(11) NULL DEFAULT 0,
  `sendcount` int(11) NULL DEFAULT 0,
  `typecode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `messagetype` tinyint(1) NULL DEFAULT 0,
  `send_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_message_template_default
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_message_template_default`;
CREATE TABLE `ims_ewei_shop_member_message_template_default`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typecode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uniacid` int(11) NULL DEFAULT NULL,
  `templateid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_message_template_type
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_message_template_type`;
CREATE TABLE `ims_ewei_shop_member_message_template_type`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `typecode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `templatecode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `templateid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `templatename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `showtotaladd` tinyint(1) NULL DEFAULT 0,
  `typegroup` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `groupname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_ewei_shop_member_message_template_type
-- ----------------------------
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (1, '订单付款通知', 'saler_pay', 'OPENTM405584202', '', '订单付款通知', '{{first.DATA}}订单编号：{{keyword1.DATA}}商品名称：{{keyword2.DATA}}商品数量：{{keyword3.DATA}}支付金额：{{keyword4.DATA}}{{remark.DATA}}', 0, '系统消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (2, '自提订单提交成功通知', 'carrier', 'OPENTM201594720', '', '订单付款通知', '{{first.DATA}}自提码：{{keyword1.DATA}}商品详情：{{keyword2.DATA}}提货地址：{{keyword3.DATA}}提货时间：{{keyword4.DATA}}{{remark.DATA}}', 0, '系统消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (3, '订单取消通知', 'cancel', 'OPENTM201764653', '', '订单关闭提醒', '{{first.DATA}}订单商品：{{keyword1.DATA}}订单编号：{{keyword2.DATA}}下单时间：{{keyword3.DATA}}订单金额：{{keyword4.DATA}}关闭时间：{{keyword5.DATA}}{{remark.DATA}}', 0, '系统消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (4, '订单即将取消通知', 'willcancel', 'OPENTM201764653', '', '订单关闭提醒', '{{first.DATA}}订单商品：{{keyword1.DATA}}订单编号：{{keyword2.DATA}}下单时间：{{keyword3.DATA}}订单金额：{{keyword4.DATA}}关闭时间：{{keyword5.DATA}}{{remark.DATA}}', 0, '系统消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (5, '订单支付成功通知', 'pay', 'OPENTM405584202', '', '订单支付通知', '{{first.DATA}}订单编号：{{keyword1.DATA}}商品名称：{{keyword2.DATA}}商品数量：{{keyword3.DATA}}支付金额：{{keyword4.DATA}}{{remark.DATA}}', 0, '系统消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (6, '订单发货通知', 'send', 'OPENTM401874827', '', '订单发货通知', '{{first.DATA}}订单编号：{{keyword1.DATA}}快递公司：{{keyword2.DATA}}快递单号：{{keyword3.DATA}}{{remark.DATA}}', 0, '系统消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (7, '自动发货通知(虚拟物品及卡密)', 'virtualsend', 'OPENTM207793687', '', '自动发货通知', '{{first.DATA}}商品名称：{{keyword1.DATA}}订单号：{{keyword2.DATA}}订单金额：{{keyword3.DATA}}卡密信息：{{keyword4.DATA}}{{remark.DATA}}', 0, '系统消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (8, '订单状态更新(修改收货地址)(修改价格)', 'orderstatus', 'TM00017', '', '订单付款通知', '{{first.DATA}}订单编号:{{OrderSn.DATA}}订单状态:{{OrderStatus.DATA}}{{remark.DATA}}', 0, '系统消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (9, '退款成功通知', 'refund1', 'TM00430', '', '退款成功通知', '{{first.DATA}}退款金额：{{orderProductPrice.DATA}}商品详情：{{orderProductName.DATA}}订单编号：{{orderName.DATA}}{{remark.DATA}}', 0, '系统消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (10, '换货成功通知', 'refund3', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '系统消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (11, '退款申请驳回通知', 'refund2', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '系统消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (12, '充值成功通知', 'recharge_ok', 'OPENTM207727673', '', '充值成功提醒', '{{first.DATA}}充值金额：{{keyword1.DATA}}充值时间：{{keyword2.DATA}}账户余额：{{keyword3.DATA}}{{remark.DATA}}', 0, '系统消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (13, '提现成功通知', 'withdraw_ok', 'OPENTM207422808', '', '提现通知', '{{first.DATA}}申请提现金额：{{keyword1.DATA}}取提现手续费：{{keyword2.DATA}}实际到账金额：{{keyword3.DATA}}提现渠道：{{keyword4.DATA}}{{remark.DATA}}', 0, '系统消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (14, '会员升级通知(任务处理通知)', 'upgrade', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '系统消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (15, '充值成功通知（后台管理员手动）', 'backrecharge_ok', 'OPENTM207727673', '', '充值成功提醒', '{{first.DATA}}充值金额：{{keyword1.DATA}}充值时间：{{keyword2.DATA}}账户余额：{{keyword3.DATA}}{{remark.DATA}}', 0, '系统消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (16, '积分变动提醒', 'backpoint_ok', 'OPENTM207509450', '', '积分变动提醒', '{{first.DATA}}获得时间：{{keyword1.DATA}}获得积分：{{keyword2.DATA}}获得原因：{{keyword3.DATA}}当前积分：{{keyword4.DATA}}{{remark.DATA}}', 0, '系统消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (17, '换货发货通知', 'refund4', 'OPENTM401874827', '', '订单发货通知', '{{first.DATA}}订单编号：{{keyword1.DATA}}快递公司：{{keyword2.DATA}}快递单号：{{keyword3.DATA}}{{remark.DATA}}', 0, '系统消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (18, '砍价活动通知', 'bargain_message', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '砍价消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (19, '拼团活动通知', 'groups', '', '', '', '', 0, '拼团消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (20, '人人分销通知', 'commission', '', '', '', '', 0, '分销消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (21, '商品付款通知', 'saler_goodpay', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '系统消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (22, '砍到底价通知', 'bargain_fprice', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '砍价消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (23, '订单收货通知(卖家)', 'saler_finish', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '系统消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (24, '余额兑换成功通知', 'exchange_balance', 'OPENTM207727673', '', '充值成功提醒', '{{first.DATA}}充值金额：{{keyword1.DATA}}充值时间：{{keyword2.DATA}}账户余额：{{keyword3.DATA}}{{remark.DATA}}', 0, '兑换中心消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (25, '积分兑换成功通知', 'exchange_score', 'OPENTM207509450', '', '积分变动提醒', '{{first.DATA}}获得时间：{{keyword1.DATA}}获得积分：{{keyword2.DATA}}获得原因：{{keyword3.DATA}}当前积分：{{keyword4.DATA}}{{remark.DATA}}', 0, '兑换中心消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (26, '兑换中心余额充值通知', 'exchange_recharge', 'OPENTM207727673', '', '充值成功提醒', '{{first.DATA}}充值金额：{{keyword1.DATA}}充值时间：{{keyword2.DATA}}账户余额：{{keyword3.DATA}}{{remark.DATA}}', 0, '兑换中心消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (27, '游戏中心通知', 'lottery_get', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '抽奖消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (35, '库存预警通知', 'saler_stockwarn', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '系统消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (36, '卖家核销商品核销通知', 'o2o_sverify', 'OPENTM409521536', '', '核销成功提醒', '{{first.DATA}}核销项目：{{keyword1.DATA}}核销时间：{{keyword2.DATA}}核销门店：{{keyword3.DATA}}{{remark.DATA}}', 0, 'O2O消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (37, '核销商品核销通知', 'o2o_bverify', 'OPENTM409521536', '', '核销成功提醒', '{{first.DATA}}核销项目：{{keyword1.DATA}}核销时间：{{keyword2.DATA}}核销门店：{{keyword3.DATA}}{{remark.DATA}}', 0, 'O2O消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (38, '卖家商品预约通知', 'o2o_snorder', 'OPENTM202447657', '', '预约成功提醒', '{{first.DATA}}预约项目：{{keyword1.DATA}}预约时间：{{keyword2.DATA}}{{remark.DATA}}', 0, 'O2O消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (39, '商品预约成功通知', 'o2o_bnorder', 'OPENTM202447657', '', '预约成功提醒', '{{first.DATA}}预约项目：{{keyword1.DATA}}预约时间：{{keyword2.DATA}}{{remark.DATA}}', 0, 'O2O消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (42, '商品下单通知', 'saler_goodsubmit', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '系统消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (50, '维权订单通知', 'saler_refund', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '系统消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (43, '任务接取通知', 'task_pick', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '任务中心消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (44, '任务进度通知', 'task_progress', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '任务中心消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (45, '任务完成通知', 'task_finish', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '任务中心消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (46, '任务海报接取通知', 'task_poster_pick', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '任务中心消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (47, '任务海报进度通知', 'task_poster_progress', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '任务中心消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (48, '任务海报完成通知', 'task_poster_finish', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '任务中心消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (49, '任务海报扫描通知', 'task_poster_scan', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '任务中心消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (52, '成为分销商通知', 'commission_become', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '分销消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (53, '新增下线通知', 'commission_agent_new', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '分销消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (54, '下级付款通知', 'commission_order_pay', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '分销消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (55, '下级确认收货通知', 'commission_order_finish', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '分销消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (56, '提现申请提交通知', 'commission_apply', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '分销消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (57, '提现申请完成审核通知', 'commission_check', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '分销消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (58, '佣金打款通知', 'commission_pay', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '分销消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (59, '分销商等级升级通知', 'commission_upgrade', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '分销消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (60, '成为股东通知', 'globonus_become', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '股东消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (61, '股东等级升级通知', 'globonus_upgrade', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '股东消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (62, '分红发放通知', 'globonus_pay', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '股东消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (63, '奖励发放通知', 'article', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '文章营销消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (64, '成为区域代理通知', 'abonus_become', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '区域代理消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (65, '省级代理等级升级通知', 'abonus_upgrade1', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '区域代理消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (66, '市级代理等级升级通知', 'abonus_upgrade2', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '区域代理消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (67, '区级代理等级升级通知', 'abonus_upgrade3', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '区域代理消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (68, '区域代理分红发放通知', 'abonus_pay', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '区域代理消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (69, '入驻申请通知', 'merch_apply', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '商家通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (70, '提现申请提交通知', 'merch_applymoney', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '商家通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (71, '社区会员评论通知', 'reply', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '人人社区消息通知', '0');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (51, '社区会员升级通知', 'sns', 'OPENTM400232285', '', '任务完成通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}任务类型：{{keyword2.DATA}}完成时间：{{keyword3.DATA}}{{remark.DATA}}', 0, '人人社区消息通知', '0');

-- ----------------------------
-- Table structure for ims_ewei_shop_member_printer
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_printer`;
CREATE TABLE `ims_ewei_shop_member_printer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `type` tinyint(3) NULL DEFAULT 0,
  `print_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_printer_template
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_printer_template`;
CREATE TABLE `ims_ewei_shop_member_printer_template`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `type` tinyint(3) NULL DEFAULT 0,
  `print_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `print_style` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `print_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `code` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `qrcode` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `goodssn` tinyint(1) NOT NULL DEFAULT 0,
  `productsn` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_rank
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_rank`;
CREATE TABLE `ims_ewei_shop_member_rank`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_account`;
CREATE TABLE `ims_ewei_shop_merch_account`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `merchid` int(11) NULL DEFAULT 0,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(3) NULL DEFAULT 0,
  `perms` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `isfounder` tinyint(3) NULL DEFAULT 0,
  `lastip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lastvisit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `roleid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 95 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_adv`;
CREATE TABLE `ims_ewei_shop_merch_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `displayorder` int(11) NULL DEFAULT NULL,
  `enabled` int(11) NULL DEFAULT NULL,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_banner
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_banner`;
CREATE TABLE `ims_ewei_shop_merch_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `bannername` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_bill
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_bill`;
CREATE TABLE `ims_ewei_shop_merch_bill`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `applyno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `merchid` int(11) NOT NULL DEFAULT 0,
  `orderids` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `realprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `realpricerate` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `finalprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `payrateprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `payrate` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `money` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `applytime` int(11) NOT NULL DEFAULT 0,
  `checktime` int(11) NOT NULL DEFAULT 0,
  `paytime` int(11) NOT NULL DEFAULT 0,
  `invalidtime` int(11) NOT NULL DEFAULT 0,
  `refusetime` int(11) NOT NULL DEFAULT 0,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `ordernum` int(11) NOT NULL DEFAULT 0,
  `orderprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `passrealprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `passrealpricerate` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `passorderids` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `passordernum` int(11) NOT NULL DEFAULT 0,
  `passorderprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `alipay` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bankname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bankcard` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `applyrealname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `applytype` tinyint(3) NOT NULL DEFAULT 0,
  `handpay` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_billo
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_billo`;
CREATE TABLE `ims_ewei_shop_merch_billo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `billid` int(11) NOT NULL DEFAULT 0,
  `orderid` int(11) NOT NULL DEFAULT 0,
  `ordermoney` decimal(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_category`;
CREATE TABLE `ims_ewei_shop_merch_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `catename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `thumb` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isrecommand` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_category_swipe
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_category_swipe`;
CREATE TABLE `ims_ewei_shop_merch_category_swipe`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `thumb` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_clearing
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_clearing`;
CREATE TABLE `ims_ewei_shop_merch_clearing`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  `clearno` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `goodsprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `dispatchprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `deductprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `deductcredit2` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `discountprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `deductenough` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `merchdeductenough` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `isdiscountprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `realprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `realpricerate` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `finalprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `remark` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `paytime` int(11) NOT NULL DEFAULT 0,
  `payrate` decimal(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `merchid`(`merchid`) USING BTREE,
  INDEX `starttime`(`starttime`) USING BTREE,
  INDEX `endtime`(`endtime`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_group`;
CREATE TABLE `ims_ewei_shop_merch_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `groupname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `isdefault` tinyint(1) NULL DEFAULT 0,
  `goodschecked` tinyint(1) NULL DEFAULT 0,
  `commissionchecked` tinyint(1) NULL DEFAULT 0,
  `changepricechecked` tinyint(1) NULL DEFAULT 0,
  `finishchecked` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_nav
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_nav`;
CREATE TABLE `ims_ewei_shop_merch_nav`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `navname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_notice`;
CREATE TABLE `ims_ewei_shop_merch_notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` tinyint(3) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT NULL,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_perm_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_perm_log`;
CREATE TABLE `ims_ewei_shop_merch_perm_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT 0,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `op` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 489 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_perm_role
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_perm_role`;
CREATE TABLE `ims_ewei_shop_merch_perm_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(3) NULL DEFAULT 0,
  `perms` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `deleted` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE,
  INDEX `merchid`(`merchid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_reg
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_reg`;
CREATE TABLE `ims_ewei_shop_merch_reg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `merchname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `salecate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(3) NULL DEFAULT 0,
  `diyformdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `applytime` int(11) NULL DEFAULT 0,
  `reason` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `uname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `upass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 112 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_saler
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_saler`;
CREATE TABLE `ims_ewei_shop_merch_saler`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeid` int(11) NULL DEFAULT 0,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(3) NULL DEFAULT 0,
  `salername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_storeid`(`storeid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_store
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_store`;
CREATE TABLE `ims_ewei_shop_merch_store`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `storename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(3) NULL DEFAULT 0,
  `type` tinyint(1) NULL DEFAULT 0,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `fetchtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `saletime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `displayorder` int(11) NULL DEFAULT 0,
  `commission_total` decimal(10, 2) NULL DEFAULT NULL,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_user
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_user`;
CREATE TABLE `ims_ewei_shop_merch_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `regid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `groupid` int(11) NULL DEFAULT 0,
  `merchno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `merchname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `salecate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(3) NULL DEFAULT 0,
  `accounttime` int(11) NULL DEFAULT 0,
  `diyformdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `applytime` int(11) NULL DEFAULT 0,
  `accounttotal` int(11) NULL DEFAULT 0,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `jointime` int(11) NULL DEFAULT 0,
  `accountid` int(11) NULL DEFAULT 0,
  `sets` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `payopenid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `payrate` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `isrecommand` tinyint(1) NULL DEFAULT 0,
  `cateid` int(11) NULL DEFAULT 0,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `pluginset` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `upass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `maxgoods` int(11) NOT NULL DEFAULT 0,
  `	iscredit` tinyint(3) NOT NULL DEFAULT 1,
  `creditrate` int(10) NOT NULL DEFAULT 1,
  `iscreditmoney` int(3) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_groupid`(`groupid`) USING BTREE,
  INDEX `idx_regid`(`regid`) USING BTREE,
  INDEX `idx_cateid`(`cateid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 97 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_multi_shop
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_multi_shop`;
CREATE TABLE `ims_ewei_shop_multi_shop`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `uid` int(11) NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `sales` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `starttime` int(11) NULL DEFAULT 0,
  `endtime` int(11) NULL DEFAULT 0,
  `applytime` int(11) NULL DEFAULT 0,
  `jointime` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `refusecontent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_nav
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_nav`;
CREATE TABLE `ims_ewei_shop_nav`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `navname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `iswxapp` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_newstore_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_newstore_category`;
CREATE TABLE `ims_ewei_shop_newstore_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uniacid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_notice`;
CREATE TABLE `ims_ewei_shop_notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` tinyint(3) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT NULL,
  `shopid` int(11) NULL DEFAULT 0,
  `iswxapp` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_order`;
CREATE TABLE `ims_ewei_shop_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `agentid` int(11) NULL DEFAULT 0,
  `ordersn` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `price` decimal(10, 2) NULL DEFAULT 0.00,
  `goodsprice` decimal(10, 2) NULL DEFAULT 0.00,
  `discountprice` decimal(10, 2) NULL DEFAULT 0.00,
  `status` tinyint(3) NULL DEFAULT 0,
  `paytype` tinyint(1) NULL DEFAULT 0,
  `transid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `addressid` int(11) NULL DEFAULT 0,
  `dispatchprice` decimal(10, 2) NULL DEFAULT 0.00,
  `dispatchid` int(10) NULL DEFAULT 0,
  `createtime` int(10) NULL DEFAULT NULL,
  `dispatchtype` tinyint(3) NULL DEFAULT 0,
  `carrier` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `refundid` int(11) NULL DEFAULT 0,
  `iscomment` tinyint(3) NULL DEFAULT 0,
  `creditadd` tinyint(3) NULL DEFAULT 0,
  `deleted` tinyint(3) NULL DEFAULT 0,
  `userdeleted` tinyint(3) NULL DEFAULT 0,
  `finishtime` int(11) NULL DEFAULT 0,
  `paytime` int(11) NULL DEFAULT 0,
  `expresscom` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `expresssn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `express` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `sendtime` int(11) NULL DEFAULT 0,
  `fetchtime` int(11) NULL DEFAULT 0,
  `cash` tinyint(3) NULL DEFAULT 0,
  `canceltime` int(11) NULL DEFAULT NULL,
  `cancelpaytime` int(11) NULL DEFAULT 0,
  `refundtime` int(11) NULL DEFAULT 0,
  `isverify` tinyint(3) NULL DEFAULT 0,
  `verified` tinyint(3) NULL DEFAULT 0,
  `verifyopenid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `verifycode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `verifytime` int(11) NULL DEFAULT 0,
  `verifystoreid` int(11) NULL DEFAULT 0,
  `deductprice` decimal(10, 2) NULL DEFAULT 0.00,
  `deductcredit` int(10) NULL DEFAULT 0,
  `deductcredit2` decimal(10, 2) NULL DEFAULT 0.00,
  `deductenough` decimal(10, 2) NULL DEFAULT 0.00,
  `virtual` int(11) NULL DEFAULT 0,
  `virtual_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `virtual_str` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sysdeleted` tinyint(3) NULL DEFAULT 0,
  `ordersn2` int(11) NULL DEFAULT 0,
  `changeprice` decimal(10, 2) NULL DEFAULT 0.00,
  `changedispatchprice` decimal(10, 2) NULL DEFAULT 0.00,
  `oldprice` decimal(10, 2) NULL DEFAULT 0.00,
  `olddispatchprice` decimal(10, 2) NULL DEFAULT 0.00,
  `isvirtual` tinyint(3) NULL DEFAULT 0,
  `couponid` int(11) NULL DEFAULT 0,
  `couponprice` decimal(10, 2) NULL DEFAULT 0.00,
  `diyformdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformid` int(11) NULL DEFAULT 0,
  `storeid` int(11) NULL DEFAULT 0,
  `printstate` tinyint(1) NULL DEFAULT 0,
  `printstate2` tinyint(1) NULL DEFAULT 0,
  `address_send` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `refundstate` tinyint(3) NULL DEFAULT 0,
  `closereason` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `remarksaler` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `remarkclose` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `remarksend` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ismr` int(1) NOT NULL DEFAULT 0,
  `isdiscountprice` decimal(10, 2) NULL DEFAULT 0.00,
  `isvirtualsend` tinyint(1) NULL DEFAULT 0,
  `virtualsend_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `verifyinfo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `verifytype` tinyint(1) NULL DEFAULT 0,
  `verifycodes` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `invoicename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `merchid` int(11) NULL DEFAULT 0,
  `ismerch` tinyint(1) NULL DEFAULT 0,
  `parentid` int(11) NULL DEFAULT 0,
  `isparent` tinyint(1) NULL DEFAULT 0,
  `grprice` decimal(10, 2) NULL DEFAULT 0.00,
  `merchshow` tinyint(1) NULL DEFAULT 0,
  `merchdeductenough` decimal(10, 2) NULL DEFAULT 0.00,
  `couponmerchid` int(11) NULL DEFAULT 0,
  `isglobonus` tinyint(3) NULL DEFAULT 0,
  `merchapply` tinyint(1) NULL DEFAULT 0,
  `isabonus` tinyint(3) NULL DEFAULT 0,
  `isborrow` tinyint(3) NULL DEFAULT 0,
  `borrowopenid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `merchisdiscountprice` decimal(10, 2) NULL DEFAULT 0.00,
  `apppay` tinyint(3) NOT NULL DEFAULT 0,
  `coupongoodprice` decimal(10, 2) NULL DEFAULT 1.00,
  `buyagainprice` decimal(10, 2) NULL DEFAULT 0.00,
  `authorid` int(11) NULL DEFAULT 0,
  `isauthor` tinyint(1) NULL DEFAULT 0,
  `ispackage` tinyint(3) NULL DEFAULT 0,
  `packageid` int(11) NULL DEFAULT 0,
  `taskdiscountprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `seckilldiscountprice` decimal(10, 2) NULL DEFAULT 0.00,
  `verifyendtime` int(11) NOT NULL DEFAULT 0,
  `willcancelmessage` tinyint(1) NULL DEFAULT 0,
  `sendtype` tinyint(3) NOT NULL DEFAULT 0,
  `lotterydiscountprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `contype` tinyint(1) NULL DEFAULT 0,
  `wxid` int(11) NULL DEFAULT 0,
  `wxcardid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `wxcode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `dispatchkey` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `quickid` int(11) NOT NULL DEFAULT 0,
  `istrade` tinyint(3) NOT NULL DEFAULT 0,
  `isnewstore` tinyint(3) NOT NULL DEFAULT 0,
  `liveid` int(11) NOT NULL,
  `ordersn_trade` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tradestatus` tinyint(1) NULL DEFAULT 0,
  `tradepaytype` tinyint(1) NOT NULL,
  `tradepaytime` int(11) NULL DEFAULT 0,
  `dowpayment` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `betweenprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `isshare` int(11) NOT NULL DEFAULT 0,
  `officcode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `wxapp_prepay_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `iswxappcreate` tinyint(1) NULL DEFAULT 0,
  `cashtime` int(11) NULL DEFAULT 0,
  `random_code` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `print_template` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `city_express_state` tinyint(1) NULL DEFAULT NULL,
  `is_cashier` tinyint(3) NULL DEFAULT 0,
  `commissionmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `iscycelbuy` tinyint(3) NULL DEFAULT 0,
  `cycelbuy_predict_time` int(11) NULL DEFAULT NULL,
  `cycelbuy_periodic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_shareid`(`agentid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_refundid`(`refundid`) USING BTREE,
  INDEX `idx_paytime`(`paytime`) USING BTREE,
  INDEX `idx_finishtime`(`finishtime`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE,
  INDEX `idx_ordersn`(`ordersn`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 157 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_order_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_order_comment`;
CREATE TABLE `ims_ewei_shop_order_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `orderid` int(11) NULL DEFAULT 0,
  `goodsid` int(11) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `headimgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `level` tinyint(3) NULL DEFAULT 0,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `deleted` tinyint(3) NULL DEFAULT 0,
  `append_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `append_images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `reply_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `reply_images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `append_reply_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `append_reply_images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `istop` tinyint(3) NULL DEFAULT 0,
  `checked` tinyint(3) NOT NULL DEFAULT 0,
  `replychecked` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_goodsid`(`goodsid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_orderid`(`orderid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_order_goods`;
CREATE TABLE `ims_ewei_shop_order_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `orderid` int(11) NULL DEFAULT 0,
  `goodsid` int(11) NULL DEFAULT 0,
  `price` decimal(10, 2) NULL DEFAULT 0.00,
  `total` int(11) NULL DEFAULT 1,
  `optionid` int(10) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `optionname` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `commission1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `applytime1` int(11) NULL DEFAULT 0,
  `checktime1` int(10) NULL DEFAULT 0,
  `paytime1` int(11) NULL DEFAULT 0,
  `invalidtime1` int(11) NULL DEFAULT 0,
  `deletetime1` int(11) NULL DEFAULT 0,
  `status1` tinyint(3) NULL DEFAULT 0,
  `content1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `commission2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `applytime2` int(11) NULL DEFAULT 0,
  `checktime2` int(10) NULL DEFAULT 0,
  `paytime2` int(11) NULL DEFAULT 0,
  `invalidtime2` int(11) NULL DEFAULT 0,
  `deletetime2` int(11) NULL DEFAULT 0,
  `status2` tinyint(3) NULL DEFAULT 0,
  `content2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `commission3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `applytime3` int(11) NULL DEFAULT 0,
  `checktime3` int(10) NULL DEFAULT 0,
  `paytime3` int(11) NULL DEFAULT 0,
  `invalidtime3` int(11) NULL DEFAULT 0,
  `deletetime3` int(11) NULL DEFAULT 0,
  `status3` tinyint(3) NULL DEFAULT 0,
  `content3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `realprice` decimal(10, 2) NULL DEFAULT 0.00,
  `goodssn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `productsn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `nocommission` tinyint(3) NULL DEFAULT 0,
  `changeprice` decimal(10, 2) NULL DEFAULT 0.00,
  `oldprice` decimal(10, 2) NULL DEFAULT 0.00,
  `commissions` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformid` int(11) NULL DEFAULT 0,
  `diyformdataid` int(11) NULL DEFAULT 0,
  `diyformdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `printstate` int(11) NOT NULL DEFAULT 0,
  `printstate2` int(11) NOT NULL DEFAULT 0,
  `rstate` tinyint(3) NULL DEFAULT 0,
  `refundtime` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `parentorderid` int(11) NULL DEFAULT 0,
  `merchsale` tinyint(3) NOT NULL DEFAULT 0,
  `isdiscountprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `canbuyagain` tinyint(1) NULL DEFAULT 0,
  `seckill` tinyint(3) NULL DEFAULT 0,
  `seckill_taskid` int(11) NULL DEFAULT 0,
  `seckill_roomid` int(11) NULL DEFAULT 0,
  `seckill_timeid` int(11) NULL DEFAULT 0,
  `is_make` tinyint(1) NULL DEFAULT 0,
  `sendtype` tinyint(3) NOT NULL DEFAULT 0,
  `expresscom` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expresssn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `express` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sendtime` int(11) NOT NULL,
  `finishtime` int(11) NOT NULL,
  `remarksend` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prohibitrefund` tinyint(3) NOT NULL DEFAULT 0,
  `storeid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trade_time` int(11) NOT NULL DEFAULT 0,
  `optime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tdate_time` int(11) NOT NULL DEFAULT 0,
  `dowpayment` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `peopleid` int(11) NOT NULL DEFAULT 0,
  `esheetprintnum` int(11) NOT NULL DEFAULT 0,
  `ordercode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_orderid`(`orderid`) USING BTREE,
  INDEX `idx_goodsid`(`goodsid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_applytime1`(`applytime1`) USING BTREE,
  INDEX `idx_checktime1`(`checktime1`) USING BTREE,
  INDEX `idx_status1`(`status1`) USING BTREE,
  INDEX `idx_applytime2`(`applytime2`) USING BTREE,
  INDEX `idx_checktime2`(`checktime2`) USING BTREE,
  INDEX `idx_status2`(`status2`) USING BTREE,
  INDEX `idx_applytime3`(`applytime3`) USING BTREE,
  INDEX `idx_invalidtime1`(`invalidtime1`) USING BTREE,
  INDEX `idx_checktime3`(`checktime3`) USING BTREE,
  INDEX `idx_invalidtime2`(`invalidtime2`) USING BTREE,
  INDEX `idx_invalidtime3`(`invalidtime3`) USING BTREE,
  INDEX `idx_status3`(`status3`) USING BTREE,
  INDEX `idx_paytime1`(`paytime1`) USING BTREE,
  INDEX `idx_paytime2`(`paytime2`) USING BTREE,
  INDEX `idx_paytime3`(`paytime3`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 162 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_order_peerpay
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_order_peerpay`;
CREATE TABLE `ims_ewei_shop_order_peerpay`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `orderid` int(11) NOT NULL DEFAULT 0,
  `peerpay_type` tinyint(1) NOT NULL DEFAULT 0,
  `peerpay_price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `peerpay_maxprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `peerpay_realprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `peerpay_selfpay` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `peerpay_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `orderid`(`orderid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_order_peerpay_payinfo
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_order_peerpay_payinfo`;
CREATE TABLE `ims_ewei_shop_order_peerpay_payinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `uid` int(11) NOT NULL DEFAULT 0,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `usay` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `createtime` int(11) NOT NULL DEFAULT 0,
  `headimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `refundstatus` tinyint(1) NOT NULL DEFAULT 0,
  `refundprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `tid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_order_print
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_order_print`;
CREATE TABLE `ims_ewei_shop_order_print`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) NULL DEFAULT 0,
  `sid` tinyint(3) NULL DEFAULT 0,
  `foid` tinyint(3) NULL DEFAULT 0,
  `oid` int(11) NULL DEFAULT 0,
  `pid` int(11) NULL DEFAULT 0,
  `uniacid` int(11) NULL DEFAULT 0,
  `addtime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_order_refund
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_order_refund`;
CREATE TABLE `ims_ewei_shop_order_refund`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `orderid` int(11) NULL DEFAULT 0,
  `refundno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `reply` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `refundtype` tinyint(3) NULL DEFAULT 0,
  `orderprice` decimal(10, 2) NULL DEFAULT 0.00,
  `applyprice` decimal(10, 2) NULL DEFAULT 0.00,
  `imgs` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `rtype` tinyint(3) NULL DEFAULT 0,
  `refundaddress` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `express` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `expresscom` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `expresssn` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `operatetime` int(11) NULL DEFAULT 0,
  `sendtime` int(11) NULL DEFAULT 0,
  `returntime` int(11) NULL DEFAULT 0,
  `refundtime` int(11) NULL DEFAULT 0,
  `rexpress` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `rexpresscom` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `rexpresssn` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `refundaddressid` int(11) NULL DEFAULT 0,
  `endtime` int(11) NULL DEFAULT 0,
  `realprice` decimal(10, 2) NULL DEFAULT 0.00,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_package
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_package`;
CREATE TABLE `ims_ewei_shop_package`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `freight` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `starttime` int(11) NOT NULL DEFAULT 0,
  `endtime` int(11) NOT NULL DEFAULT 0,
  `goodsid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cash` tinyint(3) NOT NULL DEFAULT 0,
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `deleted` tinyint(3) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_package_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_package_goods`;
CREATE TABLE `ims_ewei_shop_package_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `goodsid` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `option` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goodssn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `productsn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hasoption` tinyint(3) NOT NULL DEFAULT 0,
  `marketprice` decimal(10, 2) NULL DEFAULT 0.00,
  `packageprice` decimal(10, 2) NULL DEFAULT 0.00,
  `commission1` decimal(10, 2) NULL DEFAULT 0.00,
  `commission2` decimal(10, 2) NULL DEFAULT 0.00,
  `commission3` decimal(10, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_package_goods_option
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_package_goods_option`;
CREATE TABLE `ims_ewei_shop_package_goods_option`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `goodsid` int(11) NOT NULL DEFAULT 0,
  `optionid` int(11) NOT NULL DEFAULT 0,
  `pid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `packageprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `marketprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `commission1` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `commission2` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `commission3` decimal(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_payment
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_payment`;
CREATE TABLE `ims_ewei_shop_payment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` tinyint(2) NOT NULL DEFAULT 0,
  `appid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mch_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `apikey` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sub_appid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `sub_appsecret` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `sub_mch_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `cert_file` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `key_file` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `root_file` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_raw` tinyint(1) NULL DEFAULT 0,
  `createtime` int(10) UNSIGNED NULL DEFAULT 0,
  `paytype` tinyint(3) NOT NULL DEFAULT 0,
  `alitype` tinyint(3) NOT NULL DEFAULT 0,
  `alipay_sec` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_pc_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_pc_adv`;
CREATE TABLE `ims_ewei_shop_pc_adv`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL,
  `advname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enabled` tinyint(3) UNSIGNED NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `width` int(11) UNSIGNED NOT NULL,
  `height` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_pc_link
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_pc_link`;
CREATE TABLE `ims_ewei_shop_pc_link`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL,
  `linkname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `displayorder` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_pc_menu
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_pc_menu`;
CREATE TABLE `ims_ewei_shop_pc_menu`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL,
  `type` int(11) UNSIGNED NULL DEFAULT 0,
  `displayorder` int(11) UNSIGNED NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `enabled` tinyint(3) UNSIGNED NULL DEFAULT 1,
  `createtime` int(11) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_pc_slide
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_pc_slide`;
CREATE TABLE `ims_ewei_shop_pc_slide`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NULL DEFAULT 0,
  `type` int(11) UNSIGNED NULL DEFAULT 0,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `backcolor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  `shopid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_perm_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_perm_log`;
CREATE TABLE `ims_ewei_shop_perm_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT 0,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `op` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uid`(`uid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  FULLTEXT INDEX `idx_type`(`type`),
  FULLTEXT INDEX `idx_op`(`op`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_perm_plugin
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_perm_plugin`;
CREATE TABLE `ims_ewei_shop_perm_plugin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acid` int(11) NULL DEFAULT 0,
  `uid` int(11) NULL DEFAULT 0,
  `type` tinyint(3) NULL DEFAULT 0,
  `plugins` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `coms` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `datas` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uid`(`uid`) USING BTREE,
  INDEX `idx_acid`(`acid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_uniacid`(`acid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_perm_role
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_perm_role`;
CREATE TABLE `ims_ewei_shop_perm_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(3) NULL DEFAULT 0,
  `perms` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `deleted` tinyint(3) NULL DEFAULT 0,
  `perms2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_perm_user
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_perm_user`;
CREATE TABLE `ims_ewei_shop_perm_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `uid` int(11) NULL DEFAULT 0,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `roleid` int(11) NULL DEFAULT 0,
  `status` int(11) NULL DEFAULT 0,
  `perms` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `deleted` tinyint(3) NULL DEFAULT 0,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `perms2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `openid_wa` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_nick` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_uid`(`uid`) USING BTREE,
  INDEX `idx_roleid`(`roleid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_plugin
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_plugin`;
CREATE TABLE `ims_ewei_shop_plugin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displayorder` int(11) NULL DEFAULT 0,
  `identity` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `version` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` int(11) NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `iscom` tinyint(3) NULL DEFAULT 0,
  `deprecated` tinyint(3) NULL DEFAULT 0,
  `isv2` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_identity`(`identity`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ims_ewei_shop_plugin
-- ----------------------------
INSERT INTO `ims_ewei_shop_plugin` VALUES (1, 1, 'qiniu', 'tool', '七牛存储', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/qiniu.jpg', NULL, 1, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (2, 2, 'taobao', 'tool', '商品助手', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/taobao.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (3, 3, 'commission', 'biz', '人人分销', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/commission.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (4, 4, 'poster', 'sale', '超级海报', '1.2', '官方', 1, '../addons/ewei_shopv2/static/images/poster.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (5, 5, 'verify', 'biz', 'O2O核销', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/verify.jpg', NULL, 1, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (6, 6, 'tmessage', 'tool', '会员群发', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/tmessage.jpg', NULL, 1, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (7, 7, 'perm', 'help', '分权系统', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/perm.jpg', NULL, 1, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (8, 8, 'sale', 'sale', '营销宝', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/sale.jpg', NULL, 1, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (9, 9, 'designer', 'help', '店铺装修V1', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/designer.jpg', NULL, 0, 1, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (10, 10, 'creditshop', 'biz', '积分商城', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/creditshop.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (11, 11, 'virtual', 'biz', '虚拟物品', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/virtual.jpg', NULL, 1, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (12, 11, 'article', 'help', '文章营销', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/article.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (13, 13, 'coupon', 'sale', '超级券', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/coupon.jpg', NULL, 1, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (14, 14, 'postera', 'sale', '活动海报', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/postera.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (15, 16, 'system', 'help', '系统工具', '1.0', '官方', 0, '../addons/ewei_shopv2/static/images/system.jpg', NULL, 0, 1, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (16, 15, 'diyform', 'help', '自定表单', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/diyform.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (17, 16, 'exhelper', 'help', '快递助手', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/exhelper.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (18, 19, 'groups', 'biz', '人人拼团', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/groups.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (19, 20, 'diypage', 'help', '店铺装修', '2.0', '官方', 1, '../addons/ewei_shopv2/static/images/designer.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (20, 22, 'globonus', 'biz', '全民股东', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/globonus.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (21, 23, 'merch', 'biz', '多商户', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/merch.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (22, 26, 'qa', 'help', '帮助中心', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/qa.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (24, 27, 'sms', 'tool', '短信提醒', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/sms.jpg', '', 1, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (25, 29, 'sign', 'tool', '积分签到', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/sign.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (26, 30, 'sns', 'sale', '全民社区', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/sns.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (27, 33, 'wap', 'tool', '全网通', '1.0', '官方', 1, '', '', 1, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (28, 34, 'h5app', 'tool', 'H5APP', '1.0', '官方', 1, '', '', 1, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (29, 26, 'abonus', 'biz', '区域代理', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/abonus.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (30, 33, 'printer', 'tool', '小票打印机', '1.0', '官方', 1, '', '', 1, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (31, 34, 'bargain', 'tool', '砍价活动', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/bargain.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (32, 35, 'task', 'sale', '任务中心', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/task.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (33, 36, 'cashier', 'biz', '收银台', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/cashier.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (34, 37, 'messages', 'tool', '消息群发', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/messages.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (35, 38, 'seckill', 'sale', '整点秒杀', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/seckill.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (36, 39, 'exchange', 'biz', '兑换中心', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/exchange.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (37, 65, 'wxcard', 'sale', '微信卡券', '1.0', '官方', 1, '', NULL, 1, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (38, 42, 'quick', 'biz', '快速购买', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/quick.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (39, 43, 'mmanage', 'tool', '手机端商家管理中心', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/mmanage.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (40, 44, 'polyapi', 'tool', '进销存-网店管家', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/polyapi.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (41, 45, 'lottery', 'biz', '游戏营销', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/lottery.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (42, 46, 'pc', 'sale', 'PC端', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/pc.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (43, 47, 'live', 'sale', '互动直播', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/live.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (44, 48, 'invitation', 'sale', '邀请卡', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/invitation.png', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (47, 50, 'universalform', 'sale', '调研报名', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/dy.jpg', '', 0, 0, 1);

-- ----------------------------
-- Table structure for ims_ewei_shop_polyapi_key
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_polyapi_key`;
CREATE TABLE `ims_ewei_shop_polyapi_key`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  `appkey` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `appsecret` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `createtime` int(11) NOT NULL DEFAULT 0,
  `updatetime` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_appkey`(`appkey`) USING BTREE,
  INDEX `idx_token`(`token`) USING BTREE,
  INDEX `idx_appsecret`(`appsecret`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_poster
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_poster`;
CREATE TABLE `ims_ewei_shop_poster`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `type` tinyint(3) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `bg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `times` int(11) NULL DEFAULT 0,
  `follows` int(11) NULL DEFAULT 0,
  `isdefault` tinyint(3) NULL DEFAULT 0,
  `resptitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `respthumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `respdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `respurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `waittext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `oktext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `subcredit` int(11) NULL DEFAULT 0,
  `submoney` decimal(10, 2) NULL DEFAULT 0.00,
  `reccredit` int(11) NULL DEFAULT 0,
  `recmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `paytype` tinyint(1) NOT NULL DEFAULT 0,
  `scantext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `subtext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `beagent` tinyint(3) NULL DEFAULT 0,
  `bedown` tinyint(3) NULL DEFAULT 0,
  `isopen` tinyint(3) NULL DEFAULT 0,
  `opentext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `openurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `templateid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `subpaycontent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `recpaycontent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `entrytext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `reccouponid` int(11) NULL DEFAULT 0,
  `reccouponnum` int(11) NULL DEFAULT 0,
  `subcouponid` int(11) NULL DEFAULT 0,
  `subcouponnum` int(11) NULL DEFAULT 0,
  `resptype` tinyint(3) NULL DEFAULT 0,
  `resptext` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `keyword2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `resptext11` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `reward_totle` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_times`(`times`) USING BTREE,
  INDEX `idx_isdefault`(`isdefault`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_poster_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_poster_log`;
CREATE TABLE `ims_ewei_shop_poster_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `posterid` int(11) NULL DEFAULT 0,
  `from_openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `subcredit` int(11) NULL DEFAULT 0,
  `submoney` decimal(10, 2) NULL DEFAULT 0.00,
  `reccredit` int(11) NULL DEFAULT 0,
  `recmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `createtime` int(11) NULL DEFAULT 0,
  `reccouponid` int(11) NULL DEFAULT 0,
  `reccouponnum` int(11) NULL DEFAULT 0,
  `subcouponid` int(11) NULL DEFAULT 0,
  `subcouponnum` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_posterid`(`posterid`) USING BTREE,
  INDEX `idx_from_openid`(`from_openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_poster_qr
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_poster_qr`;
CREATE TABLE `ims_ewei_shop_poster_qr`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acid` int(10) UNSIGNED NOT NULL,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` tinyint(3) NULL DEFAULT 0,
  `sceneid` int(11) NULL DEFAULT 0,
  `mediaid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `ticket` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `goodsid` int(11) NULL DEFAULT 0,
  `qrimg` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `scenestr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `posterid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_acid`(`acid`) USING BTREE,
  INDEX `idx_sceneid`(`sceneid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_poster_scan
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_poster_scan`;
CREATE TABLE `ims_ewei_shop_poster_scan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `posterid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `from_openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `scantime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_posterid`(`posterid`) USING BTREE,
  INDEX `idx_scantime`(`scantime`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_postera
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_postera`;
CREATE TABLE `ims_ewei_shop_postera`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `type` tinyint(3) NULL DEFAULT 0,
  `days` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `bg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isdefault` tinyint(3) NULL DEFAULT 0,
  `resptitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `respthumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `respdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `respurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `waittext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `oktext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `subcredit` int(11) NULL DEFAULT 0,
  `submoney` decimal(10, 2) NULL DEFAULT 0.00,
  `reccredit` int(11) NULL DEFAULT 0,
  `recmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `scantext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `subtext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `beagent` tinyint(3) NULL DEFAULT 0,
  `bedown` tinyint(3) NULL DEFAULT 0,
  `isopen` tinyint(3) NULL DEFAULT 0,
  `opentext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `openurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytype` tinyint(1) NOT NULL DEFAULT 0,
  `subpaycontent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `recpaycontent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `templateid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `entrytext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `reccouponid` int(11) NULL DEFAULT 0,
  `reccouponnum` int(11) NULL DEFAULT 0,
  `subcouponid` int(11) NULL DEFAULT 0,
  `subcouponnum` int(11) NULL DEFAULT 0,
  `timestart` int(11) NULL DEFAULT 0,
  `timeend` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `goodsid` int(11) NULL DEFAULT 0,
  `starttext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `endtext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resptype` tinyint(3) NULL DEFAULT 0,
  `resptext` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `testflag` tinyint(1) NULL DEFAULT 0,
  `keyword2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `reward_totle` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_isdefault`(`isdefault`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_postera_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_postera_log`;
CREATE TABLE `ims_ewei_shop_postera_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `posterid` int(11) NULL DEFAULT 0,
  `from_openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `subcredit` int(11) NULL DEFAULT 0,
  `submoney` decimal(10, 2) NULL DEFAULT 0.00,
  `reccredit` int(11) NULL DEFAULT 0,
  `recmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `createtime` int(11) NULL DEFAULT 0,
  `reccouponid` int(11) NULL DEFAULT 0,
  `reccouponnum` int(11) NULL DEFAULT 0,
  `subcouponid` int(11) NULL DEFAULT 0,
  `subcouponnum` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_posteraid`(`posterid`) USING BTREE,
  INDEX `idx_from_openid`(`from_openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_postera_qr
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_postera_qr`;
CREATE TABLE `ims_ewei_shop_postera_qr`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acid` int(10) UNSIGNED NOT NULL,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `posterid` int(11) NULL DEFAULT 0,
  `type` tinyint(3) NULL DEFAULT 0,
  `sceneid` int(11) NULL DEFAULT 0,
  `mediaid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `ticket` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `goodsid` int(11) NULL DEFAULT 0,
  `qrimg` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `expire` int(11) NULL DEFAULT 0,
  `endtime` int(11) NULL DEFAULT 0,
  `qrtime` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_acid`(`acid`) USING BTREE,
  INDEX `idx_sceneid`(`sceneid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_posterid`(`posterid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_print
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_print`;
CREATE TABLE `ims_ewei_shop_print`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) NULL DEFAULT 0,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `print_no` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `key` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `print_nums` tinyint(3) NULL DEFAULT 0,
  `uniacid` int(11) NULL DEFAULT 0,
  `sid` tinyint(3) NULL DEFAULT 0,
  `print_type` tinyint(3) NULL DEFAULT 0,
  `qrcode_link` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_qa_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_qa_adv`;
CREATE TABLE `ims_ewei_shop_qa_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_qa_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_qa_category`;
CREATE TABLE `ims_ewei_shop_qa_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `displayorder` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `enabled` tinyint(1) NULL DEFAULT 1,
  `isrecommand` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_qa_question
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_qa_question`;
CREATE TABLE `ims_ewei_shop_qa_question`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `cate` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `isrecommand` tinyint(3) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  `createtime` int(11) NOT NULL DEFAULT 0,
  `lastedittime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_qa_set
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_qa_set`;
CREATE TABLE `ims_ewei_shop_qa_set`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `showmember` tinyint(3) NOT NULL DEFAULT 0,
  `showtype` tinyint(3) NOT NULL DEFAULT 0,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `enter_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `enter_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `enter_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `share` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_unaicid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_quick
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_quick`;
CREATE TABLE `ims_ewei_shop_quick`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `datas` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `cart` tinyint(3) NOT NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT NULL,
  `lasttime` int(11) NULL DEFAULT NULL,
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enter_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enter_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enter_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_quick_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_quick_adv`;
CREATE TABLE `ims_ewei_shop_quick_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_quick_cart
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_quick_cart`;
CREATE TABLE `ims_ewei_shop_quick_cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `quickid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `goodsid` int(11) NULL DEFAULT 0,
  `total` int(11) NULL DEFAULT 0,
  `marketprice` decimal(10, 2) NULL DEFAULT 0.00,
  `deleted` tinyint(1) NULL DEFAULT 0,
  `optionid` int(11) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `diyformdataid` int(11) NULL DEFAULT NULL,
  `diyformdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformid` int(11) NULL DEFAULT 0,
  `selected` tinyint(1) NULL DEFAULT 1,
  `merchid` int(11) NULL DEFAULT 0,
  `selectedadd` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_goodsid`(`goodsid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_refund_address
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_refund_address`;
CREATE TABLE `ims_ewei_shop_refund_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `province` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `city` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `area` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `address` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isdefault` tinyint(1) NULL DEFAULT 0,
  `zipcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `deleted` tinyint(1) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_isdefault`(`isdefault`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sale_coupon
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sale_coupon`;
CREATE TABLE `ims_ewei_shop_sale_coupon`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `type` tinyint(3) NULL DEFAULT 0,
  `ckey` decimal(10, 2) NULL DEFAULT 0.00,
  `cvalue` decimal(10, 2) NULL DEFAULT 0.00,
  `nums` int(11) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sale_coupon_data
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sale_coupon_data`;
CREATE TABLE `ims_ewei_shop_sale_coupon_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `couponid` int(11) NULL DEFAULT 0,
  `gettime` int(11) NULL DEFAULT 0,
  `gettype` tinyint(3) NULL DEFAULT 0,
  `usedtime` int(11) NULL DEFAULT 0,
  `orderid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_couponid`(`couponid`) USING BTREE,
  INDEX `idx_gettime`(`gettime`) USING BTREE,
  INDEX `idx_gettype`(`gettype`) USING BTREE,
  INDEX `idx_usedtime`(`usedtime`) USING BTREE,
  INDEX `idx_orderid`(`orderid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_saler
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_saler`;
CREATE TABLE `ims_ewei_shop_saler`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeid` int(11) NULL DEFAULT 0,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(3) NULL DEFAULT 0,
  `salername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lastvisit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lastip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isfounder` tinyint(3) NULL DEFAULT 0,
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `getmessage` tinyint(1) NULL DEFAULT 0,
  `getnotice` tinyint(1) NULL DEFAULT 0,
  `roleid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_storeid`(`storeid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_seckill_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_seckill_adv`;
CREATE TABLE `ims_ewei_shop_seckill_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_seckill_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_seckill_category`;
CREATE TABLE `ims_ewei_shop_seckill_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_seckill_task
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_seckill_task`;
CREATE TABLE `ims_ewei_shop_seckill_task`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `cateid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `enabled` tinyint(3) NULL DEFAULT 0,
  `page_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `share_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `share_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `closesec` int(11) NULL DEFAULT 0,
  `oldshow` tinyint(3) NULL DEFAULT 0,
  `times` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `overtimes` tinyint(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_status`(`enabled`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_seckill_task_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_seckill_task_goods`;
CREATE TABLE `ims_ewei_shop_seckill_task_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `taskid` int(11) NULL DEFAULT 0,
  `roomid` int(11) NULL DEFAULT 0,
  `timeid` int(11) NULL DEFAULT 0,
  `goodsid` int(11) NULL DEFAULT 0,
  `optionid` int(11) NULL DEFAULT 0,
  `price` decimal(10, 2) NULL DEFAULT 0.00,
  `total` int(11) NULL DEFAULT 0,
  `maxbuy` int(11) NULL DEFAULT 0,
  `totalmaxbuy` int(11) NULL DEFAULT 0,
  `commission1` decimal(10, 2) NULL DEFAULT 0.00,
  `commission2` decimal(10, 2) NULL DEFAULT 0.00,
  `commission3` decimal(10, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_goodsid`(`goodsid`) USING BTREE,
  INDEX `idx_optionid`(`optionid`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_taskid`(`taskid`) USING BTREE,
  INDEX `idx_roomid`(`roomid`) USING BTREE,
  INDEX `idx_time`(`timeid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_seckill_task_room
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_seckill_task_room`;
CREATE TABLE `ims_ewei_shop_seckill_task_room`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `taskid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `enabled` tinyint(3) NULL DEFAULT 0,
  `page_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `share_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `share_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `oldshow` tinyint(3) NULL DEFAULT 0,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `diypage` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_taskid`(`taskid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_seckill_task_time
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_seckill_task_time`;
CREATE TABLE `ims_ewei_shop_seckill_task_time`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `taskid` int(11) NULL DEFAULT 0,
  `time` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_sendticket
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sendticket`;
CREATE TABLE `ims_ewei_shop_sendticket`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `cpid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expiration` int(11) NOT NULL DEFAULT 0,
  `starttime` int(11) NULL DEFAULT NULL,
  `endtime` int(11) NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `createtime` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '新人礼包',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sendticket_draw
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sendticket_draw`;
CREATE TABLE `ims_ewei_shop_sendticket_draw`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `cpid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sendticket_share
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sendticket_share`;
CREATE TABLE `ims_ewei_shop_sendticket_share`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `sharetitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shareicon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sharedesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expiration` int(11) NOT NULL DEFAULT 0,
  `starttime` int(11) NULL DEFAULT NULL,
  `endtime` int(11) NULL DEFAULT NULL,
  `paycpid1` int(11) NULL DEFAULT NULL,
  `paycpid2` int(11) NULL DEFAULT NULL,
  `paycpid3` int(11) NULL DEFAULT NULL,
  `paycpnum1` int(11) NULL DEFAULT NULL,
  `paycpnum2` int(11) NULL DEFAULT NULL,
  `paycpnum3` int(11) NULL DEFAULT NULL,
  `sharecpid1` int(11) NULL DEFAULT NULL,
  `sharecpid2` int(11) NULL DEFAULT NULL,
  `sharecpid3` int(11) NULL DEFAULT NULL,
  `sharecpnum1` int(11) NULL DEFAULT NULL,
  `sharecpnum2` int(11) NULL DEFAULT NULL,
  `sharecpnum3` int(11) NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `createtime` int(11) NOT NULL,
  `order` int(11) NULL DEFAULT NULL,
  `enough` decimal(10, 2) NULL DEFAULT NULL,
  `issync` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sign_records
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sign_records`;
CREATE TABLE `ims_ewei_shop_sign_records`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `credit` int(11) NOT NULL DEFAULT 0,
  `log` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `day` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_time`(`time`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 602 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sign_set
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sign_set`;
CREATE TABLE `ims_ewei_shop_sign_set`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `iscenter` tinyint(3) NOT NULL DEFAULT 0,
  `iscreditshop` tinyint(3) NOT NULL DEFAULT 0,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `isopen` tinyint(3) NOT NULL DEFAULT 0,
  `signold` tinyint(3) NOT NULL DEFAULT 0,
  `signold_price` int(11) NOT NULL DEFAULT 0,
  `signold_type` tinyint(3) NOT NULL DEFAULT 0,
  `textsign` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `textsignold` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `textsigned` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `textsignforget` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `maincolor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cycle` tinyint(3) NOT NULL DEFAULT 0,
  `reward_default_first` int(11) NOT NULL DEFAULT 0,
  `reward_default_day` int(11) NOT NULL DEFAULT 0,
  `reword_order` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reword_sum` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reword_special` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sign_rule` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sign_user
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sign_user`;
CREATE TABLE `ims_ewei_shop_sign_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `order` int(11) NOT NULL DEFAULT 0,
  `orderday` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0,
  `signdate` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 146 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sms
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sms`;
CREATE TABLE `ims_ewei_shop_sms`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` tinyint(3) NOT NULL DEFAULT 0,
  `smstplid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `smssign` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sms_set
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sms_set`;
CREATE TABLE `ims_ewei_shop_sms_set`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `juhe` tinyint(3) NOT NULL DEFAULT 0,
  `juhe_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `dayu` tinyint(3) NOT NULL DEFAULT 0,
  `dayu_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `dayu_secret` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `emay` tinyint(3) NOT NULL DEFAULT 0,
  `emay_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `emay_sn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `emay_pw` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `emay_sk` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `emay_phost` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `emay_pport` int(11) NOT NULL DEFAULT 0,
  `emay_puser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `emay_ppw` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `emay_out` int(11) NOT NULL DEFAULT 0,
  `emay_outresp` int(11) NOT NULL DEFAULT 30,
  `emay_warn` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `emay_mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `emay_warn_time` int(11) NOT NULL DEFAULT 0,
  `aliyun` tinyint(3) NOT NULL DEFAULT 0,
  `aliyun_appcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `aliyun_new` tinyint(3) NOT NULL DEFAULT 0,
  `aliyun_new_keyid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `aliyun_new_keysecret` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_adv`;
CREATE TABLE `ims_ewei_shop_sns_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_board
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_board`;
CREATE TABLE `ims_ewei_shop_sns_board`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `cid` int(11) NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  `showgroups` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `showlevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `postgroups` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `postlevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `showagentlevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `postagentlevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `postcredit` int(11) NULL DEFAULT 0,
  `replycredit` int(11) NULL DEFAULT 0,
  `bestcredit` int(11) NULL DEFAULT 0,
  `bestboardcredit` int(11) NULL DEFAULT 0,
  `notagent` tinyint(3) NULL DEFAULT 0,
  `notagentpost` tinyint(3) NULL DEFAULT 0,
  `topcredit` int(11) NULL DEFAULT 0,
  `topboardcredit` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `noimage` tinyint(3) NULL DEFAULT 0,
  `novoice` tinyint(3) NULL DEFAULT 0,
  `needfollow` tinyint(3) NULL DEFAULT 0,
  `needpostfollow` tinyint(3) NULL DEFAULT 0,
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `share_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `share_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isrecommand` tinyint(3) NULL DEFAULT 0,
  `banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `needcheck` tinyint(3) NULL DEFAULT 0,
  `needcheckmanager` tinyint(3) NULL DEFAULT 0,
  `needcheckreply` int(11) NULL DEFAULT 0,
  `needcheckreplymanager` int(11) NULL DEFAULT 0,
  `showsnslevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `postsnslevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `showpartnerlevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `postpartnerlevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `notpartner` tinyint(3) NULL DEFAULT 0,
  `notpartnerpost` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_cid`(`cid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_board_follow
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_board_follow`;
CREATE TABLE `ims_ewei_shop_sns_board_follow`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `bid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_bid`(`bid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_category`;
CREATE TABLE `ims_ewei_shop_sns_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `displayorder` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `enabled` tinyint(1) NULL DEFAULT 1,
  `advimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `advurl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isrecommand` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_isrecommand`(`isrecommand`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_complain
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_complain`;
CREATE TABLE `ims_ewei_shop_sns_complain`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(3) NOT NULL,
  `postsid` int(11) NOT NULL DEFAULT 0,
  `defendant` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `complainant` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `complaint_type` int(10) NOT NULL DEFAULT 0,
  `complaint_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(11) NOT NULL DEFAULT 0,
  `checkedtime` int(11) NOT NULL DEFAULT 0,
  `checked` tinyint(3) NOT NULL DEFAULT 0,
  `checked_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deleted` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_complaincate
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_complaincate`;
CREATE TABLE `ims_ewei_shop_sns_complaincate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_level
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_level`;
CREATE TABLE `ims_ewei_shop_sns_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `levelname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `credit` int(11) NULL DEFAULT 0,
  `enabled` tinyint(3) NULL DEFAULT 0,
  `post` int(11) NULL DEFAULT 0,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `bg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_like
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_like`;
CREATE TABLE `ims_ewei_shop_sns_like`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `pid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_pid`(`pid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_manage
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_manage`;
CREATE TABLE `ims_ewei_shop_sns_manage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `bid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `enabled` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_bid`(`bid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_member
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_member`;
CREATE TABLE `ims_ewei_shop_sns_member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `credit` int(11) NULL DEFAULT 0,
  `sign` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isblack` tinyint(3) NULL DEFAULT 0,
  `notupgrade` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_post
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_post`;
CREATE TABLE `ims_ewei_shop_sns_post`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `bid` int(11) NULL DEFAULT 0,
  `pid` int(11) NULL DEFAULT 0,
  `rpid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `voice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `replytime` int(11) NULL DEFAULT 0,
  `credit` int(11) NULL DEFAULT 0,
  `views` int(11) NULL DEFAULT 0,
  `islock` tinyint(1) NULL DEFAULT 0,
  `istop` tinyint(1) NULL DEFAULT 0,
  `isboardtop` tinyint(1) NULL DEFAULT 0,
  `isbest` tinyint(1) NULL DEFAULT 0,
  `isboardbest` tinyint(3) NULL DEFAULT 0,
  `deleted` tinyint(3) NULL DEFAULT 0,
  `deletedtime` int(11) NULL DEFAULT 0,
  `checked` tinyint(3) NULL DEFAULT NULL,
  `checktime` int(11) NULL DEFAULT 0,
  `isadmin` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_bid`(`bid`) USING BTREE,
  INDEX `idx_pid`(`pid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_islock`(`islock`) USING BTREE,
  INDEX `idx_istop`(`istop`) USING BTREE,
  INDEX `idx_isboardtop`(`isboardtop`) USING BTREE,
  INDEX `idx_isbest`(`isbest`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE,
  INDEX `idx_deletetime`(`deletedtime`) USING BTREE,
  INDEX `idx_checked`(`checked`) USING BTREE,
  INDEX `idx_rpid`(`rpid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_store
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_store`;
CREATE TABLE `ims_ewei_shop_store`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `storename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(3) NULL DEFAULT 0,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `fetchtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `type` tinyint(1) NULL DEFAULT 0,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `saletime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `displayorder` int(11) NULL DEFAULT 0,
  `order_printer` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `order_template` int(11) NULL DEFAULT 0,
  `ordertype` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `banner` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classify` tinyint(1) NULL DEFAULT NULL,
  `perms` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `citycode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `opensend` tinyint(3) NOT NULL DEFAULT 0,
  `province` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `city` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `area` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `provincecode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `areacode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `diypage` int(11) NOT NULL DEFAULT 0,
  `diypage_ispage` tinyint(3) NOT NULL DEFAULT 0,
  `diypage_list` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `storegroupid` int(11) NULL DEFAULT NULL,
  `cates` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sysset
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sysset`;
CREATE TABLE `ims_ewei_shop_sysset`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `sets` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `plugins` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sec` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_ewei_shop_sysset
-- ----------------------------
INSERT INTO `ims_ewei_shop_sysset` VALUES (1, 1, 'a:1:{s:4:\"auth\";a:4:{s:2:\"ip\";N;s:2:\"id\";i:0;s:4:\"code\";s:18:\"RRD00670HTWYAUDXJF\";s:6:\"domain\";s:13:\"we7.hcexe.com\";}}', NULL, NULL);

-- ----------------------------
-- Table structure for ims_ewei_shop_system_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_adv`;
CREATE TABLE `ims_ewei_shop_system_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `module` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_article
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_article`;
CREATE TABLE `ims_ewei_shop_system_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `cate` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_banner
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_banner`;
CREATE TABLE `ims_ewei_shop_system_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `background` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_case
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_case`;
CREATE TABLE `ims_ewei_shop_system_case`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `qr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `cate` int(11) NULL DEFAULT 0,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_casecategory
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_casecategory`;
CREATE TABLE `ims_ewei_shop_system_casecategory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `status` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_category`;
CREATE TABLE `ims_ewei_shop_system_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `status` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_company_article
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_company_article`;
CREATE TABLE `ims_ewei_shop_system_company_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `cate` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_company_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_company_category`;
CREATE TABLE `ims_ewei_shop_system_company_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `status` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_copyright
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_copyright`;
CREATE TABLE `ims_ewei_shop_system_copyright`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `copyright` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `bgcolor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `ismanage` tinyint(3) NULL DEFAULT 0,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_copyright_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_copyright_notice`;
CREATE TABLE `ims_ewei_shop_system_copyright_notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_guestbook`;
CREATE TABLE `ims_ewei_shop_system_guestbook`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `clientip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_link
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_link`;
CREATE TABLE `ims_ewei_shop_system_link`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT NULL,
  `status` tinyint(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_plugingrant_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_plugingrant_adv`;
CREATE TABLE `ims_ewei_shop_system_plugingrant_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_plugingrant_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_plugingrant_log`;
CREATE TABLE `ims_ewei_shop_system_plugingrant_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logno` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `pluginid` int(11) NOT NULL DEFAULT 0,
  `identity` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `month` int(10) NOT NULL DEFAULT 0,
  `permendtime` int(10) NOT NULL DEFAULT 0,
  `permlasttime` int(10) NOT NULL DEFAULT 0,
  `isperm` tinyint(3) NOT NULL DEFAULT 0,
  `createtime` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_plugingrant_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_plugingrant_order`;
CREATE TABLE `ims_ewei_shop_system_plugingrant_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logno` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pluginid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `month` int(11) NOT NULL DEFAULT 0,
  `createtime` int(10) NOT NULL DEFAULT 0,
  `paystatus` tinyint(3) NOT NULL DEFAULT 0,
  `paytime` int(10) NOT NULL DEFAULT 0,
  `paytype` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_plugingrant_package
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_plugingrant_package`;
CREATE TABLE `ims_ewei_shop_system_plugingrant_package`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pluginid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `rec` tinyint(3) NOT NULL DEFAULT 0,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_plugingrant_plugin
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_plugingrant_plugin`;
CREATE TABLE `ims_ewei_shop_system_plugingrant_plugin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pluginid` int(11) NOT NULL DEFAULT 0,
  `thumb` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sales` int(11) NOT NULL DEFAULT 0,
  `createtime` int(10) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  `plugintype` tinyint(3) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_plugingrant_setting
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_plugingrant_setting`;
CREATE TABLE `ims_ewei_shop_system_plugingrant_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `com` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `adv` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `plugin` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `customer` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `contact` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `servertime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `weixin` tinyint(3) NOT NULL DEFAULT 0,
  `appid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mchid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `apikey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `alipay` tinyint(3) NOT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `partner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `secret` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_setting
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_setting`;
CREATE TABLE `ims_ewei_shop_system_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NULL DEFAULT NULL,
  `background` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `casebanner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `contact` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_site
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_site`;
CREATE TABLE `ims_ewei_shop_system_site`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task`;
CREATE TABLE `ims_ewei_shop_task`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` int(11) NOT NULL,
  `starttime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `dotime` int(11) NOT NULL DEFAULT 0,
  `donetime` int(11) NOT NULL DEFAULT 0,
  `timelimit` float(11, 1) NOT NULL,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `explain` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `require_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reward_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `period` int(11) NOT NULL DEFAULT 0,
  `repeat` int(11) NOT NULL DEFAULT 0,
  `maxtimes` int(11) NOT NULL DEFAULT 0,
  `everyhours` float(11, 1) NOT NULL DEFAULT 0.0,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_adv`;
CREATE TABLE `ims_ewei_shop_task_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_default
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_default`;
CREATE TABLE `ims_ewei_shop_task_default`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `addtime` int(11) NOT NULL DEFAULT 0,
  `bgimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `open` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_extension
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_extension`;
CREATE TABLE `ims_ewei_shop_task_extension`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `taskclass` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `classify` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `classify_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `verb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_ewei_shop_task_extension
-- ----------------------------
INSERT INTO `ims_ewei_shop_task_extension` VALUES (1, '推荐人数', 'commission_member', 1, 'number', 'number', '推荐', '人');
INSERT INTO `ims_ewei_shop_task_extension` VALUES (2, '分销佣金', 'commission_money', 1, 'number', 'number', '达到', '元');
INSERT INTO `ims_ewei_shop_task_extension` VALUES (3, '分销订单', 'commission_order', 1, 'number', 'number', '达到', '笔');
INSERT INTO `ims_ewei_shop_task_extension` VALUES (4, '订单满额', 'cost_enough', 1, 'number', 'number', '满', '元');
INSERT INTO `ims_ewei_shop_task_extension` VALUES (5, '累计金额', 'cost_total', 1, 'number', 'number', '累计', '元');
INSERT INTO `ims_ewei_shop_task_extension` VALUES (6, '订单数量', 'cost_count', 1, 'number', 'number', '达到', '单');
INSERT INTO `ims_ewei_shop_task_extension` VALUES (7, '指定商品', 'cost_goods', 1, 'select', 'select', '购买指定商品', '件');
INSERT INTO `ims_ewei_shop_task_extension` VALUES (8, '商品评价', 'cost_comment', 1, 'number', 'number', '评价订单', '次');
INSERT INTO `ims_ewei_shop_task_extension` VALUES (9, '累计充值', 'cost_rechargetotal', 1, 'number', 'number', '达到', '元');
INSERT INTO `ims_ewei_shop_task_extension` VALUES (10, '充值满额', 'cost_rechargeenough', 1, 'number', 'number', '满', '元');
INSERT INTO `ims_ewei_shop_task_extension` VALUES (11, '完善信息', 'member_info', 1, 'boole', 'boole', '填写手机号', '');

-- ----------------------------
-- Table structure for ims_ewei_shop_task_extension_join
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_extension_join`;
CREATE TABLE `ims_ewei_shop_task_extension_join`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `require_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `progress_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reward_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `completetime` int(11) NOT NULL DEFAULT 0,
  `pickuptime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `dotime` int(11) NOT NULL DEFAULT 0,
  `rewarded` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_join
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_join`;
CREATE TABLE `ims_ewei_shop_task_join`  (
  `join_id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `join_user` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `task_id` int(11) NOT NULL DEFAULT 0,
  `task_type` tinyint(1) NOT NULL DEFAULT 0,
  `needcount` int(11) NOT NULL DEFAULT 0,
  `completecount` int(11) NOT NULL DEFAULT 0,
  `reward_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_reward` tinyint(1) NOT NULL DEFAULT 0,
  `failtime` int(11) NOT NULL DEFAULT 0,
  `addtime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`join_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_joiner
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_joiner`;
CREATE TABLE `ims_ewei_shop_task_joiner`  (
  `complete_id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `task_user` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `joiner_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `join_id` int(11) NOT NULL DEFAULT 0,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `task_type` tinyint(1) NOT NULL DEFAULT 0,
  `join_status` tinyint(1) NOT NULL DEFAULT 1,
  `addtime` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`complete_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_list
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_list`;
CREATE TABLE `ims_ewei_shop_task_list`  (
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `title` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `starttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `demand` int(11) NOT NULL DEFAULT 0,
  `requiregoods` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `picktype` tinyint(1) NOT NULL DEFAULT 0,
  `stop_type` tinyint(1) NOT NULL DEFAULT 0,
  `stop_limit` int(11) NOT NULL DEFAULT 0,
  `stop_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `stop_cycle` tinyint(1) NOT NULL DEFAULT 0,
  `repeat_type` tinyint(1) NOT NULL DEFAULT 0,
  `repeat_interval` int(11) NOT NULL DEFAULT 0,
  `repeat_cycle` tinyint(1) NOT NULL DEFAULT 0,
  `reward` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `followreward` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_limit` int(11) NOT NULL DEFAULT 0,
  `notice` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `design_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `design_bg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `native_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `native_data2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `native_data3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `reward2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `reward3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `level2` int(11) NOT NULL DEFAULT 0,
  `level3` int(11) NOT NULL DEFAULT 0,
  `member_group` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `auto_pick` tinyint(1) NULL DEFAULT 0,
  `keyword_pick` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_passive`(`picktype`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_log`;
CREATE TABLE `ims_ewei_shop_task_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `from_openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `join_id` int(11) NOT NULL DEFAULT 0,
  `taskid` int(11) NULL DEFAULT 0,
  `task_type` tinyint(1) NOT NULL DEFAULT 0,
  `subdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `recdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_poster
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_poster`;
CREATE TABLE `ims_ewei_shop_task_poster`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `days` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resptype` tinyint(1) NOT NULL DEFAULT 0,
  `resptext` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `resptitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `respthumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `respdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `respurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` int(11) NULL DEFAULT NULL,
  `waittext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `oktext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `scantext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `beagent` tinyint(1) NOT NULL DEFAULT 0,
  `bedown` tinyint(1) NOT NULL DEFAULT 0,
  `timestart` int(11) NULL DEFAULT NULL,
  `timeend` int(11) NULL DEFAULT NULL,
  `is_repeat` tinyint(1) NULL DEFAULT 0,
  `getposter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `starttext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `endtext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reward_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `needcount` int(11) NOT NULL DEFAULT 0,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `poster_type` tinyint(1) NULL DEFAULT 1,
  `reward_days` int(11) NULL DEFAULT 0,
  `titleicon` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `poster_banner` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_goods` tinyint(1) NULL DEFAULT 0,
  `autoposter` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_poster_qr
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_poster_qr`;
CREATE TABLE `ims_ewei_shop_task_poster_qr`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `posterid` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `sceneid` int(11) NOT NULL DEFAULT 0,
  `mediaid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ticket` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(11) NULL DEFAULT NULL,
  `qrimg` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expire` int(11) NULL DEFAULT NULL,
  `endtime` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_qr
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_qr`;
CREATE TABLE `ims_ewei_shop_task_qr`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `recordid` int(11) NOT NULL DEFAULT 0,
  `sceneid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mediaid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ticket` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `recordid`(`recordid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_record`;
CREATE TABLE `ims_ewei_shop_task_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `taskid` int(11) NOT NULL DEFAULT 0,
  `tasktitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `taskimage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tasktype` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `task_progress` int(11) NOT NULL DEFAULT 0,
  `task_demand` int(11) NOT NULL DEFAULT 0,
  `openid` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `picktime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `stoptime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `finishtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reward_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `followreward_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `design_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `design_bg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `require_goods` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `level1` int(11) NOT NULL DEFAULT 0,
  `reward_data1` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level2` int(11) NOT NULL DEFAULT 0,
  `reward_data2` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `member_group` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `auto_pick` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `taskid`(`taskid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_reward
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_reward`;
CREATE TABLE `ims_ewei_shop_task_reward`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `taskid` int(11) NOT NULL DEFAULT 0,
  `tasktitle` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tasktype` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `taskowner` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ownernickname` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `recordid` int(11) NOT NULL DEFAULT 0,
  `nickname` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `headimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `openid` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reward_type` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reward_title` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reward_data` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `get` tinyint(1) NOT NULL DEFAULT 0,
  `sent` tinyint(1) NOT NULL DEFAULT 0,
  `gettime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `senttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isjoiner` tinyint(1) NOT NULL DEFAULT 0,
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `level` tinyint(1) NOT NULL DEFAULT 0,
  `read` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `recordid`(`recordid`) USING BTREE,
  INDEX `taskid`(`taskid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_set
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_set`;
CREATE TABLE `ims_ewei_shop_task_set`  (
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `entrance` tinyint(1) NOT NULL DEFAULT 0,
  `keyword` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cover_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cover_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cover_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `msg_pick` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `msg_progress` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `msg_finish` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `msg_follow` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isnew` tinyint(1) NOT NULL DEFAULT 0,
  `bg_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '../addons/ewei_shopv2/plugin/task/static/images/sky.png',
  PRIMARY KEY (`uniacid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_ewei_shop_task_set
-- ----------------------------
INSERT INTO `ims_ewei_shop_task_set` VALUES (1, 0, '', '', '', '', '', '', '', '', 0, '../addons/ewei_shopv2/plugin/task/static/images/sky.png');

-- ----------------------------
-- Table structure for ims_ewei_shop_task_type
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_type`;
CREATE TABLE `ims_ewei_shop_task_type`  (
  `id` int(11) NOT NULL,
  `type_key` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type_name` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `description` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `verb` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `numeric` tinyint(1) NOT NULL DEFAULT 0,
  `unit` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `goods` tinyint(1) NOT NULL DEFAULT 0,
  `theme` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `once` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_verifygoods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_verifygoods`;
CREATE TABLE `ims_ewei_shop_verifygoods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderid` int(11) NULL DEFAULT NULL,
  `ordergoodsid` int(11) NULL DEFAULT NULL,
  `storeid` int(11) NULL DEFAULT NULL,
  `starttime` int(11) NULL DEFAULT NULL,
  `limitdays` int(11) NULL DEFAULT NULL,
  `limitnum` int(11) NULL DEFAULT NULL,
  `used` tinyint(1) NULL DEFAULT 0,
  `verifycode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `codeinvalidtime` int(11) NULL DEFAULT NULL,
  `invalid` tinyint(1) NULL DEFAULT 0,
  `getcard` tinyint(1) NULL DEFAULT 0,
  `activecard` tinyint(1) NULL DEFAULT 0,
  `cardcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `limittype` tinyint(1) NULL DEFAULT 0,
  `limitdate` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `verifycode`(`verifycode`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_verifygoods_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_verifygoods_log`;
CREATE TABLE `ims_ewei_shop_verifygoods_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `verifygoodsid` int(11) NULL DEFAULT NULL,
  `salerid` int(11) NULL DEFAULT NULL,
  `storeid` int(11) NULL DEFAULT NULL,
  `verifynum` int(11) NULL DEFAULT NULL,
  `verifydate` int(11) NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_version
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_version`;
CREATE TABLE `ims_ewei_shop_version`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `uniacid` int(11) NOT NULL,
  `version` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uid`(`uid`) USING BTREE,
  INDEX `idx_version`(`version`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of ims_ewei_shop_version
-- ----------------------------
INSERT INTO `ims_ewei_shop_version` VALUES (2, 1, 0, 0, 1);

-- ----------------------------
-- Table structure for ims_ewei_shop_virtual_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_virtual_category`;
CREATE TABLE `ims_ewei_shop_virtual_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_virtual_data
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_virtual_data`;
CREATE TABLE `ims_ewei_shop_virtual_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `typeid` int(11) NOT NULL DEFAULT 0,
  `pvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `fields` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `usetime` int(11) NOT NULL DEFAULT 0,
  `orderid` int(11) NULL DEFAULT 0,
  `ordersn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `price` decimal(10, 2) NULL DEFAULT 0.00,
  `merchid` int(11) NULL DEFAULT 0,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_typeid`(`typeid`) USING BTREE,
  INDEX `idx_usetime`(`usetime`) USING BTREE,
  INDEX `idx_orderid`(`orderid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1001 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_virtual_type
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_virtual_type`;
CREATE TABLE `ims_ewei_shop_virtual_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `cate` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fields` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usedata` int(11) NOT NULL DEFAULT 0,
  `alldata` int(11) NOT NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `linktext` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recycled` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_cate`(`cate`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_wxapp_bind
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_wxapp_bind`;
CREATE TABLE `ims_ewei_shop_wxapp_bind`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `wxapp` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_wxapp`(`wxapp`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_wxapp_page
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_wxapp_page`;
CREATE TABLE `ims_ewei_shop_wxapp_page`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(2) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NOT NULL DEFAULT 0,
  `lasttime` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `isdefault` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_isdefault`(`isdefault`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_wxapp_poster
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_wxapp_poster`;
CREATE TABLE `ims_ewei_shop_wxapp_poster`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bgimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NOT NULL DEFAULT 0,
  `lastedittime` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_wxapp_startadv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_wxapp_startadv`;
CREATE TABLE `ims_ewei_shop_wxapp_startadv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NOT NULL DEFAULT 0,
  `lastedittime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_wxapp_tmessage
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_wxapp_tmessage`;
CREATE TABLE `ims_ewei_shop_wxapp_tmessage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `templateid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `datas` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `emphasis_keyword` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_wxcard
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_wxcard`;
CREATE TABLE `ims_ewei_shop_wxcard`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `card_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `displayorder` int(11) NULL DEFAULT NULL,
  `catid` int(11) NULL DEFAULT NULL,
  `card_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logo_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wxlogourl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `brand_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `notice` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `service_phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `datetype` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `begin_timestamp` int(11) NULL DEFAULT NULL,
  `end_timestamp` int(11) NULL DEFAULT NULL,
  `fixed_term` int(11) NULL DEFAULT NULL,
  `fixed_begin_term` int(11) NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `total_quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `use_limit` int(11) NULL DEFAULT NULL,
  `get_limit` int(11) NULL DEFAULT NULL,
  `use_custom_code` tinyint(1) NULL DEFAULT NULL,
  `bind_openid` tinyint(1) NULL DEFAULT NULL,
  `can_share` tinyint(1) NULL DEFAULT NULL,
  `can_give_friend` tinyint(1) NULL DEFAULT NULL,
  `center_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `center_sub_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `center_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `setcustom` tinyint(1) NULL DEFAULT NULL,
  `custom_url_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `custom_url_sub_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `custom_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `setpromotion` tinyint(1) NULL DEFAULT NULL,
  `promotion_url_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `promotion_url_sub_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `promotion_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `can_use_with_other_discount` tinyint(1) NULL DEFAULT NULL,
  `setabstract` tinyint(1) NULL DEFAULT NULL,
  `abstract` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `abstractimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon_url_list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `accept_category` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reject_category` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `least_cost` decimal(10, 2) NULL DEFAULT NULL,
  `reduce_cost` decimal(10, 2) NULL DEFAULT NULL,
  `discount` decimal(10, 2) NULL DEFAULT NULL,
  `limitgoodtype` tinyint(1) NULL DEFAULT 0,
  `limitgoodcatetype` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `limitgoodcateids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `limitgoodids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `limitdiscounttype` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `gettype` tinyint(3) NULL DEFAULT NULL,
  `islimitlevel` tinyint(1) NULL DEFAULT 0,
  `limitmemberlevels` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `limitagentlevels` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `limitpartnerlevels` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `limitaagentlevels` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `settitlecolor` tinyint(1) NULL DEFAULT 0,
  `titlecolor` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `tagtitle` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `use_condition` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
