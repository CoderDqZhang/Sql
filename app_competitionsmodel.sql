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

 Date: 11/06/2019 16:35:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_competitionsmodel
-- ----------------------------
DROP TABLE IF EXISTS `app_competitionsmodel`;
CREATE TABLE `app_competitionsmodel` (
  `create_time` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1519 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_competitionsmodel
-- ----------------------------
BEGIN;
INSERT INTO `app_competitionsmodel` VALUES ('2019-06-05 19:24:44.922774', 1473, '足球');
INSERT INTO `app_competitionsmodel` VALUES ('2019-06-05 19:24:44.923161', 1474, '网球');
INSERT INTO `app_competitionsmodel` VALUES ('2019-06-05 19:24:44.935572', 1476, '棒球');
INSERT INTO `app_competitionsmodel` VALUES ('2019-06-05 19:24:44.935677', 1477, '运动');
INSERT INTO `app_competitionsmodel` VALUES ('2019-06-05 19:24:44.950662', 1479, '排球');
INSERT INTO `app_competitionsmodel` VALUES ('2019-06-05 19:24:44.961923', 1487, '篮球');
INSERT INTO `app_competitionsmodel` VALUES ('2019-06-05 19:24:45.100806', 1514, '乒乓球');
INSERT INTO `app_competitionsmodel` VALUES ('2019-06-05 19:24:45.291496', 1516, '赛车');
INSERT INTO `app_competitionsmodel` VALUES ('2019-06-05 19:24:45.669875', 1517, '直播');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
