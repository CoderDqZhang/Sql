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

 Date: 11/06/2019 16:31:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_competitionstagmodel
-- ----------------------------
DROP TABLE IF EXISTS `app_competitionstagmodel`;
CREATE TABLE `app_competitionstagmodel` (
  `create_time` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `tag_model_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_competitionstagm_tag_model_id_ed323045_fk_app_compe` (`tag_model_id`),
  CONSTRAINT `app_competitionstagm_tag_model_id_ed323045_fk_app_compe` FOREIGN KEY (`tag_model_id`) REFERENCES `app_competitionsmodel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=396 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_competitionstagmodel
-- ----------------------------
BEGIN;
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.021862', 286, '法网2019', 1474);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.029241', 288, '国际友谊赛', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.037229', 289, '板球', 1477);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.044972', 290, '意青联', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.078988', 296, '欧国联', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.084953', 297, '捷克丙', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.092751', 298, '土伦杯', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.095806', 299, '澳足总杯', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.096452', 300, '韩国职棒', 1476);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.103732', 303, '立陶宛篮甲', 1487);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.105598', 305, 'FIVB国家联赛', 1479);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.109167', 307, 'VTB联赛', 1487);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.109651', 308, '土耳其篮甲', 1487);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.121952', 312, '丹麦乙', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.126028', 317, '意大利篮甲', 1487);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.126144', 319, '德国篮甲', 1487);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.126399', 320, '意大利乙', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.127435', 321, '阿根廷杯', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.127925', 323, '哥伦比亚甲', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.128141', 324, '巴西杯', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.130569', 327, 'WNBA', 1487);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.135106', 331, '美职联', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.135230', 332, '阿根廷篮甲', 1487);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.136187', 333, '美冠联', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.138523', 335, 'NBA', 1487);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.177737', 338, 'MLB', 1476);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.181263', 339, '国际乒联', 1514);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.189701', 344, '韩国排球联赛', 1479);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.218898', 347, 'WTA', 1474);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.234304', 350, '欧洲U21锦标赛', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.234442', 351, '挪威甲', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.237005', 352, '飞镖', 1477);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.250226', 353, '法国篮甲', 1487);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.275651', 354, '中乙', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.303464', 355, '欧锦赛预', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.311517', 356, 'F1', 1516);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.313944', 357, '秘鲁甲', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.355121', 358, '女足世界杯', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.392933', 359, '日乙', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.398742', 360, '日本丙', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.471630', 361, '中超', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.482739', 362, '德堡州联赛', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.491791', 363, '瑞典甲', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.560584', 365, '爱尔兰超', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.575442', 366, '阿乙', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.677421', 367, '德手球联赛', 1517);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.718493', 369, '西乙', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.932826', 371, '泰国超', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.955301', 372, '印尼甲', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.960918', 373, '日职联', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.991076', 374, '白俄超', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.004209', 375, '立陶宛甲', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.006067', 376, '格鲁吉亚超', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.054341', 377, '美洲杯', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.093463', 378, '新加坡甲', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.109699', 380, '韩国K2联赛', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.123705', 381, '韩K联', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.205661', 382, '挪威超', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.234614', 383, '美洲金杯2019', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.239160', 384, '美国女足联赛', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.321543', 385, '芬兰超', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.390521', 386, '亚冠杯', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.463391', 388, '亚协杯', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.573934', 390, '非洲杯2019', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.881288', 391, '瑞典超', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:47.369845', 392, '中国乙级联赛', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:47.381112', 393, '中国足协杯', 1473);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:47.395973', 394, '解放者杯', 1473);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
