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

 Date: 14/06/2019 14:56:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_videomodel_brocade_detail
-- ----------------------------
DROP TABLE IF EXISTS `app_videomodel_brocade_detail`;
CREATE TABLE `app_videomodel_brocade_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videomodel_id` int(11) NOT NULL,
  `brocademodel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_videomodel_brocade_d_videomodel_id_brocademod_f8dad227_uniq` (`videomodel_id`,`brocademodel_id`),
  KEY `app_videomodel_broca_brocademodel_id_bc32f78f_fk_app_broca` (`brocademodel_id`),
  CONSTRAINT `app_videomodel_broca_brocademodel_id_bc32f78f_fk_app_broca` FOREIGN KEY (`brocademodel_id`) REFERENCES `app_brocademodel` (`id`),
  CONSTRAINT `app_videomodel_broca_videomodel_id_f2168251_fk_app_video` FOREIGN KEY (`videomodel_id`) REFERENCES `app_videomodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
