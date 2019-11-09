/*
Navicat MySQL Data Transfer

Source Server         : LAST
Source Server Version : 50020
Source Host           : 127.0.0.1:3306
Source Database       : last

Target Server Type    : MYSQL
Target Server Version : 50020
File Encoding         : 65001

Date: 2019-11-09 21:15:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `aId` int(11) NOT NULL auto_increment,
  `aName` varchar(255) NOT NULL,
  `aAddress` varchar(255) NOT NULL,
  `aPhone` varchar(20) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY  (`aId`),
  KEY `userId` (`userId`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('19', '单威', '湖南生物机电', '15886378878', '1');
INSERT INTO `address` VALUES ('20', '收货人', '湖南生物机电', '123', '2');
INSERT INTO `address` VALUES ('21', '单威', '湖南生物机电', '15886378878', '2');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goodsId` int(11) NOT NULL auto_increment,
  `gImg` varchar(255) default NULL,
  `gImg2` varchar(255) default NULL,
  `gImg3` varchar(255) default NULL,
  `gImg4` varchar(255) default NULL,
  `gName` varchar(100) default NULL,
  `gPrice` double(10,2) default NULL,
  `gRebate` double default NULL,
  `gType` int(11) default NULL,
  `gDetailsTest` varchar(255) default NULL,
  `gDetailsImg` varchar(255) default NULL,
  `gDetailsImg2` varchar(255) default NULL,
  `gState` char(255) default '0',
  `gXiaoLian` int(11) default NULL,
  `gTime` varchar(255) default NULL,
  PRIMARY KEY  (`goodsId`),
  KEY `gType` (`gType`),
  CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`gType`) REFERENCES `goodstype` (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'http://localhost:8080/bom/img/u=142236202,3772764616&fm=26&gp=0.jpg', 'image/product4.png', 'image/product4.png', 'image/chanping.png', 'Aptamil奶粉', '130.50', '1', '5', '优质奶粉', 'image/product4.png', 'image/xiangxi.png', '0', '5', '2019-10-29');
INSERT INTO `goods` VALUES ('2', 'http://localhost:8080/bom/img/3c6d55fbb2fb431654f1b6db25a4462308f7d3a1.jpg', 'image/product4.png', 'image/product4.png', 'image/product4.png', '奶粉', '50.00', '0.5', '1', '对宝宝超级有营养的奶粉', 'image/product4.png', 'image/product4.png', '1', '4', '2019-10-28');
INSERT INTO `goods` VALUES ('3', 'http://localhost:8080/bom/img/timg (6).jpg', 'image/product4.png', 'image/product4.png', 'image/product4.png', '奶粉粉', '10.00', '0.8', '5', '就是一般的奶粉', 'image/product4.png', 'image/product4.png', '0', '12', '2019-10-28');
INSERT INTO `goods` VALUES ('4', 'http://localhost:8080/bom/img/timg (1).jpg', 'image/product4.png', 'image/product4.png', 'image/product4.png', '奶粉粉粉', '30.00', '0.1', '5', '奶粉哟', 'image/product4.png', 'image/product4.png', '0', '4', '2019-10-28');
INSERT INTO `goods` VALUES ('5', 'http://localhost:8080/bom/img/timg (17).jpg', 'image/product4.png', 'image/product4.png', 'image/product4.png', '测试', '20.00', '1', '5', '123', 'image/product4.png', 'image/product4.png', '3', '200', '2019-10-02');
INSERT INTO `goods` VALUES ('6', 'http://localhost:8080/bom/img/mmexport1520138375557.jpg', 'http://localhost:8080/bom/img/mmexport1520138375557.jpg', 'http://localhost:8080/bom/img/mmexport1520138375557.jpg', 'http://localhost:8080/bom/img/mmexport1520138375557.jpg', 'ce-1', '1200.00', '0.9', '2', '呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃', null, null, '3', '23', '2019-10-28');
INSERT INTO `goods` VALUES ('8', 'http://localhost:8080/bom/img/92924744.jpeg', 'http://localhost:8080/bom/img/mmexport1520138375557.jpg', 'http://localhost:8080/bom/img/mmexport1520138375557.jpg', 'http://localhost:8080/bom/img/mmexport1520138375557.jpg', 'ce-2', '100.00', '0.9', '3', '钱钱钱钱钱钱钱钱钱钱钱钱钱钱钱钱钱钱钱', null, null, '3', '3', '2019-10-28');
INSERT INTO `goods` VALUES ('9', 'http://localhost:8080/bom/img/u=142236202,3772764616&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=142236202,3772764616&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=142236202,3772764616&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=142236202,3772764616&fm=26&gp=0.jpg', '宝宝洗护用品-1', '200.00', '0.9', '1', '宝宝洗护真的对宝宝超级好的', null, null, '0', '41', '2019-10-29');
INSERT INTO `goods` VALUES ('10', 'http://localhost:8080/bom/img/u=3900337341,3717957352&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=3900337341,3717957352&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=3900337341,3717957352&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=3900337341,3717957352&fm=26&gp=0.jpg', '宝宝洗护-2', '1200.00', '0.9', '1', '宝宝洗护全套洗护用品哦 超级棒', null, null, '0', '58', '2019-10-29');
INSERT INTO `goods` VALUES ('11', 'http://localhost:8080/bom/img/u=2751430779,1383649589&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=2751430779,1383649589&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=2751430779,1383649589&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=2751430779,1383649589&fm=26&gp=0.jpg', '宝宝洗护-3', '300.00', '0.8', '1', '宝宝的贴身卫士哦 真的超级好的', null, null, '0', '62', '2019-10-29');
INSERT INTO `goods` VALUES ('12', 'http://localhost:8080/bom/img/u=2078541187,3391967282&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=2078541187,3391967282&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=2078541187,3391967282&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=2078541187,3391967282&fm=26&gp=0.jpg', '宝宝洗护-4', '300.00', '0.9', '1', '又是宝宝洗护哦哦哦哦哦哦', null, null, '0', '21', '2019-10-29');
INSERT INTO `goods` VALUES ('13', 'http://localhost:8080/bom/img/u=3089964499,1609322597&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=3089964499,1609322597&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=3089964499,1609322597&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=3089964499,1609322597&fm=26&gp=0.jpg', '宝宝玩具-1', '1200.00', '0.9', '2', '这二款宝宝玩具真的惊为天人啊', null, null, '0', '4', '2019-10-29');
INSERT INTO `goods` VALUES ('14', 'http://localhost:8080/bom/img/u=2148151472,2487677309&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=2148151472,2487677309&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=2148151472,2487677309&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=2148151472,2487677309&fm=26&gp=0.jpg', '宝宝玩具-2', '500.00', '0.9', '2', '进味太浓了的设计啊 太棒了', null, null, '0', '3', '2019-10-29');
INSERT INTO `goods` VALUES ('15', 'http://localhost:8080/bom/img/u=1821672603,4286956565&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=1821672603,4286956565&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=1821672603,4286956565&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=1821672603,4286956565&fm=26&gp=0.jpg', '宝宝玩具-4', '600.00', '0.9', '2', '宝宝们最爱的毛绒玩具 好好玩啊\n', null, null, '0', '37', '2019-10-29');
INSERT INTO `goods` VALUES ('16', 'http://localhost:8080/bom/img/u=2914261097,822983950&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=2914261097,822983950&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=2914261097,822983950&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=2914261097,822983950&fm=26&gp=0.jpg', '宝宝玩具-5', '100.00', '0.9', '2', '宝宝们的 益智玩具哦 ', null, null, '0', '5', '2019-10-29');
INSERT INTO `goods` VALUES ('17', 'http://localhost:8080/bom/img/u=938395676,1003177762&fm=72.jpg', 'http://localhost:8080/bom/img/u=938395676,1003177762&fm=72.jpg', 'http://localhost:8080/bom/img/u=938395676,1003177762&fm=72.jpg', 'http://localhost:8080/bom/img/u=938395676,1003177762&fm=72.jpg', '童床-1', '2000.00', '0.9', '3', '设计完美哦 真的很适合宝宝哦', null, null, '0', '5', '2019-10-29');
INSERT INTO `goods` VALUES ('18', 'http://localhost:8080/bom/img/u=3292027876,1096203968&fm=72.jpg', 'http://localhost:8080/bom/img/u=3292027876,1096203968&fm=72.jpg', 'http://localhost:8080/bom/img/u=3292027876,1096203968&fm=72.jpg', 'http://localhost:8080/bom/img/u=3292027876,1096203968&fm=72.jpg', '童床-2', '1500.00', '0.9', '3', '设计完美哦 真的很适合宝宝哦', null, null, '0', '54', '2019-10-29');
INSERT INTO `goods` VALUES ('19', 'http://localhost:8080/bom/img/u=4061116781,2777452717&fm=26&gp=0.gif', 'http://localhost:8080/bom/img/u=4061116781,2777452717&fm=26&gp=0.gif', 'http://localhost:8080/bom/img/u=4061116781,2777452717&fm=26&gp=0.gif', 'http://localhost:8080/bom/img/u=4061116781,2777452717&fm=26&gp=0.gif', '童床-3', '4000.00', '0.9', '3', '设计完美哦 真的很适合宝宝哦', null, null, '0', '24', '2019-10-29');
INSERT INTO `goods` VALUES ('20', 'http://localhost:8080/bom/img/u=4265136822,835951919&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=4265136822,835951919&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=4265136822,835951919&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=4265136822,835951919&fm=26&gp=0.jpg', '童床-4', '3500.00', '0.9', '3', '设计完美哦 真的很适合宝宝哦', null, null, '0', '5', '2019-10-29');
INSERT INTO `goods` VALUES ('21', 'http://localhost:8080/bom/img/u=2181407673,3311592016&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=2181407673,3311592016&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=2181407673,3311592016&fm=26&gp=0.jpg', 'http://localhost:8080/bom/img/u=2181407673,3311592016&fm=26&gp=0.jpg', '尿裤湿巾-1', '300.00', '0.9', '4', '设计完美哦 真的很适合宝宝哦', null, null, '0', '5', '2019-10-29');
INSERT INTO `goods` VALUES ('22', 'http://localhost:8080/bom/img/download.jpg', 'http://localhost:8080/bom/img/download.jpg', 'http://localhost:8080/bom/img/download.jpg', 'http://localhost:8080/bom/img/download.jpg', '尿裤湿巾-2', '300.00', '0.9', '4', '设计完美哦 真的很适合宝宝哦', null, null, '0', '5', '2019-10-29');
INSERT INTO `goods` VALUES ('23', 'http://localhost:8080/bom/img/u=4074002157,4098826493&fm=15&gp=0.jpg', 'http://localhost:8080/bom/img/u=4074002157,4098826493&fm=15&gp=0.jpg', 'http://localhost:8080/bom/img/u=4074002157,4098826493&fm=15&gp=0.jpg', 'http://localhost:8080/bom/img/u=4074002157,4098826493&fm=15&gp=0.jpg', '尿裤湿巾-3', '250.00', '0.9', '4', '设计完美哦 真的很适合宝宝哦', null, null, '0', '6', '2019-10-29');
INSERT INTO `goods` VALUES ('24', 'http://localhost:8080/bom/img/u=3955046762,2833927487&fm=15&gp=0.jpg', 'http://localhost:8080/bom/img/u=3955046762,2833927487&fm=15&gp=0.jpg', 'http://localhost:8080/bom/img/u=3955046762,2833927487&fm=15&gp=0.jpg', 'http://localhost:8080/bom/img/u=3955046762,2833927487&fm=15&gp=0.jpg', '尿裤湿巾-4', '300.00', '0.9', '4', '设计完美哦 真的很适合宝宝哦', null, null, '0', '6', '2019-10-29');
INSERT INTO `goods` VALUES ('25', 'http://localhost:8080/bom/img/u=3487794906,3232356298&fm=26&gp=0.jpg', null, null, null, '宝宝玩具-8', '300.00', '0.6', '2', '哈哈哈哈哈哈哈哈哈哈哈哈哈', null, null, '0', null, '2019-10-29');

-- ----------------------------
-- Table structure for goodstype
-- ----------------------------
DROP TABLE IF EXISTS `goodstype`;
CREATE TABLE `goodstype` (
  `typeId` int(11) NOT NULL auto_increment,
  `typeName` varchar(255) default NULL,
  PRIMARY KEY  (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodstype
-- ----------------------------
INSERT INTO `goodstype` VALUES ('1', '宝宝洗护');
INSERT INTO `goodstype` VALUES ('2', '宝宝玩具');
INSERT INTO `goodstype` VALUES ('3', '童床');
INSERT INTO `goodstype` VALUES ('4', '尿裤湿巾');
INSERT INTO `goodstype` VALUES ('5', '奶粉');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `oId` int(11) NOT NULL auto_increment,
  `oNum` varchar(255) NOT NULL,
  `aId` int(11) default NULL,
  `cId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `otime` varchar(255) default NULL,
  `ostate` int(11) default NULL,
  PRIMARY KEY  (`oId`),
  KEY `cId` (`cId`),
  KEY `userId` (`userId`),
  KEY `aId` (`aId`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`cId`) REFERENCES `shopcart` (`cId`),
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`),
  CONSTRAINT `order_ibfk_3` FOREIGN KEY (`aId`) REFERENCES `address` (`aId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('27', 'f0a60c477df44e7fbf624f1880f15540', '19', '6', '1', '2019-10-23', '0');
INSERT INTO `order` VALUES ('28', 'f0a60c477df44e7fbf624f1880f15541', '19', '7', '1', '2019-10-26', '1');
INSERT INTO `order` VALUES ('29', '2342229fb977405db2dc7f1b408bf56d', '20', '10', '2', '2019-10-29', '0');
INSERT INTO `order` VALUES ('30', '2342229fb977405db2dc7f1b408bf56d', '20', '10', '2', '2019-10-29', '2');
INSERT INTO `order` VALUES ('31', 'a8a15525a6eb42b3b4bcf620bda6b7af', '21', '12', '2', '2019-10-29', '0');
INSERT INTO `order` VALUES ('32', '5ea6724fa3a242eca98e90c3271e3c42', '20', '15', '2', '2019-10-29', '0');

-- ----------------------------
-- Table structure for shopcart
-- ----------------------------
DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart` (
  `cId` int(11) NOT NULL auto_increment,
  `goodsId` int(11) NOT NULL,
  `cNum` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `cState` char(11) default '0',
  PRIMARY KEY  (`cId`),
  KEY `goodsId` (`goodsId`),
  KEY `userId` (`userId`),
  CONSTRAINT `shopcart_ibfk_1` FOREIGN KEY (`goodsId`) REFERENCES `goods` (`goodsId`),
  CONSTRAINT `shopcart_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 10240 kB; (`aId`) REFER `last/address`(`aId`); ';

-- ----------------------------
-- Records of shopcart
-- ----------------------------
INSERT INTO `shopcart` VALUES ('6', '1', '5', '1', '1');
INSERT INTO `shopcart` VALUES ('7', '3', '10', '1', '1');
INSERT INTO `shopcart` VALUES ('8', '2', '3', '1', '0');
INSERT INTO `shopcart` VALUES ('9', '3', '1', '1', '0');
INSERT INTO `shopcart` VALUES ('10', '3', '1', '2', '1');
INSERT INTO `shopcart` VALUES ('11', '2', '4', '2', '0');
INSERT INTO `shopcart` VALUES ('12', '10', '3', '2', '1');
INSERT INTO `shopcart` VALUES ('15', '15', '3', '2', '1');
INSERT INTO `shopcart` VALUES ('16', '14', '2', '2', '0');
INSERT INTO `shopcart` VALUES ('17', '4', '2', '2', '0');
INSERT INTO `shopcart` VALUES ('18', '19', '1', '2', '0');
INSERT INTO `shopcart` VALUES ('19', '13', '2', '2', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL auto_increment,
  `lName` varchar(50) NOT NULL,
  `lPwd` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `headImg` varchar(50) default '',
  `sex` char(255) default NULL,
  `age` int(11) default NULL,
  `phone` varchar(15) NOT NULL,
  `flag` int(2) default NULL,
  `uTime` varchar(255) default NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1293332462', '123456', '白衬衬衫', 'http://localhost:8080/bom/img/timg (17).jpg', '1', '20', '123', '1', '2019-10-27');
INSERT INTO `user` VALUES ('2', '001', '001', '测试一号', 'http://localhost:8080/bom/img/timg (17).jpg', '\0', '0', '13077316318', '4', '2019-10-27');
INSERT INTO `user` VALUES ('3', '002', '002', '测试二号', 'http://localhost:8080/bom/img/timg (17).jpg', '\0', '0', '123', '4', '2019-10-27');
INSERT INTO `user` VALUES ('4', '18230565770', '123456', 'cdk', 'http://localhost:8080/bom/img/timg (17).jpg', '\0', '0', '18230565770', '3', '2019-10-27');
INSERT INTO `user` VALUES ('5', 'cdk', '123', '陈代刊', 'http://localhost:8080/bom/img/timg (17).jpg', null, null, '123', '2', '2019-10-22');
