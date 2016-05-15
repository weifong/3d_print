/*
Navicat MySQL Data Transfer

Source Server         : 3dprint
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : 3dtest

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-05-15 23:20:20
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attention
-- ----------------------------
INSERT INTO `attention` VALUES ('5', '20', '1', '1');
INSERT INTO `attention` VALUES ('6', '20', '4', '1');
INSERT INTO `attention` VALUES ('7', '21', '2', '1');
INSERT INTO `attention` VALUES ('8', '15', '1', '0');
INSERT INTO `attention` VALUES ('9', '15', '3', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '8', '20', '这个作品设计得非常漂亮，很喜欢哦', '2016年05月07日_15时58分55秒');
INSERT INTO `comment` VALUES ('11', '11', '21', '我是张一展', '2016年05月08日_21时23分09秒');
INSERT INTO `comment` VALUES ('12', '11', '21', '我喜欢这个模型', '2016年05月08日_21时23分23秒');
INSERT INTO `comment` VALUES ('13', '8', '20', '你好', '2016年05月07日_15时58分55秒');
INSERT INTO `comment` VALUES ('14', '9', '15', '这个灯设计得不错', '2016年05月13日_19时23分24秒');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of model
-- ----------------------------
INSERT INTO `model` VALUES ('8', '1', '第1个模型', '这是我设计的第一个模型，喜欢大家喜欢', '/3durl/1.jpg', 'modelimages/1.jpg', '64', '11', '灯饰家具', '22', '100', '4562', '塑料型号1', null, null, null, null, null);
INSERT INTO `model` VALUES ('9', '1', '第2个模型', '这是我设计的第一个模型，喜欢大家喜欢', '/3durl/2.jpg', 'modelimages/2.jpg', '49', '19', '灯饰家具', '20', '180', '213', '塑料型号2', null, null, null, null, null);
INSERT INTO `model` VALUES ('10', '1', '第3个模型', '这是我设计的第一个模型，喜欢大家喜欢', '/3durl/3.jpg', 'modelimages/3.jpg', '28', '19', '灯饰家具', '26', '150', '1234', '塑料型号3', null, null, null, null, null);
INSERT INTO `model` VALUES ('11', '1', '第4个模型', '这是我设计的第一个模型，喜欢大家喜欢', '/3durl/4.jpg', 'modelimages/4.jpg', '28', '14', '灯饰家具', '19', '190', '4311', '塑料型号5', null, null, null, null, null);
INSERT INTO `model` VALUES ('16', '1', '单车骨架', '爱上了款到即发蓝山咖啡', 'stlmodel/15_1463324934149_shaonv.stl', 'modelimages/15_1463324934151_2013-02-08_11-08-43_867.jpg', '2', '1', '灯饰家具', '3', null, '234', '不锈钢', 'modelimages/15_1463324934161_2013-02-08_16-36-40_46.jpg', 'modelimages/15_1463324934185_2013-02-08_16-36-19_788.jpg', 'modelimages/15_1463324934193_2013-02-08_16-36-50_851.jpg', 'modelimages/15_1463324934198_2013-02-09_18-35-50_110.jpg', '2016年05月15日_23时08分54秒');

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
INSERT INTO `userinfo` VALUES ('20', 'yonghu', '666666', '54634243455', '广西大学', '男', '5646513546@qq.com', '个人用户', null);
INSERT INTO `userinfo` VALUES ('21', '用户', '666666', '87965262361', '广西大学', '男', '4646518644@qq.com', '个人用户', null);
INSERT INTO `userinfo` VALUES ('22', 'lzl', '666666', '184453121', '广西大学计算机与电子信息学院', '男', '454998386@qq.com', '个人用户', 'upload/userinfoImg/1463207673048_7.jpg');
INSERT INTO `userinfo` VALUES ('23', 'dd', '666666', '16165113212', '广西大学狗洞', '女', '454998386@qq.com', '个人用户', 'upload/userinfoImg/1463208869820_2013-03-17_11-04-44_950.jpg');
INSERT INTO `userinfo` VALUES ('24', 'dang', '666666', '23535345345', '广西大学专家楼', '女', '3453534@163.com', '个人用户', 'upload/userinfoImg/1463209071437_2.jpg');
INSERT INTO `userinfo` VALUES ('25', 'zyz', '666666', '67888678678', '骞胯タ澶у', '濂�', '464654@qq.com', '个人用户', 'upload/userinfoImg/1463215705822_800 (5).jpg');
