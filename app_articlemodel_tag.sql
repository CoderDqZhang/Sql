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

 Date: 13/06/2019 09:41:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_articlemodel_tag
-- ----------------------------
DROP TABLE IF EXISTS `app_articlemodel_tag`;
CREATE TABLE `app_articlemodel_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articlemodel_id` int(11) NOT NULL,
  `tagmodel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_articlemodel_tag_articlemodel_id_tagmodel_id_269dcfd6_uniq` (`articlemodel_id`,`tagmodel_id`),
  KEY `app_articlemodel_tag_tagmodel_id_dca54481_fk_app_tagmodel_id` (`tagmodel_id`),
  CONSTRAINT `app_articlemodel_tag_articlemodel_id_893855d5_fk_app_artic` FOREIGN KEY (`articlemodel_id`) REFERENCES `app_articlemodel` (`id`),
  CONSTRAINT `app_articlemodel_tag_tagmodel_id_dca54481_fk_app_tagmodel_id` FOREIGN KEY (`tagmodel_id`) REFERENCES `app_tagmodel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
