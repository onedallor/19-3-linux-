/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:8888
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 23/12/2021 17:49:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for allprice
-- ----------------------------
DROP TABLE IF EXISTS `allprice`;
CREATE TABLE `allprice`  (
  `shopname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `inport` int(20) NULL DEFAULT NULL,
  `export` int(20) NULL DEFAULT NULL,
  `pprice` decimal(10, 2) NULL DEFAULT NULL,
  `monthprice` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`shopname`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of allprice
-- ----------------------------
INSERT INTO `allprice` VALUES ('斯柯达', 500, 150, 25.00, 3750.00);
INSERT INTO `allprice` VALUES ('田园犬', 400, 100, 25.00, 2500.00);

-- ----------------------------
-- Table structure for aymood
-- ----------------------------
DROP TABLE IF EXISTS `aymood`;
CREATE TABLE `aymood`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `praisenum` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publishtime` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mood_userid_index`(`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aymood
-- ----------------------------
INSERT INTO `aymood` VALUES (1, '这是我的第一条微信说说！！！', '1', '0', 'Tue Dec 07 00:03:55 CST 2021');
INSERT INTO `aymood` VALUES (2, '这是我的第一条微信说说！！！', '1', '0', 'Tue Dec 07 00:04:02 CST 2021');
INSERT INTO `aymood` VALUES (3, '这是我的第一条微信说说！！！', '1', '0', 'Tue Dec 07 00:04:03 CST 2021');
INSERT INTO `aymood` VALUES (4, '这是我的第一条微信说说！！！', '1', '0', 'Tue Dec 07 00:31:00 CST 2021');
INSERT INTO `aymood` VALUES (5, '这是我的第一条微信说说！！！', '1', '0', 'Tue Dec 07 08:51:36 CST 2021');

-- ----------------------------
-- Table structure for basic
-- ----------------------------
DROP TABLE IF EXISTS `basic`;
CREATE TABLE `basic`  (
  `name` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `home` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `born` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `work` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `study` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bachelor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `apply` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sign` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `signyear` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `register` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `registeradd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `liitleprice` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `banknum` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of basic
-- ----------------------------
INSERT INTO `basic` VALUES ('刘意源', '男', '广东惠州', '2001/02', '惠州学院', '广东惠州', '1321321321', '13620037263', '本科', '学士', '网络工程', '教授', '博士后', '已和企事业单位签订3年以上工作合同', '2001/02-2001/02', '2001/02', '惠州', '壹万壹仟', '11000', '1111', '6666666666666');
INSERT INTO `basic` VALUES ('zhang', '男', '广东惠州', '2001/02', '惠州学院', '广东惠州', '1321321321', '13620037262', '本科', '学士', '网络工程', '教授', '博士', '已和企事业单位签订3年以上工作合同', '2001/02-2001/02', '2001/02', ' 打算', '壹万壹仟', '11000', '2312312312312', '');

-- ----------------------------
-- Table structure for operatorlist
-- ----------------------------
DROP TABLE IF EXISTS `operatorlist`;
CREATE TABLE `operatorlist`  (
  `ID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `privat` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `interpretation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operatorlist
-- ----------------------------
INSERT INTO `operatorlist` VALUES ('1', '1833186771@qq.com', '1', '不可修改商品信息');
INSERT INTO `operatorlist` VALUES ('2', '2432380823@qq.com', '2', '权限全开放');

-- ----------------------------
-- Table structure for orderlist
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist`  (
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shop` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `restore` int(255) NULL DEFAULT NULL,
  `money` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `monthbuy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pname`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderlist
-- ----------------------------
INSERT INTO `orderlist` VALUES ('路人乙', '斯柯达', 1, '25', '2021/02/05');
INSERT INTO `orderlist` VALUES ('路人甲', '田园犬', 2, '50', '2021/02/05');
INSERT INTO `orderlist` VALUES ('1', '田园犬', 5, '125', '2021/02/05');
INSERT INTO `orderlist` VALUES ('2', '田园犬', 5, '125', '2021/02/05');
INSERT INTO `orderlist` VALUES ('3', '田园犬', 5, '125', '2021/02/05');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pnum` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classification` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introduction` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '123', '狼狗', '开门了上课', 'lkf');
INSERT INTO `product` VALUES (2, '123', '狼狗', '开门了上课', 'lkf');
INSERT INTO `product` VALUES (3, '123', '狼狗', '开门了上课', 'lkf');
INSERT INTO `product` VALUES (4, '5', '男', '广东惠州', '2001/02');

-- ----------------------------
-- Table structure for puser
-- ----------------------------
DROP TABLE IF EXISTS `puser`;
CREATE TABLE `puser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `black` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of puser
-- ----------------------------
INSERT INTO `puser` VALUES (1, '1321', '45646', '3', '4', 1);
INSERT INTO `puser` VALUES (2, NULL, NULL, '3', '4', 0);
INSERT INTO `puser` VALUES (3, NULL, NULL, '3', '4', 0);
INSERT INTO `puser` VALUES (4, NULL, NULL, '3', '4', 0);
INSERT INTO `puser` VALUES (5, '1', '2', '3', '4', 0);
INSERT INTO `puser` VALUES (6, '1', '2', '3', '4', 0);

-- ----------------------------
-- Table structure for wluser
-- ----------------------------
DROP TABLE IF EXISTS `wluser`;
CREATE TABLE `wluser`  (
  `id` int(24) NOT NULL AUTO_INCREMENT,
  `stunum` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stuphone` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stupwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stuemail` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wluser
-- ----------------------------
INSERT INTO `wluser` VALUES (1, '1914080903314', '13620037263', '1234567', '1833186771@qq.com');
INSERT INTO `wluser` VALUES (2, '1914080903330', '13192706392', '123456', '2432380823@qq.com');

SET FOREIGN_KEY_CHECKS = 1;
