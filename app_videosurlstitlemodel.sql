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

 Date: 17/06/2019 17:37:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_videosurlstitlemodel
-- ----------------------------
DROP TABLE IF EXISTS `app_videosurlstitlemodel`;
CREATE TABLE `app_videosurlstitlemodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=379 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_videosurlstitlemodel
-- ----------------------------
BEGIN;
INSERT INTO `app_videosurlstitlemodel` VALUES (312, '2019-06-17 11:25:22.923414', 'http://v.youku.com/v_show/id_XNDIzMDU4MDAwNA==.html', '[开场换人] 开场55秒换人 天海用裴帅换下U23球员文俊杰  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (313, '2019-06-17 11:25:22.967751', 'http://v.youku.com/v_show/id_XNDIyOTc3OTEzNg==.html', '[优酷] 06月15日 中超第13轮 广州富力vs武汉卓尔 全场录像 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (314, '2019-06-17 11:25:22.967870', 'http://v.youku.com/v_show/id_XNDIyOTUwNDA0NA==.html', '[外围远射] 华夏后卫解围不远 朱晓刚禁区外围远射偏出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (315, '2019-06-17 11:25:22.968079', 'http://v.youku.com/v_show/id_XNDIzMDcyNDU4NA==.html', '[优酷] 06月16日 中超第13轮 江苏苏宁vs北京人和 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (316, '2019-06-17 11:25:22.968682', 'http://v.youku.com/v_show/id_XNDIyOTUwODYxMg==.html', '[错失单刀] 富力后卫冒顶送礼 拉斐尔单刀推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (317, '2019-06-17 11:25:22.971354', 'http://v.youku.com/v_show/id_XNDIzMDU4NzMyNA==.html', '[推射被扑] 埃德尔突入禁区横传 特谢拉跟进推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (318, '2019-06-17 11:25:22.972116', 'http://v.youku.com/v_show/id_XNDIyOTc3OTYyOA==.html', '[优酷] 06月15日 中超第13轮 河北华夏vs大连一方 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (319, '2019-06-17 11:25:22.972246', 'http://v.youku.com/v_show/id_XNDIzMDcwNjU5Ng==.html', '[优酷] 06月16日 中超第13轮 天津天海vs河南建业 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (320, '2019-06-17 11:25:23.254802', 'http://v.youku.com/v_show/id_XNDIzMDcwNjU5Ng==.html', '[优酷] 06月16日 中超第13轮 天津天海vs河南建业 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (321, '2019-06-17 11:25:23.342920', 'http://sports.cctv.com/2019/06/15/VIDETfIvqnq8kaiyjrjbXOXl190615.shtml', '[小窗口/手机/Pad观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (322, '2019-06-17 11:25:23.350666', 'http://sports.cctv.com/2019/06/14/VIDENZGXnvP7iXUMigqyRts4190614.shtml', '[CCTV] 06月14日 女足世界杯小组赛D组 日本女足vs苏格兰女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (323, '2019-06-17 11:25:23.354601', 'http://sports.cctv.com/2019/06/14/VIDEl84D1uN5SRmn6uKdO1xb190614.shtml', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (324, '2019-06-17 11:25:23.360053', 'http://t.cn/AiN2cH8U?m=4383265320646676&u=2993049293', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (325, '2019-06-17 11:25:23.394929', 'http://v.youku.com/v_show/id_XNDIzMDYwOTYzNg==.html', '[假摔染黄] 演技还需提高 张鹏假摔被裁判识破染黄  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (326, '2019-06-17 11:25:23.715524', 'http://sports.cctv.com/2019/06/15/VIDEh0xz3GgSIuwt9rnzbLPh190615.shtml', '[CCTV] 06月15日 女足世界杯小组赛D组 英格兰女足vs阿根廷女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (327, '2019-06-17 11:25:23.719955', 'http://v.youku.com/v_show/id_XNDIyOTY0MDUyNA==.html', '[优酷] 06月15日 中甲第13轮 南通支云vs浙江绿城 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (328, '2019-06-17 11:25:23.732909', 'http://sports.cctv.com/2019/06/15/VIDEAV1oUW7m3CquBs4TFJk3190615.shtml', '[进球视频] 玻利维亚球员手球送点 库蒂尼奥主罚一蹴而就 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (329, '2019-06-17 11:25:23.741646', 'http://v.youku.com/v_show/id_XNDIyOTYzMjExMg==.html', '[Y优酷全场集锦] 中甲-巴巴卡破门 申鑫0-1呼和浩特7连败继续垫底 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (330, '2019-06-17 11:25:23.753430', 'http://sports.cctv.com/2019/06/15/VIDEbTMXmYDbOyTsu7kaP12K190615.shtml', '[CNTV] 06月15日 美洲杯小组赛A组 巴西vs玻利维亚 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (331, '2019-06-17 11:25:23.758568', 'http://v.youku.com/v_show/id_XNDIyOTYyMDgwNA==.html', '[优酷全场集锦] 中甲-李嘉玮染红迪诺屡造险 绿城0-0十人南通 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (332, '2019-06-17 11:25:23.784746', 'http://v.youku.com/v_show/id_XNDIyOTY3MDI4MA==.html', '[优酷] 06月15日 中甲第13轮 上海申鑫vs呼和浩特 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (333, '2019-06-17 11:25:24.088330', 'http://v.youku.com/v_show/id_XNDIyOTQwMDM1Ng==.html', '[优酷全场集锦] 中甲-麦合木提破僵斯特法诺点射 新疆主场3-0四川 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (334, '2019-06-17 11:25:24.172375', 'http://v.youku.com/v_show/id_XNDIyOTQ3NTc0OA==.html', '[优酷] 06月15日 中甲第13轮 新疆雪豹纳欢vs四川FC 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (335, '2019-06-17 11:25:24.178429', 'http://sports.cctv.com/2019/06/15/VIDE9PDtcGpSbSIpbBBhQ8S3190615.shtml', '[CCTV] 06月15日 女足世界杯小组赛E组 荷兰女足vs喀麦隆女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (336, '2019-06-17 11:25:24.193711', 'http://v.youku.com/v_show/id_XNDIyOTQwNjI0MA==.html', '[优酷] 06月15日 中甲第13轮 黑龙江FCvs梅州客家 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (337, '2019-06-17 11:25:24.201609', 'http://v.youku.com/v_show/id_XNDIyOTM2ODI4NA==.html', '[优酷全场集锦] 中甲-奇马梅开二度 黑龙江2-1九人梅州三轮不败 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (338, '2019-06-17 11:25:24.206884', 'http://sports.cctv.com/2019/06/15/VIDEmkXFA3q9aNKJ7MFlwyzF190615.shtml', '[CCTV全场集锦] 世界杯-米德玛梅开二度 荷兰女足3-1胜喀麦隆 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (339, '2019-06-17 11:25:24.254718', 'http://v.youku.com/v_show/id_XNDIyOTY3MzYzMg==.html', '[点球大战] 土伦杯季军战-墨西哥vs爱尔兰点球大战实录 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (340, '2019-06-17 11:25:24.265369', 'http://v.youku.com/v_show/id_XNDIyOTY5MDQ0MA==.html', '[优酷] 06月16日 土伦杯季军争夺战 墨西哥U22vs爱尔兰U21 全场录像 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (341, '2019-06-17 11:25:24.618537', 'http://v.youku.com/v_show/id_XNDIyOTY3MjA0OA==.html', '[进球视频] 巴西地面配合打穿日本防线 安东尼推射破僵 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (342, '2019-06-17 11:25:24.641250', 'http://sports.cctv.com/2019/06/16/VIDETnJCwBhQeRv9k5vDHw7O190616.shtml', '[进球视频] 金岁尹摔倒造点 李刚仁主罚一蹴而就取梦幻开局 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (343, '2019-06-17 11:25:24.705155', 'http://sports.cctv.com/2019/06/16/VIDEpxGgom714UcDOMZzbImm190616.shtml', '[CCTV] 06月16日 世青赛决赛 乌克兰U20vs韩国U20 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (344, '2019-06-17 11:25:24.711699', 'http://sports.cctv.com/2019/06/16/VIDEuyT4nP2IXAghIl3UR8rj190616.shtml', '[CCTV] 06月16日 美洲杯小组赛B组 阿根廷vs哥伦比亚 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (345, '2019-06-17 11:26:33.696819', 'http://v.youku.com/v_show/id_XNDIzMDYwOTYzNg==.html', '[假摔染黄] 演技还需提高 张鹏假摔被裁判识破染黄  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (346, '2019-06-17 11:26:33.715192', 'http://v.youku.com/v_show/id_XNDIzMDcyNDU4NA==.html', '[优酷] 06月16日 中超第13轮 江苏苏宁vs北京人和 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (347, '2019-06-17 11:26:33.754091', 'http://v.youku.com/v_show/id_XNDIyOTc3OTEzNg==.html', '[优酷] 06月15日 中超第13轮 广州富力vs武汉卓尔 全场录像 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (348, '2019-06-17 11:26:33.754490', 'http://v.youku.com/v_show/id_XNDIyOTUwODYxMg==.html', '[错失单刀] 富力后卫冒顶送礼 拉斐尔单刀推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (349, '2019-06-17 11:26:33.754599', 'http://v.youku.com/v_show/id_XNDIzMDcwNjU5Ng==.html', '[优酷] 06月16日 中超第13轮 天津天海vs河南建业 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (350, '2019-06-17 11:26:33.754768', 'http://v.youku.com/v_show/id_XNDIzMDU4MDAwNA==.html', '[开场换人] 开场55秒换人 天海用裴帅换下U23球员文俊杰  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (351, '2019-06-17 11:26:33.754946', 'http://v.youku.com/v_show/id_XNDIzMDU4NzMyNA==.html', '[推射被扑] 埃德尔突入禁区横传 特谢拉跟进推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (352, '2019-06-17 11:26:33.756748', 'http://v.youku.com/v_show/id_XNDIzMDcwNjU5Ng==.html', '[优酷] 06月16日 中超第13轮 天津天海vs河南建业 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (353, '2019-06-17 11:26:34.071650', 'http://sports.cctv.com/2019/06/14/VIDEl84D1uN5SRmn6uKdO1xb190614.shtml', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (354, '2019-06-17 11:26:34.099193', 'http://sports.cctv.com/2019/06/14/VIDENZGXnvP7iXUMigqyRts4190614.shtml', '[CCTV] 06月14日 女足世界杯小组赛D组 日本女足vs苏格兰女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (355, '2019-06-17 11:26:34.151688', 'http://sports.cctv.com/2019/06/15/VIDETfIvqnq8kaiyjrjbXOXl190615.shtml', '[小窗口/手机/Pad观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (356, '2019-06-17 11:26:34.164877', 'http://t.cn/AiN2cH8U?m=4383265320646676&u=2993049293', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (357, '2019-06-17 11:26:34.212509', 'http://sports.cctv.com/2019/06/15/VIDEh0xz3GgSIuwt9rnzbLPh190615.shtml', '[CCTV] 06月15日 女足世界杯小组赛D组 英格兰女足vs阿根廷女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (358, '2019-06-17 11:26:34.452457', 'http://sports.cctv.com/2019/06/15/VIDEbTMXmYDbOyTsu7kaP12K190615.shtml', '[CNTV] 06月15日 美洲杯小组赛A组 巴西vs玻利维亚 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (359, '2019-06-17 11:26:34.461925', 'http://sports.cctv.com/2019/06/15/VIDEAV1oUW7m3CquBs4TFJk3190615.shtml', '[进球视频] 玻利维亚球员手球送点 库蒂尼奥主罚一蹴而就 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (360, '2019-06-17 11:26:34.512144', 'http://v.youku.com/v_show/id_XNDIyOTY0MDUyNA==.html', '[优酷] 06月15日 中甲第13轮 南通支云vs浙江绿城 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (361, '2019-06-17 11:26:34.557718', 'http://v.youku.com/v_show/id_XNDIyOTYyMDgwNA==.html', '[优酷全场集锦] 中甲-李嘉玮染红迪诺屡造险 绿城0-0十人南通 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (362, '2019-06-17 11:26:34.570688', 'http://v.youku.com/v_show/id_XNDIyOTY3MDI4MA==.html', '[优酷] 06月15日 中甲第13轮 上海申鑫vs呼和浩特 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (363, '2019-06-17 11:26:34.658391', 'http://v.youku.com/v_show/id_XNDIyOTYzMjExMg==.html', '[Y优酷全场集锦] 中甲-巴巴卡破门 申鑫0-1呼和浩特7连败继续垫底 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (364, '2019-06-17 11:26:34.696420', 'http://v.youku.com/v_show/id_XNDIyOTQ3NTc0OA==.html', '[优酷] 06月15日 中甲第13轮 新疆雪豹纳欢vs四川FC 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (365, '2019-06-17 11:26:34.892823', 'http://v.youku.com/v_show/id_XNDIyOTQwNjI0MA==.html', '[优酷] 06月15日 中甲第13轮 黑龙江FCvs梅州客家 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (366, '2019-06-17 11:26:34.904767', 'http://v.youku.com/v_show/id_XNDIyOTQwMDM1Ng==.html', '[优酷全场集锦] 中甲-麦合木提破僵斯特法诺点射 新疆主场3-0四川 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (367, '2019-06-17 11:26:34.921948', 'http://v.youku.com/v_show/id_XNDIyOTM2ODI4NA==.html', '[优酷全场集锦] 中甲-奇马梅开二度 黑龙江2-1九人梅州三轮不败 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (368, '2019-06-17 11:26:34.928818', 'http://sports.cctv.com/2019/06/15/VIDE9PDtcGpSbSIpbBBhQ8S3190615.shtml', '[CCTV] 06月15日 女足世界杯小组赛E组 荷兰女足vs喀麦隆女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (369, '2019-06-17 11:26:34.980507', 'http://sports.cctv.com/2019/06/15/VIDEmkXFA3q9aNKJ7MFlwyzF190615.shtml', '[CCTV全场集锦] 世界杯-米德玛梅开二度 荷兰女足3-1胜喀麦隆 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (370, '2019-06-17 11:26:35.015044', 'http://v.youku.com/v_show/id_XNDIyOTY5MDQ0MA==.html', '[优酷] 06月16日 土伦杯季军争夺战 墨西哥U22vs爱尔兰U21 全场录像 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (371, '2019-06-17 11:26:35.106677', 'http://v.youku.com/v_show/id_XNDIyOTY3MzYzMg==.html', '[点球大战] 土伦杯季军战-墨西哥vs爱尔兰点球大战实录 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (372, '2019-06-17 11:26:35.278861', 'http://sports.cctv.com/2019/06/16/VIDETnJCwBhQeRv9k5vDHw7O190616.shtml', '[进球视频] 金岁尹摔倒造点 李刚仁主罚一蹴而就取梦幻开局 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (373, '2019-06-17 11:26:35.282672', 'http://sports.cctv.com/2019/06/16/VIDEpxGgom714UcDOMZzbImm190616.shtml', '[CCTV] 06月16日 世青赛决赛 乌克兰U20vs韩国U20 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (374, '2019-06-17 11:26:35.302926', 'http://v.youku.com/v_show/id_XNDIyOTY3MjA0OA==.html', '[进球视频] 巴西地面配合打穿日本防线 安东尼推射破僵 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (375, '2019-06-17 11:26:35.311254', 'http://sports.cctv.com/2019/06/16/VIDEuyT4nP2IXAghIl3UR8rj190616.shtml', '[CCTV] 06月16日 美洲杯小组赛B组 阿根廷vs哥伦比亚 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (376, '2019-06-17 11:26:35.337206', 'http://sports.cctv.com/2019/06/16/VIDE73HPet2dfeBNXY7cgDwQ190616.shtml', '[进球视频] 哥伦比亚打破僵局 罗杰-马丁内斯内切爆射建功 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (377, '2019-06-17 11:26:35.445998', 'http://v.youku.com/v_show/id_XNDIyOTc3OTYyOA==.html', '[优酷] 06月15日 中超第13轮 河北华夏vs大连一方 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (378, '2019-06-17 11:26:35.456351', 'http://v.youku.com/v_show/id_XNDIyOTUwNDA0NA==.html', '[外围远射] 华夏后卫解围不远 朱晓刚禁区外围远射偏出 ');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
