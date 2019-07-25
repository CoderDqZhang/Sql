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

 Date: 17/06/2019 17:40:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_videomodel
-- ----------------------------
DROP TABLE IF EXISTS `app_videomodel`;
CREATE TABLE `app_videomodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `status` varchar(2) DEFAULT NULL,
  `brocade_detail_id` int(11) DEFAULT NULL,
  `videos_detail_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_videomodel_brocade_detail_id_45afa615_fk_app_brocademodel_id` (`brocade_detail_id`),
  KEY `app_videomodel_videos_detail_id_fd4a6634_fk_app_video` (`videos_detail_id`),
  CONSTRAINT `app_videomodel_brocade_detail_id_45afa615_fk_app_brocademodel_id` FOREIGN KEY (`brocade_detail_id`) REFERENCES `app_brocademodel` (`id`),
  CONSTRAINT `app_videomodel_videos_detail_id_fd4a6634_fk_app_video` FOREIGN KEY (`videos_detail_id`) REFERENCES `app_videosdetailmodel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_videomodel
-- ----------------------------
BEGIN;
INSERT INTO `app_videomodel` VALUES (72, '深圳佳兆业vs天津泰达', '2019-06-17 11:28:27.789642', '0', 71, NULL);
INSERT INTO `app_videomodel` VALUES (73, '江苏苏宁vs北京人和', '2019-06-17 11:28:27.791205', '0', 68, NULL);
INSERT INTO `app_videomodel` VALUES (74, '河北华夏vs大连一方', '2019-06-17 11:28:27.792215', '0', NULL, 46);
INSERT INTO `app_videomodel` VALUES (75, '广州富力vs武汉卓尔', '2019-06-17 11:28:27.821336', '0', NULL, 47);
INSERT INTO `app_videomodel` VALUES (76, '天津天海vs河南建业', '2019-06-17 11:28:27.821611', '0', NULL, 45);
INSERT INTO `app_videomodel` VALUES (77, '广州富力vs武汉卓尔', '2019-06-17 11:28:27.821527', '0', 67, NULL);
INSERT INTO `app_videomodel` VALUES (78, '天津天海vs河南建业', '2019-06-17 11:28:27.821914', '0', 70, NULL);
INSERT INTO `app_videomodel` VALUES (79, '江苏苏宁vs北京人和', '2019-06-17 11:28:27.825241', '0', NULL, 48);
INSERT INTO `app_videomodel` VALUES (80, '上海上港vs广州恒大', '2019-06-17 11:28:28.138776', '0', 72, NULL);
INSERT INTO `app_videomodel` VALUES (81, ' 牙买加女足vs意大利女足  ', '2019-06-17 11:28:28.167185', '0', NULL, 50);
INSERT INTO `app_videomodel` VALUES (82, ' 英格兰女足vs阿根廷女足  ', '2019-06-17 11:28:28.175833', '0', 75, NULL);
INSERT INTO `app_videomodel` VALUES (83, ' 日本女足vs苏格兰女足  ', '2019-06-17 11:28:28.548942', '0', NULL, 49);
INSERT INTO `app_videomodel` VALUES (84, '巴西vs玻利维亚', '2019-06-17 11:28:28.766451', '0', 77, NULL);
INSERT INTO `app_videomodel` VALUES (85, ' 南通支云vs浙江绿城  ', '2019-06-17 11:28:28.777970', '0', 76, NULL);
INSERT INTO `app_videomodel` VALUES (86, ' 上海申鑫vs呼和浩特  ', '2019-06-17 11:28:28.798767', '0', 78, NULL);
INSERT INTO `app_videomodel` VALUES (87, ' 新疆雪豹纳欢vs四川FC  ', '2019-06-17 11:28:29.098832', '0', 79, NULL);
INSERT INTO `app_videomodel` VALUES (88, ' 黑龙江FCvs梅州客家  ', '2019-06-17 11:28:29.108828', '0', NULL, 57);
INSERT INTO `app_videomodel` VALUES (89, ' 荷兰女足vs喀麦隆女足  ', '2019-06-17 11:28:29.128107', '0', 80, NULL);
INSERT INTO `app_videomodel` VALUES (90, ' 墨西哥vs爱尔兰  ', '2019-06-17 11:28:29.157955', '0', 82, NULL);
INSERT INTO `app_videomodel` VALUES (91, ' 乌克兰U20vs韩国U20  ', '2019-06-17 11:28:29.471667', '0', 83, NULL);
INSERT INTO `app_videomodel` VALUES (92, '阿根廷vs哥伦比亚', '2019-06-17 11:28:29.500555', '0', NULL, 62);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
