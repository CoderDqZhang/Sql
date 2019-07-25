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

 Date: 14/06/2019 14:56:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_videomodel_tags
-- ----------------------------
DROP TABLE IF EXISTS `app_videomodel_tags`;
CREATE TABLE `app_videomodel_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videomodel_id` int(11) NOT NULL,
  `tagmodel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_videomodel_tags_videomodel_id_tagmodel_id_1c417c9e_uniq` (`videomodel_id`,`tagmodel_id`),
  KEY `app_videomodel_tags_tagmodel_id_e7d820e1_fk_app_tagmodel_id` (`tagmodel_id`),
  CONSTRAINT `app_videomodel_tags_tagmodel_id_e7d820e1_fk_app_tagmodel_id` FOREIGN KEY (`tagmodel_id`) REFERENCES `app_tagmodel` (`id`),
  CONSTRAINT `app_videomodel_tags_videomodel_id_90d4c5be_fk_app_videomodel_id` FOREIGN KEY (`videomodel_id`) REFERENCES `app_videomodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
