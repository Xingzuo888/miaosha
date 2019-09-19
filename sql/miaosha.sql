/*
MySQL Backup
Source Server Version: 5.7.17
Source Database: miaosha
Date: 2019/9/19 15:31:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `item`
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT '0',
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales` int(11) NOT NULL DEFAULT '0',
  `img_url` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `item_stock`
-- ----------------------------
DROP TABLE IF EXISTS `item_stock`;
CREATE TABLE `item_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `order_info`
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `item_price` double NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `order_price` double NOT NULL DEFAULT '0',
  `promo_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `promo`
-- ----------------------------
DROP TABLE IF EXISTS `promo`;
CREATE TABLE `promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promo_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `promo_item_price` double NOT NULL DEFAULT '0',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `sequence_info`
-- ----------------------------
DROP TABLE IF EXISTS `sequence_info`;
CREATE TABLE `sequence_info` (
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `current_value` int(11) NOT NULL DEFAULT '0',
  `step` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` tinyint(4) NOT NULL DEFAULT '0' COMMENT '//1代表男性，2代表女性',
  `age` int(11) NOT NULL DEFAULT '0',
  `telphone` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `register_mode` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '//baphone,bywechat,byalipay',
  `third_party_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `telphone_unique_index` (`telphone`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `user_password`
-- ----------------------------
DROP TABLE IF EXISTS `user_password`;
CREATE TABLE `user_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrpt_password` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `item` VALUES ('1','iphone11','1562','最好用的苹果手机','103','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568795310284&di=eadb47af19be22b9559baf0c3f23af8f&imgtype=0&src=http%3A%2F%2Fpic2.58cdn.com.cn%2Fzhuanzh%2Fn_v2bbc34a3ca2394ee48313182168395c3c.jpg%3Fw%3D750%26h%3D0'), ('2','iphone9','1003','第二好用的苹果手机','90','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1568797454927&di=08923a14c0fc70727953433e5e841b47&imgtype=0&src=http%3A%2F%2Fr.sinaimg.cn%2Flarge%2Ftc%2Fp2_ifengimg_com%2F820bc07f783e5bc1ffbafb59d752e682.jpg');
INSERT INTO `item_stock` VALUES ('1','94','1'), ('2','198','2');
INSERT INTO `order_info` VALUES ('2019091800000000','5','1','0','1','0','0'), ('2019091800000100','5','1','1562','1','1562','0'), ('2019091800000200','5','1','1562','1','1562','0'), ('2019091800000300','5','2','1003','1','1003','0'), ('2019091800000400','5','1','1562','1','1562','0'), ('2019091800000500','5','1','1562','1','1562','0'), ('2019091800000600','5','1','1562','1','1562','0'), ('2019091900000700','5','2','100','1','100','1');
INSERT INTO `promo` VALUES ('1','iphone4抢购活动','2019-09-19 14:22:00','2','100','2019-09-21 00:00:00');
INSERT INTO `sequence_info` VALUES ('order_info','8','1');
INSERT INTO `user_info` VALUES ('1','第一个用户','1','30','13215565584','byphone',''), ('5','mi','1','31','13208180387','byphone','');
INSERT INTO `user_password` VALUES ('1','ddsakjggs','1'), ('4','ICy5YqxZB1uWSwcVLSNLcA==','5');
