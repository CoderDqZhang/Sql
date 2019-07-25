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

 Date: 17/06/2019 17:39:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_brocademodel_videos
-- ----------------------------
DROP TABLE IF EXISTS `app_brocademodel_videos`;
CREATE TABLE `app_brocademodel_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brocademodel_id` int(11) NOT NULL,
  `videosurlstitlemodel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_brocademodel_videos_brocademodel_id_videosur_e907d8f2_uniq` (`brocademodel_id`,`videosurlstitlemodel_id`),
  KEY `app_brocademodel_vid_videosurlstitlemodel_28ba96d5_fk_app_video` (`videosurlstitlemodel_id`),
  CONSTRAINT `app_brocademodel_vid_brocademodel_id_1f0aff52_fk_app_broca` FOREIGN KEY (`brocademodel_id`) REFERENCES `app_brocademodel` (`id`),
  CONSTRAINT `app_brocademodel_vid_videosurlstitlemodel_28ba96d5_fk_app_video` FOREIGN KEY (`videosurlstitlemodel_id`) REFERENCES `app_videosurlstitlemodel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_brocademodel_videos
-- ----------------------------
BEGIN;
INSERT INTO `app_brocademodel_videos` VALUES (3, 67, 313);
INSERT INTO `app_brocademodel_videos` VALUES (1, 68, 315);
INSERT INTO `app_brocademodel_videos` VALUES (17, 69, 318);
INSERT INTO `app_brocademodel_videos` VALUES (2, 70, 319);
INSERT INTO `app_brocademodel_videos` VALUES (4, 71, 319);
INSERT INTO `app_brocademodel_videos` VALUES (6, 73, 321);
INSERT INTO `app_brocademodel_videos` VALUES (5, 74, 322);
INSERT INTO `app_brocademodel_videos` VALUES (7, 75, 326);
INSERT INTO `app_brocademodel_videos` VALUES (9, 76, 327);
INSERT INTO `app_brocademodel_videos` VALUES (8, 77, 330);
INSERT INTO `app_brocademodel_videos` VALUES (10, 78, 332);
INSERT INTO `app_brocademodel_videos` VALUES (11, 79, 334);
INSERT INTO `app_brocademodel_videos` VALUES (13, 80, 335);
INSERT INTO `app_brocademodel_videos` VALUES (12, 81, 336);
INSERT INTO `app_brocademodel_videos` VALUES (14, 82, 340);
INSERT INTO `app_brocademodel_videos` VALUES (15, 83, 343);
INSERT INTO `app_brocademodel_videos` VALUES (16, 84, 344);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
