/*
 Navicat Premium Data Transfer

 Source Server         : Touqiu
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : touqiu

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 14/06/2019 14:57:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_videomodel_videos_detail
-- ----------------------------
DROP TABLE IF EXISTS `app_videomodel_videos_detail`;
CREATE TABLE `app_videomodel_videos_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videomodel_id` int(11) NOT NULL,
  `videosdetailmodel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_videomodel_videos_de_videomodel_id_videosdeta_887e9209_uniq` (`videomodel_id`,`videosdetailmodel_id`),
  KEY `app_videomodel_video_videosdetailmodel_id_7eb2138b_fk_app_video` (`videosdetailmodel_id`),
  CONSTRAINT `app_videomodel_video_videomodel_id_f7dddcd5_fk_app_video` FOREIGN KEY (`videomodel_id`) REFERENCES `app_videomodel` (`id`),
  CONSTRAINT `app_videomodel_video_videosdetailmodel_id_7eb2138b_fk_app_video` FOREIGN KEY (`videosdetailmodel_id`) REFERENCES `app_videosdetailmodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
