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

 Date: 17/06/2019 17:37:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_brocademodel
-- ----------------------------
DROP TABLE IF EXISTS `app_brocademodel`;
CREATE TABLE `app_brocademodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(16) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_brocademodel
-- ----------------------------
BEGIN;
INSERT INTO `app_brocademodel` VALUES (67, '6月15日 中超 广州富力vs武汉卓尔 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:22.963789');
INSERT INTO `app_brocademodel` VALUES (68, '6月16日 中超 江苏苏宁vs北京人和 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:22.964681');
INSERT INTO `app_brocademodel` VALUES (69, '6月15日 中超 河北华夏vs大连一方 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:22.970779');
INSERT INTO `app_brocademodel` VALUES (70, '6月16日 中超 天津天海vs河南建业 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:22.970092');
INSERT INTO `app_brocademodel` VALUES (71, '6月16日 中超 深圳佳兆业vs天津泰达  全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.254462');
INSERT INTO `app_brocademodel` VALUES (72, '6月14日 中超 上海上港vs广州恒大 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.319092');
INSERT INTO `app_brocademodel` VALUES (73, '6月15日 女足世界杯 牙买加女足vs意大利女足 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.340446');
INSERT INTO `app_brocademodel` VALUES (74, '6月14日 女足世界杯 日本女足vs苏格兰女足 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.350300');
INSERT INTO `app_brocademodel` VALUES (75, '6月15日 女足世界杯 英格兰女足vs阿根廷女足 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.715107');
INSERT INTO `app_brocademodel` VALUES (76, '6月15日 中甲 南通支云vs浙江绿城 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.719682');
INSERT INTO `app_brocademodel` VALUES (77, '6月15日 美洲杯 巴西vs玻利维亚 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.752144');
INSERT INTO `app_brocademodel` VALUES (78, '6月15日 中甲 上海申鑫vs呼和浩特 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.784301');
INSERT INTO `app_brocademodel` VALUES (79, '6月15日 中甲 新疆雪豹纳欢vs四川FC 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.172058');
INSERT INTO `app_brocademodel` VALUES (80, '6月15日 女足世界杯 荷兰女足vs喀麦隆女足 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.177268');
INSERT INTO `app_brocademodel` VALUES (81, '6月15日 中甲 黑龙江FCvs梅州客家 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.193477');
INSERT INTO `app_brocademodel` VALUES (82, '6月16日 土伦杯 墨西哥vs爱尔兰 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.263887');
INSERT INTO `app_brocademodel` VALUES (83, '6月16日 世青赛 乌克兰U20vs韩国U20 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.704822');
INSERT INTO `app_brocademodel` VALUES (84, '6月16日 美洲杯 阿根廷vs哥伦比亚 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.711027');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
