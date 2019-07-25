/*
 Navicat Premium Data Transfer

 Source Server         : Touqiu
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : testTouqiu

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 17/06/2019 17:37:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_videosdetailmodel
-- ----------------------------
DROP TABLE IF EXISTS `app_videosdetailmodel`;
CREATE TABLE `app_videosdetailmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(16) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_videosdetailmodel
-- ----------------------------
BEGIN;
INSERT INTO `app_videosdetailmodel` VALUES (45, '6月16日 中超 天津天海vs河南建业  全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:22.922402');
INSERT INTO `app_videosdetailmodel` VALUES (46, '6月15日 中超 河北华夏vs大连一方 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:22.963286');
INSERT INTO `app_videosdetailmodel` VALUES (47, '6月15日 中超 广州富力vs武汉卓尔 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:22.967555');
INSERT INTO `app_videosdetailmodel` VALUES (48, '6月16日 中超 江苏苏宁vs北京人和 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:22.969917');
INSERT INTO `app_videosdetailmodel` VALUES (49, '6月14日 女足世界杯 日本女足vs苏格兰女足 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.354181');
INSERT INTO `app_videosdetailmodel` VALUES (50, '6月15日 女足世界杯 牙买加女足vs意大利女足 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.358793');
INSERT INTO `app_videosdetailmodel` VALUES (51, '6月16日 中超 深圳佳兆业vs天津泰达  全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.392740');
INSERT INTO `app_videosdetailmodel` VALUES (52, '6月14日 中超 上海上港vs广州恒大 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.392945');
INSERT INTO `app_videosdetailmodel` VALUES (53, '6月15日 美洲杯 巴西vs玻利维亚 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.730406');
INSERT INTO `app_videosdetailmodel` VALUES (54, '6月15日 中甲 上海申鑫vs呼和浩特 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.741218');
INSERT INTO `app_videosdetailmodel` VALUES (55, '6月15日 中甲 南通支云vs浙江绿城 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.757974');
INSERT INTO `app_videosdetailmodel` VALUES (56, '6月15日 中甲 新疆雪豹纳欢vs四川FC 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.085086');
INSERT INTO `app_videosdetailmodel` VALUES (57, '6月15日 中甲 黑龙江FCvs梅州客家 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.199463');
INSERT INTO `app_videosdetailmodel` VALUES (58, '6月15日 女足世界杯 荷兰女足vs喀麦隆女足 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.206344');
INSERT INTO `app_videosdetailmodel` VALUES (59, '6月16日 土伦杯 墨西哥vs爱尔兰 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.253805');
INSERT INTO `app_videosdetailmodel` VALUES (60, '6月16日 土伦杯 日本U22vs巴西U22 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.616635');
INSERT INTO `app_videosdetailmodel` VALUES (61, '6月16日 世青赛 乌克兰U20vs韩国U20 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.640917');
INSERT INTO `app_videosdetailmodel` VALUES (62, '6月16日 美洲杯 阿根廷vs哥伦比亚 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:26:35.334907');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
