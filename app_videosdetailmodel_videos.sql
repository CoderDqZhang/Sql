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

 Date: 17/06/2019 17:37:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_videosdetailmodel_videos
-- ----------------------------
DROP TABLE IF EXISTS `app_videosdetailmodel_videos`;
CREATE TABLE `app_videosdetailmodel_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videosdetailmodel_id` int(11) NOT NULL,
  `videosurlstitlemodel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_videosdetailmodel_vi_videosdetailmodel_id_vid_3a0da162_uniq` (`videosdetailmodel_id`,`videosurlstitlemodel_id`),
  KEY `app_videosdetailmode_videosurlstitlemodel_f1dbc3b4_fk_app_video` (`videosurlstitlemodel_id`),
  CONSTRAINT `app_videosdetailmode_videosdetailmodel_id_c11a4cad_fk_app_video` FOREIGN KEY (`videosdetailmodel_id`) REFERENCES `app_videosdetailmodel` (`id`),
  CONSTRAINT `app_videosdetailmode_videosurlstitlemodel_f1dbc3b4_fk_app_video` FOREIGN KEY (`videosurlstitlemodel_id`) REFERENCES `app_videosurlstitlemodel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_videosdetailmodel_videos
-- ----------------------------
BEGIN;
INSERT INTO `app_videosdetailmodel_videos` VALUES (19, 45, 312);
INSERT INTO `app_videosdetailmodel_videos` VALUES (32, 46, 314);
INSERT INTO `app_videosdetailmodel_videos` VALUES (18, 47, 316);
INSERT INTO `app_videosdetailmodel_videos` VALUES (20, 48, 317);
INSERT INTO `app_videosdetailmodel_videos` VALUES (21, 49, 323);
INSERT INTO `app_videosdetailmodel_videos` VALUES (22, 50, 324);
INSERT INTO `app_videosdetailmodel_videos` VALUES (17, 51, 325);
INSERT INTO `app_videosdetailmodel_videos` VALUES (23, 53, 328);
INSERT INTO `app_videosdetailmodel_videos` VALUES (25, 54, 329);
INSERT INTO `app_videosdetailmodel_videos` VALUES (24, 55, 331);
INSERT INTO `app_videosdetailmodel_videos` VALUES (26, 56, 333);
INSERT INTO `app_videosdetailmodel_videos` VALUES (27, 57, 337);
INSERT INTO `app_videosdetailmodel_videos` VALUES (28, 58, 338);
INSERT INTO `app_videosdetailmodel_videos` VALUES (29, 59, 339);
INSERT INTO `app_videosdetailmodel_videos` VALUES (31, 60, 341);
INSERT INTO `app_videosdetailmodel_videos` VALUES (30, 61, 342);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
