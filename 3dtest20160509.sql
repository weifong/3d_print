/*
Navicat MySQL Data Transfer

Source Server         : 3dprint
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : 3dtest

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-05-19 23:50:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for attention
-- ----------------------------
DROP TABLE IF EXISTS `attention`;
CREATE TABLE `attention` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `designerid` int(11) DEFAULT NULL,
  `result` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attention
-- ----------------------------
INSERT INTO `attention` VALUES ('5', '20', '1', '1');
INSERT INTO `attention` VALUES ('6', '20', '4', '1');
INSERT INTO `attention` VALUES ('7', '21', '2', '1');
INSERT INTO `attention` VALUES ('8', '15', '1', '0');
INSERT INTO `attention` VALUES ('9', '15', '3', '1');
INSERT INTO `attention` VALUES ('10', '23', '1', '0');
INSERT INTO `attention` VALUES ('11', '25', '1', '0');
INSERT INTO `attention` VALUES ('12', '24', '1', '0');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modelid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `info` varchar(256) DEFAULT NULL,
  `time` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '8', '20', '这个作品设计得非常漂亮，很喜欢哦', '2016年05月07日_15时58分55秒');
INSERT INTO `comment` VALUES ('11', '11', '21', '我是张一展', '2016年05月08日_21时23分09秒');
INSERT INTO `comment` VALUES ('12', '11', '21', '我喜欢这个模型', '2016年05月08日_21时23分23秒');
INSERT INTO `comment` VALUES ('13', '8', '20', '你好', '2016年05月07日_15时58分55秒');
INSERT INTO `comment` VALUES ('14', '9', '15', '这个灯设计得不错', '2016年05月13日_19时23分24秒');
INSERT INTO `comment` VALUES ('15', '8', '23', 'dfhyhhh', '2016年05月17日_23时27分39秒');
INSERT INTO `comment` VALUES ('16', '9', '20', 'zxcv dfgd sgsdfg', '2016年05月18日_00时17分22秒');
INSERT INTO `comment` VALUES ('17', '8', '20', '新东方V', '2016年05月18日_00时18分04秒');
INSERT INTO `comment` VALUES ('18', '8', '15', '啊速度发发送发顺丰的 ', '2016年05月18日_00时19分27秒');
INSERT INTO `comment` VALUES ('19', '8', '25', 'z', '2016年05月18日_09时03分44秒');
INSERT INTO `comment` VALUES ('20', '8', '25', 'zhen', '2016年05月18日_09时59分56秒');
INSERT INTO `comment` VALUES ('21', '8', '25', '制作好', '2016年05月18日_10时22分17秒');
INSERT INTO `comment` VALUES ('22', '8', '25', '真棒！', '2016年05月18日_10时29分59秒');
INSERT INTO `comment` VALUES ('23', '8', '24', '真好！', '2016年05月18日_10时44分03秒');
INSERT INTO `comment` VALUES ('24', '8', '25', '好极了\r\n', '2016年05月18日_10时58分34秒');

-- ----------------------------
-- Table structure for designer
-- ----------------------------
DROP TABLE IF EXISTS `designer`;
CREATE TABLE `designer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `fanscount` int(11) DEFAULT NULL,
  `modelcount` int(11) DEFAULT NULL,
  `attentioncount` int(11) DEFAULT NULL,
  `showlogo` varchar(256) DEFAULT NULL,
  `integral` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of designer
-- ----------------------------
INSERT INTO `designer` VALUES ('1', '15', '12', '12', '12', 'designerimg/1.jpg', '12');
INSERT INTO `designer` VALUES ('2', '16', '23', '23', '23', 'designerimg/2.jpg', '32');
INSERT INTO `designer` VALUES ('3', '17', '53', '23', '54', 'designerimg/3.jpg', '212');
INSERT INTO `designer` VALUES ('4', '18', '34', '67', '23', 'designerimg/4.jpg', '43');
INSERT INTO `designer` VALUES ('5', '19', '12', '5', '4', 'designerimg/5.jpg', '65');

-- ----------------------------
-- Table structure for joiner
-- ----------------------------
DROP TABLE IF EXISTS `joiner`;
CREATE TABLE `joiner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `identitycard` varchar(255) DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `companyaddress` varchar(255) DEFAULT NULL,
  `jointime` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joiner
-- ----------------------------
INSERT INTO `joiner` VALUES ('1', '15', 'JoinerImg/15_1463494638406_2013-02-08_16-36-50_851.jpg', 'JoinerImg/15_1463494638412_2013-02-08_16-36-40_46.jpg', 'JoinerImg/15_1463494638417_2013-02-08_16-36-50_851.jpg', 'JoinerImg/15_1463494638422_2013-02-08_11-09-59_605.jpg', '广西大学', '2016年05月17日_22时17分18秒');
INSERT INTO `joiner` VALUES ('2', '20', 'JoinerImg/20_1463495475946_2013-02-08_16-36-40_46.jpg', 'JoinerImg/20_1463495475952_2013-02-08_16-36-50_851.jpg', 'JoinerImg/20_1463495475957_2013-02-08_17-23-59_484.jpg', 'JoinerImg/20_1463495475962_2013-02-08_16-36-33_141.jpg', '广西大学哈达是否了解', '2016年05月17日_22时31分15秒');
INSERT INTO `joiner` VALUES ('3', '22', 'JoinerImg/22_1463497704280_2013-02-08_16-36-40_46.jpg', 'JoinerImg/22_1463497704285_2013-02-08_16-36-50_851.jpg', 'JoinerImg/22_1463497704291_2013-02-08_16-36-33_141.jpg', 'JoinerImg/22_1463497704309_2013-02-08_11-09-59_605.jpg', 'weg', '2016年05月17日_23时08分24秒');
INSERT INTO `joiner` VALUES ('4', '21', 'JoinerImg/21_1463498244304_2013-02-08_16-36-33_141.jpg', 'JoinerImg/21_1463498244310_2013-02-08_16-36-33_141.jpg', 'JoinerImg/21_1463498244315_2013-02-08_16-36-33_141.jpg', 'JoinerImg/21_1463498244321_2013-02-08_16-36-33_141.jpg', '付款，', '2016年05月17日_23时17分24秒');
INSERT INTO `joiner` VALUES ('5', '23', 'JoinerImg/23_1463499218891_2013-02-08_16-36-40_46.jpg', 'JoinerImg/23_1463499218896_2013-02-08_16-36-40_46.jpg', 'JoinerImg/23_1463499218916_2013-02-08_16-36-40_46.jpg', 'JoinerImg/23_1463499218922_2013-02-08_16-36-40_46.jpg', 'l;,;', '2016年05月17日_23时33分38秒');
INSERT INTO `joiner` VALUES ('10', '25', 'JoinerImg/25_1463540516327_QQ图片20151227125052.jpg', 'JoinerImg/25_1463540516331_QQ图片20151227125052.jpg', 'JoinerImg/25_1463540516336_QQ图片20151227125052.jpg', 'JoinerImg/25_1463540516341_QQ图片20151227125052.jpg', '哈哈哈', '2016年05月18日_11时01分56秒');

-- ----------------------------
-- Table structure for letter
-- ----------------------------
DROP TABLE IF EXISTS `letter`;
CREATE TABLE `letter` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `from_id` int(4) NOT NULL,
  `dest_id` int(4) NOT NULL,
  `info` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of letter
-- ----------------------------

-- ----------------------------
-- Table structure for model
-- ----------------------------
DROP TABLE IF EXISTS `model`;
CREATE TABLE `model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designerid` int(11) NOT NULL,
  `model_name` varchar(20) NOT NULL,
  `describe` varchar(256) DEFAULT NULL,
  `3d_url` varchar(256) DEFAULT NULL,
  `3dImage_url` varchar(256) DEFAULT NULL,
  `browse_count` int(11) DEFAULT NULL,
  `download_count` int(11) DEFAULT NULL,
  `model_type` varchar(20) DEFAULT NULL,
  `approver_count` int(4) DEFAULT NULL,
  `sell_count` int(4) DEFAULT NULL,
  `size` double DEFAULT NULL,
  `suite_type` varchar(256) DEFAULT NULL,
  `smallimg1` varchar(256) DEFAULT NULL,
  `smallimg2` varchar(255) DEFAULT NULL,
  `smallimg3` varchar(255) DEFAULT NULL,
  `smallimg4` varchar(255) DEFAULT NULL,
  `uploadtime` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_designer` (`designerid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of model
-- ----------------------------
INSERT INTO `model` VALUES ('8', '1', '第1个模型', '这是我设计的第一个模型，喜欢大家喜欢', '/3durl/1.jpg', 'modelimages/1.jpg', '85', '23', '灯饰家具', '50', '100', '4562', '塑料型号1', null, null, null, null, null);
INSERT INTO `model` VALUES ('9', '1', '第2个模型', '这是我设计的第一个模型，喜欢大家喜欢', '/3durl/2.jpg', 'modelimages/2.jpg', '53', '23', '灯饰家具', '21', '180', '213', '塑料型号2', null, null, null, null, null);
INSERT INTO `model` VALUES ('10', '1', '第3个模型', '这是我设计的第一个模型，喜欢大家喜欢', '/3durl/3.jpg', 'modelimages/3.jpg', '29', '19', '灯饰家具', '27', '150', '1234', '塑料型号3', null, null, null, null, null);
INSERT INTO `model` VALUES ('11', '1', '第4个模型', '这是我设计的第一个模型，喜欢大家喜欢', '/3durl/4.jpg', 'modelimages/4.jpg', '28', '14', '灯饰家具', '19', '190', '4311', '塑料型号5', null, null, null, null, null);
INSERT INTO `model` VALUES ('19', '1', 'hellobike', '第二个单车骨架', 'stlmodel/15_1463671717000_bike_frame.stl', 'modelimages/15_1463671717023_bike (1).jpg', '2', null, '灯饰家具', null, null, '2342', '不锈钢', 'modelimages/15_1463671717028_bike (2).jpg', 'modelimages/15_1463671717032_bike (3).jpg', 'modelimages/15_1463671717037_bike (4).jpg', 'modelimages/15_1463671717044_bike (1).jpg', '2016年05月19日_23时28分37秒');

-- ----------------------------
-- Table structure for printorder
-- ----------------------------
DROP TABLE IF EXISTS `printorder`;
CREATE TABLE `printorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buyerid` int(11) NOT NULL,
  `shopid` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `singleprice` decimal(10,0) NOT NULL,
  `fromaddress` varchar(256) NOT NULL,
  `dstaddress` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of printorder
-- ----------------------------

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `sex` varchar(4) NOT NULL,
  `email` varchar(20) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `showlogo` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('15', '张一展', '666666', '18877153154', '广西大学', '女', '1353159782@qq.com', '设计师', null);
INSERT INTO `userinfo` VALUES ('16', 'Ding', '666666', '18877153154', '广西大学', '男', '1353159782@qq.com', '设计师', null);
INSERT INTO `userinfo` VALUES ('17', '微风', '666666', '18877153154', '广西大学', '男', '1353159782@qq.com', '设计师', null);
INSERT INTO `userinfo` VALUES ('18', '黄玲玲', '666666', '32131313212', '广西大学', '女', '1353159782@qq.com', '设计师', null);
INSERT INTO `userinfo` VALUES ('19', '包奇', '666666', '68785232125', '广西大学', '男', '1353159782@qq.com', '设计师', null);
INSERT INTO `userinfo` VALUES ('20', 'yonghu', '666666', '54634243455', '广西大学', '男', '5646513546@qq.com', '入驻商', null);
INSERT INTO `userinfo` VALUES ('21', '用户', '666666', '87965262361', '广西大学', '男', '4646518644@qq.com', '入驻商', null);
INSERT INTO `userinfo` VALUES ('22', 'lzl', '666666', '184453121', '广西大学计算机与电子信息学院', '男', '454998386@qq.com', '入驻商', 'upload/userinfoImg/1463207673048_7.jpg');
INSERT INTO `userinfo` VALUES ('23', 'dd', '666666', '16165113212', '广西大学狗洞', '女', '454998386@qq.com', '入驻商', 'upload/userinfoImg/1463208869820_2013-03-17_11-04-44_950.jpg');
INSERT INTO `userinfo` VALUES ('24', 'dang', '666666', '23535345345', '广西大学专家楼', '女', '3453534@163.com', '入驻商', 'upload/userinfoImg/1463209071437_2.jpg');
INSERT INTO `userinfo` VALUES ('25', 'zyz', '666666', '67888678678', '骞胯タ澶у', '濂�', '464654@qq.com', '入驻商', 'upload/userinfoImg/1463215705822_800 (5).jpg');
