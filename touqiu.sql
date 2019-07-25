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

 Date: 25/07/2019 15:31:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_account
-- ----------------------------
DROP TABLE IF EXISTS `app_account`;
CREATE TABLE `app_account` (
  `create_time` datetime(6) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `gender` varchar(7) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `password` varchar(16) NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `last_login` datetime(6) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for app_articlemodel
-- ----------------------------
DROP TABLE IF EXISTS `app_articlemodel`;
CREATE TABLE `app_articlemodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(16) NOT NULL,
  `content` longtext NOT NULL,
  `read_number` int(10) unsigned NOT NULL,
  `com_number` int(11) NOT NULL,
  `pub` date NOT NULL,
  `recommend` tinyint(1) NOT NULL,
  `like_number` int(10) unsigned NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` varchar(2) DEFAULT NULL,
  `origin` varchar(255) NOT NULL,
  `web_desc` varchar(255) NOT NULL,
  `web_keyword` varchar(255) NOT NULL,
  `web_title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_articlemodel_category_id_0d20a038_fk_app_compe` (`category_id`),
  CONSTRAINT `app_articlemodel_category_id_0d20a038_fk_app_compe` FOREIGN KEY (`category_id`) REFERENCES `app_competitionstagmodel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=903 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_articlemodel
-- ----------------------------
BEGIN;
INSERT INTO `app_articlemodel` VALUES (90, '巴里亚：KD需要漫长艰苦的恢复 我会尽力参加世界杯', '球迷', '本赛季巴里亚场均可得到10.9分2.5板5.6助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (91, '杜兰特术后亲自公布病情，NBA球星纷纷送祝福，威少公开点赞', '球迷', '最值得高兴的好消息是，NBA联盟的记者和高管认为，杜兰特的伤情不会影响他在自由市场的受欢迎程度，依然有多支球队想要顶薪续约杜兰特。如果勇士不愿给5年顶薪的话，杜兰特加盟别的球队最高可以得到4年1.41亿美金的合同。今天欧文也宣布跳出合同，同时宣布炒掉原来的经纪人，选择加入和杜兰特同一个经纪公司。woj今天的消息确认欧文和杜兰特曾经考虑过一起在篮网或者尼克斯联手的问题。刚刚Woj又更新消息：尼克斯和篮网仍有意将欧文和KD一同签下。这是个好消息，杜兰特今夏的选择很多，他的选择注定会让NBA联盟发生巨变。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (92, '勇士众将：希望为杜兰特赢下总决赛G6，想办法渡过难关', '球迷', '勇士与猛龙将在周五上午9点开始总决G6的大战。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (93, '美媒预测德罗赞三大潜在下家，步行者3换1组双核实现双赢', '球迷', '第三支是奥兰多魔术队，魔术队的阿隆-戈登已经证明自己没有领袖能力，在东部他也没有统治力，而魔术也不想续约武切维奇，富尼耶与莫兹戈夫都还剩下一年合同，富尼耶场均15.1分3.2篮板3.6助攻也是一个三分投手后场，他也很适合马刺队的体系，而且马刺在明夏就能清理出薪金空间，魔术队得到德罗赞就能立马成为魔术的新领袖，魔术的体系是完全围绕他来进行，下赛季他在东部场均数据又有望回到27+继续入选全明星阵容，不过这筹码的确有些寒酸。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (94, '美记：杜兰特更接近留勇士，球队会为其提供顶薪合同', '球迷', '人们普遍认为，尼克斯是杜兰特的下一站，他和他的经纪人与纽约有着非常紧密的联系，尼克斯在今年1月份将波尔津吉斯送往达拉斯，大概就是为了追求杜兰特。据多位联盟消息人士透露，在6月30日自由球员市场开启时，他们相信尼克斯还是会给杜兰特送上顶薪合同。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (95, 'NBA总决赛G6：“北境之王”猛龙终将登顶还是悬念延续', '球迷', '加油！伦纳德！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (96, '绿军需要等欧文成为自由球员之后才可去交易浓眉', '球迷', '之前的报道中，根据SteveBulpett爆料，如果清楚欧文的想法，这会影响凯尔特人去追求安东尼-戴维斯。消息人士透露，在这个时间点上，不管其他情况如何，凯尔特人会专心于得到安东尼-戴维斯。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (97, 'Lowe：绿军无惧里奇-保罗的警告 但塔图姆是必须付出的资产', '球迷', '相关新闻链接>>里奇-保罗警告凯尔特人：即使得到浓眉 也只是一年租借而已', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (98, '塞申斯：时刻准备着 我还没有从NBA退役', '球迷', '塞申斯今年33岁，司职后卫，是2007年56号秀，曾为雄鹿、森林狼、骑士、湖人、黄蜂、国王、奇才、尼克斯效力过。NBA职业生涯，塞申斯共出战了691场常规赛，场均得到10.3分2.7篮板4.1助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (99, '历史上的今天！杜兰特获个人首座总决赛MVP，那一刻他就是神', '球迷', '杜兰特也成为2002年奥尼尔之后首位总决赛每场比赛个人得分都达到30+的球员。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (100, '里奇-保罗：公开浓眉交易申请是必要的 是鹈鹕GM先坏了规矩', '球迷', '邓普西曾经担任鹈鹕总经理9年之久，不过今年2月份他被球队解雇了。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (101, '波士顿记者：凯尔特人仍然在欧文的考虑范围之内', '球迷', '根据SteveBulpett报道，如果清楚欧文的想法，这会影响凯尔特人去追求安东尼-戴维斯。消息人士透露，在这个时间点上，不管其他情况如何，凯尔特人会专心于得到安东尼-戴维斯。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (102, '掘金记者：助教马克-普莱斯和鲍勃-韦斯下赛季将离队', '球迷', '鲍勃-韦斯在1978年就曾担任过圣地亚哥快船队的助理教练，随后还担任过马刺、老鹰、快船和超音速队的主教练。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (103, '小卡：最喜欢数学这门课 队友的信心能给你额外的动力', '球迷', '卡哇伊：研究我们的错误，试着不要再犯，下一场比赛要专注，努力赢得胜利。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (104, '盖伊：已给杜兰特提供建议 恢复中需要了解自身状况', '球迷', '今年夏天，盖伊将成为完全自由球员。本赛季常规赛，盖伊场均上场26.7分钟，得到13.7分6.8篮板2.6助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (105, '西亚卡姆纪念前队友德罗赞，训练穿猛龙10号T恤有悬念', '球迷', '目前猛龙队在总决赛里大比分3-2领先，握有冠军点，猛龙队有望迎来队史首个NBA总冠军。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (106, '他来了？Windhorst：未来24-48小时对湖人非常重要', '球迷', '在此前报道中，Windhorst曾表示浓眉已经授意他的经纪人里奇-保罗将他运作到湖人队。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (107, '詹皇浓眉交手纪录，老詹8胜4负占优，两人最高得分相差甚远', '球迷', '你认为湖人队有希望通过交易得到浓眉哥安东尼-戴维斯吗，那么如果交易达成，湖人队需要付出什么样的代价呢？', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (108, '湖人再次报价戴维斯筹码不多反少，库兹马依旧是非卖品', '球迷', '如果真的可以组成隆多、波普、库兹马、詹姆斯和浓眉哥的首发阵容，替补再有几个经验老将，那么湖人队的实力确实是可以冲击总冠军的。尤其库兹马的进攻能力会让他成为湖人队的第3巨头，在湖人队的进攻地位可能仅次于詹姆斯和浓眉哥。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (109, 'NBA总决赛G6：猛龙PK勇士，背水一战的勇士能将系列赛拖进抢7？', '球迷', '目前，勇士大比分2-3落后猛龙，已来到悬崖边，退无可退，不过好在本场为主场作战。NBA总决赛G6：猛龙vs勇士，大家是看好勇士将总比分追平？还是猛龙提前夺冠，创造历史呢？', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (110, '塔图姆和比尔祝家乡球队圣路易斯蓝调队夺队史NHL首冠', '球迷', '塔图姆写道：“永远的圣路易斯！”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (111, '库克致KD：我会陪伴你恢复过程的每一步 你归来后定会更强大', '球迷', 'KD队友库克更新了社交媒体状态，为KD送上了祝福：“致我最好的朋友以及兄弟，我爱你，你恢复中的每一步，我都会陪伴着你，我知道你归来后一定会更加的强大！”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (112, '40岁之前成为亿万富翁？追梦格林的这个小目标有点大', '球迷', '在设定了小目标之后，剩下的事情就是执行了。为此，他需要保证自己做出的每一个决定，都是经过深思熟虑的。在球场外的格林说话轻声细语，并不是大家印象中的“莽夫”形象。事实上，在本赛季总决赛中出场的双方球员中，有6人的名字都出现在今年的福布斯体坛收入前100名排行榜上。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (113, '库里打趣：汤神就是小气，他想让水花绰号只属于我俩', '球迷', '库里在旁边打趣道：“克莱就是小气，他想让这个绰号只属于我俩。”克莱则低头面对桌子。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (114, '杜兰特跟腱断裂危机职业生涯，为他做手术的人竟是篮网队医', '球迷', '在杜兰特遭遇跟腱断裂这样的大伤之后，很多心仪杜兰特的球队也打了退堂鼓，他们不愿意在杜兰特身上进行豪赌，如果只送上一份高薪还能够接受，但是顶薪还需要承担杜兰特伤病的风险，让很多球队感到不安。不过篮网队却是坚持之前想法的球队之一，根据报道，篮网队依旧愿意豪赌，夏天同时追求欧文和杜兰特两名巨星。就在刚刚，根据名记Woj报道：消息源透露，欧文已经和杜兰特杜兰特讨论过一起作为自由球员加盟纽约尼克斯或者布鲁克林篮网的可能性。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (115, '波尔津吉斯训练左手投三分 评论区西蒙斯躺枪', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (116, '联盟消息人士预计：勇士仍会为杜兰特提供顶薪合同', '球迷', '此前据Woj报道，篮网和尼克斯都希望顶薪签下杜兰特，而杜兰特的跟腱伤势将使他缺席整个2019-20赛季，这让杜兰特的自由球员市场变得更加复杂。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (117, '科比考神因跟腱受伤数据严重下滑，仅一人复出后涅槃重生', '球迷', '现在对于杜兰特来说，复出之后肯定需要改变自己的打球方式，，他完全可以像威尔金斯一样，增加自己在三分线外的投篮，减少在内线的身体对抗和单打，这样可以避免他再次出现伤病，也能帮助他在比较轻松的情况下拿到得分，而想要打出受伤之前那样的表现，确实会非常困难。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (118, '来了！科比本赛季最后一期《Detail》将分析西亚卡姆', '球迷', '与此同时，科比还透露这是本赛季总决赛期间的最后一期《Detail》。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (119, '吸金王！勒布朗2019年狂揽8900万美元，16年已赚8.54亿美元', '球迷', '如今洛杉矶已经成为詹姆斯商业帝国的中枢，是皇帝商业投资的主战场。去年就有媒体统计，从2003年进入联盟至今，詹姆斯收入已经达到了7.65亿美元。再算上2019年的8900万美元，詹姆斯16年来狂赚8.54亿美元。这样的詹姆斯依然是NBA的头号门面，一哥位置还是无法动摇。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (120, 'NBA季后赛四次被打脸，勇士2次托他福，预测猛龙G6夺冠不能少', '球迷', '现在再回味皮尔斯今天给出的预测，你还会相信他说的话吗？季后赛到现在依旧被打脸4次，可以跟巴克利相媲美了，也许皮尔斯本人就是勇士球迷，他之所以说这样的话，只是毒奶猛龙罢了。G6猛龙能否顶住皮尔斯的毒奶，我们拭目以待吧。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (121, '随队记者：克莱&考辛斯可能不出战今夏的男篮世界杯', '球迷', '至于考辛斯，他今天表示：“可能不会是今年，今夏我还有很多东西要练，这将是我的专注点，所以今夏可能就不参加了。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (122, '五队愿奉上长约，复出后仍能场均20+，杜兰特的前景真会如此吗', '球迷', '跟腱伤很难痊愈，但是越来越多球员复出成为高效的球员，比如步行者队马修斯，还有杜兰特队友考辛斯。无论杜兰特从伤病中恢复到什么程度，至少他仍然能在高水平上得分和反弹。“杜兰特不会从联盟的顶级球员跌到50名，即使有跟腱受过伤。”联盟的一名高管表示，“也许他能进入前十，我仍然认为杜兰特是一个场均能得到20，25分的球员。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (123, '戴维斯指示经纪人去湖人，紫金报价莺歌+鲍尔+4号签', '球迷', '现年26岁的浓眉本赛季常规赛出战56场球，场均出场33.0分钟，交出25.9分12.0篮板3.9助攻2.4盖帽1.6抢断的数据。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (124, '霍华德同未婚妻观看WNBA 女方为WNCAA球员', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (125, '杜兰特跟腱断裂已完成修复手术，术后发文丝毫没有怪罪勇士', '球迷', '杜兰特发文宣布自己的伤情后，NBA众球星们纷纷第一时间送上了诚挚的祝福。乐福：兄弟！祝你早日康复。以赛亚-托马斯：祈福！班巴：祝福早日康复！保罗等球星，对杜兰特的这一动态进行了点赞。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (126, '新西兰男篮世界杯集训大名单：亚当斯名列其中', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 402, '1', 'zrs直播吧', '新西兰男篮世界杯', '新西兰男篮世界杯', '新西兰男篮世界杯');
INSERT INTO `app_articlemodel` VALUES (127, '帕金斯：雷霆不会让杜兰特复出，也不会担心他想做些什么', '球迷', '“有一句老话是这样说的，人们来你葬礼献花，却不愿意在你生病时端上一碗汤。这就是KD现在的情况，每个人都在假装关心KD的利益，实际上他们并不，这对我来说好虚假。”前NBA球员杰伦-罗斯在谈到KD跟腱受伤一事时说道。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (128, '权威媒体曝雷霆酝酿交易乐福，威少联手大学战友再冲冠', '球迷', '不过，站在骑士的角度，他们虽然正处在重建阶段，但却未必愿意吃下雷霆的两份大合同。有分析就认为，亚当斯和罗布森并不是他们心仪的筹码。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (129, '克拉克森@库兹马：该开始收拾行李了 兄弟', '球迷', '之后骑士球员克拉克森发了一条略带调侃意味的社交媒体状态：“该死的，@库兹马，哈哈，该开始收拾行李了，兄弟（大笑）。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (130, '腿都软了！吉米-巴特勒体验迈凯伦F1不断爆粗口', '球迷', '视频中，巴特勒一上车就感觉有点不对劲，随着车速的加快，巴特勒开始慌了，不断的喊着“relax，relax（放松）。”随后朝着驾驶员喊着：“你开的太快。”不断地爆粗口。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (131, '杜兰特跟腱受伤尼克斯考虑重建，浓眉联手詹皇可能性大增', '球迷', '杜兰特受伤的连锁反应已经爆发，现在交易的机会已经到来，如果尼克斯真的选择放弃浓眉哥，以新秀为基础重建的话，詹皇湖人的机会就来了。抢走浓眉，签下第3巨头，杜兰特受伤勇士削弱，詹皇夺第4冠天赐良机。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (132, '杜兰特伤病史回顾：一赛季全勤，巅峰场均38分钟埋隐患', '球迷', '2013年季后赛，杜兰特曾在季后赛中因为伤病缺席过比赛，当时雷霆队被淘汰，今年季后赛再次缺阵，这是他职业生涯中第二次在季后赛中缺席，这也让勇士队凶多吉少。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (133, '欧文引用名言：原谅人性的自私 温柔对待这个世界', '球迷', '特蕾莎修女于1979年得到诺贝尔和平奖，她被美国人民投票选为二十世纪最受尊敬人物榜单之首。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (134, '欧文绿军11号球衣五折促销，德鲁大叔开启离队倒计时', '球迷', '欧文本赛季季后赛的表现并不符合球队对他的期待，场均21分7助攻，但投篮命中率仅有38%，三分命中率为31%。得分排名仅在第13位，两个投篮命中率更是低至联盟60开外。作为球队老大，这种表现相信很难让球队满意。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (135, '另辟蹊径？篮网有意招募欧文好友米勒担任球队助教', '球迷', 'Report: Nets want to hire Mike Miller, close friend of Kyrie Irving', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (136, '科尔：若事先知道杜兰特会伤跟腱，绝不会让他复出 ', '球迷', '现年30岁的KD今年季后赛打了12场球，场均出场36.8分钟，交出32.3分4.9篮板4.5助攻1.1抢断1.0盖帽的数据。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (137, '小卡：打球的这段时光会是我一生中最棒的时光', '球迷', '小卡回答道：“当那些事情发生的时候，我会思考许多，但是随着我年龄的增长，我会停止思考那些事情，我慢慢意识到生活和篮球完全是两码事，只要享受当下就可以了，就像我经常说的，打篮球时只要上场，享受乐趣就可以了，打球的这段时光会是我一生中最棒的时光，我现在27岁，这么年轻，我不应该为生活中不重要的事情感到有压力，只要我的家人是健康的，能见着我所爱的人，能走，能跑，不受伤病困扰，这些事情才是我认为重要的事情，我要做的就是上场之后拼尽全力，发挥出最佳状态，争取赢下比赛。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (138, '卡佩拉场均16+12第一个被甩卖，火箭无缘西决真的怪他吗', '球迷', '目前看来，如果绿军真的与火箭进行交易，那么大概率会使用杰伦布朗作为筹码进行交易，虽然这能够补强火箭的锋线天赋，但是内线绝对高度又下降严重，而且在魔球理论中篮下最关键的一点也没了，火箭这不是自废武功吗？在4000万都不是稀罕事的现在，指望用1500万的卡佩拉去交易补强，火箭这是图什么呢？', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (139, 'Woj：尼克斯和篮网仍有意同时签下欧文和KD', '球迷', '4、', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (140, '马刺助教团接连被挖墙脚，波波维奇接班人跳槽成奥林匹亚主帅', '球迷', '加上去年离队成为黄蜂主帅的詹姆斯·博雷戈，两年里陪伴波波维奇左右的助教只剩下贝基·哈蒙一人，威尔·哈迪将在下赛季承担更多的责任，球队势必需要通过内部挖掘潜力人员或者聘请一位资深助教来填补空缺。在球队阵容的未来尚不明晰之际，教练组和管理层又出现了巨大的动荡。马刺这个多事之秋，远比想象中还要来得猛烈。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (141, '麦考祝福KD：你让我相信一切皆有可能', '球迷', '麦考和杜兰特曾在勇士做过两个赛季的队友，在2016-17赛季和2017-18赛季两人跟随勇士拿下了总冠军。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (142, '杜兰特未来职业生涯恐蒙阴影，留守金州1年或为最佳选择', '球迷', '不管怎么说，此次伤病对于杜兰特而言都是毁灭性的，可能一次错误的决定，将会断送全联盟目前最具攻击力的球员的整个职业生涯。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (143, '杜兰特跟腱受伤引人深思，库班建议联盟研发评估肌腱的仪器', '球迷', '库班的这个建议对球员、球队、联盟三方都有好处，他表示就算不能立即出成果，也要让之后的那些球员从中受益，他处处为球员着想，不愧是大部分人心中联盟最好的老板！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (144, '可喜可贺！KD手术迎利好消息，主刀神医曾拯救大洛生涯', '球迷', '在NBA历史上，的确有不少球员倒在了“阿喀琉斯之踵”的诅咒下，不过也有球员幸运的康复过来，比如当年的“人类电影精华”多米尼克-威尔金斯。然而，因为有顶尖专家的治疗，杜兰特的康复前景却值得看好。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (145, '拉塞尔点赞球迷自制的欧文篮网球衣照片', '球迷', '在社交媒体上，一位篮网球迷上传了一张自制的篮网欧文球衣和拉塞尔的球衣的照片，这也吸引了拉塞尔的关注，并且他也进行了点赞。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (146, '麦当劳在猛龙单场进12个三分活动中已花费540万美元', '球迷', '根据美媒businessflavors报道，截止至目前，麦当劳在这个活动中已经花费了540万美元，超过了他们预计的三倍。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (147, '詹姆斯签下4年1.53亿大合同，为什么年薪到手仅剩1400万美元？', '球迷', '所以詹姆斯虽然有着3600万的年薪，再扣掉所有税收、佣金、杂项之后，到手的只有35%左右，也就是1400万美元，相信这个数字在不了解之前肯定没人相信。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (148, '欧文与前经纪人分道扬镳，将加盟杜兰特所在经纪公司', '球迷', 'Report: Kyrie expected to sign with Roc Nation Sports', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (149, '科尔：骑士聘用林赛很明智 女篮水平也在不断提高', '球迷', '据昨日报道，前WNBA球星斯文-凯什将担任鹈鹕篮球运营和球队发展副总裁。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (150, '库里谈猛龙球迷咒骂父母，但完全没有影响到他们', '球迷', '的确，猛龙球迷在这个系列赛中的表现有些疯狂，他们不仅辱骂库里的妻子，挑衅勇士球迷，而且还在杜兰特受伤后欢呼雀跃。不过多伦多市长John Tory在接受采访时谴责了猛龙球迷的不当行为，他同时表示，部分球迷的行为并不能代表所有猛龙球迷，媒体不应该过度渲染，更不应该以偏概全，大多数猛龙球迷都是非常棒的球迷。此后的相关报道，一位猛龙球迷在社交媒体晒出一篮花和一封诚恳的道歉信，也有球迷自发地为杜兰特的慈善基金会捐款，表达内心的歉意。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (151, '不执行球员选项，解雇经纪人，欧文是在为与杜兰特联手铺路吗？', '球迷', '在今天杜兰特亲自在社交媒体上宣布自己是跟腱撕裂且已经成功接受了手术。杜兰特预计恢复时间达到了11个月，这也让今年的自由市场蒙上了一层薄纱，但这并不影响杜兰特的市场价值。据《The Athletic》记者David Aldridge报道，多位联盟消息人士告诉他，跟腱受伤不会改变某5支球队预计在今年休赛期追求杜兰特的方程式。且有球队愿意冒这个险，愿意给杜兰特亿元合同。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (152, '打击！KD伤情更新遭跟腱断裂，勇士也该担忧7+4小将伤病', '球迷', '关键篮板保护能力的重要性被认为是这轮系列赛极其关键的部分，而卢尼的篮板和油漆区保护能力也让我们看到，除了杜兰特的伤病，卢尼的缺席可能也是勇士无法完成逆转的重要原因。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (153, '不再偷偷祝福！威少点赞KD宣布成功手术动态', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (154, 'KD跟腱断裂今夏不愁，勇士愿出顶薪，最受益的莫过于此队', '球迷', '那么这是否意味着像欧文和巴特勒这种原本有意搭档杜兰特的球员会最终选择有詹姆斯坐阵的湖人？无论如何，这在今年休赛期都会是只得期待的事件。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (155, '美记：尼克斯本周将与热门新秀贾-莫兰特进行会面', '球迷', '此前，尼克斯已经试训了RJ-巴雷特和贾雷特-卡尔弗。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (156, '扎扎祝福KD：祝你能迅速的康复 你会实现反弹的', '球迷', '杜兰特的前队友扎扎-帕楚里亚更新了社媒为KD送上了祝福：“我的兄弟，祝你能快速康复，我知道你肯定会实现反弹的，爱你，兄弟。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (157, '里奇保罗公开警告凯尔特人，安吉会放弃浓眉追求卡佩拉吗', '球迷', '另外，NBA记者Ian Begley官方报道，湖人已经就完成关于鹈鹕球员安东尼-戴维斯的多方交易取得新的进展，尼克斯并不愿意提供鹈鹕总裁大卫格里芬索要的全部筹码。目前，鹈鹕还在和多支球队展开激烈的谈判，湖人队仍然是处于最有优势得到浓眉哥的一方。詹姆斯确定可以喜笑颜开了，因为现在所有的优势都在湖人队的手中，只要不搞砸，慢慢来，交易成事基本稳了。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (158, 'NBA跟腱断裂球星大盘点：科比加速退役，船长黯然退役', '球迷', '这位詹姆斯身边曾经的功臣，在2014-15赛季对阵森林狼的比赛中意外受伤，赛后被确认为跟腱断裂随后宣布赛季报销，而这也为汤普森的上位提供了机会，从此瓦莱乔慢慢被球迷所遗忘，这位巴西“影帝”再也没有机会展示他的表演了。值得一提的是，瓦莱乔回归后场均只能拿到2.6分，他在两个赛季里一共只打了67场比赛。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (159, '火箭认领老鹰内线弃将戴维斯，莫雷为饼皇交易铺路？ ', '球迷', '本赛季常规赛，火箭队取得53胜排在西部第4位。今年西部半决赛，火箭队总比分2-4被卫冕冠军勇士队淘汰出局。而在去年西部决赛，火箭队与勇士队大战7场，最终落败。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (160, '2019年全球运动员富豪榜：NBA仅三人跻身前十，詹姆斯8900万领衔', '球迷', '在这份榜单中，前三位均被足球运动员占据，分别是巴萨梅西（1.27亿美元），尤文C罗（1.09亿）和大巴黎内马尔（1.05亿），其中梅西光薪资就已经达到9200万美元，不禁感叹足球俱乐部的土豪。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (161, '洛瑞：纳斯和阿德尔曼很相似 他们都比较冷静', '球迷', '总决赛G6将于北京时间明天上午9：00，在勇士主场开打。目前，猛龙3-2领先于勇士。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (162, '皮尔斯下赛季将不会担任分析师一职', '球迷', '此外，比卢普斯也不会留任，杰伦-罗斯将继续担任分析师一职。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (163, '巴克利：猛龙会赢下明天的比赛 很失望上一场他们没能拿下', '球迷', '明天早上9点，猛龙将客场挑战勇士。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (164, '意料之中！马文-威廉姆斯执行下赛季1500万合同，乔丹心凉半截', '球迷', '按照马文-威廉姆斯目前的状态来看，领完下赛季1500万美元的合同之后虽然他可能无法再签下高薪，但在NBA混到一份保障性合同问题还是不大的，他算得上是一名非常靠谱的蓝领球员。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (165, '炮轰！杜兰特母亲疑似喊话勇士：若非医生劝告，不可能复出', '球迷', '现年30岁的KD今年季后赛打了12场球，场均出场36.8分钟，交出32.3分4.9篮板4.5助攻1.1抢断1.0盖帽的数据。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (166, 'KD妈妈：儿子一直努力想要复出 队医曾说他可以打', '球迷', '谈到猛龙球迷在阿杜受伤后的反应，旺达表示：“受伤的时候，我只关注自己的儿子，没太注意猛龙球迷的反应，但之后我知道了这件事，我感觉非常伤心。这种事情让人沮丧，但是猛龙队也有一些队员，比如说伊巴卡，我跟他关系不错，也很欣赏他。怎么说呢？对手球迷有这种表现，发生就发生了吧。好在不少猛龙球员在尽力让观众冷静下来，我很欣慰他们能这样做。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (167, '克莱谈系列赛：为KD而战 他想要我们在最高水平上竞争', '球迷', '总决赛G6将于北京时间明天上午9：00，在勇士主场开打。目前，勇士2-3落后于猛龙。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (168, '杜兰宣布跟腱断裂接受手术：我跟腱断了，复出之旅从此刻开始', '球迷', '现年30岁的KD今年季后赛打了12场球，场均出场36.8分钟，交出32.3分4.9篮板4.5助攻1.1抢断1.0盖帽的数据。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (169, '杜兰特亲自官宣：我已接受跟腱断裂修复手术，回归之旅已经开始', '球迷', 'Kevin Durant confirms ruptured Achilles: \'Road back starts now\'', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (170, '重磅！欧文与前经纪人解约，签约杜兰特所在公司', '球迷', '今天早些时候，欧文已经正式决定不执行球员选项，选择成为一名自由球员。紧接着又解约经纪人，今夏势必会有变动了。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (171, 'Woj：欧文和经纪人Jeff Wechsler分道扬镳', '球迷', '今年的自由市场将于北京时间7月1日早上6点开启。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (172, '杜兰特本赛季季后赛场均32.2分 创个人单赛季新高', '球迷', '其中场均得分创造了杜兰特个人季后赛单赛季最高值，此前最高为12-13赛季的30.8分。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (173, 'KD主刀医生曾为大洛修复跟腱 后者随后五季出场均超72次', '球迷', '奥马利曾在2014年3月为篮网球员布鲁克-洛佩斯（现效力于雄鹿）进行了左脚脚踝跟腱修复手术。随后的五个赛季中，大洛佩斯的出场次数分别为72、73、75、74和81。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (174, '欧文已经和杜兰特讨论过一起加盟尼克斯或者篮网的可能性', '球迷', '消息人士透露，篮网和快船也是对浓眉感兴趣的两支球队，但是在和鹈鹕的谈判中，他们的报价不具有吸引力。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (175, 'NBA早报：追梦不担心5技犯，黄蜂寻求向上交易选秀权', '球迷', '据美国媒体消息，黄蜂正在寻求向上交易选秀权，以便能够摘下一位天赋更高的球员。黄蜂目前手握首轮第12号签，球队总经理米奇-库布切克正在积极寻求交易。不过黄蜂手中并没有太多优质筹码，成功向上交易选秀权的难度很大。2019年的新秀中有不少天赋很高年轻球员，但基本上都集中首轮前5顺位中。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (176, '湖人3换1报价浓眉鹈鹕仍不满足，只因他们最心仪之人不在其中', '球迷', 'Report: Lakers want to hold on to Kyle Kuzma in an Anthony Davis trade', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (177, '官方：KD成功接受跟腱断裂修复手术', '球迷', '本月11号的总决赛G5中，KD火线复出，不过在比赛进行到第二节时再次受伤，提前退场。之后他的伤势确诊为右跟腱断裂。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (178, '莱昂纳德给KD建议：一天天努力康复 确保健康后再回归', '球迷', '“所以你必须要转变你的态度，每天都努力进步一点点，相信自己有一天会回到球场，你希望回来的时候还是以前的模样。确保自己感觉足够健康，足够自信之后再回来，那一天一定会到来的，每一天都要努力，这是你的任务，回来做你热爱的事情。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (179, 'G6勇士主场球员通道边座位门票56422美元一张', '球迷', '底线处的球票被标价61000美元，如果算上服务费，那么价格会再次打破纪录。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (180, '伦纳德：生活和篮球是两码事，只要享受当下就可以了', '球迷', 'Death of Kawhi\'s father gave him added perspective on life', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (181, '克莱：KD已经不仅仅只是水花兄弟的一员', '球迷', '克莱回答：“事情发展到这个节骨眼上，他早已不仅仅只是水花兄弟的一员了。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (182, '洛瑞谈卡哇伊：他是最出色的攻防兼备的球员', '球迷', '猛龙与勇士的G6将于北京时间明日上午9点在勇士主场进行，目前猛龙3-2领先。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (183, 'G5的暂停是否影响球队势头？纳斯：这是个沉重的问题', '球迷', '“势头是肯定存在的，有时候暂停会影响到它，但有时候也不会。有时候就算你不叫暂停它也会被影响。”纳斯继续说道。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (184, '据报道，湖人队对自由球员肯巴·沃克“非常感兴趣”', '球迷', ' Lakers will reportedly be ‘very interested’ in Kemba Walker in free agency ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (185, '追梦：小卡和詹姆斯完全不同 不担心会因技规而停赛', '球迷', '勇士现总比分2-3落后猛龙，双方G6将于明天上午9点开打。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (186, '库里谈猛龙球迷咒骂自己父母：很愚蠢 但没影响到他们', '球迷', '根据此前的消息，在总决赛G5结束后库里父母抵达下榻的酒店时遭遇到猛龙球迷的疯狂咒骂。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (187, '勇士官方：凯文-卢尼被列入G6出战成疑的名单', '球迷', 'G5卢尼又因胸部受伤提前退出比赛，但赛后他在接受采访时称自己对于能够出战G6保持乐观。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (188, '美记：勇士事先已知KD将手术 但KD希望自己宣布', '球迷', '本赛季季后赛，杜兰特为勇士出战12场，场均出场36.8分钟得到32.2分4.9篮板4.5助攻1.1抢断1盖帽。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (189, '美记：鹈鹕最想要的是库兹马 但湖人不愿将他放入浓眉交易', '球迷', '相关新闻>>>Stein：湖人为浓眉的报价为莺歌&鲍尔&四号签', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (190, '报道:杜兰特选择加盟是他最后的选择', '球迷', ' Report: Kevin Durant opting in is his last resort ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (191, '达米安·利拉德获得NBA公民奖', '球迷', ' Damian Lillard wins NBA’s citizenship award ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (192, '凯文·杜兰特宣布他今天接受了跟腱断裂的手术', '球迷', ' Kevin Durant announces he had surgery today to repair ruptured Achilles ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (193, '报道:湖人队试图阻止凯尔·库兹马参加安东尼·戴维斯的交易谈判', '球迷', ' Report: Lakers trying to keep Kyle Kuzma out of Anthony Davis trade talks ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (194, 'Shams：火箭已认领被老鹰裁掉的德扬泰-戴维斯', '球迷', '今年他与老鹰签下了两份10天合同，随后被裁员。本赛季德扬泰-戴维斯场均出场13.1分钟可以得到4.0分4.0篮板。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (195, '科尔：本以为小腿再次受伤是最差结果 KD在上场前同意了一切', '球迷', '相关新闻>>>杜兰特社媒发文宣布跟腱断裂手术成功', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (196, '克莱：望球迷在G6给球队&KD全力支持 任何质疑KD的人都不可理喻', '球迷', '勇士现总比分2-3落后，G6将于明天上午9点开打。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (197, '湖人、凯尔特人和鹈鹕在交易谈判安东尼·戴维斯', '球迷', ' Lakers, Celtics and Pelicans in trade talks on Anthony Davis ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (198, '里基·卢比奥谈NBA自由球员:这很有趣，会有多米诺骨牌效应', '球迷', ' Ricky Rubio on NBA free agency: It will be fun, there will be a domino effect ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (199, '凯文·杜兰特接受了修复跟腱断裂的手术', '球迷', ' Kevin Durant has underwent surgery to repair a ruptured Achilles tendon ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (200, 'Stein：湖人为浓眉的报价为莺歌&鲍尔&四号签', '球迷', '据NBA记者Tania Ganguli报道，有消息源称，湖人一直不愿交易库兹马，但鹈鹕希望他被加入交易报价。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (201, '杜兰特因跟腱断裂接受手术', '球迷', ' Durant undergoes surgery for ruptured Achilles tendon ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (202, 'Windhorst：浓眉已指示其经纪人操作他加盟湖人', '球迷', '相关新闻>>>里奇-保罗警告凯尔特人：即使得到浓眉 也只是一年租借而已', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (203, '报道:凯尔特人的拜恩斯选择2019- 2020赛季', '球迷', ' Report: Celtics\' Baynes opts in for 2019-20 ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (204, '库里最后一次热身投篮旁边的场边座位售价11.2万美元', '球迷', ' Courtside seats next to Curry\'s final warmup shot selling for $112K ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (205, '报道:凯尔特人，湖人和鹈鹕就戴维斯的转会进行了谈判', '球迷', ' Report: Celtics, Lakers engaged in trade talks with Pelicans for Davis ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (206, '报道:尼克斯计划追逐卡哇伊，相信凯里更喜欢篮网', '球迷', ' Report: Knicks plan to pursue Kawhi, believe Kyrie prefers Nets ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (207, '杜兰特社媒宣布已成功接受跟腱断裂修复手术', '球迷', '杜兰特发文详细内容稍后。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (208, '隆佐·鲍尔与新物理治疗师合作，专注于伤害预防', '球迷', ' Lonzo Ball working with new physical therapist specializing in injury prevention ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (209, 'Shams：杜兰特已成功接受跟腱断裂修复手术', '球迷', '离场前杜兰特得到11分2篮板1盖帽。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (210, '在选秀之夜，安东尼·戴维斯会成为湖人的一员吗?', '球迷', ' Podcast: Will Anthony Davis be a Laker by draft night? ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (211, '受伤并没有改变尼克斯队的杜兰特的计划', '球迷', ' Injury hasn\'t changed Knicks\' Kevin Durant plans ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (212, '凯文杜兰特受伤后“日子不好过”:妈妈', '球迷', ' Kevin Durant is \'having a rough time\' after injury: mom ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (213, 'Shams：凯尔特人球员阿隆-贝恩斯执行下赛季球员选项', '球迷', '本赛季季后赛，贝恩斯为凯尔特人出战9场，场均得到2.1分2.8篮板0.3助攻0.3抢断0.3盖帽。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (214, '凯里·欧文的追逐正式开始了', '球迷', ' The Kyrie Irving chase is officially on ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (215, '报道:巴雷特不打算在尼克斯队训练后与其他球队见面', '球迷', ' Report: Barrett not planning to meet with other teams after Knicks workout ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (216, '纳什，Siakam，护士强调新的小NBA加拿大领导委员会', '球迷', ' Nash, Siakam, Nurse highlight new Jr. NBA Canadian Leadership Council ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (217, '托尼·帕克在18个赛季后退役', '球迷', ' Tony Parker retires after 18 seasons ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (218, '猛龙队对勇士队的第五场比赛标志着十年来最昂贵的体育决赛门票', '球迷', ' Raptors-Warriors Game 5 marks decade\'s most expensive sports final ticket ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (219, '2019年世界杯前夕，美国篮球宣布20人参赛', '球迷', ' USA Basketball announces 20-player pool ahead of 2019 World Cup ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (220, '帕克不想和黄蜂队告别巡演', '球迷', ' Parker didn\'t want farewell tour with Hornets ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (221, '报告:鹈鹕开放多队交易涉及戴维斯', '球迷', ' Report: Pelicans open to multi-team trade involving Davis ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (222, '报道:威廉森本周将会见鹈鹕', '球迷', ' Report: Williamson to meet with Pelicans this week ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (223, '报道:戴维斯关注的是湖人队，尼克斯队是首选的目的地', '球迷', ' Report: Davis focused on Lakers, Knicks as preferred destinations  ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (224, '勇士队认为杜兰特在第五场比赛中跟腱受伤', '球迷', ' Report: Warriors believe KD suffered torn Achilles in Game 5 ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (225, 'NBA球员对杜兰特跟腱受伤的反应', '球迷', ' NBA players react to Durant suffering Achilles injury ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (226, '勇士队在杜兰特因伤缺阵后延长了总决赛第六场的赛期', '球迷', ' Warriors extend Finals, force Game 6 after losing Durant to injury ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (227, '勇士队对猛龙球迷欢呼杜兰特受伤的反应', '球迷', ' Warriors react to Raptors fans cheering Durant\'s injury ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (228, '第五场:杜兰特的受伤让勇士的胜利黯然失色', '球迷', ' Game 5 takeaways: Durant\'s injury overshadows gutsy Warriors win ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (229, '帕克职业生涯中最重要的6个时刻', '球迷', ' 6 most important moments of Parker\'s career ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (230, '受伤的杜兰特在赢球后发消息说:“我的灵魂深处受伤了。”', '球迷', ' Injured Durant posts message after win: \'I\'m hurting deep in the soul\' ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (231, '护士:第四节晚些时候暂停，让猛禽休息一下', '球迷', ' Nurse: Late 4th-quarter timeout was called to give Raptors a rest ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (232, '报道:灰熊队聘请雄鹿队助理教练泰勒·詹金斯为主教练', '球迷', ' Report: Grizzlies hiring Bucks assistant Taylor Jenkins as head coach ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (233, '报告:杜兰特在第五场比赛前还没有达到100%', '球迷', ' Report: KD wasn\'t \'anywhere close to 100 percent\' prior to Game 5 ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (234, '报告:杜兰特前往纽约进行跟腱评估', '球迷', ' Report: Durant traveling to New York for Achilles evaluation ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (235, '裁判在最后一分钟对勇士队的罚球失误', '球迷', ' L2M report: Refs missed shooting foul against Warriors in final minute ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (236, '鹈鹕格里芬:选秀前不急着转移戴维斯', '球迷', ' Pelicans\' Griffin: No urgency to move Davis before draft ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (237, '怪物能源声称猛龙的标志太像自己的了', '球迷', ' Monster Energy alleges Raptors logo is too much like its own ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (238, '勇士队在杜兰特受伤后从悬崖边爬了回来', '球迷', ' NBA Podcast: Warriors claw back from the brink after Durant\'s injury ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (239, '报道:黄蜂队的威廉姆斯行使1500万美元的球员选择权', '球迷', ' Report: Hornets\' Williams exercises $15M player option ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (240, '看点:猛龙队球迷在酒店外咒骂库里的父母', '球迷', ' Watch: Raptors fans swear at Curry\'s parents outside hotel ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (241, '报道:卡梅洛时代引起尼克斯内部对潜在的广告交易的担忧', '球迷', ' Report: Carmelo era causing concerns within Knicks over potential AD trade ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (242, '报道:尽管杜兰特受伤，希望追逐他的球队将继续留在亨特', '球迷', ' Report: Teams expected to pursue Durant will stay in hunt despite injury ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (243, '里奇-保罗:凯尔特人应该把戴维斯的交易看作是租借合同', '球迷', ' Rich Paul: Celtics should view potential Davis trade as rental deal ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (244, '猛龙队球迷开始筹款，支持杜兰特的慈善事业', '球迷', ' Raptors fan starts fundraiser to support Durant\'s charity  ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (245, '雷霆队的乔治接受了成功的左肩手术', '球迷', ' Thunder\'s George undergoes successful left shoulder surgery ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (246, '报告:凯里拒绝选择权，成为自由球员', '球迷', ' Report: Kyrie to decline option, become free agent ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (247, '猛龙队是如何在第五场比赛的最后3分钟失去冠军的', '球迷', ' How the Raptors lost their grip on a title in the last 3 minutes of Game 5 ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (248, '勇士队计划为杜兰特提供一份不寻常的长期合同', '球迷', ' Report: Warriors planned to offer KD long-term deal with unusual outs ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (249, '骑士队聘请加州女子队的高特利布担任助理教练', '球迷', ' Cavaliers hire Cal women\'s HC Gottlieb as assistant coach ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (250, '杜兰特认为这是“最后一招”', '球迷', ' The option Kevin Durant sees as \'the last resort\' ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (251, '安东尼·戴维斯的威胁和承诺只会越来越具有爆炸性', '球迷', ' Anthony Davis\' threats and promises are only getting more explosive ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (252, 'Woj：骑士聘伯克利女篮主帅林赛-戈特利布为助教', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (253, 'KD妈妈：他受伤之后告诉我别担心 会没事的', '球迷', '“大概五到十分钟之后我才跟他说上话，”旺达说，“他就是告诉我别哭，他告诉我别担心、会没事的。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (254, '“自由”似乎要惹恼山猫了', '球迷', ' Liberty look to upset the Lynx ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (255, '电影研究:金牛座王子如何适应布鲁克林', '球迷', ' FILM STUDY: How Taurean Prince can fit in Brooklyn ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (256, '真挚的祝福！安托万-贾米森43岁生日快乐', '球迷', 'NBA职业生涯常规赛，贾米森场均上场34.8分钟，得到18.5分7.5篮板1.6助攻，三分命中率34.6%。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (257, 'NBA交易传闻排名:火箭在移动?', '球迷', ' NBA trade rumor rankings: Rockets on the move? ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (258, '普茨:布鲁克林吸引了自由球员', '球迷', ' Pooch: Free agents attracted to Brooklyn ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (259, '历史上的今天：诺维茨基率独行侠夺得首个总冠军', '球迷', '在当年季后赛中，独行侠在西部首轮以4-2击败开拓者，西部半决赛以4-0击败湖人，西部决赛以4-1击败雷霆，总决赛4-2击败热火。整个总决赛系列赛，诺维茨基场均上场40.3分钟，得到26.0分9.7篮板2.0助攻，三分命中率为36.8%。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (260, '杜兰特的受伤对球员和球队来说都是一个大问题', '球迷', ' KD’s injury a big issue for player and the teams who wanted him ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (261, '历史上的今天：乔丹带领公牛首夺总冠军', '球迷', '当年季后赛中，公牛队首轮3:0战胜尼克斯，东部半决赛4-1战胜76人队，东部决赛4-0战胜活塞，总决赛4-1战胜湖人。整个季后赛之旅，乔丹场均登场40.5分钟，得到31.1分6.4篮板8.4助攻2.4抢断1.4盖帽。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (262, '安东尼·戴维斯的贸易谈判热点和其他NBA播客的一天', '球迷', ' Anthony Davis trade talks heat up and other NBA podcasts of the day ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (263, '里奇-保罗警告凯尔特人：即使得到浓眉 也只是一年租借而已', '球迷', '浓眉哥目前的合同将在2021年夏天到期，但是在2020年夏天，他拥有球员选项。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (264, '帕克谈职业生涯最激动的时刻：2013年欧锦赛半决赛', '球迷', '法国在2013年欧锦赛的半决赛以75-72加时击败西班牙，帕克19投11中，得到32分6篮板2抢断。在决赛中，法国以80-66击败立陶宛夺得冠军。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (265, 'Begley：湖人已就促成浓眉的多方交易取得了进展', '球迷', '根据此前纽约记者Marc Berman报道，鹈鹕并不认为尼克斯的年轻球员在浓眉交易中有足够的吸引力，而他们则是认为凯尔特人拥有最好的年轻球员资产。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (266, '爵士队理疗师：还无法做到某些运动损伤的预知', '球迷', 'Pandya博士则表示：“当小腿肌肉力量下降时，患者往往会增加跟腱的负担以产生需要的力量。这是杜兰特二次损伤的原因。这方面的伤势并不罕见。我相信他们队里有相关医学专家进行了评估，不然不会冒着风险让其出场。因为只是一场篮球比赛而已，相对于身体没那么重要。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (267, '凯文杜兰特的受伤对网队自由球员的计划有何影响', '球迷', ' How Kevin Durant’s Injury Impacts the Nets Free Agent Plans ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (268, '库兹马发推示意将启程 球迷调侃：祝你平安抵达新奥尔良', '球迷', '根据此前的流言，湖人有意打包队内年轻球员以换来鹈鹕球星安东尼-戴维斯。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (269, '随队记者：骑士仍希望试训亨特 想在选秀大会前与雷蒂什会面', '球迷', '今年选秀大会，骑士拥有首轮5号签和26号签。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (270, '选秀专家：利特尔&朗福德&希罗被邀请进入小绿屋', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (271, '欧文?管家吗?网队的“计划”让每个人都确信无疑', '球迷', ' Irving? Butler? The Nets\' plan everyone \'definitely\' believes ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (272, '雄鹿记者：米德尔顿搬进了密尔沃基郊区的新家', '球迷', '本赛季，常规赛米德尔顿场均贡献18.3分6篮板4.3助攻1抢断；季后赛他场均可以得到16.9分6.3篮板4.4助攻0.6抢断。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (273, '2019年NBA选秀大会仍有10名有望进入欧洲赛场的球员', '球迷', ' 10 Euro-prospects remain candidates for the 2019 NBA Draft ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (274, '法国公布世界杯名单：戈贝尔、巴图姆等人领衔', '球迷', '根据2019年男篮世界杯分组情况，法国与多米尼加、德国、约旦被分在G组。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (275, '杜兰特跟腱受伤联盟多队仍愿给他顶薪，KD的前景真有这么乐观吗', '球迷', '一位消息人士称，勇士本计划说服杜兰特签下一份长约，带有这样的协议——如果KD想在合同期内任何时刻离队，勇士都会满足他的愿望。而即使杜兰特可能因伤缺席下赛季大部分比赛，这一计划仍有可能实现。”那么各位看官，你们支持是支持杜兰特留在勇士还是试水自由市场呢？', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (276, '诺维茨基职业生涯防守篮板数突破10000大关，数据排在历史第5位', '球迷', '最终，独行侠击败了灰熊。德克贡献2分5篮板1助攻1盖帽。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (277, '巴克利清楚的知道谁应该为杜兰特的受伤负责', '球迷', ' Charles Barkley knows exactly whom to blame for Kevin Durant\'s injury ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (278, '独行侠122-119险胜鹈鹕，克勒贝尔6封盖创个人常规赛生涯单场新高', '球迷', '6封盖创下了克勒贝尔个人常规赛生涯的单场封盖纪录。此前他的单场封盖纪录为5次，分别在2017年12月7日对阵凯尔特人、以及2017年12月27日对阵猛龙的比赛中得到过。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (279, '异国风情？哈登和好友在墨西哥旅游胜地度假', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (280, '杰伦-罗斯谈KD受伤：早说过他还不能打 看到了人们鳄鱼的眼泪', '球迷', '“现在我看到的是人们鳄鱼的眼泪，如果KD没打，同样的这些人会说\'KD真软’。（你说的是哪些人？）我说的是球迷，我说的是媒体们，我说的是联盟中那些认为KD没付出所有的自己的那些人。我周五就说过，他还不能打啊！”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (281, '老司机带带我！诺天王14中8狂砍赛季新高21分', '球迷', '诺维茨基也成为了NBA历史第8位在40岁以上的年纪砍下20+的球员。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (282, '布登谈詹金斯担任灰熊新帅：不可思议的家伙 很感激他', '球迷', '“他是一个不可思议的家伙。他工作非常出色，专注于细节，非常热爱这项运动。对于建立关系有着重要的理解。他努力让火车继续前进，对我而言他是很棒的，我永远感激他。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (283, '斯文-凯什：我会尽力去帮助球队 很欣赏霍乐迪', '球迷', '2018-19赛季鹈鹕排在西部第13位。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (284, 'NBA东部冠军2010：绿军4-2淘汰魔术，队史第21次获得东部冠军', '球迷', '在本场比赛中，魔术队头号球星“魔兽”霍华德拿下了28分12个篮板，表现依然抢眼，但却无法帮助球队取得胜利。赛后，魔术队主教练范甘迪还是称赞凯尔特人进入总决赛当之无愧，“他们打得太好了，对手实力强大，加内特变得无懈可击，你必须称赞他们的球员和教练组。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (285, '在凯文杜兰特受伤之后，尼克斯队可能的b计划', '球迷', ' Potential Plan Bs for Knicks after devastating Kevin Durant injury ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (286, 'NBA西部冠军2010：湖人西决4-2淘汰太阳，纳什被科比打服', '球迷', '“那不是射手式的投射，而是杀手式的，那是这项运动中最好的球员才能投出来的球。”纳什谈到科比最后时刻的连续高难度进球也是心服口服。而赢了球的湖人已经把注意力都集中到了绿军身上，“我们会看看自己成熟了多少，两年前对我们时凯尔特人干得非常出色。”科比说道。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (287, 'NBA称马克·加索尔在第五场比赛的最后一分钟被犯规', '球迷', ' NBA says Marc Gasol was fouled in last minute of Game 5 ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (288, 'NBA官网对比库里和莱昂纳德前五场数据', '球迷', '小卡的真实命中率是61.2%，当小卡上场时（共202分钟），球队每百回合净胜4.7分，小卡下场休息时（共38分钟），球队每百回合净胜18.7分。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (289, '德怀特-鲍威尔11投10中砍24分创生涯得分新高', '球迷', '本场比赛，鲍威尔上场37分钟，11投10中，三分2中2，得到24分8篮板4助攻2抢断2盖帽。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (290, '随队记者：卡尔弗参加骑士试训 和球队GM&主帅等人共进晚餐', '球迷', '卡尔弗今年20岁，身高2米，司职得分后卫，2018-19赛季场均得到18.5分6.4篮板3.7助攻1.5抢断，带领德州理工闯入最终四强，个人被评为大12区最佳球员，并入选NCAA最终四强最佳阵容。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (291, 'Woj：步行者有意以合适的价格续约博格达和赛迪斯-杨', '球迷', '本赛季，博格达诺维奇场均能得到18分4.1篮板2助攻。赛迪斯-杨场均12.6分6.5篮板2,5助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (292, '艾派-尤度：杜兰特事件后勇士队医可以下岗了', '球迷', '相关新闻>>>科尔赛前：医生告诉我杜兰特不会因复出而加剧伤势', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (293, 'NBA东部冠军2011：热火三巨头4-1击败公牛，罗斯双拳难敌四手', '球迷', '热火首发阵容：德维恩-韦德、迈克-毕比、乔尔-安东尼、克里斯-波什和勒布朗-詹姆斯。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (294, 'NBA西部冠军2011：独行侠4-1淘汰雷霆，时隔五年重返总决赛', '球迷', '雷霆首发阵容：拉塞尔-威斯布鲁克、萨博-塞弗罗萨、肯德里克 -帕金斯、凯文-杜兰特和塞尔吉-伊巴卡。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (295, '美记：勇士本计划说服KD续签长约 合同期内想离队都会满足他', '球迷', '杜兰特在昨天G5中复出再受伤，勇士总经理迈尔斯称KD是跟腱受伤，目前还未有任何相关信息流出。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (296, '官宣！尼克斯与独行侠完成涉及波尔津吉斯等七人大交易', '球迷', '本赛季至今，李场均上场13.3分钟能得到4.7分2.3篮板；伯克场均上场20.9分钟能得到11.8分2.8助攻；小哈达威场均上场32.6分钟能得到19.1分3.5篮板2.7助攻；史密斯场均上场28.4分钟能得到12.9分3篮板4.3助攻；马修斯场均上场29.8分钟能得到13.1分2.3篮板；小乔丹场均上场31.1分钟能得到11分13.7篮板。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (297, '祝福！攻防俱佳——朱-霍勒迪29岁生日快乐', '球迷', '本赛季的比赛里，霍勒迪场均出场35.8分钟，得到21.2分5.0板7.7助1.6端0.8帽。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (298, 'NBA西部冠军2012：雷霆4-2逆转马刺，俄城三少大战GDP组合', '球迷', '吉诺比利抢投三分仍然未能命中，马刺终于采取犯规战术，哈登稳稳地两罚两中，雷霆领先8分，此时离比赛结束只有14.8秒。马刺未能创造奇迹，最终接受被大逆转的命运。在上半场释放了全部能量之后，马刺下半场未能顶住年轻的雷霆，他们的赛季宣告结束。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (299, '纳西尔-利特尔：我与老鹰完美匹配', '球迷', '【新秀巡礼】北卡小哥利特尔：锡安克星？璞玉不琢不成器！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (300, '塔图姆：我们有天赋 但每个人好像都不在一个频道上', '球迷', '上赛季，塔图姆在季后赛中场均可得到18.5分4.4篮板2.7助攻1.2抢断。本赛季常规赛，塔图姆场均拿下15.7分6篮板2.1助攻1.1抢断，季后赛数据为场均15.2分6.7篮板1.9助攻1.1抢断。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (301, '多伦多市长谈KD受伤时球迷欢呼：他们是为上一个回合欢呼', '球迷', '他认为不应过度渲染多伦多球迷或者对他们以偏概全：“多伦多体育球迷是很棒的，他们也很体贴，他们能理解一名超级球星的心情，并且他们也给他送上了热烈的掌声。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (302, 'NBA东部冠军2012：热火抢七淘汰绿凯，三巨头合砍73分隆多成背景', '球迷', '绿军首发阵容：朗多、雷-阿伦、皮尔斯、巴斯、加内特', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (303, '约基奇32+16+4东契奇创新高，掘金迎4连胜力压勇士', '球迷', '掘金队：约基奇32分16个篮板4次助攻，穆雷22分7个篮板15次助攻，埃尔南戈麦斯12分6个篮板，普拉姆利11分9个篮板3次助攻，莫里斯16分4个篮板5次助攻，莱尔斯16分3个篮板，比斯利12分4次助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (304, '湖人新星库兹马在推特上晒自己在中国的坐标', '球迷', '每年的6月中旬，Nike都会邀请联盟的新星来到亚洲，担任全亚洲训练营的指导教练，该活动旨在鼓励青少年们勇敢追逐自己的篮球梦，2017年参加该项活动的是太阳新星德文-布克和国王新星巴迪-希尔德，2018年则是由76人队的新星本-西蒙斯参加此项活动。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (305, '德马库斯·考辛斯现在是勇士队最吸引人的球员:“去他们的!”', '球迷', ' DeMarcus Cousins is now Warriors\' most intriguing player: \'F--k them\' ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (306, 'Haynes：在昨日复出之前 杜兰特从未接近100%康复', '球迷', 'Chris Haynes表示，周一的个人训练和轻量训练并不能模拟一场极具竞争性的冠军赛的严酷性。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (307, '库班：从众多案例来看 联盟应研究预评估肌腱的仪器', '球迷', '球星杜兰特在昨天的总决G5受伤，初步诊断为跟腱撕裂。此外马修斯、考辛斯和巴里亚等球员都曾遭遇过跟腱撕裂。波尔津吉斯也曾饱受跟腱伤势和膝盖韧带撕裂的困扰。勇士', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (308, 'NBA西部冠军2013：马刺4-0横扫灰熊2007年后首次晋级总决赛', '球迷', '比赛还有48.7秒时，加索尔抛投命中，将比分追成了86-89。帕克强行突破，造成犯规后两罚两中，马刺仍领先5分。灰熊此后的投篮遭到盖帽，灰熊只有犯规。帕克又两罚两中后，为马刺锁定了胜局。马刺率先闯进总决赛，这是自2007年以来第一次。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (309, '东契奇新秀赛季6次砍下三双排在历史第四，排在前三的都有谁？', '球迷', '本场比赛前，东契奇赛季至今场均上场32.2分钟，得到21分7.5篮板5.7助攻1.1抢断（以3月24日前为主）。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (310, '维金斯为KD祈祷：希望你能迅速的康复', '球迷', '今天森林狼球员维金斯更新了社交媒体状态，为杜兰特祈祷：“兄弟，为你祈祷，希望你能迅速的康复。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (311, '吃的可好！圆脸登晒吃螃蟹照：爱吃辣椒螃蟹', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (312, 'NBA东部冠军2013：热火抢七淘汰步行者，三巨头合砍62分25板', '球迷', '末节比赛步行者并没有放弃，但无奈此前落后实在太多，全场比赛结束前7分41秒乔治六次犯规离场，比赛就基本进入垃圾时间，然而步行者主帅沃格尔拒绝换下全部主力投降，终场前3分钟，步行者终于换下全部主力，此时场上发生花絮，步行者队替补潘德格拉芙与热火球迷发生冲突……最终热火队以99-76大胜步行者，连续第三年杀进总决赛。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (313, '官宣！卢卡-东契奇和特雷-杨当选11月东西部最佳新秀', '球迷', '杨是18年的5号秀，本赛季至今共出场23次，场均上场29.2分钟能得到15.6分3篮板7.6助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (314, 'NBA西部冠军2014：马刺4-2淘汰雷霆，GDP第五次获得西部冠军', '球迷', '雷霆：杜兰特、伊巴卡、帕金斯、杰克逊、威斯特布鲁克', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (315, '渐入佳境！东契奇31分创职业生涯单场得分新高', '球迷', '31分创下了东契奇职业生涯单场得分新高，此前他的单场得分纪录为26分，是在北京时间2018年10月21日对阵森林狼的比赛中创下的。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (316, 'NBA东部冠军2014：热火4-2淘汰步行者晋级总决赛，乔治难敌三巨头', '球迷', '热火首发阵容：波什、刘易斯、勒布朗-詹姆斯、韦德、查尔莫斯。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (317, 'NBA西部冠军2015：勇士西决4-1淘汰火箭，时隔40年重返总决赛', '球迷', '火箭：霍华德、约什-史密斯、阿里扎、哈登、特里', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (318, '独行侠明智的选择！东契奇有能力接班诺天王，达拉斯势必崛起了', '球迷', '过去几个赛季，独行侠一直在寻找诺天王接班人，但都以失败告终。如今选中东契奇，也宣布独行侠完成了天赋积累。东契奇+史密斯，这样的后场组合天赋满满，有卡莱尔的调教，加上诺天王的传帮带，独行侠已经能看到未来。如果今年夏天在自由市场也有所斩获的话，那么独行侠十分有机会在下赛季重返季后赛！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (319, '追梦：赛季到了这个节点 每个人都会疲惫 但没人会在乎', '球迷', '勇士与猛龙总决赛G6将于北京时间周五上午9点在勇士主场进行。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (320, 'NBA东部冠军2015：骑士东决横扫老鹰时隔八年重返季后赛', '球迷', '“我知道自己得有耐心，等待一支球队成长为一个整体。这需要时间，也需要很多努力，我们努力了一个赛季就是为了这个时刻。”詹姆斯激动地说，“我们已具备夺冠所需要的一切条件。而我此前已拿到过两次总冠军，我们的球队有拼劲，有决心，有铸就伟大的意志力，全队上下都是如此。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (321, '麦迪：今夏的自由球员们会抛弃KD 就像动物抛弃受伤的同伴一样', '球迷', 'KD今年夏天握有球员选项，可以执行选项留队，也可以跳出合同成为自由球员。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (322, '2018NBA选秀：艾顿当选状元，巴格利东契奇分列二三位', '球迷', '20、明尼苏达森林狼：约什-奥科吉', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (323, '猛龙队球迷向KD道歉：在这里替加拿大向你道歉，祝你早日康复', '球迷', '亲爱的杜兰特跟勇士队，我甚至不愿意相信昨晚居然会有一些猛龙队的球迷们在杜兰特受伤之后进行了欢呼，而我当时也正在球馆里，真的觉得十分的可怕，这样的行为实在是不尊重人，我在这里替加拿大向你道歉，祝你早日康复。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (324, 'NBA西部冠军2016：勇士4-3逆转雷霆捧起西部冠军奖杯', '球迷', '勇士过关，在1-3落后的情况下逆转，神奇地闯进总决赛。NBA历史上，第10次在这种情况下逆转，也是第一次连续两年都有1-3落后的球队翻盘。休息两天后，勇士于6月3日主场迎战骑士，东部的骑士已等候多时。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (325, 'NBA东部冠军2016：骑士东决4-2淘汰猛龙，詹皇连续六年打总决赛', '球迷', '猛龙：卡罗尔、斯科拉、比永博、德罗赞、洛瑞', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (326, '只用四个人解锁的NBA73年纪录，乔科没做到，他第四个正式拿下', '球迷', '而现役的巨星里面，杜兰特的最高数据是上个赛季砍下过608分和163个篮板，当时杜兰特打了21场季后赛，按理说也不算少了。由此你就不能看出，季后赛砍下700分和200个篮板是有多么的难，这不是说你打的比赛场次多就一定能够做到，既需要你带领球队打进总决赛，同时还需要你每场比赛都有高度稳定的输出，才能够做到这一点，由此来看，今年毫无疑问是莱昂纳德功成名就的一年。此前他在马刺队，虽说拿到过总决赛MVP，但还不足以成为球队的第一巨星，但在猛龙队，他已经成为了当之无愧的超级领袖。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (327, '马刺穆雷：是马刺拯救了我 把我培养成如今的自己', '球迷', '穆雷本赛季因伤未能出战，上赛季他场均出场16.6分钟可以得到6.3分3.1板2.2助。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (328, '埃尔南戈麦斯：世界杯上要碰到约基奇会说垃圾话', '球迷', '今年男篮世界杯西班牙被分在C组，塞尔维亚被分到D组。两队很可能会在第二阶段相遇。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (329, '维护！杜少前队友批勇士故意施压，坦言雷霆会更爱护杜兰特', '球迷', '“我只知道一件事，（在类似的情况下）@雷霆 肯定不会让他（KD）出战比赛，他们会遵从他的想法！”帕金斯写道。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (330, 'TA阿德谈卡哇伊休赛期计划：没人知道', '球迷', '“上周推特上的一条假新闻，说莱昂纳德在马刺团队聚餐时吃了一袋子苹果，这事都花了好长一段时间才澄清，因为由于缺乏对他的细节了解，这导致任何离奇的故事在他身上发生都变成可能。所以，没人知道在职业生涯这阶段对他最重要的是什么。”阿德写道。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (331, '湖人会为了得到戴维斯梭哈球队的年轻球员吗？', '球迷', 'Podcast: How much is too much to give up for Anthony Davis?', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (332, 'Woj：太阳和公牛可能会选控卫 亦或是在自由市场上签老将后卫', '球迷', '太阳和公牛分别手握首轮6号和7号签，鉴于莫兰特基本锁定榜眼位置，这两队有可能选到的控卫或许是加兰德/科比-怀特。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (333, '某高管：若迈基吉不执行球员选项 他赚不到1300万', '球迷', '本赛季常规赛，迈基吉场均出战18.4分钟可以得到6.7分3.8篮板。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (334, '鹈鹕聘请WNBA球星Swin Cash担任高管职位', '球迷', ' Pelicans hire WNBA star Swin Cash for executive position ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (335, '若帕克7月4日前被裁 GDP将都是被裁结束职业生涯', '球迷', '如果帕克最终被黄蜂裁掉，那么GDP将都是以被裁结束自己的职业生涯。邓肯2016年退役后，马刺裁掉了他，让他拿到合同中剩余的639万薪水；球队2018年又裁掉了吉诺比利，以支付他合同中剩余的250万美元薪水。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (336, 'Woj：鹈鹕正和多队谈判 湖人仍在有侵略性地争取达成浓眉交易', '球迷', '根据此前报道，湖人是浓眉愿意长期效力的下家之一。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (337, '戴维斯下家赔率更新，湖人依旧遥遥领先，鹈鹕提前出局', '球迷', '最后就只剩下了湖人和尼克斯，而现在杜兰特受伤，尼克斯得到杜兰特的可能性就会降低很多，他们也不敢赌杜兰特的伤情。那如果不签杜兰特的话，光交易浓眉哥还有什么意义呢？把他交易过来也是让他带了一群底薪球员，下赛季还有可能离开。所以最终，最有动力也有诚意得到浓眉的就是湖人了，他们甚至愿意拿出三大天才再加上4号首轮签这样的筹码，鹈鹕很难拒绝。可以说詹皇联手59分超巨已经在路上了，没有人能阻止他和浓眉哥聚首湖人，这个赔率是最大的喜讯。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (338, '杜兰特遭遇跟腱撕裂，迈尔斯自责落泪，洛瑞阻止猛龙球迷起哄', '球迷', 'Kevin Durant aftershock challenging both teams', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (339, '巴雷特在尼克斯的试训非常良好 双方的关系密切', '球迷', '他现在开始飞往多伦多（巴雷特的家）接受一天左右的训练，然后前往洛杉矶进行下一步训练，最后他将在下周五抵达布鲁克林的巴克莱中心等待选秀的召唤。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (340, '一猛龙球迷代表加拿大向杜兰特道歉，祈祷KD早日康复', '球迷', '\'Those dumba-- Raptors fans\': Kevin Durant gets apology', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (341, '猛龙会赢下G6夺冠，KD今夏会离开勇士，皮尔斯的毒奶会应验吗', '球迷', '见惯了皮尔斯毒奶粉的球迷，特别是猛龙球迷，在得知他又作出预测后，愤然不已，直接在评论区怒对，让他闭嘴。曾经风光无限的真理，如今却只能依靠一张嘴来达到关注的目的，真让人嘘嘘。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (342, '曝有五队愿与KD签长约！高管：死神复出依旧是前十', '球迷', '“杜兰特不会从联盟的顶级球员跌到50名，即使有跟腱受过伤。”联盟的一名高管表示，“也许他能进入前十，我仍然认为杜兰特是一个场均能得到20，25分的球员。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (343, '默默祝福！威少点赞多条为杜兰特祈祷动态', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (344, 'KD受伤后欢呼，赛后咒骂库里父母，猛龙球迷的人品急剧下跌', '球迷', '原本许多支持猛龙，希望联盟勇士一家独大的局面被打破的球迷，也因此纷纷转投支持勇士。自强者，天助之；自狂者，天灭之。体育比赛应该有体育比赛自己的样子，球迷更应该给主队加油助威、给主队的形象增添色彩，而不是让自己的主队在这种关键时候分心，还得去给赛场外的不理智“灭火”。另外，不知道库里看到这个情况，内心作何感想，期待回到奥特兰内心火大的“库里”，期待G6的“佛主降临”。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (345, '孟菲斯记者：灰熊仍然想用榜眼签摘走莫兰特', '球迷', '此前的报道中，莫兰特将接受右膝微关节镜手术，移除在他右膝的“游离体”，预计康复期3-4周，但是这并不会影响灰熊管理层对他的看法。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (346, '黄蜂官方：迈基吉手术成功 有望完全康复', '球迷', '本赛季常规赛，迈基吉场均出战18.4分钟，得到6.7分3.8篮板。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (347, '帕金斯：雷霆绝不会让KD冒险上场 我怀疑KD一开始就是跟腱伤', '球迷', '“我只知道一件事，这如果发生在@雷霆，不管KD想做什么，雷霆是绝不会让他上场的。”帕金斯写道。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (348, '全国瞩目！已经有50%的加拿大人观看了总决赛', '球迷', '本周五上午9点，猛龙和勇士将在奥克兰展开总决赛第6场较量。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (349, '鹈鹕狮子大开口吓退联盟两队，绿军恐将放弃浓眉改追卡佩拉', '球迷', '如果无法得到浓眉哥的话，绿军也有其他补强内线的计划，多位消息人士向媒体爆料称，绿军已经盯上了火箭中锋卡佩拉，他将会成为顶替浓眉哥的头号备选人物。卡佩拉本赛季在常规赛场均16.6分12.7篮板1.5盖帽，已经展现了顶级中锋的潜质，目前他被火箭摆上了货架，只要绿军出价合理，相信很容易就能够得到。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (350, '某联盟高管谈杜兰特：他仍可能得到一份顶薪合同', '球迷', '“这是一个糟糕的篮球决策，”一位NBA人事主管表示，“而这还将是关于门票销售和虚情假意，但是这些也正在开始被耗尽。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (351, '杜兰特跟腱撕裂恐危及职业生涯，科比曾因此伤停240天', '球迷', '在此，作为球迷的我们只能祝福杜兰特，希望他能早日回归赛场，重回巅峰！也希望那些该死的伤病远离其他运动员。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (352, '四年只需535万美元，勇士第六大巨头诞生，7项数据全队第三', '球迷', '不得不承认，勇士的选秀眼光确实出色，卢尼不仅是攻守均衡的蓝领内线，更是品格坚毅的硬汉。就算今夏卢尼要离开勇士，相信球迷也不会忘记他这几年的拼搏和贡献。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (353, 'NBA总决赛四大超巨夺冠概率：乔丹夺冠100%，勒布朗倒数第一', '球迷', '乔丹总共打了6次总决赛，夺下总冠军的概率是多少呢？答案估计会让所有人都瞠目结舌，因为他是全部胜出了，乔丹一共6次进入总决赛，6次获得总冠军，6次获得总决赛MVP。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (354, '联盟八位大牌球星无意辅佐詹皇，浓眉或成湖人最后的机会', '球迷', '不过美国媒体，露天看台最新给出了戴维斯的下家赔率，眼下湖人队高居第1名，随后就是尼克斯队，以及其他的球队，可见美国媒体还是高度看好戴维斯能够和詹姆斯联手的。不过，詹姆斯的老搭档，目前在鹈鹕队担任总经理一职的大卫格里芬，却在最新接受采访时表示。在选秀大会开始之前，他并不期待着急于做成戴维斯离队的交易。所以没有必要着急和湖人队做交易，早早的将戴维斯卖掉。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (355, '贝尔谈G5取胜：感觉就像有人来挑衅你，把对方痛扁了一顿就会很开心', '球迷', '昨天比赛中，贝尔得到2分。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (356, '联盟三队争着给沃克送顶薪，黄蜂垃圾合同太多恐没钱留他', '球迷', '但现在的问题是，乔丹和他的球队，根本无力开出顶薪留人。因此，可以说沃克今夏走人的概率已经是非常之大了。一旦沃克选择走人，按照如今黄蜂的阵容，下赛季将是稳稳的状元秀争夺者，5大垃圾合同领衔的球队，实在太可怕。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (357, '勇士G6门票售价高达52万，三队今夏仍有意顶薪追死神杜', '球迷', '现在看来，就算受伤病困扰，但这并不会影响到杜兰特在今年休赛期对其他球队的吸引力。当然，这对希望保住杜兰特的勇士来说不会是什么好消息。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (358, '洛瑞最后一投居然三不沾，摄影师还原真相，追梦格林立大功', '球迷', '其实真相并不是这样的。通过摄影师的镜头，我们可以找到最终的真相。在洛瑞最后一投时，当时的追梦格林是及时的补防了上去，当时格林起身一跳时，镜头捉拍到了格林的动作，他当时在一防二的情况下，纵身一跃硬是用指尖碰到了洛瑞最后一投的篮球伤，从而直接改变了篮球的飞行方向，最终格林成功防住了洛瑞，勇士也赢得了最后的胜利。所以，真相也终算是还原了，G5最后一投洛瑞为何不中？摄影师：追梦的指尖碰到了！看来，勇士赢球还多亏了格林呀，要不然他们很有可能会被绝杀的。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (359, '美国男篮世界杯20人大名单公布，哈登庄神领衔，波波维奇挂帅', '球迷', '球迷们也非常期待波波维奇带领的美国队在这届篮球世界杯上的表现，年事已高的波波维奇极有可能在未来几年放下教鞭宣布退役，老帅在职业赛场上的表演也是看一场少一场了。以美国队的整体实力和竞争环境来看，咱们可以不客气地说一句：不夺冠就是失败。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (360, 'Woj：如果湖人用4号签选人 意味着浓眉的交易谈判破裂', '球迷', '根据此前的报道，鹈鹕队篮球运营副总裁大卫-格里芬已经开始给队中球星安东尼-戴维斯提供一些他（格里芬）看好的交易方案。大卫-格里芬有意在交易中得到今年选秀大会的选秀权，并且他希望交易能在当地时间6月20日的选秀大会之前完成。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (361, '改变NBA格局的伤病：科比受伤让湖人沉沦，KD再度伤退势必离去？', '球迷', '无论杜兰特的伤病会造成多大影响，还是希望他能尽快康复。毕竟不管他加盟哪支球队，只要他不能保持健康，对于整个联盟都是巨大的损失。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (362, '32分是杰文-卡特个人职业生涯常规赛单场得分新高', '球迷', '灰熊的2018年32轮新秀杰文卡特，打出了职业生涯的新高。卡特出场26分钟，18投10中得到32分4篮板2助攻1抢断。此外，32分也是杰文-卡特个人职业生涯常规赛单场得分新高。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (363, '受FIBA规则限制！克拉克森恐无缘2019年男篮世界杯', '球迷', '2014年西班牙篮球世界杯，安德雷-布拉切代表菲律宾出战5场，场均上场33分钟，得到21.2分13.8篮板，得分位列得分榜第二位，篮板位列篮板榜首位。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (364, 'Woj：森林狼运营总裁需要在选秀夜表现出侵略性', '球迷', '罗萨斯本赛季为火箭队篮球事务运营副总裁，他一共在火箭管理层工作了18个赛季，期间还曾短暂出任独行侠球队经理，随后再次回到火箭，在上个月刚刚成为森林狼队的事务运营总裁。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (365, 'Woj：爵士步行者有意得到康利 若欧文离开绿军也对康利有兴趣', '球迷', '本赛季康利共上场70场常规赛，场均上场33.4分钟能够得到21.1分3.4篮板6.4助攻，投篮命中率为43.8%，三分命中率为36.4%。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (366, '考辛斯对小加犯规被裁判漏吹，猛龙队史首冠就这么没了', '球迷', '可以说裁判报告给出的这个结果显示，猛龙或许本来应该拿到总冠军了，毕竟每一分都至关重要的情况下，少了这2分就直接影响了最终的比赛结果。然而这次致命的漏吹让勇士得到了希望，最终洛瑞的投篮被追梦格林封盖，勇士赢下了第5场，可以说这次判罚是致命的。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (367, '莱昂纳德单赛季季后赛得分700+，NBA史上还有哪些球员做到？', '球迷', '依然是迈克尔-哪都有我-乔丹，92年季后赛，乔丹场均拿到34.5分，并且季后赛的对手也给乔丹造成了一些困扰，他打了22场季后赛才夺冠，所以总分这么高，要知道当年的首轮可是5场3胜制。如今伦纳德距离乔丹这个分数只差49分，如果猛龙勇士打到抢七，乔丹的纪录可是要被抢走了。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (368, '名记：跟腱受伤不会影响KD行情 纽约/洛城4队会追求他', '球迷', '“这并不像是他会从联盟顶级球星跌至第50名，即使是跟腱受伤，”一位联盟高管今天说到，“他可能还是联盟前十的球星。我仍然认为KD是一个能够场均20、25分的球员。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (369, '卡莱尔：波津每天都在变好 球队盼跟他签约', '球迷', '“在过去的两年里，他非常努力地从前交叉韧带的伤病中恢复过来，同时也使自己的身体能够承受NBA赛季的严峻考验。我们迫不及待地想拨通他的电话并准备签署合同了。”卡莱尔补充说道。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (370, 'NBA总决赛G6前瞻：克莱将无可阻挡，是登基还是抢七？', '球迷', '其实，对于观众来说，抢七才是最好看的年度重磅大戏！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (371, '杜兰特为勇士堵上了自己的跟腱，黑子们终于可以闭嘴了', '球迷', '明天，杜兰特的伤情如何就将会有一个准确的答案，但无论如何，杜兰特已经用自己的实际行动证明，不管他曾经经历过什么，不管他有多么不招人待见，他始终都是那个对篮球充满热爱的男人！祝福杜兰特，愿他早日康复！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (372, 'NBA总决赛G5，KD再次受伤离场导致赛季报销，谁的责任最大？', '球迷', '那么，如何看待NBA总决赛第五场，杜兰特再次受伤离场导致赛季报销。KD曾说过打算35岁退役，但有很多人没把这话当真，不过经历这次大伤后他极可能真的在35岁甚至在35岁之前就退役。但球迷屋小编还是希望KD能战胜伤病创造奇迹！最后，不管这次受伤是谁的锅，都希望阿杜能5年顶薪续约。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (373, '勇士生死战最后两分钟两次被针对，联盟提前发FMVP选票惹争议', '球迷', '当然了，提前筹备夺冠庆典，也是为了避免过于仓促造成的准备不足。只不过在比赛结果还未出来之前就判定勇士“死刑”，这一次，萧华先生又被“打脸”了。让我们看看下一场比赛，是猛龙捧杯，还是勇士继续延续奇迹。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (374, '灰熊或用榜眼签选巴雷特，湖人4号签才是选秀夜的关键', '球迷', '而湖人手中的4号签则是选秀夜的一大转折点，因为这对湖人来说是最有价值的交易筹码。4号签也将成为安东尼-戴维斯交易中最重要的组成部分，当然他们也可以利用这个签位选择有天赋的新秀。达里厄斯-加兰和贾勒特-卡尔弗都是不错的选择。此前有媒体报道，加兰和勒布朗-詹姆斯一同连续三分；而詹姆斯此前也参加了湖人队卡尔弗的试训。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (375, 'NBC：延长上场时间得到KD同意 勇士隐瞒了一开始的跟腱伤', '球迷', '4、', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (376, '“老虎”伍兹谈KD受伤：令人悲伤 运动员都会经历这些', '球迷', '今天著名高尔夫运动员泰格-伍兹接受采访，谈到了杜兰特的受伤：“这很令人悲伤，作为运动员，我们都经历过这些，你可以看看KD脸上的表情是多么的严肃，他当时心情肯定糟糕透了，没人能帮到他。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (377, '16年西决G6，汤神命中11记三分，那库里、追梦又得了几分？ ', '球迷', '克莱11记三分球，得到41分；库里6记三分球，得到31分10篮板9助攻；格林2记三分球，得到12分12篮板6助攻。这就是勇士三位核心球员在面临绝境时的数据，今年的G6能复制成功吗？可能有球迷想知道伊戈达拉的数据，伊戈达拉得到8分7篮板。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (378, 'Woj：卢比奥和贝弗利值得太阳和公牛的关注', '球迷', '根据其他记者之前的报道，今年夏天菲尼克斯太阳队非常渴望得到一位经验丰富的控卫帮助球队。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (379, '皮尔斯：勇士王朝结束&KD不会留队 猛龙将赢下G6', '球迷', '谈到勇士，皮尔斯表示：“不论勇士输或赢，我真的相信勇士王朝结束了，我相信猛龙将会赢下G6，我相信KD下赛季不会再是勇士人。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (380, '美记：太阳对德州理工侧翼卡尔弗评价非常高', '球迷', '卡尔弗今年20岁，身高2米，司职得分后卫，2018-19赛季场均得到18.5分6.4篮板3.7助攻1.5抢断。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (381, 'Woj：8-15号选秀签权会有一些交易 老鹰是支值得关注的球队', '球迷', '在今年的选秀大会上，老鹰拥有8号和10号选秀权，奇才拥有9号选秀权，森林狼拥有11号选秀权，黄蜂拥有12号选秀权，热火拥有13号选秀权，凯尔特人拥有14号选秀权。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (382, '法国跑车爽约了！帕克突然宣布退役，曾承诺想打满20个赛季', '球迷', '但是帕克的篮球生涯并没有结束，只是不再是球员的身份，他是法国篮球甲级联赛里昂ASVEL俱乐部的老板，他们的女队刚刚赢得了队史第一个冠军。他也有一个国际学校在9月开学，他认为这是他“回馈祖国，回馈年轻一代”的机会，帕克也不排除拥有一支NBA球队，他说这是他的最终目标。但在那之前，他将享受退休生活，前路走好，从此江湖再无GDP！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (383, '库里谈G6：甲骨文球馆最后一战，为自己保留机会倾其所有', '球迷', '根据赛程安排，总决赛G6将于周五开打。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (384, 'JR致敬杜兰特：抬起头 该懂你的人会一直懂你', '球迷', '今天骑士球员JR-史密斯更新了社媒向杜兰特致敬：“抬起头，那些该懂你的人会一直懂你的，我对你充满了敬意。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (385, 'KD受伤 纽约媒体头条：尼克斯输掉了G5', '球迷', '据此前报道，尼克斯今夏将积极追求杜兰特，并且领跑杜兰特的下家赔率。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (386, '巴克利：勇士要为杜兰特受伤负责，他们不该让他打G5', '球迷', '的确，勇士承担了责任，勇士总经理迈尔斯在出席发布会上，向大众宣布了杜兰特的伤情。迈尔斯情绪非常激动，难以控制自己的难过并一度留下了伤心的眼泪。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (387, 'NBA总决赛G5水花合创四项纪录，克莱追平詹姆斯，萌神超伯德', '球迷', '战胜猛龙后，勇士也终于在绝境中挽回赛点！虽然代价太大，但对于勇士来说这是一个难得的机会，因为至此过后勇士成为过去40年来第6支在总决赛客场救回赛点的球队。而上一支正是打出超越逆转的骑士。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (388, '麦科勒姆谈追梦最佳防守者言论：每个人都要有这种心态', '球迷', '相关新闻>>>有史以来最好的防守者？格林：我', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (389, '一名猛龙球迷向KD致歉：替整个加拿大向你道歉 盼早日康复', '球迷', '亲爱的KD和勇士，我甚至不敢相信昨晚一些猛龙球迷在KD受伤后欢呼，我当时就在球馆里，真的觉得特别可怕，这太不尊重人了。我在这里替加拿大向你道歉，希望你早日康复。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (390, '勇士1-3濒临绝境，库里怒砍31+8+7救主，他们能否复制16年神迹', '球迷', '16年总决赛G7，库里一个花式背后传球出界，赛后饱受舆论压力的困扰：这个少年玩世不恭，态度不端正，是他一手把总冠军玩丢了。俗话说，从哪里跌倒就应该从哪里爬起。如今3年已过，库里已过而立之年，你再也看不到他的花式传球，看到的是他一场比一场更拼。3年前库里亲眼看着球队3-1领先随后被逆转，3年后他要带着球队从1-3的谷底中再次爬起。对于库里来说，如果能以这样的方式登上巅峰，没有比这更美的了。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (391, '帕克在马刺拿到1.617亿美元，那么妖刀和邓肯又分别拿了多少？', '球迷', '邓肯在马刺拿到了2.8517亿美元，吉诺比利拿到了1.3亿美元，帕克在马刺拿到了1.617亿美元；马努是最少的。这三个人如果在其他球队，他们拿到的钱是在马刺的几倍；在如今这样的联盟，再也见不到队内有三个全明星球员愿意对合同做出巨大牺牲了！致敬GDP！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (392, '最后三分钟领先6分，猛龙提前准备庆祝夺冠，结果白高兴一场', '球迷', '有一点必须重申一下，本场比赛开打之前，猛龙已经夺得赛点，现场都会做这种准备。倘若猛龙拿下比赛，现场就要马上庆祝，然后进行颁奖，这些程序都要提前准备。以往出现这种情况，现场提前为冠军庆典准备，结果球队被逆转。13年G6马刺就是例子，28秒领先5分，都以为大局已定，马刺方面连香槟都订好，准备庆祝夺冠，被詹姆斯和雷阿伦一人一个三分浇灭了。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (393, '小卡单季季后赛至少拿到700分+200篮板 历史第4位', '球迷', '此前三位为：奥拉朱旺（1995年， 725分+227篮板）、奥尼尔（2000年，707分+355篮板）、詹姆斯（2018年， 748分+200篮板）。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (394, 'Woj：湖人需要完成浓眉交易 因没有任何顶级自由球员在考虑他们', '球迷', '根据之前的报道，鹈鹕总经理大卫-格里芬正在推进戴维斯交易，而湖人是浓眉争夺战中的领跑者。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (395, '伍兹：杜兰特受伤很不幸，最难的都是休赛季和康复过程', '球迷', '“有时候事情就是不顺。昨天发生在杜兰特身上的事情我们都看到了。”伍兹最后说道。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (396, 'KD下家赔率更新：尼克斯仍领跑 勇士大幅度缩短差距', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (397, '杜兰特强行复出遭遇跟腱撕裂，勇士会为他奉上顶薪吗？', '球迷', '其实在关键时刻，他如果表态会与杜兰特续约，即使是4年顶薪也好，也算是给付出球员一个交代了，但是他却说出了这些话，很明显他面对顶薪续约杜兰特的问题上有所犹豫，如果他真的敢放走杜兰特，那么或许他比安吉还要更冷血，毕竟托马斯的臀伤是自己坚持要打封闭出场，而杜兰特某种意义是被勇士逼上场的。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (398, 'Woj：绿军需要赢在当下 可能会退出浓眉争夺', '球迷', '他在节目中说道：“在选秀夜中，凯尔特人手握三个选秀权（14、20、22顺位），这让他们拥有更多的可操作空间，选秀夜怎么做将决定这支球队的未来走向，今夏欧文的动向并不明朗，霍福德拥有球员选项，他们可以打包1-2个，甚至是3个选秀权去换取更好的球员，他们不需要这些更年轻的球员。他们现在已经拥有很好的年轻资产，他们可以围绕这些年轻人进行重建，打造一支有实力的球队，或许因为欧文的不确定性，他们已经退出了浓眉的争夺战中。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (399, '体坛年收入最高的十名运动员，勒布朗位居第八，前三无悬念', '球迷', '以上十名运动员就是世界体坛年收入最高的运动呢，前三被足球包揽；一名拳击运动员上榜，一名网球运动员上榜；两名橄榄球运动员上榜；三名NBA球员上榜。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (400, 'BR给出浓眉哥下家赔率：湖人力压尼克斯排第一', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (401, '跟腱伤势还能恢复吗？黑曼巴三个赛季就退役了，唯有他逆天了', '球迷', '在跟腱受伤的这些球员中，只有一个人没有影响，那就是多米尼克-威尔金斯。他是在1992年1月份受伤的，归来后他依旧场均可以得到28分7篮板，命中率高达45%，他当时已经32岁了。所以说，杜兰特这次受伤能不能恢复要看他的意志力和运气，杜兰特今年只有30岁，威尔金斯在32岁时受伤都恢复了，加油，杜兰特！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (402, '纳斯无脑暂停坑死猛龙，赛后他作出解释却招来更多非议', '球迷', '小编认为纳斯这一做法显然有些欠妥当，竞技比赛中当球员们打出状态时，往往乘胜追击才会更有利，当局面被动时，才需要暂停做出调整，纳斯这个暂停叫的不合时宜，让局面不利的勇士队松了口气。作为卫冕冠军，勇士队的调整能力显然是非常出色的，猛龙之所以输球，纳斯的确有着不可推卸的责任。看到如今这样的结果，不知道纳斯后悔了吗？', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (403, '美记：灰熊领导层还未做出决定 仍有可能用榜眼签选巴雷特', '球迷', '巴雷特一直没有掩饰希望加盟尼克斯的心意，不过如果灰熊认为他是最好的选择的话，他们或许还是会在选秀大会中摘下这位蓝魔球星——一年前，灰熊在选小贾伦-杰克逊时就是这么做的，当时JJJ没有为孟菲斯球队试训，不过倒是给了他们医疗报告。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (404, 'Marks：今夏仍有三队愿意追KD 签4年1.41亿合同或者回勇士', '球迷', '如果杜兰特像预期那般跳出合同，成为一名自由球员的话，勇士、尼克斯、篮网和快船是目前为止和两届FMVP联系在一起的球队。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (405, 'Woj：独行侠、尼克斯和湖人等多支球队对肯巴-沃克很感兴趣', '球迷', '在今年夏天肯巴-沃克将成为不受限制的自由球员，他可以和黄蜂签下一份5年2.21亿美元合同。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (406, '用一条腿换来总决赛的胜利，杜兰特可曾亏欠勇士半分？ ', '球迷', '没有杜兰特的勇士还要完成他们在甲骨文的最后一场比赛，此时的杜兰特已经在飞往纽约的飞机上了。昨天，他感动了全世界。今天，他能否感动上帝？', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (407, '大卫-格里芬：不急于在选秀前交易浓眉', '球迷', '据Shams报道，浓眉将湖人和尼克斯视为愿续长约的下家。而据Woj报道，湖人可能处于领跑位置。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (408, '若杜兰特重伤尼克斯或调计划，愿为戴维斯付出大量筹码？', '球迷', '据悉，尼克斯队正在全面评估球队面临的各种可行举措。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (409, '尼克斯内部对豪赌浓眉感到不适 短期目标变为小卡', '球迷', '5.在杜兰特受伤之前尼克斯已经和鹈鹕有过联系，', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (410, '杜兰特带伤出战弄伤跟腱，老东家第一时间送祝福令人动容', '球迷', '在雷霆队效力9年的杜兰特为俄城做了他能做到的一切，其实雷霆队、威少和杜兰特在内心依然有互相牵动的心，但在这个媒体捕风捉影发达的时代，他们所有的一切都不能互相坦然面对。如今雷霆官方的祝福让球员有了该有的样子，篮球之外还有生活，而生活也一定大于篮球，所有的球迷也都期待着威少的祝福，所有的人也都希望杜兰特能平安无事，我们除了喜欢nba高水平的竞技，同样这里独特的人情味也让我们为之感动了。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (411, '篮网和托拜厄斯-哈里斯互相有意，流浪汉欲回乡效力', '球迷', '本赛季常规赛，哈里斯场均出战34.9分钟，可以拿到18.2分7.9篮板2.9个助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (412, '巴克利：勇士要为杜兰特受伤负责 不在乎他们的说法', '球迷', '巴克利说道：“你们一早上都在讨论谁该为杜兰特受伤负责，是的确实有人需要为此负责。勇士把杜兰特放在场上，听好了，这是错误的。回顾过去两周，先是有篇文章说没有杜兰特的勇士一直在赢球，然后又有文章说勇士不满杜兰特不愿带伤出战，他们对杜兰特感到失望，这就让杜兰特有了某种思想负担，我认为杜兰特受伤勇士要负责，并且我不在乎他们的说法，他们就不应该让杜兰特打G5，你要问我怎么知道的？杜兰特跟腱受重伤了。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (413, '沃神：湖人仍是戴维斯交易领跑者，鹈鹕希望多队参与进来', '球迷', 'Woj: Lakers are ‘leader in the clubhouse’ to trade for Anthony Davis', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (414, '勇龙最后3分05秒出手情况：勇士3中3 猛龙6中1', '球迷', '而猛龙这边6次出手仅仅命中1球得到2分，最终勇士106-105逆转取胜。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (415, 'NBA早报：乔治成功接受左肩手术，灰熊有可能选择巴雷特', '球迷', '据美国媒体消息，灰熊方面依然有可能用榜眼签选择RJ-巴雷特。根据之前的报道，灰熊方面已经基本上锁定了后卫贾-莫兰特，并通知了在芝加哥参加试训的各方。巴雷特早前则拒绝了灰熊的试训要求，并表示自己希望被手握探花签的尼克斯选中。不过灰熊管理层目前并没有完全下定决定，他们依然在考虑选择巴雷特的可能性。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (416, '总决赛G5收视率历史第五 仅次于04湖塞与三次勇骑', '球迷', '今年是猛龙第一次参加总决赛，而加拿大球迷并不计入美国电视收视率。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (417, 'Scotto：篮网和托拜亚斯-哈里斯互相有意', '球迷', '本赛季常规赛，哈里斯一共为快船和76人出战82场比赛，场均得到20分7.9篮板2.8助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (418, '鹈鹕不急于交易戴维斯，至少在选秀大会之前不会做出决定', '球迷', 'David Griffin says the Pelicans are ‘not in a hurry’ to trade Anthony Davis before the 2019 NBA Draft', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (419, '各种大咖！饼皇卡佩拉ins晒和曼联球星博格巴合影', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (420, '卡莱尔：铂金状态不错 球队会寻找球员搭配他和东契奇', '球迷', '2018年2月波尔津吉斯遭遇膝盖伤势，之后近一个半赛季未出场比赛。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (421, '凯文-杜兰特是唯一一个不会因为自由球员的混乱而受伤的球员', '球迷', ' Kevin Durant is only one safe from free-agency chaos injury created ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (422, 'BR统计现役运动员年收入：詹库杜杀进前十', '球迷', '10.杜兰特（篮球）6540万美元', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (423, '乔治顺利完成左肩手术 将在新赛季训练营前再次评估', '球迷', '乔治本赛季常规赛出战77场，场均贡献28.0分8.2个篮板4.1次助攻；季后赛出战5场，场均贡献28.6分8.6个篮板3.6次助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (424, '2019年总模拟稿9.0:先看退出期限', '球迷', ' 2019 aggregate mock draft 9.0: First look after withdrawal deadline ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (425, '凯文·杜兰特的受伤也许挽救了尼克斯队的未来', '球迷', ' Kevin Durant\'s injury may have saved the Knicks\' future ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (426, '库兹马入选美国男篮20人训练营名单，科朗吉洛大力支持', '球迷', 'Jerry Colangelo explains why USA Basketball wanted Kyle Kuzma', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (427, '凯文杜兰特的受伤会对自由球员产生怎样的影响?现在问是不是太早了?', '球迷', ' How will Kevin Durant’s injury impact free agency? Is it too soon to ask? ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (428, '猛龙队错失了赢得总冠军的大好机会', '球迷', ' Raptors blew a great chance to win a championship ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (429, '在NBA总决赛上，德雷克和尤金妮·布沙尔拥抱在一起', '球迷', ' Drake hugs it out with Eugenie Bouchard during NBA Finals ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (430, '伦纳德连得10分猛龙叫暂停，纳斯：只是想让球员休息一下', '球迷', 'Nick Nurse says timeout during Raptors run was to get players extrarest', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (431, '麦基晒与KD昔日合影：你对比赛的热爱让人无可挑剔', '球迷', '麦基曾和杜兰特在勇士队做了两年的队友，他们都于2016年夏天加盟了勇士。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (432, ' 沃神报道泰勒-詹金斯将成为灰熊主帅，他是波波维奇的徒孙', '球迷', 'Memphis Grizzlies reportedly hire Bucks’ assistant Taylor Jenkins as headcoach', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (433, '灰熊·希林·泰勒·詹金斯是主教练', '球迷', ' Grizzlies hiring Taylor Jenkins as head coach ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (434, '锡安今日和鹈鹕老板、经理、教练共进午餐', '球迷', '威廉森还与NFL新奥尔良巨人队的总经理Mickey Loomis进行了会面。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (435, '系列赛至今 小卡在一哥防守下命中率为38.7%', '球迷', '本轮系列赛至今，莱昂纳德场均出战40.4分钟，投篮命中率为43.3%，得到29.8分10.6篮板4.4助攻2.0抢断1.2盖帽。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (436, '真挚的祝福！查克-海耶斯36岁生日快乐', '球迷', 'NBA职业生涯常规赛，海耶斯场均上场18.4分钟，得到3.7分5.0篮板1.2助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (437, 'Woj：黄蜂马文执行下赛季球员选项', '球迷', '本赛季常规赛，马文出战75场，场均10.1分5.4篮板，他与黄蜂的合同将在2020年夏天到期，届时他将成为完全自由球员。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (438, '杜兰特跟腱撕裂打乱尼克斯计划，小卡或成纽约第一目标', '球迷', 'Kawhi push? Waiting for Durant? Knicks\' alternatives after KD\'s crushing injury', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (439, '感情一直都在！俄城官推祝福KD：快点好起来', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (440, '教练解释了可能让猛龙队失去NBA总冠军的暂停时间', '球迷', ' Coach explains the timeout that might\'ve cost Raptors an NBA title ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (441, 'Shams：杜兰特正前往纽约评估跟腱伤势', '球迷', '根据湾区记者Medina的报道，勇士预计将在北京时间今早（或更晚）拿到杜兰特的MRI检查结果。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (442, '这才是篮球！杜兰特总决赛G5再度伤退，德雷克第一时间发文祈祷', '球迷', 'Drake\'s Kevin Durant emotion didn\'t end on the court', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (443, 'Medina：勇士预计将在今早拿到杜兰特MRI检查结果', '球迷', '飞抵湾区之后，勇士预计会在当地时间深夜或者明日早上得到MRI结果（即北京时间今早或更晚）。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (444, '追梦生涯9次总决赛单场篮板和助攻领跑全队 历史第4人', '球迷', '据统计，这是追梦这9次在总决赛场篮板和助攻领跑全队，在总决赛历史上仅比詹姆斯、魔术师约翰逊和比尔-拉塞尔更少。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (445, '99年的今天：尼克斯击败步行者成首支打进总决赛的8号种子', '球迷', '在98-99赛季，尼克斯以东部第八的身份打进季后赛，首轮面对东部第一的热火，尼克斯以3-2击败热火，随后连克老鹰、步行者，最终在总决赛以1-4不敌马刺。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (446, '恩尼斯：我爱费城 希望能跟76人签下长约', '球迷', '本赛季常规赛，恩尼斯场均上场21.2分钟，得到6.7分3.1篮板；本赛季季后赛，恩尼斯场均上场20.9分钟，得到7.5分3.8篮板。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (447, '施罗德谈世界杯：我们有很大的潜力', '球迷', '根据2019年男篮世界杯分组情况，德国与多米尼加、法国、约旦被分在G组。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (448, '霍华德上节目谈KD受伤：看见他倒下很心痛', '球迷', '霍华德今年33岁，如今的他也受到伤病的影响，在2018-19赛季，霍华德因背伤只为奇才队出战9场比赛，场均出场25.6分钟，得到12.8分9.2篮板。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (449, '科朗吉洛谈库兹马加入训练营：他很全能 这很吸引我们', '球迷', '本赛季常规赛，库兹马场均上场33.1分钟，能得到18.7分5.5篮板2.5助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (450, '关于杜兰特的伤病和其他NBA播客', '球迷', ' All about Kevin Durant\'s injury and other NBA podcasts of the day ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (451, '克莱谈末节9-0：教练的战术很棒 我和库里得到了很好的机会', '球迷', '今天的比赛，克莱21投9中，三分球13中7，砍下26分6板4助1抢断。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (452, '库里谈G6：我们会倾其所有 去战斗', '球迷', '勇士与猛龙总决赛G6将于北京时间周五上午9点在勇士主场进行。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (453, '林书豪谈KD受伤时部分球迷欢呼：不该有这样的行为', '球迷', '赛后林书豪谈到了KD受伤的时候有些球迷发出欢呼声的情况：“我们都是人，当我们看到杜兰特一次次经历伤病时，我们的心情应该是很糟糕的，希望他能尽快恢复健康，发出欢呼的行为是不应该的。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (454, '杜兰特妈妈发推：我儿子有着勇士的心！质疑的人根本不懂！', '球迷', '杜兰特将在明天接受MRI检查，他的伤情将会有具体的诊断。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (455, '历史上的今天：霍华德总决赛单场9盖帽创新纪录', '球迷', '最终，魔术大比分1-4不敌湖人，无缘总冠军。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (456, '德安吉洛·拉塞尔是NBA最好的…穿着', '球迷', ' D’Angelo Russell IS the NBA’s best ... dressed ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (457, 'NetsDaily淡季报道-第6名', '球迷', ' NetsDaily Off-Season Report - No. 6 ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (458, '扎南·穆萨:在布鲁克林度过了第一年之后，“我完全变了个人”', '球迷', ' Dzanan Musa: ‘I’m a whole other person’ after his first year in Brooklyn ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (459, '德克尔谈赛前医生关于KD伤势不会加剧的言论：感觉很奇怪', '球迷', '球员德克尔更新了社媒关于这个言论发表了自己的看法：“我对医生的这个说法感到疑惑，如果我被告知我的脚踝伤势不会加剧的话，我会在心里一直想‘伤势可能会加剧的’，如果意外踩在别人的脚上，伤势会比现在严重十倍，我只是觉得医生说的这句话很奇怪。”奇才', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (460, '随队记者：放走拉塞尔对篮网来说会是很艰难的做法', '球迷', '另外，由于尼克斯、湖人和凯尔特人都有机会交易得到浓眉，并有可能与杜兰特或者欧文一起合作，而篮网则是希望尽可能保持（薪金空间）灵活性。多位消息人士表示，浓眉和他的团队正在争取在选秀夜（6月21日）之前完成交易。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (461, 'Shams：梅西纳同意执教米兰奥林匹亚', '球迷', '意大利媒体《米兰体育报》则是披露了协议细节：三年合同+续约选项。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (462, '追梦为杜兰特祈祷：比赛需要你 冠军', '球迷', '赛后，勇士球员格林更新了社媒：为我的兄弟祈祷，比赛需要你，冠军。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (463, '洛瑞：最后的出手追梦碰到了球 勇士命中了太多了三分', '球迷', '本场比赛，洛瑞上场42分钟，16中8，其中三分6中1，得到18分4板6助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (464, 'Mannix：即使欧文以自由身离队 绿军也不会放弃追浓眉', '球迷', '节目嘉宾Rohan Nadkarni同意Chris Mannix的说法，他表示：“如果你想要一个像他这样的超级球星，那么就去得到他，向他证明你的文化是值得留下这样一个球员的。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (465, '某勇士球员：现在就希望KD的跟腱不是完全断裂', '球迷', '杜兰特将在明天接受MRI检查，具体伤情将在届时公布。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (466, '勇士成历史上第五支在总决赛生死战中1分险胜的球队', '球迷', '4、1988年总决赛湖人在2-3落后下，G6以103-102击败活塞，最终抢七击败活塞夺冠。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (467, '致敬真的勇士！杜兰特强行复出弄伤跟腱，好在队友没有辜负他', '球迷', '值得一提的是，杜兰特在赛后更新Instagram发表了自己的感想，他写道：“勇士国度G6躁起来！说实话我现在内心很受伤，但看到我的兄弟们拼命赢下胜利，这种感觉就像龙舌兰酒一样，我重获新生了。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (468, 'NBA西部冠军2017：勇士西决横扫马刺，季后赛开局取得12连胜', '球迷', '马刺首发阵容：乔纳森-西蒙斯、吉诺比利、阿尔德里奇、丹尼-格林、米尔斯', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (469, '安东尼都在哪些队打过球，分别效力于掘金、尼克斯、雷霆、火箭、公牛', '球迷', '现在的问题是，安东尼是否愿意改变自己的心态，来迎合球队，或许看看猛龙队的小加索尔，放低自己的心态，发挥自己的长处，在联盟之中，一样有地位！！！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (470, '奥拉迪波身体素质有多恐怖？体测最有发言权，真正接近韦德的man', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (471, '德雷克社媒为KD祈祷：为真正的勇士送上最好的祝福', '球迷', '“在经历这件事之后，我们中的任何人都很难再去享受比赛。为我们的兄弟祈祷，我今晚唯一关心的就是你一切安好，谈到35号时，‘比赛需要我’都是轻描淡写的。让我们一起为这位真正的勇士送上最好的祝福。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (472, 'G5评述：属于所有勇士们的坚韧血气 还有那颗总冠军的心', '球迷', '保罗-皮尔斯说过：“1-3的球队，赢下第五场就意味着会有第七场。”勇士们没有倒在多伦多，或许', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (473, '尼利基纳致敬法国跑车：感谢你所做的一切，退役愉快', '球迷', '“很难解释你对我们所有法国球员的影响。你让我们相信一切皆有可能。你是独一无二的。感谢你所做的一切。退役愉快。”尼利基纳写道。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (474, 'NBA东部冠军2017：骑士4-1淘汰绿军，詹皇季后赛总得分超乔丹', '球迷', '最后一节骑士五虎全部休息，凯尔特人也放弃了抵抗。双方得分能力都下降，但对比赛的进程没太大影响。骑士晋级，连续三年与勇士打总决赛，这也是一项纪录。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (475, '2米03的勒布朗臂展2米14，那同身高的麦迪、安东尼和皮蓬呢？', '球迷', '此外还有一些身高2米03的球星，阿里扎的臂展达到2米18，独行侠球星巴恩斯的臂展是2米11，九指扣篮王格林的臂展是2米08，米尔萨普的臂展为2米17，海沃德臂展为2米03，哈勒尔的臂展达到2米24。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (476, '12分钟！KD成总决赛单场出战时间第二少的队内得分王', '球迷', '根据此前报道，杜兰特将在明天接受核磁共振检查，确定跟腱受伤的具体程度。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (477, '遭遇跟腱撕裂球星伤缺期统计：考辛斯伤缺357天', '球迷', '1992年 多米尼克-威尔金斯 伤缺283天', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (478, '波波维奇：澳大利亚很有天赋 要比其他国家队强', '球迷', '根据此前公布的澳大利亚男篮大名单，名单中拥有9名NBA球员，分别是本-西蒙斯（76人）、安德鲁-博古特（勇士）、帕蒂-米尔斯（马刺）、阿隆-贝恩斯（凯尔特人）、乔-英格尔斯（爵士）、马修-德拉维多瓦（骑士）、米奇-克里克（森林狼）、乔纳-博尔登（76人）、邓-阿德尔（骑士）。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (479, '开拓者试训新秀斯蒂芬-汤普森&勒克莱尔等人', '球迷', '开拓者在今年的选秀大会上拥有第25顺位的选秀权。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (480, '金州勇士客场死里逃生，NBA总冠军归属还有悬念吗？', '球迷', '今天的比赛考辛斯的发挥值得赞扬，他第二节连续得到7分帮助勇士稳住了局面，末节虽然他连续犯错但是他本场还是拿到了季后赛最高的14分，考辛斯的强势反弹让猛龙也是始料未及，回到主场勇士还需要更多的角色球员有所发挥。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (481, 'NBA西部冠军2018：勇士西决抢七逆转火箭，他们究竟胜在哪？', '球迷', '失败者总结下失败的原因，明年还要继续努力，胜利者要继续前行，让广大球迷可以看到更加精彩的比赛。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (482, '为杜兰特而战！水花连进三分扭转败局，裁判给机会猛龙抓不住', '球迷', '全场比赛结束，勇士队：库里23投10中砍下31分8篮板7助攻、克莱、26分6篮板4助攻、考辛斯14分6篮板、杜兰特11分、追梦格林10分10篮板8助攻、卢尼4分3篮板。猛龙队：莱昂纳德24投9中砍下26分12篮板6助攻2抢断2盖帽、西亚卡姆12分4篮板2助攻、加索尔17分8篮板2助攻、洛瑞18分4篮板6助攻、范弗里特11分2篮板、伊巴卡15分6篮板。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (483, 'Spears：杜兰特为总决赛G5能够复出一天两练', '球迷', '不幸的是杜兰特在今天比赛第二节再次受伤，据勇士总经理迈尔斯透露，杜兰特受伤的部位是跟腱，著名记者Ramona Shelburne和Wojnarowski联合报道称勇士认为杜兰特跟腱撕裂。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (484, '青岛雄鹰队已经裁掉了前锋特伦斯-琼斯，并签下了马齐-兰佩', '球迷', '琼斯在2016-17赛季场均22.3分11个篮板2.2次盖帽，看起来数据并不是太差，但是他过于随意的打法，影响了青岛队。本来青岛队国内球员实力就不强，再由着他这么胡打，全队成绩肯定上不去。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (485, 'NBA东部冠军2018：骑士抢七淘汰绿军，詹姆斯连续八年进总决赛', '球迷', '凯尔特人队首发：罗齐尔、塔图姆、布朗、霍福德、贝恩斯', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (486, 'NBA新闻：马刺助教拒评重回欧洲，奇才老板想留比尔', '球迷', '来自美国篮球名记阿德里安-沃纳洛夫斯基的报道，有多位消息人士透露，前WNBA球员斯文-凯什将在鹈鹕管理层担任高级职位。另有线报称，凯什将担任的是球队篮球运营和发展副总裁。凯什球员时期，曾是WNBA的明星，她在联盟中征战了15个赛季，期间四次入选全明星阵容，三次赢得总冠军，如今，凯什进入鹈鹕管理层，主要负责球探和球员培养工作。而一位女性进入鹈鹕高层，也会给球队运营带来一些新思路。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (487, '杜兰特因伤休战，勇士横扫开拓者成西部冠军，库里抱儿子庆祝', '球迷', '不过有点意外的是，最终捧着西部冠军奖杯的球员，并不是勇士的核心主力球员，而是在本场比赛中替补出场的奎因-库克，他成为这次领奖典礼的主角。当然，这也完全可以理解，毕竟对于勇士阵中的球星而言，他们已经连续5年拿到西部季后赛冠军。现在看来西部的季后赛冠军奖杯，对库里、汤普森、格林等人基本上已经是毫无吸引力，他们真正想要的还是最终的总冠军奖杯！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (488, '科尔：水花大多数夜晚都能接管比赛 他们的好胜心极强', '球迷', '“他们太棒了，他们是不可思议的竞争者、优秀的射手，马克-杰克逊几年前说过，他们是历史最佳投射后场，也许人们不知道他们的好胜心有多强，我想今晚以足够证明。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (489, '杜兰特离开了，但勇士们还活着', '球迷', ' Durant exits, but Warriors stay alive ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (490, '凯文·杜兰特跟腱受伤，核磁共振检查', '球迷', ' Kevin Durant suffers Achilles injury, MRI scheduled ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (491, 'NBA上脚战靴：伦纳德上脚黑白配色，一哥穿科比战靴', '球迷', '替补出战的考辛斯上脚：Puma Uproar Spectra。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (492, 'NBA东部冠军2019：猛龙队史首次称霸东部，伦纳德终于笑了', '球迷', '合影结束后，洛瑞极其不舍地抱着奖杯返回更衣室，7年了，没有德罗赞，洛瑞终于摸到总决赛地板，太不容易了。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (493, '勇士GM迈尔斯：杜兰特确诊为跟腱撕裂，我应该承担责任', '球迷', '“让我来跟你聊聊杜兰特吧。他很爱打篮球，那些质疑他复出和回到赛场的意愿的人，都是错的。他是世界上被误解得最多的人之一。他是一个很棒的队友，很棒的人，那些质疑都是不公平的。能够认识他我很高兴。”鲍勃-迈尔斯说道。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (494, '戴维德森去世后戈尔斯成活塞新老板，他46岁时身价24亿美元', '球迷', '具体的易主协议还未达成，戴维德森家族表示还想保留一小部分的股份。活塞在04年夺得NBA总冠军，他们连续六年至少进入分区决赛，但是近两个赛季活塞战绩迅速下滑，09-10赛季战绩为27胜55负，10-11赛季战绩为30胜52负。这两个赛季主场上座率极低，其中还有主教练和球员矛盾摩擦，相信戈尔斯接手活塞第一个月不会清闲的，首先就是主教练库切斯特是否会留任。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (495, '科朗吉洛谈米尔萨普加入训练营：他非常具有竞争力', '球迷', '今天美国男篮主席杰里-科朗吉洛谈到了邀请米尔萨普的原因：“我认为他是一名很棒的具有竞争力的球员，当我们想到我们需要面对一些非常强硬的对手时，这时我们需要老将来指导我们如何应对，他们在体型，力量以及经验方面都很有竞争性，所以他很适合我们的球队，并且他也配得上加入训练营的名单。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (496, 'PJ-塔克砍下个人职业生涯季后赛首次砍下15+10的数据', '球迷', '值得一提的是，本场比赛的数据，也是塔克季后赛生涯首次砍下15+10以上的数据，在本场比赛中，他的10个篮板球包括了5记前场篮板，让勇士队的内线极为头痛，这样的表现让我们想起了上一场比赛，塔克在比赛最后15分钟一个人就抢到了9个篮板球，比同期勇士全队还多一个。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (497, '2011年76人老板易主，哈里斯和布利策联手完成收购', '球迷', '“我们很骄傲能够聘请到不同背景和行业内最优秀的人才，为打造一个多才多艺充满活力的组织而共同努力，”布利策在声明中说道，“HBSE为我们提供了一个独特的机会，就是可以通过我们这充满天赋的管理层的能力以及我们共有的资源来实现增长和扩张，以及找到加速和维持长期成功的手段。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (498, '戈贝尔致敬帕克：你向我们展示了一切皆有可能', '球迷', '戈贝尔写道：“谢谢你，托尼，你向我们展示了这个世界，向我们年轻一代展示了一切皆有可能，向我们展示了前进的道路，并且打开了一扇之前从未打开过的大门，对此我会永远心存感激，祝福你未来一切顺利。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (499, '比尔-拉塞尔：KD展示了团队球员的含义 祈祷他早日康复', '球迷', '拉塞尔写道：“我为所有的猛龙和勇士球员感到骄傲，他们团结在一起支持杜兰特。首先我们都是普通人，没有人想要看到任何人遭受伤病。杜兰特今晚向我们展示了内心的勇气，以及作为一名真正的团队球员的含义。我们祈祷他早日康复。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (500, '随队记者：来自勇士的内外压力迫使杜兰特回归比赛', '球迷', '杜兰特的具体伤势需等明日MRI具体检查结果。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (501, '欧媒主编：梅西纳倾向于离开马刺 前往米兰担任总裁兼主帅', '球迷', '值得一提的是，马刺助教尤度卡和76人达成协议，将前往费城担任首席助教，如今梅西纳也倾向于离队，波波维奇将失去两位得力助手。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (502, 'NBA综述：杜兰特再度受伤离场，水花兄弟造神奇翻盘', '球迷', '猛龙这边，伦纳德空砍26分12篮板6助攻2抢断2盖帽。勇士这边，汤神得到26分6篮板4助攻、库里入账31分8篮板7助攻。杜兰特只打了一节就再度伤退，最新的情况显示，KD的情况似乎不容乐观，很可能是跟腱撕裂。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (503, 'NBA今日得分数据排行前十：库里31分最佳、伊巴卡15分', '球迷', 'TOP10：杜兰特11分、5投3中', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (504, 'NBA今日最佳数据排行：库里31分、格林8助攻、伦纳德5失误', '球迷', '加索尔8罚7中、伦纳德8罚6中、伊巴卡6罚5中、库里6罚6中、考辛斯4罚1中、汤普森2罚1中、范弗利特2罚2中、杜兰特2罚2中、洛瑞2罚1中、西亚卡姆1罚0中。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (505, 'NBA今日篮板数据排行前十：伦纳德12篮板、加索尔8篮板', '球迷', 'TOP10：洛瑞4篮板、前场1后场3', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (506, 'NBA今日助攻数据排行前十：格林8助攻、加索尔2助攻', '球迷', 'TOP10：加索尔2助攻、6投4中', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (507, '猛龙最后一攻小卡遭包夹洛瑞绝杀未果，赛后他们分别说了什么？', '球迷', '记者问道：“为什么最后一攻你不去执行，哪怕是在被包夹的情况下？”莱昂纳德回答道：“有两个人包夹我，你一定要做出一个正确的判断，其实我们底角有机会的，洛瑞的出手非常的正确。”；记者问道：“对于伤病你一定有很多的话要说，为此你怎么看？”小卡回答道：“KD是伟大的球员，他是MVP，全明星等等，但是伤病非常的让人痛苦，他要有足够的耐心，祝福KD早日的康复。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (508, '“怪我”:凯文杜兰特跟腱受伤，通用汽车露出了灵魂', '球迷', ' \'Blame me\': Kevin Durant has Achilles injury as GM bares soul ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (509, '“我伤得很重”——凯文杜兰特在跟腱受伤后的第一句话', '球迷', ' \'I\'m hurting deep\': Kevin Durant\'s first words after Achilles injury ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (510, '孙梦然微博：致敬KD 他把总冠军和球队放在了更重要的位置', '球迷', '值得思考... ​​​​', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (511, '科尔赛前：医生告诉我杜兰特不会因复出再受更重的伤', '球迷', '本场比赛第一节，杜兰特上场了10分钟，第二节上场2分钟后受伤离场。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (512, '勇士三大法宝被克制，全队期待他带伤复出，死神成总冠牺牲品？', '球迷', '尽管勇士这是在赶鸭子上架，但是对手猛龙队，依旧对杜兰特充满敬畏。谈及杜兰特，猛龙当家控卫洛瑞评价道：“如果他能打，他就是MVP，是NBA最佳阵容的球员，他还是全明星和总决赛MVP。但我们不能专注于此，我们必须专注于自己。”同时洛瑞还表示，全队并未因大比分领先感到放松，这也让更加期待的明天的大战！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (513, '尼克斯队正在经历杜兰特的噩梦', '球迷', ' Knicks are living Kevin Durant\'s nightmare ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (514, '伤情！勇士判断杜兰特跟腱撕裂，前途未卜或影响篮球生涯', '球迷', '话虽这么说，但杜少今夏的前景，乃至他生涯的前景，很可能将因为这次伤病受到很大的影响。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (515, '杜兰特带伤复出救了勇士毁了自己，NBA众星第一时间为他祈祷', '球迷', '在杜兰特再次受伤下场之后，多位NBA球星都在社交媒体上为阿杜祈福和力挺阿杜，包括了大帝恩比德、比永博、安德烈-罗伯森，富尼耶和奥拉迪波等人在内，都祝福阿杜能够早日康复。在凯尔特人队拿到过总冠军的帕金斯，也在社交媒体上炮轰了勇士队，他表示必须要责怪勇士队内向杜兰特施压让他上场的人，他根本没有达到能够完全上场的标准，不是100%康复就不能上场，但是勇士队选择让他冒险，让他付出了巨大的代价。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (516, '卢尼伤情加重仍请求出战G6，伊戈达拉一番话令人动容', '球迷', '今年的勇士，让球迷看到了他们不抛弃不放弃的职业球员态度，他们的好胜心，他们对待胜利的渴望，每个人都值得尊敬，他们都是勇士。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (517, 'NBA官方评选今日最佳数据：库里31+8+7当选', '球迷', '在他的带领下，勇士赢下生死战，将系列赛带回奥克兰。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (518, '考辛斯关键补篮被判干扰球，裁判这么帮忙猛龙都没赢', '球迷', '然而即便是这样一次明显的误判，都没有能够帮助猛龙队赢球，猛龙最后时刻的表现实在是太不争气，他们又被库里和汤普森分别投中一个三分球，在领先之后被对手打了一波9:0，直接逆转了比分，虽然说最后时刻洛瑞又造了考辛斯一个防守干扰球，分差缩小到了一分，但是最后时刻洛瑞出手压哨的三分球没有能够命中，这样一来，勇士队也就顺理成章的一分绝杀对手拿下了比赛。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (519, '总决赛G5：考神临危上阵连砍9分，关键时刻连续失误险酿大错', '球迷', '第四节开始后，猛龙连续进攻得手，随后库克飙中三分，帮助勇士止血。随后库克又助攻贝尔投篮得手，帮助勇士将领先优势再度扩大至6分。之后，两队互有攻守，在伊巴卡接洛瑞传球空接得手后，将分差缩小至3分，直接将勇士打停。之后伦纳德再度连续发威，勇士这边水花开始临危救主，最后时刻， 考辛斯封盖洛瑞被判干扰球，之后考辛斯给库里掩护又被吹掩护犯规，险些酿成大错。最终，勇士在客场以106-105战胜猛龙，将总比分改写为3-2。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (520, '杜兰特刚复出就伤退，猛龙球迷态度360度大转弯，伊巴卡被误解', '球迷', '张指导在解说中表示：这可能是伊巴卡的脚尖不小心碰到了KD的小腿。慢镜头至少放了四五遍。球迷的眼睛也是雪亮的，伊巴卡的脚肯定就没有挨到杜兰特的腿。这种说法是很荒谬的。当然那种情况下，分析错误也很正常。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (521, '记者谈跟腱撕裂临床表现：通过挤压小腿看有无反应', '球迷', '杜兰特的具体MRI检查时间，勇士队方面还没有给出明确的答复。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (522, '库里观看迈尔斯发布会流泪视频 同样落泪并拥抱了后者', '球迷', '【勇士GM透露杜兰特跟腱受伤 发布会一度哽咽】', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (523, '总决赛G5：追梦两双末节关键三分，一哥受困伤病表现低迷', '球迷', '第四节开始后，两队互有攻守，猛龙先连续进攻得手，将分差缩小，随后勇士还以颜色，之后猛龙再度缩小分差，在伊巴卡接洛瑞传球空接得手后，将分差缩小至3分，直接将勇士打停。暂停回来后，猛龙再度打进，随后格林接伊戈达拉传球飙中三分，帮助勇士止血。之后伦纳德连续得手，帮助猛龙反超比分，随后格林篮下勾手命中。之后伦纳德再度连续发威，勇士这边水花开始临危救主，最终，勇士在客场以106-105战胜猛龙，将总比分改写为3-2。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (524, '勇士老板谈KD：对于他回归表示尊重 受伤让人非常难过', '球迷', '据最新报道，勇士方面认为杜兰特右跟腱撕裂。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (525, '勇士VS猛龙G5述评：多此一停？绝地三分信念不倒', '球迷', '夜长梦多，每一个细节都可能改变系列赛的走势，可能是一个暂停。阿杜以身作则，请别低估一颗三连冠的心。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (526, '小加谈失利：回去看录像 看看哪里做得不好的', '球迷', '本场比赛，小加出场31分钟，得到17分8篮板2助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (527, '随队记者：勇士明日凌晨飞离多伦多 杜兰特MRI具体时间不确定', '球迷', '据勇士总经理此前透露，杜兰特是跟腱受伤，严重程度尚不知晓。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (528, 'Shelburne：勇士认为杜兰特右跟腱撕裂', '球迷', '勇士总经理迈尔斯在采访时透露杜兰特跟腱受伤。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (529, '伦纳德末节连拿10分纳斯竟叫暂停，猛龙队史首冠就这么没了', '球迷', '值得一提的是，就在本场比赛之后，猛龙的夺冠概率已经下降到了83%，勇士的夺冠概率上升到了17%，而在此之前勇士的冠军概率只有8%，现在直接翻倍了。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (530, '连续17年进季后赛，最快取得800胜……帕克还有哪些难以打破的纪录', '球迷', '2007年总决赛，西部马刺处于巅峰期，东部骑士则是詹姆斯单核带队，最终呈现一边倒的局面。马刺4-0横扫骑士夺冠，帕克交出了场均24.5分5篮板3.3助攻的数据，投篮命中率高达56.8%，成功当选为总决赛MVP，而他也因此成为NBA历史上第一位外籍FMVP。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (531, '总决赛G5：克莱绝望时刻送关键攻防，两记金子3分艰难制胜', '球迷', '在绝望的时刻，汤普森金子般的两记三分联手库里打出了一波至关重要的9-0的小高潮，正是这波高潮帮助勇士死里逃生。汤普森可谓居功至伟。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (532, '克莱：经验对胜利帮助很大 没什么能让我们手足无措', '球迷', '本场比赛，克莱21中9，三分13中7，砍下26分6板4助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (533, '猛龙错失夺冠最佳时机，勇士大难不死仍“命悬一线 ”', '球迷', '第五战之前，数据显示勇士逆转的希望微乎其微，但这就是篮球的魅力所在，每一场都是从0-0出发的一个全新的开始，所有的历史数据在比赛开打的一瞬间都没有了任何意义。G6,甲骨文中心，没有任何剧本可以参考，是猛龙创造历史还是勇士得以继续呼吸，一战定乾坤！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (534, '追梦谈最后3分钟落后6分：我们从未放弃过', '球迷', '赛后勇士球员格林谈到最后时刻落后时说道：“当你在比赛最后几分钟仍落后6分，面临淘汰，要眼睁睁看着对手夺冠时，我们本可以掩面而泣，本可以缴械投降，但我们并没有这样做，我之前说过，我们这支球队从来没有放弃过，现在仍然如此。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (535, '托尼-帕克正式宣布退役，回顾他职业生涯拿到过的数据和荣誉', '球迷', '从2001年作为新秀被马刺选中，帕克在马刺度过了17年的职业生涯，他给这个球队带来了无数荣誉，原本可以上演一个人一座城的佳话，就像邓肯一样在马刺退役，没想到他突然选择了离开，跟随助理教练到了黄蜂，或许他是不服老的，就像他说的一样，想要继续追逐总冠军的梦想，可惜岁月不饶人，最终以这种方式结束了自己NBA的职业生涯，老东家马刺也没给他一个光荣的退役仪式，不禁令人感到唏嘘。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (536, '小卡笑谈最后一攻：两个人扑我 不懂怎么出手', '球迷', '本场比赛，猛龙球星科怀-莱昂纳德出战41分钟，24投9中，三分7中2，罚篮8中6，得到26分12篮板6助攻2抢断2封盖。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (537, '神奇5分钟！水花兄弟毁掉伦纳德剧本，一波三折G5成历史名局', '球迷', '总决赛还没结束，接下来，双方又将回到奥克兰展开一场新的搏杀。而在所有弹药拼光，所有招数用尽，杜兰特二度受伤，球队又被逼入输球绝境之时，勇士再次让人们见识了冠军队伍的底蕴，见识了那种无与伦比的自信心和决心。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (538, '西亚卡姆转体拉杆轻盈上篮，小钢炮却痛失绝命3分', '球迷', '但是最关键时刻，洛瑞空位3分居然没能打成，而后他又出现了传球失误，让水花兄弟接连3分打击！最后时刻，洛瑞上篮得分将分差缩小到1分，最后15秒他本来有机会反超比分，但他却在对方的干扰下上篮3分不中，猛龙最终1分惜败，没能创造历史！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (539, '克莱谈KD：他是一名勇士人 他为我们牺牲了他的健康', '球迷', '本场克莱21中9，三分13中7，得到26分6板4助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (540, '勇士客场救回赛点 总决赛40年来第6支球队', '球迷', '据美媒ESPN Stats & Info统计，勇士成为近40年来第6支在总决赛1-3落后的情况下，在客场救回赛点的球队。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (541, '【今日数据王】水花兄弟扛起得分大旗 卡哇伊五榜有名', '球迷', '5.格林 1个', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (542, '小卡：为KD感到难过 纳斯叫暂停可能想让我们休息下', '球迷', '谈到最后一球没投，卡哇伊表示：“两个人上来防我，我不知道自己能不能投出去。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (543, '一哥：一直在和卢尼说别打了 人们不会理解我们的兄弟情', '球迷', '在今天的比赛中，坚持出战的卢尼拿到4分3篮板。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (544, '库里谈KD受伤：他付出了一切 我为他感到心碎', '球迷', '本场比赛库里出战41分钟砍下了31分8篮板7助攻，投篮23中10，三分14中5。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (545, '库里谈KD受伤时部分球迷欢呼：丑陋而自私的行为', '球迷', '根据媒体的最新报道，杜兰特遭遇了跟腱的伤势。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (546, 'NBA总决赛G5：克莱季后赛三分命中数追平勒布朗，并列历史第三', '球迷', '在这份榜单上，库里（466记）和雷-阿伦（385记）排名前两位。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (547, '总决赛客场面临被淘汰库里砍30+ 过去50年联盟第5位', '球迷', '此前4位为：2016年总决赛G5的詹姆斯和欧文、1998年总决赛G5的马龙、1974年G6的贾巴尔。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (548, '近20个赛季总决赛最后3分钟落后6分的球队3胜92负', '球迷', '根据数据统计，在最近20个赛季，总决赛最后三分钟落后6分的球队，仅有3胜93负，胜率3.16%', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (549, '范弗里特：我们拥有一颗总冠军的心 有时事情并不会顺心如意', '球迷', '本场比赛，范弗里特贡献11分2篮板1助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (550, '今年常规赛追梦仅18场得分上双比赛 今年季后赛已有17场', '球迷', '这是追梦今年出战的21场季后赛里第17场得分上双比赛，而在出战过的66场常规赛，追梦仅有18场得分上双比赛。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (551, '人们总质疑KD玻璃心？考辛斯爆粗口：F**k them', '球迷', '本场比赛，考辛斯出战20分钟，8投6中，拿到14分6篮板2失误4犯规。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (552, '最后一战！无论输赢G6都将成为勇士在甲骨文的告别演出', '球迷', '本场胜利也使得勇士重新将系列赛带回奥克兰，G6将在甲骨文球馆进行。由于下赛季勇士的主场将迁往大通中心，因此无论输赢，总决赛G6都将成为勇士在甲骨文球馆的告别演出。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (553, 'GQ杂志PK：拉塞尔击败詹姆斯荣获时尚之王', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (554, '没有杜兰特勇士更好？克莱：他能带任意球队进季后赛', '球迷', '赛后，克莱谈到了杜兰特对于球队的重要性：“说没有杜兰特勇士是更好的球队的言论真是太荒谬了，他是世界上最好的篮球运动员。把他放在联盟任意一支球队，那支球队都能打进季后赛。那些言论真的是太荒唐了。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (555, '迈尔斯谈KD受伤：他上场是共同的决定 要怪的话就怪我吧', '球迷', '“他今晚可以上场比赛。这是一个共同的决定。我不认为有谁应该要受责备。我理解这个世界，如果非要这样的话，你可以责备我。我负责我们的篮球事务运营部门。”迈尔斯继续说道。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (556, '杜兰特总决赛G5再度伤退，猛龙小老板德雷克表情痛苦', '球迷', 'Drake breaks down watching Kevin Durant exit', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (557, '杜兰特右小腿再度受伤，猛龙球迷先是欢呼后高喊KD', '球迷', 'Kevin Durant exits NBA Finals return as Raptors fans mock', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (558, '杜兰特复出11分钟再度伤退，水花合砍57分为勇士续命', '球迷', 'Warriors stun Raptors to keep NBA Finals hopes alive', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (559, '勇士比猛龙多进12记三分，NBA总决赛历史第二大进球差', '球迷', '此前差距最多的一次是17年骑士与勇士的G4，当时骑士三分45中24，勇士39中11，两队差了13记三分。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (560, '克莱谈KD受伤猛龙球迷欢呼：无法用语言表达我的愤怒', '球迷', '本场比赛克莱出战42分钟贡献了26分6篮板4助攻1抢断，投篮21中9，三分13中7。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (561, '凯文-杜兰特在NBA总决赛回归前看起来好得吓人', '球迷', ' Kevin Durant looks scary good before NBA Finals return ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (562, '卢尼：对于G6出战表示乐观 能否出战由我自己决定', '球迷', '本场比赛，卢尼拿到4分3篮板。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (563, '尼克斯队找到安东尼·戴维斯的道路变得更加复杂', '球迷', ' Knicks\' path to Anthony Davis just got a lot more complicated ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (564, '洛瑞谈KD：不想看到像他这样的竞争者倒下', '球迷', '本场比赛，洛瑞投篮16中8，得到了18分4篮板6助攻1抢断2封盖的数据。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (565, '克莱：这一切都是为了KD 要为他赢下接下来的两场比赛', '球迷', '在今天的比赛里，克莱21投9中，三分球13中7，砍下26分6板4助1抢断。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (566, '库里斩获总决赛第10次30+，超越KD升至历史第九', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (567, '勇士总经理迈尔斯：杜兰特跟腱受伤', '球迷', '勇士GM透露杜兰特跟腱受伤 发布会一度哽咽', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (568, '纳斯的暂停帮助了勇士？追梦：绝对的', '球迷', '当被问道这个暂停是否帮助了勇士，追梦表示：“绝对的，他们叫了暂停，我们利用了他们的暂停，聚集起来，布置了一个战术，我认为这个暂停帮我们稳定了下来。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (569, '杜兰特ins：现在内心很受伤 但团队胜利让我重获新生', '球迷', '此役杜兰特复出登场12分钟，全场5中3（三分球3中3），罚球2中2，拿到11分2篮板1盖帽。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (570, 'NBA总决赛G5：本场比赛猛龙与勇士三分得分24-60，两分球60-36', '球迷', '另外，猛龙在罚球得分上以21-10领先。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (571, '范弗里特谈KD受伤：对他表示同情 不想看到有人受伤', '球迷', '本场比赛，范弗里特贡献11分2篮板1助攻，杜兰特拿到11分2篮板1盖帽。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (572, '记者发问：纳斯和韦伯谁的暂停更糟糕？', '球迷', '1993年NCAA总决赛上，密歇根最后12秒领先1分的情况下，克里斯-韦伯喊了一个不存在的暂停，被吹技术犯规，直接葬送胜利。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (573, '科尔：这是一场不不可思议的胜利 同时为KD感到难过', '球迷', '“我们现在的感受有点荒谬，这是一场不可思议的胜利，同时也是一场可怕的损失（KD伤退）。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (574, '丁彦雨航赞叹总决赛G5：期待下一场 希望杜兰特没事', '球迷', '本场比赛杜兰特出场12分钟，5投3中得到11分2篮板1盖帽的数据。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (575, '勇士G5命中20记三分球 队史总决赛最多&历史第二多', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (576, '克罗斯：勇士打出了冠军级别的表现', '球迷', '双方的G6将移师金州开打，时间是北京时间6月14日早上9点。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (577, '毫厘之间！名记晒出FMVP投票 比尔-拉塞尔也到达现场', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (578, '库里总决赛已7次至少拿到30+5+5 队史其他人共计8次', '球迷', '现据数据统计，库里总决赛生涯已经7次至少拿到30分5篮板5助攻的表现，只比勇士队史其他人加起来的总和（8次）少一次。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (579, '科尔：KD受伤时一切显得如此怪异 感谢猛龙球员', '球迷', '谈到杜兰特受伤，科尔表示：“当KD受伤时，猛龙的球员告诉球迷们保持安静以表示尊重，这点我很感激，一些球迷在欢呼，我认为，猛龙的球员明白这事有多严重。那几分钟内，一切都显得如此怪异和陌生。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (580, '库里和克莱4次同场总决赛命中至少5记三分 继续刷新纪录', '球迷', '全场比赛，库里23中10，三分14中5，砍下31分8板7助攻；克莱21中9，三分13中7，砍下26分6板4助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (581, '库里：决一死战生死攸关 KD为我们奉献了他的全部', '球迷', '全场库里出战41分钟，投篮23投10中，三分14中5，罚球6中6，砍下31分8篮板7助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (582, '功亏一篑！莱昂纳德空砍26+12+6+2+2，纳斯谜之暂停葬送比赛', '球迷', '本场比赛莱昂纳德出战41分钟，他手感不佳24中9（三分7中2），罚球8中6，砍下26分12篮板6助攻2抢断2盖帽的两双数据，并出现了五次失误，正负值+1。值得一提的是，伦纳德在末节一度4中4连得10分帮助猛龙反超比分，但之后纳斯请求暂停，回来后被勇士打出一波9-0成为比赛的转折点。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (583, '总决赛G5：乔丹附体伦纳德连得10分，惜连续打铁未能创历史', '球迷', '第四节比赛，伦纳德终于回来了，他先是盖掉了库里的上篮，而后又果断地突破切入得分，之后伦纳德虽然被伊戈达拉防下，但他马上抢断对手助攻鲍威尔得分！最关键的时刻，伦纳德接连两记3分，1分07秒内连下8分！之后又跳投得分，帮助猛龙终于完成了反超！最后3分钟，伦纳德在汤普森的防守下翻身跳投，可惜没能打成。之后，伦纳德连续两次3分都未能打成，这让猛龙最终丧失掉了胜机。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (584, '克莱单场命中7记三分 总决赛生涯单场新高', '球迷', '此前最高为6个，是在本轮G4（6月7日）与猛龙的比赛中创下的。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (585, '高效依旧！伊巴卡8中5砍15分6板', '球迷', '上一场猛龙击败勇士的比赛中，伊巴卡则是12中9贡献20分4板2帽。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (586, '库里砍生涯总决赛第10次30+ 平贾巴尔升至历史第五', '球迷', '排在前四的是：乔丹23次，詹姆斯20次，奥尼尔16次，科比13次。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (587, '总决赛第6场盘口：勇士主场让3.5分 大小分210.5分', '球迷', '赛后，美国博彩网站为总决赛G6开盘，勇士主场让分3.5，大小分210.5分。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (588, '杜兰特伤退！库里开场火爆数次止血，末节及时回暖飚关键三分', '球迷', '在猛龙反超比分之后，库里想要回应的三分还是不中，在被拉开到6分的时候，库里先后两次三分都没能命中，在汤普森先飚进三分之后，在最后1分22秒时，库里也终于飚进关键三分，帮助勇士追平了比分。最终也帮助勇士惊险过关。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (589, '猛龙夺冠概率降至83% 勇士升至17%', '球迷', '相关新闻链接>>3-1！猛龙夺冠概率升至92% 勇士则为8%', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (590, '战术鬼才！10-2后纳斯主动暂停 被打出一波9-0', '球迷', '而在比赛最后13秒，落后1分的猛龙直接拖时间打完最后一攻，随着洛瑞三分偏出比赛结束，此时纳斯手中还剩1个暂停。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (591, '勇士最后时刻打出9-0小高潮 夺回领先优势惊险取胜', '球迷', '洛瑞加速上篮遭遇考辛斯干扰，裁判吹罚后者干扰球，猛龙以105-106落后。随着洛瑞最后一投不中，勇士以1分优势险胜猛龙。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (592, 'NBA总决赛G5：汤普森砍26+6+4，连续三分率队逆转', '球迷', '全场比赛，克莱21投9中，三分球13中7，砍下26分6板4助1抢断。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (593, '12记三分+57分14板11助，水花兄弟带领勇士龙口逃生', '球迷', '本场比赛水花兄弟合计命中12记三分，成为勇士取胜的关键所在。库里出战41分钟，23中10（三分14中5），罚球6中6，砍下31分8篮板7助攻，正负值-2；克莱出战42分钟，21中9（三分13中7），罚球2中1，拿到26分6篮板4助攻1抢断，正负值-6。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (594, '水花兄弟神奇9分杜兰特伤退，勇士险胜猛龙总分2-3 ', '球迷', '全场比赛库里得到31分7篮板7助攻，汤普森26分，杜兰特复出仅打了12分钟，三分球3中3得到11分，德雷蒙德-格林10分10篮板8助攻，考辛斯14分。猛龙这边莱昂纳德26分12篮板6助攻，小加索尔17分，西亚卡姆12分，洛瑞18分6助攻，伊巴卡15分，范弗利特11分。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (595, '库里31+8 杜兰特复出后伤退 莱昂纳德26+12+6 勇士险胜猛龙', '球迷', '猛龙：洛瑞、丹尼-格林、西亚卡姆、莱昂纳德、加索尔', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (596, '专业运动队外科医生：杜兰特看起来像是跟腱撕裂', '球迷', '洛杉矶医生Rajpal Brar DPT称，KD不是跟腱完全断裂，可能是部分撕裂。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (597, '大卫-罗宾逊致敬帕克：作为你的粉丝看了你比赛多年', '球迷', '罗宾逊在推特上写道：“很幸运能与你共同经历一个冠军赛季，之后作为你的粉丝看你比赛多年，很感激能有你这样的队友和朋友。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (598, '克莱库里连续命中三记三分，终场前57秒勇士106-103猛龙', '球迷', '在末节还剩5分13秒到3分28秒这段时间里莱昂纳德4中4连砍10分，猛龙103-97反超勇士；但是之后勇士连续命中三记三分以106-103重新领先，其中克莱彪中两记三分，库里命中一记三分，此时距离比赛结束只剩57秒。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (599, '为了勇士总冠军，杜兰特带伤出战，却再次伤退，猛龙夺冠机率曾大', '球迷', '看下上半场两队的数据情况，勇士队：库里11投7中砍下23分3助攻、杜兰特5投3中得到11分2篮板、追梦格林5分4篮板4助攻、克莱12分3篮板2助攻、考辛斯9分5篮板。猛龙队：莱昂纳德13分6篮板5助攻、西亚卡姆10分、加索尔15分5篮板、丹尼-格林4分3篮板。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (600, '天神下凡！小卡2分钟里4中4连得10分带领猛龙反超比分', '球迷', '从末节还剩5分34秒到还剩3分05秒，莱昂纳德4中4连得10分，带领猛龙打出一波10比2，一举反超6分。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (601, '鲍威尔单手滑翔劈扣打停勇士，小卡连得10分助猛龙反超比分', '球迷', '在末节还剩5分40秒时考辛斯失误丢球，鲍威尔快攻单手滑翔劈扣打停勇士；暂停回来后莱昂纳德在两分钟的时间里连得10分（两记三分+两记两分），帮助猛龙以103-97反超勇士。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (602, '洛瑞弧顶彪中三分，伊巴卡双手暴扣，猛龙将比分追至89-92', '球迷', '在末节还剩8分40秒左右时，洛瑞在弧顶迎着贝尔的防守彪中三分；而在猛龙下一个回合中洛瑞突破到篮下送妙传伊巴卡双手暴扣，猛龙连得5分将分差追至89-92，目前只落后勇士三分。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (603, '莱昂纳德本赛季季后赛突破700分 历史第六人', '球迷', '此前的5人分别是：92年乔丹759分、18年詹姆斯748分、95年奥拉朱旺725分、01年艾弗森723分、2000年奥尼尔707分。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (604, '卢尼忍痛咬牙坚持征战总决赛G5，上场17分钟贡献4分3板', '球迷', '截止到目前，卢尼替补上场17分钟，4中2拿到4分3篮板。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (605, '恩比德怒批杜兰特受伤球迷欢呼行为，韦德发文为死神祈福', '球迷', '“真的没有办法......”贾马尔-克劳福德吓到。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (606, '帕金斯：我要责怪向KD施压的人 跟他说过不是100%恢复不要打', '球迷', '曾经杜兰特的队友帕金斯在推特上抱不平说道：“我要责怪勇士队里向杜兰特施压让他上场的人，杜兰特并不是健康的！我前几天就跟他说了，不是100%恢复的话，不要上场比赛。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (607, '总决赛G5：库里26+4+6克莱20+5小加17+7，勇士三节84-78猛龙', '球迷', '猛龙队：小加索尔17分7篮板2助攻，莱昂纳德14分9篮板5助攻2抢断1盖帽，西亚卡姆12分4篮板1助攻1抢断，洛瑞11分2篮板5助攻1抢断2盖帽，丹尼-格林4分4篮板1抢断，范弗利特11分1篮板1助攻，伊巴卡9分6篮板1抢断。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '总决赛G5：库里26+4+6克莱20+5小加17+7，勇士三节84-78猛龙', '总决赛G5', '总决赛G5');
INSERT INTO `app_articlemodel` VALUES (608, '美记：卢尼肩部缠着绷带返回更衣室', '球迷', '据美记报道，卢尼肩部缠着绷带返回更衣室。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (609, '杜兰特将于明日接受核磁共振检查，本场将不会回归', '球迷', '本场比赛，杜兰特共上场12分钟，在首节手感火热连续飙中三分，独砍11分。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (610, '马努致敬帕克：恭喜有伟大的职业生涯 是时候打网球了', '球迷', '吉诺比利写道：“很荣幸能与你一起经历这么多的事情，恭喜我的兄弟能有这么一个伟大的职业生涯，现在是时候打网球了，准备好反手击球！（大笑）”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (611, 'KD总决赛三分命中数超乔丹&马努 跻身NBA历史前十', '球迷', '排名NBA历史前9位的分别是：库里（117）、詹姆斯（86）、克莱（79）、JR-史密斯（58）、霍里（56）、雷-阿伦（55）、费舍尔、丹尼-格林和科比（48）。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (612, 'KD小腿受伤离场 NBA多位球员发推祈祷', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (613, '范乔丹抢篮板送击地妙传，西亚卡姆强打一哥上篮命中并造犯规', '球迷', '在第三节还剩9分钟时追梦格林两分不中，范弗利特抢到篮板球组织进攻，在过了前场三分线后范乔丹击地传球给西亚卡姆，后者底线突破强打伊戈达拉上篮命中还造成犯规，可惜的是他之后没能命中加罚，猛龙63-67勇士。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (614, '库里总决赛得分连超韦德&邓肯&佩蒂特 升至历史第17位', '球迷', '排在库里前面一位的是鲍勃-库西，控卫鼻祖的总决赛得分为713分；而大鸟伯德的总决赛得分为716分。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (615, '官方：杜兰特本场比赛不会回归 明日接受MRI检查', '球迷', '据勇士官方报道，杜兰特右小腿较低位置处受伤，本场比赛不会回归，将在明天接受MRI检查。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (616, '杜兰特伤退！韦德回应：他为球队做的事是我觉得最值得敬佩', '球迷', '韦德对此表示，“杜兰特为球队做的事是我觉得最值得敬佩的。他知道他还没有完全恢复，但他仍希望上场为兄弟而战，这就是体育精神，这就是爱。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (617, '湖人队是最后一支争夺安东尼·戴维斯的球队吗?', '球迷', ' Are the Lakers the last team in the race for Anthony Davis? ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (618, '猛龙vs勇士总决赛G5：加索尔上半场5中4砍15分5板，太高效了', '球迷', '比赛刚战至中场结束，猛龙暂时56比62落后于勇士，猛龙中锋加索尔上半场表现出色，他5投4中，三分3中2砍下15分5板。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (619, '总决赛G5：KD跟腱再度受伤被搀下场，出战12分钟独砍11分', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (620, '戴维斯何时被交易将影响NBA格局，为什么这么说？', '球迷', 'Why the timing of the Anthony Davis trade affects everything else in the NBA', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (621, '达柳斯-加兰晒和詹姆斯一起训练视频，湖人4号签要选他?', '球迷', 'Darius Garland is already working out with LeBron James', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (622, '达利斯·加兰，湖人队和现代NBA投篮活力的魅力', '球迷', ' Darius Garland, the Lakers and the allure of shooting dynamism in the modern NBA ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (623, '追梦传球失误立马抢回球权，库里迎射范乔丹彪中3+1', '球迷', '在第二节还剩6分10秒左右时追梦格林传球失误，但是他马上又抢回球权，库里在外线找到空位，格林传球后库里抬手就射，在命中三分的同时造成范弗利特犯规，之后库里命中加罚打成3+1，勇士52-39猛龙。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (624, '总决赛G5：库里23分莱昂纳德13+6+5，勇士半场62-56猛龙', '球迷', '猛龙队：小加索尔15分5篮板，莱昂纳德13分6篮板5助攻1抢断1盖帽，西亚卡姆10分2篮板1抢断，洛瑞5分1篮板5助攻1抢断2盖帽，丹尼-格林4分3篮板1抢断，伊巴卡7分3篮板1抢断，范弗利特2分。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (625, '杜兰特受伤后 伊巴卡恳求现场猛龙球迷停止欢呼', '球迷', '据记者Jordan Schultz报道，在杜兰特受伤后，现场猛龙球迷发出了欢呼声。但猛龙球员伊巴卡马上恳求现场球迷停止欢呼。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (626, '猛龙VS勇士半场：猛龙半场暂时以56:62落后对手6分', '球迷', '勇士：凯文-杜兰特、德雷蒙德-格林、克莱-汤普森、安德鲁-伊格达拉、斯蒂芬-库里', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (627, '有心无力！杜兰特受伤走回更衣室路上大喊F**k', '球迷', '据名记Michael Scotto报道，杜兰特在走回更衣室的路上大喊了一句“F**k”。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (628, '莱昂纳德一巴掌扇飞克莱三分，洛瑞封盖考神快攻单手上篮得手', '球迷', '在第二节还剩6分44秒时库里在内线分球给在底角的克莱，汤神接球后抬手就射，结果莱昂纳德纵身一跃一巴掌将球扇出界外；而在第二节还剩6分22秒时考辛斯在弧顶出手被洛瑞封盖，之后洛瑞持球快攻单手上篮，猛龙39-48勇士。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (629, '韦德：杜兰特的行为值得敬佩 他希望为兄弟而战', '球迷', '随后前NBA球员韦德更新了社媒，支持了杜兰特：“杜兰特为球队做出的事情，是我觉得最值得敬佩的事情，他知道他还没完全恢复，但他仍希望能上场为兄弟而战，这就是体育精神，这就是爱。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (630, '杜兰特发力不慎受伤，砍下11分却是勇士取得领先的最重要原因！', '球迷', '当时，杜兰特在进攻对抗中再度发力不慎，在被伊巴卡断球后，他捂着受伤的右腿脚筋坐在了地上！本场他砍下11分，是勇士取得领先的最重要原因！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (631, '杜兰特受伤激活考辛斯，考神一分半钟贡献7分2板令人惊叹', '球迷', '在第二节还剩9分49秒时杜兰特再度伤到右小腿返回更衣室，暂停回来后考辛斯被换上场。在第二节还剩9分46秒时伊巴卡第二罚不中，考辛斯抢到篮板球并命中两分；而在下一个回合中利文斯顿两分不中，伊巴卡抢到篮板球出手不中，考辛斯再度抢到篮板球命中两分；在第二节还剩8分12秒时考辛斯彪中三分。在短短1分半钟的时间里，考辛斯拿到7分2篮板。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (632, '恩比德：因为杜兰特受伤而欢呼的行为令人作呕', '球迷', '相关新闻>>杜兰特再次伤到右小腿 在搀扶下返回更衣室', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (633, 'KD受伤后 洛瑞上前问候&恳请球迷不要欢呼', '球迷', '相关新闻链接>>杜兰特再次伤到右小腿 在搀扶下返回更衣室', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (634, '欧媒：米兰希望梅西纳负责篮球运营 并担任球队主帅', '球迷', '此前，梅西纳曾担任意大利国家队主帅。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (635, 'NBA总决赛G5：考辛斯替换KD上场后3中3打出7-0', '球迷', '临危受命的考辛斯挺身而出，他在上场的前三个回合里3投3中，包括1记三分，打出7-0。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (636, '暖心！伊戈达拉&库里陪同杜兰特返回更衣室', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (637, '准状元锡安-威廉姆森本周将造访鹈鹕，同时会参观这座城市', '球迷', '值得一提的是，上个月，鹈鹕曾在芝加哥联合试训时与锡安进行过会面，根据当时的报道，鹈鹕队的高层基本上喜欢他们在幕后所了解到的关于锡安的一切。而本周的这次会面，将继续巩固锡安的状元秀位置。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (638, '杜兰特受伤离场 猛龙主场球迷高喊“KD！”', '球迷', '杜兰特被搀扶着走向更衣室，此时猛龙主场球迷高喊“KD！”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (639, '勇士告急！杜兰特第二节再度伤到右小腿被搀扶回更衣室', '球迷', '截止到目前，杜兰特出战11分钟，5中3（三分3中3），罚球2中2，砍下11分2篮板1盖帽。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (640, '即插即用！杜兰特首节三分3中3砍11分', '球迷', '在首节比赛中，刚刚伤愈复出的杜兰特出战9分钟，三分3中3拿到11分2板1帽的数据。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (641, '总决赛G5：库里14+3杜兰特11分，勇士首节34-28领先猛龙', '球迷', '猛龙队：小加索尔10分1篮板，莱昂纳德6分3篮板3助攻1抢断，丹尼-格林4分1篮板1抢断，西亚卡姆4分1篮板1抢断，洛瑞4助攻，范弗利特2分，伊巴卡2分。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (642, '巨星的作用！库里和杜兰特首节比赛为全队砍下25分', '球迷', '第二节已经开打，勇士领先分差到7分了，猛龙要继续加油追分啊！！！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (643, '心理战！杜兰特罚球时猛龙球迷大喊“New York Knicks”', '球迷', '在杜兰特罚球的时候，猛龙球迷大喊“New York Knicks”（纽约尼克斯）。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (644, '6中5、4中3，库里杜兰特首节手感滚烫合砍25分', '球迷', '库里打满首节，6中5（三分2中1），罚球3中3，砍下14分1篮板3助攻；杜兰特首节出战9分钟，4中3（三分3中3），罚球2中2，拿到11分2篮板1盖帽。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (645, '明星来了！法国足坛巨星亨利现身丰业球馆观战总决赛', '球迷', '在比赛现场也出现了一位老熟人，那就是法国足坛巨星亨利，他现身丰业球馆观战总决赛。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (646, '帕克社交媒体宣布退役，“GDP”王朝正式落幕！', '球迷', '现年37岁的托尼-帕克在2001年选秀大会上首轮第28顺位被马刺选中，于2018年7月7日加盟夏洛克黄蜂队，NBA常规赛共出场1254次，场均上场30.5分钟，得到15.5分2.7篮板5.6助攻0.84抢断。他共6次入选全明星，1次入选最佳阵容第三阵容，3次入选最佳阵容第二阵容，获得过4次总冠军和1次FMVP。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (647, '莱昂纳德假动作骗过追梦格林，高难度右手上篮打板命中打成2+1', '球迷', '在首节还剩5分25秒时克莱传球失误，猛龙获得球权，之后洛瑞妙传莱昂纳德，小卡先是利用假动作骗过追梦格林，之后空中拉杆高难度右手上篮打板命中，并造成卢尼犯规，之后小卡命中加罚2+1轻松到手，猛龙19-19追平勇士。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (648, 'NBA总决赛G5：KD、克莱&库里开场三分球5中5包办19分', '球迷', '杜兰特2中2，克莱2中2，库里3中3（三分1中1），三人包办勇士前19分。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (649, '美记：老鹰已裁掉德永塔-戴维斯', '球迷', '本赛季，德永塔-戴维斯为老鹰出战9场，场均4分4篮板0.6助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (650, '猛龙害怕了吗？杜兰特复出首节开局连续命中两记三分', '球迷', '在首节还剩10分29秒时莱昂纳德失误丢球，勇士获得球权，之后库里杀到禁区面对小加索尔的防守转身传给三分线外的杜兰特，KD接球之后果断出手稳稳命中三分；而在首节还剩9分37秒时杜兰特再次命中三分，勇士11-6猛龙。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (651, '江湖从此再无GDP！史上最成功三人组，告别的还有我们的青春', '球迷', '但对许多人来说，GDP是他们的青春。所以此刻，在帕克退役之时，也是时候让我们和青春说再见！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (652, '天赋爆棚！西亚卡姆单打杜兰特漂移上篮打板命中', '球迷', '首节开始后勇士外线5投5中弹无虚发，在首节还剩7分48秒时西亚卡姆持球单打杜兰特，只见他强行突破到篮下单手漂移上篮打板命中，猛龙12-16勇士。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (653, '法国跑车生涯回顾：在马刺效力17年， 四冠+总决赛MVP', '球迷', '再见，法国跑车！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (654, '手感火热！库里首节开局内外开花连得5分，包揽勇士前5分', '球迷', '比赛开始后杜兰特和小加索尔跳球，西亚卡姆获得控球权但走步违例，之后勇士获得球权库里率先命中三分，下一个回合小加索尔回敬两分；而在首节还剩10分54秒时西亚卡姆两分不中，克莱抢到篮板球库里命中两分，勇士5-2猛龙。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (655, '戴维斯心仪下家缩减至两支，只愿长期效力湖人尼克斯', '球迷', '本赛季常规赛，鹈鹕队取得33胜，排在西部倒数第三位。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (656, '豪斯：我爱留在火箭 德帅给了我爆发的机会', '球迷', '本赛季豪斯场均可贡献9.4分3.6板1助。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (657, '再见了，托尼-帕克！法国跑车突然宣布退役，圣城徒留波波维奇', '球迷', '在球队的几位核心有着完美契合团队篮球性格的前提下，这支马刺在波波的执教下能取得成功也不太令人意外了。而如今，随着帕克的退役，GDP的时代终究彻底落下了帷幕，只剩下一个孤零零已经70多岁的白发酒鬼老爷子，为这支球队发挥着自己最后的“余热”。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (658, '名记：奇才老板目前想法仍是留下比尔', '球迷', '本赛季结束后，比尔与奇才的合同还有两年，没有球员或球队选项。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (659, '鹈鹕官方宣布斯文-凯什就任篮球运营及发展副总裁', '球迷', '在官方宣布凯什就职以后，她本人也谈到：“我要向本森夫人、大卫-格里芬以及鹈鹕管理层表示诚挚的感谢，感谢他们给我提供机会，让我在管理层中担任如此重要的职务。我将利用在WNBA的经验以及我商业活动中的经验来作为日后管理的基础，我要为这个球队的场上场下的文化添砖加瓦。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (660, '沃神：湖人领跑戴维斯争夺战，鹈鹕盼本周末完成交易', '球迷', '随后Adrian Wojnarowski解释道，湖人队在和鹈鹕队的交易谈判中占据一些主动，因为他们知道戴维斯最想去的球队是湖人，并愿意在2020年与湖人签约，这是他们的优势。大卫-格里芬也已经明确表示他不满意与任何球队单独展开交易的前景，他需要第三支、第四支球队参与进来。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (661, '杜兰特复出 猛龙五场夺冠概率降至47% 勇士抢七夺冠飚至32%', '球迷', '而据Snow Poll调查显示，随着杜兰特的复出，夺冠概率也发生了变化，猛龙在5场夺冠的概率降到了47%，第六场夺冠概率15%，第七场夺冠概率6%！而勇士抢七夺冠的概率已经飙升到了32%！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (662, '总决赛G5开打在即，杜兰特复出首发，勇士能否客胜猛龙续命？', '球迷', '猛龙队：洛瑞、莱昂纳德、丹尼-格林、西亚卡姆、小加索尔。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (663, '荣耀！本赛季退役的三位FMVP：闪电侠&司机&跑车', '球迷', '诺维茨基，2011年总决赛MVP。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (664, '退无可退只有拼了！杜兰特将首发出战总决赛第五战', '球迷', '本赛季杜兰特出战了11场季后赛，场均得到34.2分5.2个篮板4.9次助攻，投篮命中率达到51.3%，三分命中率达到41.6%。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (665, 'G5门票平均每张2223美元 前排场边座位最高价格67505美元', '球迷', '前排场边座位价格（包括其他费用在内）最高为67505美元。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (666, 'Woj：湖人领跑安东尼-戴维斯争夺战 鹈鹕希望寻求多方交易', '球迷', '此外，Woj还表示鹈鹕寻求多队交易，希望以此重新分配球员，最终得到他们想要的球员。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (667, '专家！杜兰特肯定是跟腱受伤，回归首场不会很高效', '球迷', '“小腿受伤是很复杂的，虽然它是一个大型肌肉块，但和腿筋一样，需要时间来恢复，否则就会长期困扰你。”Selene Parekh继续说道，“考虑到这场比赛的重要性，杜兰特会忍着疼痛出战，但随着疲劳度的增加，身体脱水，尤其是到了第三节和第四节，他有再次受伤的风险，出现更严重的拉伤，如果不幸的话还有撕裂的可能性。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (668, 'NBA早报：篮网纠结水拉续约，名宿之子将试训多队', '球迷', '来自美国篮球名记阿德里安-沃纳洛夫斯基的报道，有多位消息人士透露，前WNBA球员斯文-凯什将在鹈鹕管理层担任高级职位。另有线报称，凯什将担任的是球队篮球运营和发展副总裁。凯什球员时期，曾是WNBA的明星，她在联盟中征战了15个赛季，期间四次入选全明星阵容，三次赢得总冠军，如今，凯什进入鹈鹕管理层，主要负责球探和球员培养工作。而一位女性进入鹈鹕高层，也会给球队运营带来一些新思路。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (669, '三年前的今天：勇士总决赛G4击败骑士取得3-1领先', '球迷', '不过在接下来的比赛里，勇士被骑士连扳三场，以大比分3-4不敌对手无缘总冠军。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (670, '真的尽力了！杜兰特上场12分钟得11分 到再次伤退', '球迷', '杜兰特再次受伤，只有心疼！杜兰特一上场，攻防两端的作用就不说了……KD真的尽力了，希望这场勇士争点气，把这场拿下！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (671, '波波谈帕克：有幸伴他一路成长 望他享受余生', '球迷', '波波说道。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (672, '卫冕冠军第六次将客场经历生死战 此前5次仅胜1次', '球迷', '2019年总决赛，卫冕冠军勇士对阵猛龙，在前四场结束勇士1-3落后猛龙。。。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (673, '来了！皮尔斯预测猛龙今天夺冠', '球迷', '大比分方面，猛龙暂时以3比1领先。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (674, '中锋波尔-波尔将会为某些受邀的球队试训', '球迷', '波尔-波尔是前NBA球员马努特-波尔的儿子，身高达到2.2米。上赛季，波尔-波尔打了9场比赛，场均可以拿到21分9.6篮板1助攻2.7盖帽。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (675, '美记：欧文和篮网相互有意 后者在争取让欧文KD一起加盟', '球迷', '此外，在解释凯里（欧文）是很难读懂的时候，一位消息人士称，凯里的阵营是如何将这位出生在新泽西的后卫推向篮网的，因为他们之间的文化契合，而且布鲁克林球队在马克斯和阿特金森带领下取得了一定程度的成功。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (676, '科尔：杜兰特这次拉伤并不常见 医生最开始说恢复要几周或几个月', '球迷', '据此前报道，杜兰特今日将首发出战。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (677, '邦纳致敬帕克：拥有名人堂级的生涯 能见证你的伟大很荣幸', '球迷', '邦纳自06-07赛季加入马刺以来，就一直和帕克做队友。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (678, '美国男篮主席科朗吉洛：已经向小卡发出了训练营邀请', '球迷', '同时Olgun Uluc指出因为部分球员今夏的合同情况，有些人可能会退出训练营，所以现在还不是最终名单。后期可能会有新的球员增补进来，美国男篮管理层对此持开放态度。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (679, '纳斯谈KD回归：他的回归能给勇士带来一切 会让小卡来防他', '球迷', '纳斯还指出会让莱昂纳德去防守杜兰特，并且表示KD的回归能给勇士带来一切。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (680, '纳斯：G2赛后我说去客场赢一场 小卡说两场都要赢', '球迷', '随后两场在勇士主场进行的比赛猛龙全部取得了胜利，率先拿到了赛点。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (681, '为老东家加油？卡特今天来到现场观战猛龙VS勇士', '球迷', '大比分方面，猛龙暂时以3比1领先。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (682, '巴雷特：我只与尼克斯会了面 希望能被尼克斯选中', '球迷', '相关阅读>>>【新秀巡礼】RJ-巴雷特：荡尽毒瘤血 方举枫叶旗', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (683, 'Shams：浓眉将湖人和尼克斯视为愿续长约的下家', '球迷', '浓眉可以在明年夏天跳出合同成为自由球员，本赛季他出战56场比赛，场均贡献25.9分12个篮板3.9次助攻2.4个盖帽。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (684, '保罗致敬帕克：我的导师&对手&兄弟 恭喜你达成名人堂级别的生涯', '球迷', '“你是我的导师、对手、兄弟，你那标志性的右换左变向后撤步、琢磨不透的华丽转身还有不可计数的终结球，对此送上我无尽的爱，恭喜你达成了名人堂级别的职业生涯。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (685, '科尔：杜兰特今天首发出战', '球迷', '今天上午9点，勇士将在客场挑战猛龙，展开系列赛第5场较量。大比分方面，球队暂时以1比3落后。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (686, '医学专家：KD回归第一场不会很高效 各方面都会打折扣', '球迷', 'Parekh表示对杜兰特而言切入比起跳更加困难一些。“做切入这个动作需要小腿肌肉来稳定住脚踝，推动身体向着正确的方向前进，他做这个动作不会很好。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (687, '卢尼：KD回归让阵容变得完整 G5全队将背水一战', '球迷', '勇士现总比分1-3落后于猛龙，G5将于今天上午9点开打。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (688, '《父亲的生活:格兰特·希尔对父亲身份的思考》', '球迷', ' The life of dad: Reflections on fatherhood from Grant Hill ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (689, '韦德荣获18-19赛季“魔术师约翰逊奖”', '球迷', '2017-18赛季：德罗赞（猛龙）', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (690, '凯里欧文自由球员和其他NBA球员的播客', '球迷', ' Kyrie Irving free agency and other NBA podcasts of the day ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (691, '2010年NBA重新选秀:本应如此', '球迷', ' 2010 NBA re-draft: The way it should have been ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (692, '这就是迈阿密热火如何进入休赛期', '球迷', ' This is how the Miami Heat head into the offseason ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (693, '凯文·杜兰特希望在第五场比赛中上场', '球迷', ' Kevin Durant expected to play in Game 5 ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (694, '帕克的退役宣言：如果不能再争夺总冠军，我就不打球了', '球迷', 'Tony Parker announces retirement', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (695, 'Shams：选秀状元热门锡安本周将造访新奥尔良与鹈鹕会面', '球迷', '相关阅读>>>【新秀巡礼】锡安-威廉森：运动超人天赐头筹', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (696, '回归！Woj：杜兰特G5确认复出对阵猛龙', '球迷', '季后赛期间，杜兰特场均得到34.2分5.2篮板4.9助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (697, '加索尔发推致敬帕克：一位旷世难逢的球员', '球迷', '“今天，一位篮球传奇宣布退役。这样一位旷世难逢的球员，让欧洲年轻人登陆NBA的梦想变得触手可及。他是未来名人堂的一份子，球员们的楷模，既是对手也是队友，对来我说，更是兄弟。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (698, '凯文-杜兰特的回归也许终于到来了', '球迷', ' Kevin Durant\'s return may finally be here ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (699, '托尼-帕克退休', '球迷', ' Tony Parker retiring ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (700, '鹈鹕管理层欲推动多队加入戴维斯交易，以求实现利益最大化', '球迷', 'Report: Pelicans consider multi-team deals in Anthony Davis trade to maximizereturn', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (701, '必须改变！WNBA球员遭受不公平待遇，大鱼费舍尔公开发声', '球迷', 'Derek Fisher blasts the treatment of WNBA players: \'Has to change\'', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (702, '勇士队:凯文·杜兰特决定参加NBA总决赛第五场比赛', '球迷', ' Warriors: Kevin Durant game-time decision for Game 5 of NBA Finals ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (703, '杜兰特将在总决赛G5复出，他会是勇士的救世主吗？', '球迷', 'Report: Kevin Durant to play Game 5 of NBAFinals', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (704, '随队记者：多个消息源告诉我杜兰特会出战G5', '球迷', '记者Connor Letourneau和记者Mark Medina随后都确认了Monte的报道！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (705, '科尔：若KD能打 那么将视他的感受决定出场时长', '球迷', '科尔还表示，如果杜兰特能打，那么他不会有出战时间的限制，时间长短将取决于杜兰特自己的感觉。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (706, '托尼·帕克宣布退休:有什么意义?', '球迷', ' Tony Parker announces retirement: What\'s the point? ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (707, '科尔：杜兰特会否出战将在赛前决定', '球迷', '科尔表示，杜兰特参加了完整的赛前投篮训练，现在正在接受治疗，究竟会不会参加G5将在赛前决定。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (708, 'Marks：黄蜂预计在7月4日前裁掉帕克', '球迷', '据联盟薪资专家Bobby Marks报道，黄蜂后卫托尼-帕克下赛季的合同是525万美元的无保障合同，如果在7月4日前未被裁则受保障。黄蜂预计会在7月4日前裁掉帕克。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (709, '伊格尔：篮网已经准备好和欧文签约，他们提前做了很多功课', '球迷', 'Eagle: Nets have no doubt ‘done their homework’ on Kyrie Irving', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (710, 'Woj：大卫-格里芬开始给浓眉哥提供交易框架', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (711, '帕克发推宣布退役：这是一段不可思议的旅程', '球迷', '帕克表示：“我百感交集地宣布我要退役了。我工作了很久也收获了很多，这是一段不可思议的旅程。在我最不可思议的梦里，我也没有梦见过我在NBA和国家队中的这些经历，谢谢大家！”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (712, 'Stein：洛瑞和迈尔斯-特纳入选美国国家队训练营大名单', '球迷', '肯巴-沃克', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (713, '汤姆贾诺维奇：不去再想名人堂的事 感激其他人的支持', '球迷', '退役之后，先后执教过火箭和湖人，帮助火箭夺得过两连冠。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (714, 'G5裁判组名单：卡佩斯、菲利普斯和埃德-马洛伊', '球迷', '5号凯恩-费兹杰拉德则是替补裁判，名哨斯科特-福斯特将坐镇回放中心。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (715, '小卡再得16分今年季后赛将突破700分 此前仅五人做到', '球迷', '5、2000年奥尼尔 707分。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (716, '大卫-韦斯特：勇士需要有其他人站出来贡献力量', '球迷', '两队G5将于周二上午9点开战。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (717, '克莱：现阶段双方都有伤病 猛龙和16雷霆很相似', '球迷', '对于球队目前1-3落后一事，克莱则表示：“这支猛龙和那支雷霆非常相似，他们的身高臂展、巨星能力、运动天赋都很像。我们必须一场一场来。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (718, '总决赛历史第35次出现3-1 此前领先方G5战绩18胜16负', '球迷', '同时也是第18次G5是领先方的主场进行，此前17次领先方的G5战绩为10胜7负。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (719, '丹尼-格林更新个人推特：我们还需要一场胜利', '球迷', '在上一场比赛里，丹尼-格林得到3分3篮板1助攻3抢断。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (720, '【新秀巡礼】克拉克：超强体能火锅达人 飞天神兽奈何手短', '球迷', '展望：克拉克攻防兼备，具备超燃内线的打法。有潜力成为防守大闸，尤其是能防多个位置将使他在联盟中令人垂涎。而在进攻端，克拉克还有不小的成长空间，不过他必须开发出稳定的投篮。另外，由于先天的身材劣势，他或许难以成为全明星级球员。而任何选中克拉克的球队，都必须要愿意给他时间成长，将其培养成他所能成为的球员。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (721, 'NBA官方祝蒂格、蒂龙-华莱士和米哈生日快乐', '球迷', '本赛季常规赛，蒂格场均上场30.1分钟，得到12.1分2.5篮板8.2助攻；蒂龙-华莱士场均上场10.1分钟，得到3.5分1.6篮板；米哈场均上场10.5分钟，3.2分0.8篮板。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (722, 'Lowe：鹈鹕聘用前WNBA球星斯文-凯什为篮球运营与发展副总裁', '球迷', '凯什在WNBA征战了15个赛季，4次入选全明星、3次赢得总冠军，退役后她还多次以评论员身份出现在电视直播中。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (723, '勇士上下纷纷呼吁杜兰特复出救驾，只有他真心为KD的健康着想', '球迷', '虽然科尔、库里和追梦格林都呼吁杜兰特复出，但是伊戈达拉却更希望KD量力而行，“我也经历过这种情况。有人每天会问你能不能打。这会动摇你的意志。但是没有人在乎这个。他们所在乎的是底线。我们只关心这个。这可能会动摇你的意志。我只希望他处在一个好的位置上，如果他能够上场，那就带着自信上场。但是如果他不行，为什么要向任何人证明任何事，在条件不允许的情况下牺牲自己的身体呢？但是有时候体育界就会出现这样的情况。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (724, '喜欢慢！女友晒和凯尔-安德森的意大利之旅照', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (725, '引进戴维斯留下库兹马？詹姆斯好友爆猛料，可信吗', '球迷', '最后希望这个消息属实，湖人重返季后赛，鹈鹕也有了曙光。现在看到这个消息真的让人非常激动，湖人球迷们，你们激动吗？', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (726, '没有怨恨，只专注当下，伦纳德回应被垫脚往事圈粉无数', '球迷', '伦纳德在场外非常低调，但是在场上的表现一点也不低调，靠实力扩大了自己的影响力，也靠实力征服了许多人，有人称他为“当代乔丹”，可见他的影响力有多大。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (727, '罗伯特-佩拉：34岁斥资3.5亿收购灰熊，NBA最年轻的富豪老板', '球迷', '据悉佩拉曾在2012年3月亲临现场观看过灰熊队的1场比赛，此外加州亿万富翁拉里-埃里森被传也曾对灰熊队有兴趣，不过海斯利给予了否认。“我们从没有考虑过埃里森，”海斯利说道。作为芝加哥人，海斯利是在2000年买下灰熊队的，当时灰熊队还在加拿大的温哥华，2001-02赛季球队搬迁至孟菲斯。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (728, '前瞻-勇士vs猛龙G5：何以解忧 唯有“杜康”', '球迷', '勇士：考辛斯、德雷蒙德-格林、杜兰特、克莱-汤普森、库里', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (729, '猛龙隶属枫叶体育娱乐集团旗下，首席执行官是蒂莫西-列威克', '球迷', '而列威克作为猛龙母公司的首席执行官，在执掌枫叶集团之前，他是安舒茨娱乐集团的前任首席执行官，该集团是AHL的洛杉矶国王队和MLS的洛杉矶银河队的所有者，持有着湖人队的部分所有权，还运营着洛杉矶的许多娱乐场所和全美以及全世界的多家体育场。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (730, '美记：湖人对卡尔弗的试训表现感到很满意', '球迷', '天赋惊人！卡尔弗垂直弹跳达到45英寸', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (731, '库兹马发心灵鸡汤 詹姆斯评论：保持饥渴（总冠军）', '球迷', '詹姆斯在下面评论道：“我们都爱你，库兹马，保持饥渴（总冠军）。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (732, '洛尔-邓职业生涯常规赛总出场数已经达到900场', '球迷', '本场比赛前，邓本赛季常规赛场均出场17.8分钟，得到7.3分3.6篮板。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (733, 'NBA最差老板詹姆斯-多兰：铁腕政策让尼克斯上下惶恐不安', '球迷', '多兰承认，自己的公关团队登记过报道过广场花园和球队的媒体，他还说CEO们都应该这么做，这样他们才不会“引狼入室”。多兰曾经形容，作为尼克斯老板，他活在“人间地狱”里。在ESPN的采访中，他说：“虽然我很享受这个过程，但是没办法，纽约人就是这么关注尼克斯。当球队发展不好的时候，球员、教练、总经理，还有老板，都要受到大家的轮流指责。我当然不喜欢输球之后成为千夫所指的情景。在纽约，我不带保镖根本没法出门，总会有人跳出来说些让你闹心的话，这种感觉我不喜欢。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (734, '森林狼老板格伦-泰勒为什么被叫做最大的骗子？', '球迷', '但骗局最终还是被识破，森林狼队就这样被玩废，这么多第一轮第二轮选秀名额都浪费掉，在接下来的很多年里都处于一蹶不振的状态。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (735, '奥科吉空降深圳与高中球员对抗练习 扣篮遭遇篮筐无情大帽', '球迷', '奥科吉对此配上了几个[笑哭]的表情。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (736, '丹-吉尔伯特——NBA最有钱的老板之一，曾因詹姆斯出走口出恶言', '球迷', '所以说，丹-吉尔伯特是个很难评价的人。根据统计，詹姆斯重回骑士的4年里，吉尔伯特为球队交了1.36亿奢侈税！他不抠门，但却并不通情达理。但若要说，他是冷血商人精于算计，有些操作明摆着是亏本他也毫不犹豫。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (737, '雷斯勒以8.5亿美元收购老鹰，他曾参加竞购快船输给鲍尔默', '球迷', '雷斯勒在1997年与他人联合创建了私募股权投资公司锐盛管理。在锐盛管理首次公开募股上市之后，雷斯勒加入了全球亿万富豪行列。他是业内资深人士，曾与他的亿万富豪姐夫里昂·布莱克联合创办了阿波罗管理公司，并且曾在德崇证券债券部门担任重要职务。而德崇证券这家极其著名的华尔街公司因在上世纪九十年代初破产而闻名。同时他也是加州的土地开发商，其资本实力毋庸置疑。在参与竞购洛杉矶快船队败给财大气粗的鲍尔默之后，雷斯勒也终于拥有了一支NBA球队。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (738, '战神卡！季后赛至今莱昂纳德多项数据均列联盟第一', '球迷', '截至目前总共打了22场，场均出战39.0分钟，可以贡献31.1分9.1板3.9助和1.6抢断的数据，其中投篮命中率49.8%，三分命中率39.1%，罚球命中率89.0%！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (739, '纳斯谈球队运动医学总监：很信任他 他足够专业', '球迷', 'Alex McKechnie也曾在湖人队工作过，为奥尼尔等人做过理疗和医疗评估。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (740, '美记：凯尔特人已向火箭询价卡佩拉 探寻交易的可行性', '球迷', '此前据美记Marc Stein报道，火箭方面正在积极地探索卡佩拉的交易市场。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (741, '公牛前老板80岁入选名人堂，小莱因斯多夫子承父业管理球队', '球迷', '莱因斯多夫从1985年开始担任公牛队老板，他选择了迈克尔-乔丹，而正是后者彻底改变了NBA的面貌，建立了公牛王朝，并且对现在这支公牛队仍有非常深远的影响。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (742, '巴雷特在尼克斯队的特写镜头终于来了', '球迷', ' RJ Barrett\'s Knicks closeup is finally here ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (743, '利拉德：拉乌夫是NBA历史上最被低估的球员', '球迷', '目前拉乌夫在BIG3联赛的3 Headed Monsters队效力，队伍中还有拉沙德-刘易斯、雷吉-埃文斯、拉里-桑德斯、马里奥-查默斯和特雷-西蒙斯。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (744, '总冠军对多伦多的影响？小卡：你去问街上的人 他们已经很兴奋了', '球迷', '今天猛龙球员小卡接受采访时，被问到总冠军对于多伦多这座城市的影响时，他说道：“我觉得你应该去问街上的人或者我们的球迷，或者在加拿大住过一段时间的人，我的意思是他们现在已经非常的兴奋了。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (745, '米尔萨普职业生涯抢断数达到了1202次，升至NBA历史第85位', '球迷', '在贡献这3次抢断后，保罗-米尔萨普职业生涯抢断数达到了1202次，超越杰拉德-华莱士升至NBA历史第85位，排在第84位的是德克-诺维茨基。本赛季常规赛至今，保罗-米尔萨普场均上场25.9分钟，得到12.5分7.0篮板1.9助攻1.29抢断。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (746, '热火13年夺冠后老板易主，阿里森退休唐纳德走马上任', '球迷', '唐纳德今年58岁，此前创办了一家甜味剂品公司，他还担任过国际青少年糖尿病基金会的领导职务。唐纳德上任后面临着2014年热火三巨头的续约的问题，根据合同明年詹姆斯、韦德和波什都有权选择跳出合同成为自由球员，热火已经连续赢得两个总冠军。唐纳德如果想要继续让三巨头效力于迈阿密，他必须要说服这三人继续留下来，现在已经有很多球队都在盼着明年夏天三巨头跳出合同，唐纳德的任务很艰巨。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (747, '美记：篮网很喜欢普林斯 将他视为卡罗尔的替代者', '球迷', '该美记说道：“篮网非常喜欢普林斯，他很适合阿特金森体系中的4号位，他可以取代卡罗尔的位置。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (748, '欧洲记者：马刺助教埃托雷-梅西纳正在面试米兰主教练', '球迷', '根据报道，近日马刺助理教练埃托雷-梅西纳和他的经纪人都在米兰。米兰奥林匹亚篮球俱乐部对梅西纳也有兴趣，但是他们需要在此之前找到一位新的总经理和总裁。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (749, '泰德-莱昂西斯：从打工仔到奇才老板，曾因炮轰劳资协议被联盟重罚', '球迷', '除了市场通信与体育球队之外，莱昂西斯的商业触角还涉及电影业。他在2008年创建的Snagfilm电影公司主要拍摄纪录片。而且这位多才多艺的奇才老板也是一位作家，在收购奇才队的同一年，他的新书《如何经营幸福》问世并热销。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (750, '戴维斯交易时间点曝光，选秀夜之前闹剧或将终结 ', '球迷', '但如果传言真的应验，那么在6月21日的选秀大会之前，浓眉的下家悬念就会揭晓，而留给各方权衡、商讨的时间，只剩下11天了。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (751, '乔丹当年2.75亿收购山猫，如今黄蜂市值已高达7.5亿美元', '球迷', '黄蜂队主场位于夏洛特，夏洛特在美国30支球队的主场城市中算是比较小的城市，所以并不拥有地理优势。而且近几年黄蜂的选秀质量又比较差，再加上乔丹老爷子在签订球员上也没有比较好的操作，目前算得上最好的就是培养出肯巴沃克这一巨星。综合因素考虑，乔丹经营黄蜂后的球队管理效果一般，但是根据最新市值评估，黄蜂队的市值已经达到7.5亿美元，也就是经营黄蜂的9年时间，乔丹共盈利将近五亿美元。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (752, '约基奇个人生涯常规赛总得分来到了5006分', '球迷', '在比赛之前，约基奇生涯总得分为4977分，加上这29分，约基奇生涯总得分来到了5006分。全场比赛，约基奇上场37分钟，26中13得到29分14板2助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (753, 'NBA前瞻：勇士3连冠大门关闭了？ 伦纳德欲灭勇士创历史', '球迷', '猛龙：科怀-伦纳德，帕斯卡尔-西亚卡姆，凯尔-洛瑞，马克-加索尔，丹尼-格林', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (754, '伦纳德：赛后数据统计最先看命中率、篮板和失误', '球迷', '季后赛至今，莱昂纳德场均得到31.1分9.1板3.9助攻1.6抢断，还有场均3次的失误。投篮命中率49.8%，三分命中率39.1%，罚球命中率89%。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (755, '普林斯致谢老鹰：再多的话语都无法表达出我的赞扬之情', '球迷', '今天普林斯更新了社交媒体状态，向老鹰表达了感谢：“亚特兰大！我对这座城市以及每个人的爱从我来的第一天起就很真诚，很幸运能为这只出色的球队效力，我用再多的话语都无法表达出我对球队老板以及所有其他人的赞扬之情，我代表我的家庭谢谢你们为我们做的一切，下一站布鲁克林。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (756, '当G5杜兰特回归时，你才会知道NBA收视率节节败退的原因', '球迷', '锋线球员就是力量与灵活的合体，詹姆斯、字母哥、伦纳德、杜兰特、保罗乔治都是锋线球员的佼佼者。如今总决赛缺少了杜兰特和小卡的直接对位，缺少了杜兰特仿如缺少了一只胳膊，收视率下降是必然的。当G5杜兰特回来时，或许你才会知道NBA收视率节节败退的原因！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (757, '普罗霍洛夫欲彻底从篮网抽身，蔡崇信三年后或成网队唯一老板', '球迷', '但到目前为止，马克斯透露两位亿万富翁的工作步调一致，似乎没听说二人有什么分歧。“每个人的最终目标都是赢得比赛，”马克斯说。“所以无论你何时何地，无论打算走哪条路，他们都必须达成一致，如果你看看米哈伊尔过去的所作所为，他并不害怕站出来承担这样的责任。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (758, '总决赛1-3，杜兰特终为勇士做出决定，三年来他第一次这么拼', '球迷', '对此，球迷们也纷纷评论说:“杜兰特下一场终于要上场了吗!”“希望KD健康!”“1比3了，杜兰特复出，勇士还能翻盘？”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (759, '美记：巴雷特将在去尼克斯试训前 与灰熊会面', '球迷', '灰熊手握二号签位，贾-莫兰特一直被外界认为是灰熊的首要选秀目标，但由于莫兰特接受了右膝微关节镜手术，移除在他右膝的“游离体”，预计康复期3-4周。有报告称灰熊并非非选他不可。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (760, '步行者老板：球队不会离开印第安纳，我老了儿子会接手', '球迷', '印第安纳在全美电视市场价值中排在第27位，远高于圣安东尼奥、盐湖城、俄克拉荷马，即使球队最近几年成绩可能会下滑，不过丝毫不会影响其市场价值，也难怪步行者老板无意出售这支球队。显然对于球迷来说，无疑是一个好消息。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (761, '范弗里特：现在要更加专注 在乎队友对自己的看法', '球迷', 'G4范弗里特贡献了8分4板6助。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (762, '小加：球迷的热情给了我们动力 下场要像G4那样去打', '球迷', '谈到下一场的准备，小加表示：“还是像G4一样，但我们要打得更好，对抗强度也要上去。我们还要像G4那样去努力，我们要为此做好准备。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (763, 'NBA总决赛G5前瞻：杜兰特王者归来？追梦豪言球队创造历史', '球迷', '勇士在总决赛中处于1胜3负的绝望境地。历史上，34支球队在总决赛中1比3落后，但只有1支球队能够扭转。按概率算，勇士能逆转封王的机会只有3％。如果勇士能在G5中拿下比赛，那将有机会回到主场，也将给杜兰特给多的修养时间，可见G5对勇士来说至关重要。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (764, '丹尼-格林：要保持适度的紧张感 了解勇士队的能力', '球迷', '“我们打球时要遵循经验，保持清醒，我们还没有完成任何事情。我们要保持适度的紧张感，要清楚对手的能力。”格林补充说道。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (765, 'NBA总决赛G5票价曝光，最便宜2万元，最高为41万元', '球迷', '在总决赛G4的比赛中，我国著名歌手周杰伦和他老婆昆凌也是来到甲骨文球馆看球，他们也没有买到场边座位，只是坐在了前几排。看完这些，真该庆幸咱离着多伦多那么远，不是咱不愿花那钱（也花不起），只是不愿跑那么远。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (766, 'NBA总决赛G5前瞻：猛龙功于一役，能否赢得第五战总冠军？', '球迷', '这一场，你觉得会有多远？', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (767, '埃内斯-坎特打算在32州开办42个训练营并全部免费', '球迷', '本赛季常规赛，坎特场均上场24.4分钟，得到13.7分9.9篮板1.7助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (768, '勇士总决赛1-3落后陷入绝境，奥尼尔一番话恐在激杜兰特复出', '球迷', '今年夏天，杜兰特极有可能跳出合同成为自由球员，像他这种级别的球员在哪里都能拿到大合同，何必冒险带伤复出赌上自己的职业生涯呢？', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (769, '伦纳德效应？多伦多市长愿为他辞职，奥胖豪言他是联盟第二人', '球迷', '如今伦纳德带领他的猛龙已经拿到了赛点，在系列赛G5将回到猛龙队主场，带着3：1巨大的优势回到主场作战，没有任何人会相信勇士能翻盘，尤其在杜兰特还伤未愈的情况下。只要夺冠那么这无疑将对伦纳德的历史地位一个极大的提升。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (770, '杜兰特总决赛为何不坐在替补席上？勇士官方终于正面作出回应', '球迷', '现在看到球队1-3落后对手，自己又因伤无法上场，他可能比球队任何一个人都着急，但是这种伤病也急不得，今天有消息报道杜兰特在G5比赛中有50%的出战几率，这对于勇士来说无异于雪中送炭，我们也真心希望看到双方全员上阵给大家奉献一场精彩的总决赛。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (771, '伦纳德去快船，杜汤留勇士，浓眉去湖人，美记的预测靠谱吗？', '球迷', '至于湖人，预测将会在这个夏天组建起三巨头。巴特勒以自由球员身份加盟，通过交易得到安东尼戴维斯，所不同的是我不认为湖人还会拿出那么多的筹码去交易安东尼戴维斯，因为现在的情况是湖人不用着急，而鹈鹕是非常着急，因为凯尔特人几乎是退出了安东尼戴维斯的交易，所以湖人至少会留下三少中的一位，大家觉得呢？', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (772, '介绍金牛座的王子，他不是一个懒散的人', '球迷', ' Introducing Taurean Prince, who is no slouch ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (773, '篮网交易克拉布腾薪资空间，这是在为引进欧文做准备吗？', '球迷', 'The Nets’ pursuit of Kyrie Irving could cost them their identity', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (774, '今年夏天，20个G联赛的球员可能有两种选择:第一部分', '球迷', ' Twenty G Leaguers That Could Get Two-Ways This Summer: Part One ', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (775, '杜德利谈KD未坐场边：他可以坐在替补席的后面', '球迷', '今天篮网球员杜德利在社交媒体上谈到了这个话题：“这说的大体是正确的，这是联盟的政策，但受伤的球员可以坐在替补席后面，这通常发生在当球员受伤时，球队不希望球员坐在替补席上，因为坐在替补席上需要不断地起身，或者有时需要躲避球员在比赛中冲到替补席上救球的突发行为。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (776, '随队记者：勇士不允许球队医疗组随时更新伤情', '球迷', '里克-塞莱布里尼是勇士的医疗和训练团队执行总监。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (777, '罚款50万美元+禁赛一年，勇士小股东因推搡洛瑞被联盟重罚', '球迷', '联盟这个处罚的力度很大，也表示了对运动员的保护与尊重，也让球迷有更好的体验。在此之前从来没有老板这样做，所以也是给其他的老板提个醒，不论如何，也不能在场内和球员有肢体接触，这对每一方都是不好的事情。不过如果像库班、德雷克等人在场边和球员聊天，甚至喷垃圾话都没什么事，反而很有趣呢。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (778, '卢尼：G4赛后格林发表精彩演讲，告诉我们相信自己的信念', '球迷', '“我此前曾陷入过1-3落后的糟糕局面，为什么我们不能创造属于我们的历史呢？我们必须做到，告诉自己不能沮丧，不要看电视之类的，相信自己的信念，上场比赛并付出一切。”G4赛后，格林说道。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (779, '1胜32负！杜兰特生涯总决赛G5状态惊人，但1因素或成勇士隐患', '球迷', '按过往杜兰特在关键的G5的表现来看，他绝对是对手最大的一个威胁点，所以大家都对杜兰特这次能否归来多了更多的期待，同时这也成为了勇士最大的隐患。而据此前报道，杜兰特今天与勇士的年轻球员进行了合练，虽然强度不大，但是勇士主教练科尔对杜兰特的复出还是持乐观态度。我们也期待双方能够全员上阵来一次真正精彩的总决赛对决。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (780, '拿罗齐尔换卡佩拉？安吉的小算盘打得精明，莫雷也不是吃素的', '球迷', '布朗与哈登相似之处为，今年布朗也是22岁，在凯尔特人担任替补，场均得到13分4.2篮板3.4助攻，防守强硬，身体素质出众，常有暴扣呈现，是一个非常有潜力的锋卫摇摆人。安吉为了卡佩拉未必会放人，如果加入绿军想得到的戈登会发生什么呢？', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (781, '勇士一哥宣称下赛季不会退役，明年继续冲击总冠军', '球迷', '无疑若是没有伊戈达拉这一球勇士可能都挺不到今天。身为一位优秀的老将他不仅在数据上为球队贡献，在精神方面也是对勇士有很大作用，更何况他还是勇士死亡五小的重要一员，等等一系列因素加起来都使勇士缺他不可。同样即便是杜兰特今夏走了，勇士只要留住格林、汤普森、伊戈达拉等人，下赛季依然会是总冠军最有力的竞争者之一。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (782, '小钢炮有信心赢下G5，不会管杜兰特出不出战', '球迷', '球迷屋小编认为猛龙有能力在第五场结束战斗，即便是杜兰特复出，久疏战阵的他也不会发挥的有多好，再有就是客场作战，勇士赢球的几率很小。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (783, '勇士对KD出战G5的信心正在增长 尽管若是常规赛还需休1到2周', '球迷', '大比分方面，勇士暂时以1比3落后，面临出局的他们已经被逼到了悬崖边上。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (784, '洛瑞谈被孩子们崇拜：曾经有同样立场 一直对自己高标准', '球迷', '在洛瑞说完这句话，当另外一个记者准备发问的时候，洛瑞马上打断他，调侃道：“你问不出比他更好的问题了，不信你可以试试哈。但是一定不能超越他。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (785, '猛龙顾问回忆伦纳德交易，当初认定是高风险高回报', '球迷', '果真伦纳德给猛龙队带来了极高回报，目前总决赛里他率领猛龙队总比分3-1领先卫冕冠军勇士队，如果猛龙队能够最终夺冠，多伦多将迎来第一个NBA总冠军奖杯，伦纳德还有望和球队续上一份长约。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (786, '伦纳德生涯至今两次遭遇季后赛三连败，均是面对杜兰特', '球迷', '明天上午9点，猛龙将在主场迎战勇士，展开系列赛第5场较量。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (787, '勇士1-3落后形势岌岌可危，科尔库里带头呼吁杜兰特G5复出救主', '球迷', '记者Nick Friedell报道：在今天的训练中，杜兰特一直等到记者和媒体全部离开后才进入的球馆。不管进行了哪一项训练，训练师对他的表现都感到十分不理想。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (788, '骨折5天复出砍下12+14，卢尼获科尔高度评价，大合同稳了', '球迷', '天赋可以决定一个球员的上限，而汗水可以决定一个球员的下限。在NBA这个世界篮球最高殿堂，卢尼没有明星球员们耀眼的天赋。但稳扎稳打、一步一个脚印，强硬的球风和意志，是他在这个联盟立足的根本。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (789, '伊戈谈KD：为什么要在条件不允许情况下牺牲自己的身体呢？', '球迷', '谈到杜兰特的伤情，伊戈达拉说道：“我也经历过这种情况。有人每天会问你能不能打。这会动摇你的意志。但是没有人在乎这个。他们所在乎的是底线。我们只关心这个。这可能会动摇你的意志。我只希望他处在一个好的位置上，如果他能够上场，那就带着自信上场。但是如果他不行，为什么要向任何人证明任何事，在条件不允许的情况下牺牲自己的身体呢？但是有时候体育界就会出现这样的情况。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (790, '隆多：我和詹姆斯受伤缺席了很多比赛，没能培养出化学反应', '球迷', 'Rajon Rondo thought it was hard for LeBron James to lead the Lakers while he was hurt', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (791, '洛瑞：生活的压力才是真正的压力，为家人拼搏是真英雄 ', '球迷', '关于洛瑞观点，勇士主帅科尔也非常赞同，“我同意凯尔（洛瑞）的观点，”科尔说道，“我们以篮球而生，或说以教练而生，我们是世界上最幸运的人之一，我们非常幸运能够过上这样的生活，在这个大舞台上争夺NBA总冠军。当你谈论压力、艰巨的任务以及所有这些时，请看看外面的世界，我们做得很好，我们很幸运，我们知道我们有多幸运。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (792, '库克谈格林赛后演讲：追梦让我们感受到了一股力量以及自信', '球迷', '库克说道：“他让我们保持放松，当你看到追梦时，你能感受到一股力量以及自信，他让球队的每个人保持自信。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (793, '猛龙总决赛7人轮换6人场均得分上双，勇士仅三人做到', '球迷', '勇士这边除了库里和格林，汤普森3场比赛场均24.5分，除此之外再无球员场均得分上双，在进攻火力点上面，勇士的确是不如猛龙的多点开花，再加上猛龙球员的个人防守能力也不差，所以勇士打得比较吃力也是正常现象。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (794, '格林谈杜兰特：如果他只有75%状态，他也比很多人要强很多', '球迷', '谈到杜兰特的伤情，德雷蒙德-格林说道，“他的状态百分百时候，他比很多球员要强很多。所以如果他有75%的状态，他也比很多球员要强很多。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (795, '如果伦纳德带领猛龙夺冠，他和杜兰特的两冠谁的含金量更高？', '球迷', '最后一个就是历史地位，杜兰特来到勇士帮助他们得到两个冠军，首先勇士本身就是冠军球队，但是小卡不一样，他在马刺得到一个冠军，在帮助东部的猛龙得到一个冠军，这荣誉和地位是KD比不上的，尽管他是连冠。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (796, '考辛斯总决赛心有余而力不足，今夏离开勇士已成必然', '球迷', '考辛斯下赛季不愁下家，无论勇士能不能夺冠，考辛斯还有4个多月的恢复期，只是看钱多钱少的问题。可以断定的是：考辛斯下赛季不会留在勇士，第一，因为卢尼已经被科尔看中，脏活累活都能干，而且效率很高。第二，考辛斯不是那种干脏活累活的球员，薪水太高勇士也不会同意，钱太少考辛斯也不愿意。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (797, '上一次总决赛1-3大逆转就在3年前，勇士队目前还不能放弃', '球迷', '重温2016年的旧梦很美好，但相比当时的自己，勇士阵中的伊戈达拉、利文斯顿和博格特都老了三岁，此时他们还缺少巴恩斯这样全能的侧翼。想要再现奇迹，勇士压力不小。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (798, '勇士1-3将迎生死战，格林：我们必须连赢三场创造自己的历史', '球迷', 'Warriors\' X-factor must come up big, or it\'s all over', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (799, '伦纳德：我没有在多伦多买房，赢下四场之前一切都是空谈', '球迷', 'Kawhi Leonard\'s alarming reply could mean everything', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (800, '22岁小将比斯利单场35分创造了职业生涯新高', '球迷', '赛季初掘金一度长时间霸占西部榜首的位置，如今虽然被勇士重新抢回西部第一，但今年掘金的成长有目共睹。而掘金在新秀的培养上极具潜力，无论是此前的约基奇还是穆雷，现在又出现了比斯利，未来很多年里，也许这支高原球队都会成为联盟中一股强大的力量。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (801, '卡佩拉为什么叫饼皇，详解煎饼之王的由来', '球迷', '卡佩拉在亲笔文章中表示自己已经理解了“饼皇”的意思，并十分喜欢这个外号。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (802, '名记曝料凯尔特人询价饼皇，火箭想换潜力股恐难如愿', '球迷', '当然，作为联盟中最为精明的两位老总，莫雷和安吉之间的谈判恐怕不会一蹴而就，双方讨价还价的过程也许会非常漫长。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (803, '年龄大？总经理玩套路？隆多四年换四队仍不自省还提到保罗', '球迷', '值得一提的是隆多和保罗也算是各自的宿敌，在10年前保罗还在黄蜂的时候就曾经因为肢体接触去更衣室找隆多算账，在上个赛季火箭和湖人的比赛中，两人更是因为场上纠纷大打出手，起因是隆多和保罗起争执吐口水，随后保罗用手指点他的脸，这时隆多直接一拳打向保罗，随后两人在众人的拉扯下才战罢，如今隆多却拿出了保罗做例子，新赛季不出意外保罗依然身披火箭战袍，而隆多很有可能迎来五年以来第五支球队了。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (804, '2018年12月11日掘金裁掉后卫布兰登-古德温', '球迷', '此外，掘金队还正式宣布，裁掉后卫布兰登-古德温，古德温在11月30日以伤病特例被掘金队签下，但并未出场任何一场比赛。在加盟掘金之前，古德温本赛季在发展联盟打了9场比赛（效力于灰熊下属球队孟菲斯拼搏队），期间他在场均33.7分钟的出场时间里，能得到23.4分、5.3个篮板、4次助攻和1.7次抢断。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (805, '马刺助教有多吃香？继主帅布朗后76人又挖走尤杜卡', '球迷', '主教练迈克-马龙曾经不止一次的表示波波是他教练生涯中的伯乐，是波波为他打开了执教NBA的大门。掘金队主教练蒙蒂两度为马刺工作。03年退役之后，他进入马刺教练组，帮助球队拿到了2005年的总冠军。2016年他再次回到马刺，担任球队的篮球运营副总裁。太阳', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (806, '贾-莫兰特今日将与灰熊会面，手术也未改变选他决心', '球迷', '现年19岁的莫兰特身高1米91，在场上司职控卫，在刚刚过去的赛季里，莫兰特为莫瑞州立大学出战33场，场均能够拿到24.5分5.7个篮板10次助攻，投篮命中率为50%，三分命中率为36%，是NCAA的助攻王，他也入选了本赛季全美最佳阵容一队。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (807, '西亚卡姆谈G5：会是一场战争 做好该做的事情', '球迷', '猛龙勇士G5将于周二上午9点开战。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (808, '库里&克莱：以前也曾背水一战 相信球队可以翻盘', '球迷', '16年西决勇士曾1-3落后于雷霆，之后连赢三场淘汰对手；也是同一年，勇士在总决3-1领先骑士后被翻盘，丢掉了总冠军。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (809, '杜少NBA生涯总决赛G5总能爆发，仅凭一点可能让勇士绝望？', '球迷', '如今的勇士已经没有时间给杜兰特适应，G5不赢赛季就结束了，杜兰特如果不能在G5中复出且打出不低于个人正常水准的表现勇士就要回家了；但是，从杜兰特的身体状态和以往伤愈复出的表现来看前景不容乐观啊。更让勇士球迷绝望的是，他们苦苦期盼的杜兰特能不能在G5中复出都是未知数呢！勇士已死，有事烧纸，重头再来，谈何容易？', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (810, '杜兰特受伤后首次训练媒体被清场，G5出战成疑或只是烟雾弹', '球迷', '目前勇士队已经把杜兰特的状态从缺阵改为了出战成疑，这似乎也给了很多球迷一线希望，但是杜兰特在G5到底能不能上场其实还是未知数。杜兰特不会拿自己的职业生涯开玩笑，他或许不会冒险带伤上场，毕竟如果勇士队最终还是输球了，但是杜兰特的伤势也会因此加重，这必然会影响他的职业生涯。杜兰特正处于巅峰期，他如果完全健康再复出，他未来几年还是联盟第一人，得分依然会是联盟最佳，所以完全没有必要冒险复出。所以，勇士队还是不要把希望放在杜兰特身上，或许还是要另寻出路击败猛龙队了。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (811, '范乔丹总决赛G4血洒赛场成多伦多英雄，赛后断牙被拍卖价格惊人', '球迷', '在上一场比赛中，范弗利特被肘击后一共缝了7针，并且贡献了半颗牙，数据方面，他在29分钟的出场时间里拿到8分6助攻，正负值方面则为猛龙全队第二高的+12。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (812, 'NBA总决赛打到现在，仅剩一名超巨！小卡又一次证明了他的价值', '球迷', '更为值得一提的是，伦纳德不仅能够在得分上帮助猛龙，而且伦纳德的精神和气质更让如今的这种猛龙完成了蝉变，从此前的那支“球风偏软”到现在的“球风彪悍”。这些，都是伦纳德带来的改变。如今在伦纳德的带领下，猛龙已经拿到了赛点。而在赢下G4的时候，我们也能够看到汤普森和库里的无奈。同时，本赛季的总决赛也向大家证明了一个真理，那就是有实力，有天赋，在NBA真的可以肆无忌惮。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (813, '克莱：我们很想念KD 前两年他帮我们拿下了两个总冠军', '球迷', '今天勇士球员克莱接受采访，谈到了杜兰特：“我说过好多遍了，我们会非常欢迎他的回归，很明显我们现在很想念他，过去两年他帮我们拿下了两个总冠军，如果他能回归再帮助我们拿下一个总冠军的话，这会成为一段佳话，我知道他是多么渴望能尽快回归赛场，他是我身边最具竞争性的球员之一。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (814, '天堂地狱一线间！勇士总决赛G5成败关乎到库里历史评价', '球迷', '接下来同猛龙的第五场（也可能会有第六场和第七场）比赛，会是库里证明自己的最后机会，一旦他无法率领勇士完成绝地反击，那么他大概只能在短时间内接受一些关于“悲情英雄”的讨论与赞誉，而无法获得真正想要的荣耀！', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (815, '密歇根侧翼查尔斯-马修斯试训中遭遇膝盖前交叉韧带撕裂', '球迷', '马修斯今年为大三，本赛季在NCAA场均上场31.5分钟能够得到12.2分5.0篮板1.4助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (816, '杜兰特参加训练但强度不大，不完全排除G5复出可能', '球迷', '主场连输2场后，卫冕冠军勇士队总比分1-3落后猛龙队。根据赛程安排，总决赛G5将于6月11日移师多伦多进行。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (817, '洛瑞：杜兰特有天赋也很棒，但不能把注意力放在他身上', '球迷', '“我不知道他（杜兰特）会不会出战。如果他上场，他是一名MVP、是最佳阵球员、全明星，还是FMVP。他真的、真的很有天赋，真的、真的很棒。但我们不能把注意力放在他身上，要放在我们自己身上。我们整个季后赛都把注意力放在自己身上。”洛瑞说道。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (818, '欧文高不成低不就，尼克斯或将放弃他追求东部哈登', '球迷', '但这依旧不影响球队的最终计划，因为单从比尔的个人技术特点来分析，他是非常适合杜兰特的体系，首先比尔是一个进攻技术非常出色的球员，并且在防守上也要比欧文优秀得多，外线投射也要更加稳定，另外就是比尔由于是在沃尔的身边打球，所以他很长时间都是使用无球打法的技术特点，这一点显然是欧文不具备的，但这也正是适合杜兰特的方面，所以现在的尼克斯也就没有追求欧文的必要性了。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (819, '火箭和德安东尼重启续约谈判，费尔蒂塔主动退让放弃买断条款', '球迷', '经纪人沃伦-拉格里坚持认为德安东尼应该得到一份比火箭目前提供的更高的底薪的多年期合同。德安东尼的合同将在2019-20赛季到期，他在火箭队的三个赛季里战绩为173胜73负，在过去的两个赛季里，休斯顿以23胜16负的战绩在季后赛中输给了金州勇士队。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (820, '湖人内部透露英格拉姆已恢复健康，这是在给鹈鹕释放信号吗？', '球迷', '写到最后，英格拉姆，真的谢谢你，正是因为交易截止日后的优异表现和联盟第一的拉开单打效率，给湖人和湖人球迷争了很大一口气。如果说今夏以你为主体换来浓眉哥的话，那就更应该谢谢你了。在此祝你今夏好运，一方面祝你今夏持续打磨球技，争取早日兑现榜眼天赋；另一方面祝你今夏能继续留在湖人，哪怕被交易也希望去一支重视你、愿意培养你的球队。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (821, '这么闲再打一年？韦德社交媒体晒奔放发型', '球迷', '本赛季韦德共上场72场常规赛，场均上场26.2分钟能够得到15.0分4.0篮板4.2助攻。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (822, '雷霆酝酿5换2大交易欲截胡湖人，东部第一分卫有望西游', '球迷', '总的来说，这边交易偏向雷霆一点，奇才现在应该也在聆听联盟各个球队的报价，目前还没有其他的球队的筹码流出如果僵持到7月还是这个样子，奇才大概率会选择和雷霆交易。不过很多网友在交易还没有完成的时候就开始纷纷调侃，亚当斯一走，雷霆的卡锋没了，威少下个赛季的篮板没指望了，三双王的称号怕是要凉了。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (823, '西亚卡姆&小卡：勇士很厉害 我们在为最后的目标努力', '球迷', '猛龙勇士G5将于周二上午9点开战。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (824, '八卦媒体：艾顿近日已经有了新女友 同时还有其他的女人', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (825, '官方：杜兰特未坐场边因需要在更衣室进行治疗', '球迷', '相关新闻>>没票？工作人员晒杜兰特昨日对着小屏幕观赛照', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (826, '科尔谈压力：同意洛瑞的观点 能争夺NBA总冠军我们很幸运', '球迷', '“这是视角问题，我们非常幸运能过着现在这样的生活，能够在这里争夺NBA总冠军。当你讨论压力和艰苦的任务时，放眼世界，我们都做得很好，我们很幸运，我们知道自己是多么地幸运。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (827, '传勇士将杜兰特列入激活名单，总决赛G5复出概率50% ', '球迷', '根据赛程安排，总决赛G5将于6月11日移师多伦多进行。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (828, '萌神总决赛表现糟糕，2016年最低迷2018年G3狂打铁', '球迷', '这场比赛中，库里的手感始终没有打开，他几乎是全场都疯狂打铁，整个前三节比赛，甚至前45分钟左右的比赛中，库里只进一记运动战进球，进攻状态极其糟糕，好在杜兰特超神的表现帮助勇士苦苦支撑，到了末节最后时刻，库里才找回手感，一次突破上篮一次三分命中，帮助杜兰特分担了压力，最终勇士再胜一场3-0拿下赛点。全场比赛，库里手感冰凉16投仅3中，三分球更是惨淡的10中1。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (829, '总决赛G4收视率9.8 连续55场总决赛收视率上双纪录被终结', '球迷', '前三场总决赛收视率相比去年都下降了20%，创下2003年以来总决赛收视率的最大降幅。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (830, '洛瑞：KD若出场就是MVP&全明星&FMVP&最佳阵', '球迷', '据今日名记Shams报道，杜兰特在G5的出战状态目前为Questionable，50%出战概率。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (831, '沃尔谈跟腱伤势：腿部力量已经接近恢复', '球迷', '目前沃尔已经摘掉了保护靴，在被问到已经恢复到百分之几时，沃尔说：“我也不知道，我现在还没有尝试过跑步或跳跃。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (832, '湖人会用4号签选择卡尔弗吗？', '球迷', '北京时间7月5日讯，据报道，湖人名宿科比-布莱恩特在个人社交平台上上传第四个女儿Capri Kobe Bryant的照片，这是他和妻子Vanessa首次在社媒公开发布这位小公主KoKo（昵称）的照片。', 0, 0, '2019-06-13', 0, 0, 335, '1', 'Jrs直播吧', '北京时间7月5日讯，据报道，湖人名宿科比-布莱恩特在个人社交平台上上传第四个女儿Capri Kobe Bryant的照片，这是他和妻子Vanessa首次在社媒公开发布这位小公主KoKo（昵称）的照片。', '湖人用4号签，', '湖人会用4号签选择卡尔弗吗？');
INSERT INTO `app_articlemodel` VALUES (833, '总决赛G3库里一战封神，场均32.8分却成勇士最大救世主', '球迷', '在杜兰特来到勇士后，谦逊的库里几乎让出了球队第一进攻选择的位置，让几乎所有人的目光都聚焦在了杜兰特的身上，而库里则是身居二线，只有空位或局面未能打开的时候才站出来得分。而无球的打法极大的限制了库里真正的实力，也让不少人理所当然的认为库里并非是这个联盟中的超级巨星。而在今年的季后赛中，尤其是面对火箭的后两场比赛以及总', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (834, '总决赛：萌神拒当软蛋，大厦将倾守护最后希望', '球迷', '此时，库里会不会想到过去几年的詹姆斯呢，那个在他对面竭尽所能，却一次次目睹失败的男人。但积极的一面是，在尝尽了靠团队战力三度捧杯的喜悦之后，这一次，库里终于也能自己扮演一把孤胆英雄了。即便最终，结局以失败告终，但库里总决赛闪耀的巨星之光不该被磨灭。而对于还在巅峰期的库里来说，现在，就对他的职业生涯下定论，也还为时尚早。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (835, '祖巴茨：刚离开湖人时有点难过，但来到快船后很快适应了', '球迷', 'Ivica Zubac says it was ‘sad’ to leave Lakers, but he thinks they will bounce back next season', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (836, 'NBA早报：范乔丹G5佩戴牙套，诺天王曝办绿卡原因', '球迷', '今天早些时候，湖人后卫拉简-朗多接受了媒体采访，并谈到了个人合同问题。此前，朗多先后在国王，公牛，鹈鹕分别效力一个赛季，但最终却都没有长期留守。对此，朗多给出了解释，“他们怪罪于我的年龄。不，我不觉得理由是这个。33岁的球员仍有人得到4年长约。感觉就像是球队经理在玩套路，夸夸这里，称赞那里。并不真正涉及（问题）本质……然后当7月1日来临，情况就发生了变化，而我却并不太清楚其中的原因。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (837, '历史上的今天：詹姆斯40分12板8助4断率队2-1领先勇士', '球迷', '不过最终勇士连扳三场以4-2的比分拿到了总冠军。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (838, '猛龙记者：杜兰特未接受采访 意味着他并不会马上决定回归', '球迷', '勇士官方今日更新了队内球员G5的出战状态，杜兰特在G5的出战状态目前为Questionable，50%出战概率。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (839, '你怎么看？史蒂芬-A-史密斯谈心中TOP5：杜詹卡眉库', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (840, '马刺穆雷向自己刚毕业的弟弟赠送汽车', '球迷', 'None', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (841, '洛瑞：生活的压力才是真正的压力 为家人拼搏的都是英雄', '球迷', '“我觉得每个为生活拼搏，为家人努力的人都是真正的英雄。他们每天坐一个半小时的公交去上班，去工作，去吃苦，尽了自己的全力去养家糊口，去保护自己的家人。在我看来，生活的压力才是最大的压力，我从小就经历过，所以我懂这种感觉。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (842, '库克：有杜兰特在 我们是一支更好的球队', '球迷', '“但最好的球员复出并不能保证我们就能赢球，我们仍然要执行好比赛计划。”库克继续说道。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (843, '考辛斯：还没有结束 现在开始的每一场都是G7', '球迷', '考辛斯：还没有结束，我们仍有很大的机会去赢下比赛，所以我们必须战斗。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (844, '科尔谈KD：他今天参加了训练 要做两手准备', '球迷', '科尔：是的，如果凯文不打，比赛计划就会改变，所以我们需要适应，对位情况会改变，轮转阵容会改变，所以会有两手准备，所有的常规赛你都得面对这个问题，所以要根据谁能够上场，不断做出调整和适应。', 0, 0, '2019-06-13', 0, 0, 335, '1', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (845, '库里：无论KD恢复了多少 他都能在场上给予球队助力', '球迷', '勇士现总比分1-3落后，总决赛G5将于明天上午9点开打。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (846, '克莱：无路可退时 我们通常会给出最好的回应', '球迷', '勇士与猛龙的总决赛G5将于北京时间明日上午9点在猛龙主场开战，目前勇士1-3落后。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (847, '卢尼：G4赛后格林发表了很棒的演讲 告诉我们不要退缩', '球迷', '勇士目前已经没有任何退路，要想完成三连冠就必须连赢三场。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (848, '德马库斯考辛斯 加盟湖人', '球迷', '北京时间7月7日，据沃神报道，湖人队和自由球员中锋德马库斯-考辛斯达成了一份1年350万美元的合同。\r\n\r\n1年350万！湖人签下考辛斯！眉妹组合LA再聚首\r\n\r\n据悉，热火队有意在今年夏天签下考辛斯，但是一些湖人球员努力说服考辛斯加盟，其中包括戴维斯，他俩曾在鹈鹕搭档不错。\r\n\r\n去年夏天，考辛斯以一份1年530万美元的合同加盟勇士，让全联盟感到意外。\r\n\r\n今年1月，考辛斯伤愈复出，他代表勇士打了30场常规赛，场均得到16.3分和8.2个篮板。\r\n\r\n季后赛首轮，考辛斯不幸左腿受伤，他本以为季后赛报销，但他最终在总决赛复出。', 0, 0, '2019-06-13', 0, 0, 335, '1', 'zrs直播吧', '北京时间7月7日，据沃神报道，湖人队和自由球员中锋德马库斯-考辛斯达成了一份1年350万美元的合同。', '考辛斯转会,', '考辛斯加盟湖人');
INSERT INTO `app_articlemodel` VALUES (849, '麦克罗伊赢得加拿大公开赛 高举洛瑞球衣迎接球迷欢呼', '球迷', '目前卫冕冠军勇士队1比3落后，猛龙距离首次夺冠仅差1场胜利。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (850, 'Shams：杜兰特G5状态被列为出战成疑 50%几率复出', '球迷', '勇士现总比分1-3落后，G5将于明天上午9点开打。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (851, '利文斯顿：不想考虑之后的事 要为当下努力', '球迷', 'G5将于明天上午9点开打。', 0, 0, '2019-06-13', 0, 0, 335, '1', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (852, '西亚卡姆：小卡令人感到不可思议 有机会走到这步让我兴奋', '球迷', '猛龙现总比分3-1领先勇士，G5将于明天上午9点开打。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (853, '追梦：不觉得已经打完了在甲骨文的最后一场比赛', '球迷', '“我感觉不错，我们仍然有机会去赢下系列赛，有机会就很棒。”追梦说道。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (854, '追梦：不清楚KD的状况期待他明天复出 G5是背水一战', '球迷', '总决赛G5将于明天上午9点开打。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (855, '随队记者：KD的训练未向媒体开放 据观察训练量不大', '球迷', '勇士现总比分1-3落后，总决赛G5将于明天上午9点开打。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (856, '克莱：美好的事终有结束的一天 但你不知道那会是什么时候', '球迷', '对于系列赛可能终结在多伦多，克莱表示：“我把‘打回奥克兰’用作动力，奥克兰值得不止一场比赛。”', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (857, '库里谈1-3翻盘：我们知道自己能做到 要去证明这一点', '球迷', '“我不会说我们现在情绪低落，我们只是很期待甚至着急走上明天的赛场。”库里说，“我们有信心做到，我们要屏蔽噪音、今天好好训练，纠正一些细节。”', 0, 0, '2019-06-13', 0, 0, 335, '1', 'zrs直播吧', '库里谈1-3翻盘我们知道自己能做到 要去证明这一点', '库里谈1-3翻盘', '库里谈1-3翻盘');
INSERT INTO `app_articlemodel` VALUES (858, '克莱：KD比我们伤得都重 期待自己能在G5恢复到100%', '球迷', '勇士现总比分1-3落后，总决赛G5将于明天上午9点开打。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (859, '勇士众将期待杜兰特回归，库里：只要他在场就会影响比赛', '球迷', 'Kevin Durant to take massive step, as Warriors now pray', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (860, 'Haynes：杜兰特今日可以参加训练 有望出战G5', '球迷', '科尔暂时没有排除杜兰特出战G5的可能性。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (861, '范弗里特：不喜欢戴牙套 可能会在比赛中把它扔掉', '球迷', '范弗里特在上一场比赛中被利文斯顿意外打到面部、缝了七针后回归了比赛。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (862, '美媒：如果勇士今夏开出5年1.9亿顶薪，克莱就会留在球队', '球迷', 'Another report the Warriors will bring Klay Thompsonback', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (863, '纳斯：我们会试着去无视大比分 还有很多的工作要做', '球迷', '“我们会保持专注，改进一些事情，做出一些调整。”纳斯说道。', 0, 0, '2019-06-13', 0, 0, 335, '0', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (864, '在多伦多买房了吗？莱昂纳德：还没有', '球迷', '当地媒体记者：莱昂纳德已在多伦多买房', 0, 0, '2019-06-13', 0, 0, 335, '1', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (865, '塞官方宣布，球队已经签下了今年首轮15号秀塞古-敦布亚', '球迷', '北京时间7月5日讯，活塞官方宣布，球队已经签下了今年首轮15号秀塞古-敦布亚。\r\n\r\n活塞官方：球队正式签下今年15号秀塞古-敦布亚 \r\n\r\n作为今年的15号秀，敦布亚将在其新秀赛季拿到约328万美元的薪水，第二赛季薪水约为345万美元，第三赛季薪水约为361万美元，第四赛季薪水约为554万美元。\r\n\r\n敦布亚今年18岁，身高2.06米，体重104公斤，司职前锋，2018-19赛季在法国作为Limoges CSP队球员出场39次，场均出战18.1分钟，能够贡献7.2分3.0篮板0.7助攻0.7抢断0.5盖帽。', 0, 0, '2019-06-13', 0, 0, 335, '1', 'jrs直播吧', '北京时间7月5日讯，活塞官方宣布，球队已经签下了今年首轮15号秀塞古-敦布亚。  活塞官方：球队正式签下今年15号秀塞古-敦布亚', '罗本退役,', '活塞签下塞古');
INSERT INTO `app_articlemodel` VALUES (866, '历史上的今天：奥尼尔总决赛单场39次罚球创历史纪录', '球迷', '值得一提的是，该场比赛科比在投篮落地时不慎踩到杰伦-罗斯的脚，这也让他只出场了9分钟，同时也缺席了之后的G3。', 0, 0, '2019-06-13', 0, 0, 335, '1', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (867, '克莱卢尼纷纷带伤火线复出，杜兰特连续第九场缺阵引起争议', '球迷', 'Report: Warriors frustrated Kevin Durant hasn’treturned', 0, 0, '2019-06-13', 0, 0, 335, '1', 'zrs直播吧', '', '', '');
INSERT INTO `app_articlemodel` VALUES (868, 'Amick：杜兰特长时间伤缺正引起部分勇士队员的困惑和焦虑', '球迷', '罗本表示：“过去几周，我一直在思考。大家都知道，在我代表拜仁踢完最后一场比赛之后，我花了很长时间来对未来做出一个明智的决定。我决定结束我作为职业球员的生涯。”\r\n\r\n“毫无疑问，这是我职业生涯中必须要做出的最艰难的决定，这是我从内心深处做出的决定。对这项运动的热爱，让你仍然可以跟得上世界的节奏，但与此相对立的现实是，不是一切都会按照你想要的方式进行的，你不再是那个不知道伤病意味着什么的16岁的男孩了。”\r\n\r\n罗本继续说道：“现在我身体是健康的，而且作为其他许多运动的粉丝，我希望将来能够保持这个状态。因此，我最终决定停下来，但对我来说这样做是好的。”\r\n\r\n“现在是时候去开启我人生的下一篇章了，我希望能够有更多时间去陪伴我的妻子和孩子，去享受生活。”', 0, 0, '2019-06-13', 0, 0, 335, '1', 'jrs直播吧', '罗本表示：“过去几周，我一直在思考。大家都知道，在我代表拜仁踢完最后一场比赛之后，我花了很长时间来对未来做出一个明智的决定。我决定结束我作为职业球员的生涯。”', '罗本退役,', '罗本退役边路再无小飞侠');
INSERT INTO `app_articlemodel` VALUES (869, '廖力生表现优异 未来可期', '球迷', '天海对阵恒大的比赛中，首发出场的廖力生表现非常出色。廖力生自从天海换帅之后，他就靠着自己努力重返球队首发阵容。天海新帅朴忠均对廖力生能力非常欣赏，而且在比赛中激活了他的最佳状态。看到廖力生在天海队将迎来久违的爆发。很多恒大球迷都为他感到高兴。因为，这就意味着未来廖力生回归恒大的希望将大增。\r\n\r\n里皮一直看好的人终于在新东家爆发！未来可回归恒大挑起大梁\r\n\r\n恒大为了让廖力生能在本赛季获得更多出场机会，就将他租借到了天津天海。恒大希望廖力生能在天海找回最佳状态，以便在未来回归球队之后继续挑起大梁。廖力生在本土中生代指挥官中一直属于佼佼者的水平，他在里皮提携之下曾经在恒大上演了一战成名的好戏。当时，如日中天的廖力生靠着出色的技术和不俗的进攻意识，一度被认为是郑智接班人。只是，里皮离开恒大之后，廖力生在恒大表现和状态就逐渐下滑。\r\n\r\n虽然，廖力生在里皮离开恒大之后，一直没有在球队拿出有说服力的表现。但是，恒大依然给了廖力生一份大合同。恒大将廖力生视为球队重点培养的本土一哥，对他在球队的未来充满了期待。所以，恒大对于廖力生能在近期天海比赛中有渐入佳境的发挥非常欣慰。只要廖力生能在天海队将出色状态一直延续下去，那么他未来回归恒大挑大梁的希望就会大增。\r\n\r\n廖力生之前在沈祥福执教天海队的时候，由于这位老帅不会用他，导致廖力生成为了可有可无的鸡肋。为此，廖力生在天海队陷入了职业生涯低谷期。这让很多恒大球迷都为他着急，大家都希望廖力生能尽快找回最佳状态。好在，天海在迎来新帅朴忠均之后，这位曾经的恒大王牌指挥官被强势激活，终于在本赛季迎来了爆发。\r\n\r\n廖力生在天海迎来久违的闪光，这对于球队保级同样是非常利好的事情。廖力生如果能真正成为天海前场最强指挥官，并且能在比赛中有力挽狂澜的表现，那么廖力生就将成为天海队保级的关键先生。希望，廖力生在天海队未来的保级关键战役中，还能给球迷带来力挽狂澜的表现。', 0, 0, '2019-07-08', 0, 0, 361, '1', 'Jrs直播吧', '天海对阵恒大的比赛中，首发出场的廖力生表现非常出色。廖力生自从天海换帅之后，他就靠着自己努力重返球队首发阵容。天海新帅朴忠均对廖力生能力非常欣赏，而且在比赛中激活了他的最佳状态。看到廖力生在天海队将迎来久违的爆发。很多恒大球迷都为他感到高兴。因为，这就意味着未来廖力生回归恒大的希望将大增。', '廖力生', '廖力生表现优异 未来可期');
INSERT INTO `app_articlemodel` VALUES (870, '利物浦2-0热刺利物浦五次捧杯', '球迷', '北京时间6月2日03:00，2018/19赛季欧冠决赛在万达大都会球场隆重上演，利物浦2比0力克热刺，萨拉赫108秒射入点球，候补进场的奥里吉终场前确定胜局。利物浦第6次夺得欧冠冠军，克洛普成为第4位带领赤军夺得欧冠的教练。\r\n\r\n萨拉赫开场点射神奇替补再破门 利物浦2-0热刺登顶欧冠\r\n\r\n利物浦开场108秒获得抢先，热刺开场22秒送出点球，西索科举手指示后防队友设防，马内禁区左边传中刚好打在西索科右手，裁判斯科米纳第一时间判罚极刑，萨拉赫主罚点球射中。\r\n\r\n利物浦第69分钟几乎扩展比分，马内打破传球，萨拉赫回敲，米尔纳禁区边际内左脚劲射，皮球擦右侧立柱偏出。特里皮尔右路传中，阿里小禁区前头球攻门高出。孙兴慜30码远射被扑出，罗斯传球，小卢卡斯15码处低射被没收。\r\n\r\n利物浦第87分钟确定胜局，范戴克角球混战中射门被封堵，马蒂普传球，奥里吉禁区左边12码处低射远角入网，2-0。', 0, 0, '2019-07-08', 0, 0, 401, '1', 'zrs直播吧', '北京时间6月2日03:00，2018/19赛季欧冠决赛在万达大都会球场隆重上演，利物浦2比0力克热刺，萨拉赫108秒射入点球，候补进场的奥里吉终场前确定胜局。利物浦第6次夺得欧冠冠军，克洛普成为第4位带领赤军夺得欧冠的教练。', '利物浦2-0热刺,', '利物浦2-0热刺 利物浦五次捧杯');
INSERT INTO `app_articlemodel` VALUES (871, '萨拉维、金信煜加盟上海申花', '球迷', '北京时间7月8日，中超球队上海申花官方宣布三大新援加盟：意大利国脚沙拉维、韩国国脚金信煜和留洋小将李扬。\r\n\r\n官宣三连发！上海申花签下沙拉维金信煜和小将李扬\r\n\r\n上海绿地申花足球俱乐部与意大利罗马足球俱乐部达成转会协议，拥有意大利、埃及双重国籍的球员斯蒂芬·艾尔·沙拉维（Stephan El Shaarawy）预计于北京时间7月8日抵达上海，在通过俱乐部体检并完成相关手续后，正式加盟上海绿地申花。\r\n\r\n上海绿地申花足球俱乐部与韩国全北现代汽车足球俱乐部达成转会协议。韩国籍球员金信煜(Kim Shin-Wook)预计于北京时间7月8日抵达上海，在通过俱乐部体检并完成相关手续后，正式加盟上海绿地申花。\r\n\r\n上海绿地申花足球俱乐部与葡萄牙吉马良斯足球俱乐部达成协议，中国国奥队球员李扬租借加盟上海绿地申花。', 0, 0, '2019-07-09', 0, 0, 361, '1', 'jrs直播吧', '北京时间7月8日，中超球队上海申花官方宣布三大新援加盟：意大利国脚沙拉维、韩国国脚金信煜和留洋小将李扬。', '萨拉维,', '萨拉维加盟上海申花');
INSERT INTO `app_articlemodel` VALUES (872, '戴琳停赛 鲁能下一场很艰难', '球迷', '山东鲁能与北京人和的比赛前，球迷都非常关心吉尔离开鲁能之后，李霄鹏会在中卫位置用谁接替吉尔。很多球迷非常看好当打本土强援刘军帅，顶替吉尔出任鲁能新主力中卫。因为，刘军帅的实力和特点是鲁能目前阵中最接近吉尔的本土悍将。所以，鲁能球迷觉得不出意外，李霄鹏会在这场比赛中安排刘军帅首发踢中卫。\r\n\r\n戴琳停赛将加速鲁能王牌中卫回归！能力不俗曾深受德甲名帅器重\r\n\r\n果然，李霄鹏在鲁能这场比赛中安排了刘军帅与戴琳搭档踢中卫。刘军帅在临危受命之后，他在中卫位置上的表现非常稳健。很多鲁能球迷觉得只要李霄鹏多给他一些时间，未来刘军帅是可以挑起鲁能中卫大梁。相比于刘军帅在这场比赛中稳健表现，身为老大哥的戴琳则是表现有些冒失。戴琳在没有了吉尔这位好搭档为自己补锅之后，他在比赛中又暴露出防守急躁的缺点。比赛当中戴琳因为防守动作过大领到两张黄牌而被罚下场。\r\n\r\n好在，戴琳红牌下场之后并没有影响到鲁能最终取胜人和的结果，只是戴琳红牌停赛之后，又给鲁能主帅李霄鹏出了一个难题。李霄鹏还得在中卫位置上，找一个合适的人选顶替戴琳。李霄鹏要想解决这个难题，就得从内部再次挖潜。目前在鲁能可以胜任球队首发中卫的有伤愈复出的李松益、多面手刘洋。\r\n\r\n刘洋身为鲁能多面手，他不仅可以在球队胜任左后卫，而且还能踢中卫。刘洋在本赛季亚冠小组赛中就踢过中卫，并且靠着优异表现，入选了单轮亚冠小组赛最佳阵容。所以，刘洋顶替戴琳出任鲁能主力中卫，这是没有什么大问题的。刘洋和刘军帅之前在95国青队有过合作，两人搭档踢中卫让球迷也是相当期待。\r\n\r\n最后，刚刚伤愈复出的李松益同样值得鲁能主帅李霄鹏重点考虑。李松益本身就是踢中卫出道，他在鲁能93一代一直被球迷视为最强中卫。李松益的能力曾受到过德甲名帅马加特的器重。李松益本赛季由于伤病就一直无缘代表鲁能出战，他经过漫长的养伤恢复之后，如今终于可以伤愈复出。李松益如果能把握机会，在鲁能中卫位置上有出色表现，他就将成为鲁能中卫位置最大惊喜，成功接班戴琳挑起大梁。当然，老将郑铮和王彤也有过客串中卫的经历，后防线上具体如何进行合理的人员安排，还得看李霄鹏的运筹帷幄。', 0, 0, '2019-07-09', 0, 0, 335, '1', 'Jrs直播吧', '山东鲁能与北京人和的比赛前，球迷都非常关心吉尔离开鲁能之后，李霄鹏会在中卫位置用谁接替吉尔。很多球迷非常看好当打本土强援刘军帅，顶替吉尔出任鲁能新主力中卫。因为，刘军帅的实力和特点是鲁能目前阵中最接近吉尔的本土悍将。所以，鲁能球迷觉得不出意外，李霄鹏会在这场比赛中安排刘军帅首发踢中卫', '戴琳停赛,', '戴琳停赛将加速鲁能王牌中卫回归');
INSERT INTO `app_articlemodel` VALUES (873, '严鼎皓转正 刘奕鸣租借加盟深圳', '球迷', '球报名记白国华透露，恒大后卫胡睿宝将在二次转会加盟河南建业，刘奕鸣则被租借到深圳佳兆业，而表现不错的中场严鼎皓则正式买断。\r\n\r\n跟队记者：恒大后卫胡睿宝转投河南 刘奕鸣租借深圳 严鼎皓转正\r\n\r\n上赛季重返恒大的U23后卫胡睿宝本赛季在恒大缺乏出场机会，只是在足协杯首发一次以及亚冠小组赛出战半场，中超联赛并未获得上阵机会，表现也是饱受争议。此前有传闻称胡睿宝将作为埃尔克森的转会一部分加盟上海上港，如今白国华则表示恒大和上港之间不存在球员交换。\r\n\r\n今年加盟恒大的后卫刘奕鸣则表现不如理想，中超联赛只获得4次首发1次替补的出场机会，进入6月份之后就没能再获得出场机会。对于急需补充后防人手保级的深圳来说，刘奕鸣的加盟无疑是一大利好消息。\r\n\r\n国奥小将严鼎皓加盟恒大后表现渐入佳境，最近4次中超出场比赛都取得进球，成为恒大前场最大发现。原本是租借身份加盟的他被恒大正式买断顺理成章。', 0, 0, '2019-07-09', 0, 0, 361, '1', 'jrs直播吧', '球报名记白国华透露，恒大后卫胡睿宝将在二次转会加盟河南建业，刘奕鸣则被租借到深圳佳兆业，而表现不错的中场严鼎皓则正式买断。', '严鼎皓转正', '严鼎皓转正 刘奕鸣租借到深圳');
INSERT INTO `app_articlemodel` VALUES (874, '欧冠决赛利物浦2-0热刺', '球迷', '北京时间6月2日03:00，2018/19赛季欧冠决赛在万达大都会球场隆重上演，利物浦2比0力克热刺，萨拉赫108秒射入点球，候补进场的奥里吉终场前确定胜局。利物浦第6次夺得欧冠冠军，克洛普成为第4位带领赤军夺得欧冠的教练。\r\n\r\n萨拉赫开场点射神奇替补再破门 利物浦2-0热刺登顶欧冠\r\n\r\n利物浦开场108秒获得抢先，热刺开场22秒送出点球，西索科举手指示后防队友设防，马内禁区左边传中刚好打在西索科右手，裁判斯科米纳第一时间判罚极刑，萨拉赫主罚点球射中。\r\n\r\n利物浦第69分钟几乎扩展比分，马内打破传球，萨拉赫回敲，米尔纳禁区边际内左脚劲射，皮球擦右侧立柱偏出。特里皮尔右路传中，阿里小禁区前头球攻门高出。孙兴慜30码远射被扑出，罗斯传球，小卢卡斯15码处低射被没收。\r\n\r\n利物浦第87分钟确定胜局，范戴克角球混战中射门被封堵，马蒂普传球，奥里吉禁区左边12码处低射远角入网，2-0。', 0, 0, '2019-07-09', 0, 0, 401, '1', 'Jrs直播吧', '北京时间6月2日03:00，2018/19赛季欧冠决赛在万达大都会球场隆重上演，利物浦2比0力克热刺，萨拉赫108秒射入点球，候补进场的奥里吉终场前确定胜局。利物浦第6次夺得欧冠冠军，克洛普成为第4位带领赤军夺得欧冠的教练。', '利物浦2-0热刺,', '欧冠决赛利物浦2-0热刺 第五次捧杯');
INSERT INTO `app_articlemodel` VALUES (875, '阿森纳有意巴塞罗那前锋马尔科姆', '球迷', '北京时间7月9日讯 据巴西环球体育报道，阿森纳有意引进巴萨前锋马尔科姆，埃梅里对此提出了要求。\r\n\r\n阿森纳曝追巴萨大将 埃梅里点名让球队买他\r\n\r\n马尔科姆在巴萨的未来尚不确定，巴萨想收回当初在马尔科姆身上花费的4000万欧元。巴黎据悉有兴趣签下这名球员。在埃梅里的要求下，阿森纳也开始准备引进马尔科姆。此外，埃弗顿也有意签下这名球员。\r\n\r\n除此之外，有来自中国的俱乐部对马尔科姆很感兴趣。上赛季，马尔科姆代表巴萨出战24场，攻入4球并奉献2次助攻。', 0, 0, '2019-07-09', 0, 0, 396, '1', 'jrs直播吧', '北京时间7月9日讯 据巴西环球体育报道，阿森纳有意引进巴萨前锋马尔科姆，埃梅里对此提出了要求。', '阿森纳,', '阿森纳有意巴塞罗那前锋马尔科姆');
INSERT INTO `app_articlemodel` VALUES (876, '英裁判主席：var不应过度介入比赛', '球迷', '北京时间7月9日讯 近日在接受媒体采访时，英超裁判委员会主席迈克-莱利表示，英超联赛引进VAR技术是为了尽可能帮助裁判做出正确判罚，而不是过度介入到比赛。\r\n\r\n名哨：VAR只是辅助技术 不能过度介入到比赛中\r\n\r\n在接下来的2019-20赛季，英超联赛将正式启用VAR技术。迈克-莱利和他的团队在过去的两年时间里一直在对裁判们进行视频助理裁判的培训和准备，并取得了理想中的进步。\r\n\r\n迈克-莱利表示：“VAR技术是一项辅助技术，我们还没有完全地熟悉，因此我们仍需要2-3年的时间来解决这个问题。”\r\n\r\n“你看看如今意大利、西班牙、德国以及荷兰的情况，你就会发现，越来越多的人已经熟悉了这个过程。VAR已经更好地被运动到了比赛中，这真的很棒。”\r\n\r\n“不过我们不希望VAR技术过度地介入到比赛当中，这只是一项辅助技术。这项技术的初衷是为了帮助裁判更好地执法比赛，保证他们不会做出错误的判罚。”\r\n\r\n“如果我们一直保持着这样的态度，尽量地减少VAR技术对比赛的干扰，那么我们就有更多的机会保证比赛的流畅性、比赛的强度以及比赛的观赏性，而不是让裁判不断地去参考屏幕来做出判罚。”', 0, 0, '2019-07-09', 0, 0, 396, '1', 'jrs直播吧', '北京时间7月9日讯 近日在接受媒体采访时，英超裁判委员会主席迈克-莱利表示，英超联赛引进VAR技术是为了尽可能帮助裁判做出正确判罚，而不是过度介入到比赛。', 'var不应过度介入比赛', '英裁判主席：var不应过度介入比赛');
INSERT INTO `app_articlemodel` VALUES (877, '英媒：博格巴归队参加季前赛 但他仍想离开曼联', '球迷', '北京时间7月8日讯 《每日镜报》消息，尽管博格巴想要离队，但他目前已经归队，加入球队出征季前赛的行列。\r\n\r\n英媒：博格巴归队参加季前赛 但他仍想离开曼联\r\n\r\n曼联周日已启程飞往珀斯，开始两周半的季前巡回赛之旅，博格巴也在大名单之中，而且这位法国国脚已随队出征。不过，博格巴想要离队的立场依然未变，他仍想在今夏离开老特拉福德。\r\n\r\n曼联方面虽然坚称不会放走博格巴，但外界普遍认为他们为球员的估价达到1.5亿英镑，尤文和皇马都对这位法国国脚很感兴趣。\r\n\r\n《镜报》透露，主帅索尔斯克亚在登上飞机前曾与博格巴有过交谈，但由于曼联下赛季无法参加欧冠联赛，博格巴的立场比较坚定。', 0, 0, '2019-07-09', 0, 0, 402, '1', 'jrs直播吧', '北京时间7月8日讯 《每日镜报》消息，尽管博格巴想要离队，但他目前已经归队，加入球队出征季前赛的行列。', '博格巴转会,', '英媒：博格巴归队参加季前赛 但他仍想离开曼联');
INSERT INTO `app_articlemodel` VALUES (878, '名宿：利物浦本不该输给曼城 冠军会接连到来', '球迷', '利物浦夺得2018-19赛季欧冠冠军，但遗憾在英超冠军之争中败给了曼城。如今，利物浦名宿索内斯发声：输给曼城那场比赛，利物浦本该收获平局。\r\n\r\n名宿：利物浦本不该输给曼城 冠军会接连到来\r\n\r\n索内斯称：“在你做的每一件事中，你都需要一点运气。没有人能否认从克洛普入主以来利物浦每年都在保持进步。几个月前，当克洛普在卡迪夫城球场的边线上接受采访时，我就对他说，你和这支球队赢得冠军只是时间问题，这是无法阻挡的，更多的冠军将会到来。”\r\n\r\n“去年一整个赛季，他们只输了一场英超联赛，那时在曼城的主场，我看了那场比赛，利物浦本该收获一个平局的。”\r\n\r\n“如果你问任何一个英超球员，问他们最不想对阵谁，他们可能会说曼城，也会承认怕被利物浦欺负。”', 0, 0, '2019-07-09', 0, 0, 396, '1', 'Jrs直播吧', '利物浦夺得2018-19赛季欧冠冠军，但遗憾在英超冠军之争中败给了曼城。如今，利物浦名宿索内斯发声：输给曼城那场比赛，利物浦本该收获平局。', '曼城vs利物浦,', '名宿：利物浦本不该输给曼城 冠军会接连到来');
INSERT INTO `app_articlemodel` VALUES (879, '非洲杯尼日利亚VS南非前瞻分析', '球迷', '非洲杯尼日利亚 VS 南非分析\r\n\r\n比赛时间：2019-07-11 03:00:00\r\n\r\n球场：中立场\r\n\r\n非洲国家杯八强\r\n\r\n双方概要：\r\n\r\n尼日利亚FIFA排名第44位。球队最近的十场比赛，战绩是5胜3平2负，不败率高达80%，成绩还是很不错的，近10场进10球失7球，进攻还说得过去，但是防守却不如人意。球队的主场战绩是7场不败，主场优势异常明显。\r\n\r\n南非FIFA排名第73位。南非最近的十场比赛，战绩是3胜5平2负，不败率同样高达80%，但是平局颇多，胜绩居少。近10场进8球失7球，攻防两端相均衡。虽然上一轮险胜埃及挺进八强，但是竞技状态并不佳。\r\n\r\n交锋战绩概述：\r\n\r\n从两支球队交锋，尼日利亚战绩是5胜4平1负，尼日利亚完全是碾压对手南非的。主场交锋战绩方面，尼日利亚的战绩是2胜1平1负，唯一一场负绩还是在主队，客场是3胜3平，所以球队的主场优势并不明显。\r\n\r\n盘面拆解：\r\n\r\n从各大机构的开盘来看，目前普遍是主队让半球高指，主队实力是明显在客队之上的，从两队过往交锋能看出，主队完全碾压对手，但近年来以平局居多，两队实力相差并不大，所以让半球以主队的状态来说，是一个比较保守的位置了，此场看好主队。\r\n\r\n竞彩：主胜\r\n\r\n亚盘：主队上盘', 0, 0, '2019-07-10', 0, 0, 403, '1', 'Jrs直播吧', '尼日利亚FIFA排名第44位。球队最近的十场比赛，战绩是5胜3平2负，不败率高达80%，成绩还是很不错的，近10场进10球失7球，进攻还说得过去，但是防守却不如人意。球队的主场战绩是7场不败，主场优势异常明显。', '尼日利亚VS南非,', '非洲杯尼日利亚VS南非前瞻分析');
INSERT INTO `app_articlemodel` VALUES (880, '萨利：拜仁防线得到加强', '球迷', '北京时间7月10日讯 拜仁体育主管萨利哈米季奇在不久前接受采访，谈到了有关引援的相关话题。\r\n\r\n萨利：防线已得到重组加强，拜仁引援会量力而行\r\n\r\n“我不愿意对转会目标（萨内和登贝莱）再做评价。我认为拜仁球迷们也很清楚而今的转会市场是多么不理性和难以预知。”\r\n\r\n“科瓦奇正在考虑新赛季，这很正常。俱乐部需要根据自己的财政情况量力而行。我们必须思考清楚当前最需要什么，未来又最需要什么。每个赛季都会出现阵容变动，因此我们能够明智地处理此问题。”\r\n\r\n“别忘了我们还是一支拥有不少世界级球员的优秀球队，我们在防线上已经完成了重组并得到了加强，而其他位置上，我们还有2个月时间呢。”', 0, 0, '2019-07-10', 0, 0, 399, '1', 'jrs直播吧', '北京时间7月10日讯 拜仁体育主管萨利哈米季奇在不久前接受采访，谈到了有关引援的相关话题。', '拜仁后防线,', '萨利：拜仁防线得到加强');
INSERT INTO `app_articlemodel` VALUES (881, '拜仁高层联系诺伊尔谈话', '球迷', '北京时间7月8日讯 近日诺伊尔经纪人关于“英超前四已经把拜仁甩在身后，拜仁阵容而今的竞争力和诺伊尔渴望再夺欧冠的雄心并不匹配”的言论，在德国足坛一石激起千层浪，《图片报》也对此进行了跟进。\r\n\r\n德媒：拜仁高层不满雄心论 已联系诺伊尔进行沟通\r\n\r\n此前拉姆曾因为接受未经拜仁俱乐部授权的采访而被罚款5万欧，但此次诺伊尔本人并未出面（尽管所有人都心知肚明这是出于他的授意）。据悉，拜仁高层对于诺伊尔的这一举动非常不满，并认为作为球队队长，他应该在俱乐部内部讨论这件事。因此，拜仁高层在周日已经和诺伊尔方面进行了联系，但他们拒绝向外界透露任何信息。\r\n\r\n此外，《图片报》还表示诺伊尔在拜仁队内因为其竞技成就而备受尊重，但队友们对于他的领导力持保留意见。在博阿滕、胡梅尔斯和穆勒被国家队除名后，诺伊尔作为双料队长始终保持沉默，反而是年轻的基米希出面为队友打抱不平。\r\n\r\n与此同时，拜仁球迷也对高层的政策议论纷纷，这基于几点事实：算上4名门将，拜仁也仅有21名一线队球员，是欧冠各队最少；拜仁总身价在全欧已经位列第11，前40球星中没有1名拜仁球员；拜仁在前场已经连续失去了7、10、11号（里贝里、罗本、J罗）却没有及时补强。\r\n\r\n值得一提的是，基米希在此前已经直言拜仁需要展现出雄心，而莱万每年都会呼吁拜仁引进强援。', 0, 0, '2019-07-10', 0, 0, 399, '1', 'jrs直播吧', '北京时间7月8日讯 近日诺伊尔经纪人关于“英超前四已经把拜仁甩在身后，拜仁阵容而今的竞争力和诺伊尔渴望再夺欧冠的雄心并不匹配”的言论，在德国足坛一石激起千层浪，《图片报》也对此进行了跟进。', '拜仁与诺伊尔谈话,', '拜仁高层联系诺伊尔谈话');
INSERT INTO `app_articlemodel` VALUES (882, '武磊晒训练时与队友合影 用西语配文：加油！', '球迷', '北京时间7月10日讯 我们的武磊今天参与了西班牙人的季前训练，他在Instagram上发布了和队友的合影，并用西语配文道：“Vamos”（加油！）\r\n\r\n![](/media/editor/1562732769597678_20190710154538522761.jpg)\r\n\r\n\r\n武磊晒训练时与队友合影 用西语配文：加油！\r\n\r\n而西班牙人的官方账号也在下方回复：“Come on boys！”（来吧！男孩们！）\r\n\r\n根据安排，西班牙人将在北京时间7月26日以及8月2日进行欧联资格赛第二轮的两回合较量。而如果想要进入欧联杯正赛，那么西班牙人还需要通过资格赛第三轮以及附加赛的考验', 0, 0, '2019-07-10', 0, 0, 397, '1', 'Jrs直播吧', '北京时间7月10日讯 我们的武磊今天参与了西班牙人的季前训练，他在Instagram上发布了和队友的合影，并用西语配文道：“Vamos”（加油！）', '武磊,', '武磊晒训练时与队友合影 用西语配文：加油！');
INSERT INTO `app_articlemodel` VALUES (883, '皇马继续清洗工程！齐达内希望再卖掉6名球员', '球迷', '皇马全队已经动身前往加拿大，而他们的清洗工作仍在进行之中。\r\n\r\n皇马继续清洗工程！齐达内希望再卖掉6名球员\r\n\r\n卢卡-齐达内没有随队前往加拿大，他留在了西班牙，租借加盟西乙升班马桑坦德竞技。\r\n\r\n齐达内不介意巴斯克斯留在皇马阵中，但皇马认为是时候分手了。皇马高层希望通过出售巴斯克斯获得4000万欧元，但阿森纳依然没有报价过。\r\n\r\nJ罗最接近离队，因为参加美洲杯的缘故，他仍在休假。皇马对他的标价为4200万欧元，那不勒斯仍在跟皇马协商。\r\n\r\n虽然皇马想卖掉贝尔，但是他想留在皇马，他也随队前往加拿大，参加季前赛。\r\n\r\n纳瓦斯也随队前往加拿大，因为皇马对他的标价高，导致他的交易变得困难。皇马也会听从外界对纳乔的报价。\r\n\r\n陆续卖掉马科斯-略伦特、科瓦契奇、劳尔-德托马斯、特奥，租借雷吉隆、厄德高之后，齐达内希望皇马再卖掉6名球员，让阵容变得更加合理。\r\n\r\n此外几名度假的球员，塞瓦略斯将会租借离队，巴列霍将根据纳乔的情况，决定留队还是离队。', 0, 0, '2019-07-10', 0, 0, 397, '1', 'Jrs直播吧', '皇马全队已经动身前往加拿大，而他们的清洗工作仍在进行之中。', '皇马卖人,', '皇马继续清洗工程！齐达内希望再卖掉6名球员');
INSERT INTO `app_articlemodel` VALUES (884, '马德里竞技新赛季球衣号码变更：莫拉塔重披9号', '球迷', '北京时间7月9日讯 马德里竞技官网在北京时间今晚公布了球队新赛季的球衣号码变更，其中莫拉塔、吉梅内斯和比托洛都将更改自己新赛季的球衣号码。\r\n\r\n ![](/media/editor/1562728127384526_20190710163554192656.jpg)\r\n\r\n马德里竞技新赛季球衣号码变更：莫拉塔重披9号\r\n\r\n原本身披24号的乌拉圭中后卫吉梅内斯，在戈丁离队之后，将穿上戈丁留下的2号球衣。中场比托洛则是选择了胡安弗兰留下的20号球衣。\r\n\r\n前锋方面，在上赛季身披22号马竞球衣的莫拉塔，将重新穿上他熟悉的9号球衣来征战新赛季，克罗地亚前锋卡利尼奇则是由上赛季的9号球衣变为21号球衣。此外，从本菲卡转会而来的葡萄牙小将菲利克斯将接过格列兹曼的7号战袍。', 0, 0, '2019-07-10', 0, 0, 397, '1', 'zrs直播吧', '北京时间7月9日讯 马德里竞技官网在北京时间今晚公布了球队新赛季的球衣号码变更，其中莫拉塔、吉梅内斯和比托洛都将更改自己新赛季的球衣号码。', 'Jrs直播吧,低调看,英超直播吧,NBA直播吧,NBA录像吧', '马德里竞技新赛季球衣号码变更：莫拉塔重披9号');
INSERT INTO `app_articlemodel` VALUES (885, '西媒：皇马计划让新援阿扎尔穿上具有历史意义的7球衣号码', '球迷', '北京时间7月7日讯 据西班牙《阿斯报》报道，皇马的新援阿扎尔目前还没有选择球衣号码，皇马的计划是让阿扎尔穿7号球衣。\r\n\r\n西媒：皇马计划让新援阿扎尔穿上具有历史意义的7球衣号码\r\n\r\n阿扎尔已经在6月13日正式亮相皇马了，但至今还没有确定球衣号码，皇马计划将俱乐部具有历史意义的7号球衣给阿扎尔，尽管上赛季皇马的7号马里亚诺现在仍在队中。\r\n\r\n《阿斯报》透露，虽然皇马现在还没有出售马里亚诺，但后者的表现并不能让皇马满意，而7号球衣在皇马历史上有多名传奇球星穿过，包括C罗、劳尔、布特拉格诺、华尼托、科帕和阿曼西奥等人。\r\n\r\n阿扎尔在职业生涯的大部分时间都穿着10号球衣，但目前皇马的10号拥有者是莫德里奇，阿扎尔曾经在亮相仪式上透露，“我有幸通过科瓦西奇向莫德里奇开玩笑问能否让给我10号，但他说不行，因此我需要找其它号码，尽管现在这不是最重要的事情，重要是身穿皇马球衣踢球。”\r\n\r\n《阿斯报》称，如果拿不到10号球员的话，阿扎尔本人也更偏向7号球衣，目前皇马官方商店中出售的阿扎尔球衣没有印号。\r\n\r\n此外，除了7号外，《阿斯报》表示，如果贝尔离开皇马，他的11号球衣也将是阿扎尔可以考虑的选择之一，尽管皇马和阿扎尔现在都将7号视为第一选择。', 0, 0, '2019-07-10', 0, 0, 397, '1', 'zrs直播吧', '北京时间7月7日讯 据西班牙《阿斯报》报道，皇马的新援阿扎尔目前还没有选择球衣号码，皇马的计划是让阿扎尔穿7号球衣。', '阿扎尔身穿几号球员,', '西媒：皇马计划让新援阿扎尔穿上具有历史意义的7球衣号码');
INSERT INTO `app_articlemodel` VALUES (886, '格子铁了心去巴萨！拒绝归队 和马竞死磕到底', '球迷', '目前格列兹曼的转会再度遭遇瓶颈，马竞官方发布声明谴责巴萨，并要求格列兹曼在周末按照要求参加球队训练。但《马卡报》的最新消息指出，格列兹曼已经告知马竞，他不会在周日归队，参加训练。\r\n\r\n\r\n\r\n格子铁了心去巴萨！拒绝归队 和马竞死磕到底\r\n\r\n马竞在声明中明确表示，格列兹曼必须在周日回球队报到，参加季前训练，如果他不这样做，会被认定不履行合同义务，马竞将会采取纪律处分，格列兹曼对马竞的这番做法感到十分不满。\r\n\r\n格列兹曼曾经同马竞高层以及西蒙尼会面，格子解释了自己的决定，而也被告知，如果他选择离开，他会得到俱乐部的帮助，因为他是俱乐部历史的一部分。\r\n\r\n尽管格列兹曼在上赛季结束前就宣布了要离开马竞，但巴萨却始终没能和马竞达成协议。如果在谈判中依然不能取得进展，那么巴萨很有可能在下周直接支付1.2亿的违约金，将格列兹曼带回诺坎普。', 0, 0, '2019-07-10', 0, 0, 397, '1', 'zrs直播吧', '目前格列兹曼的转会再度遭遇瓶颈，马竞官方发布声明谴责巴萨，并要求格列兹曼在周末按照要求参加球队训练。但《马卡报》的最新消息指出，格列兹曼已经告知马竞，他不会在周日归队，参加训练。', '格子转会巴塞罗那,', '格子铁了心去巴萨！拒绝归队 和马竞死磕到底');
INSERT INTO `app_articlemodel` VALUES (887, '男篮胜黄蜂 12人名单逐渐确定', '球迷', '北京时间7月10日消息，中国男篮在NBA夏联击败了黄蜂，时隔12年赢得夏联首场胜利，这也让男篮12人名单的争夺结果变得更加清晰。\r\n\r\n在后卫线上，赵睿凭借之前出色的表现已经占据一席之地，郭艾伦在三场比赛中的抢眼发挥又一次证明了自己的实力。战胜黄蜂的这场后卫线表现抢眼的赵继伟和方硕。相较于之前的热身赛，赵继伟这次在美国的表现更加自信，他在场上比赛的感觉也一场比一场好。方硕在之前和澳大利亚的热身赛中就有出色发挥，这场比赛终结段的连续得分也再次证明了他的大心脏。\r\n\r\n男篮12人名单逐渐浮出水面 悬念只剩两个席位\r\n\r\n如果李楠选择带四后卫去世界杯，郭艾伦、赵睿、赵继伟和方硕相对来说已经是很稳的了。孙铭徽和吴前还需要在比赛中更多的证明自己才有机会。\r\n\r\n在锋线上，周鹏、阿不都沙拉木和翟晓川在之前的比赛中已经充分证明过自己，这场比赛中阿不都和翟晓川也有出色发挥，已经占据了锋线的三个席位。丁彦雨航在第二场比赛中有非常出色的表现，并且看起来膝盖的伤势也恢复的不错。如果他能保持这样的身体状态，进入12人名单肯定是没问题，可以说伤病是小丁现在唯一的隐患。只有小丁因为伤病不能打的情况下，可兰和陈林坚才有机会。\r\n\r\n内线上，易建联、王哲林和周琦这三个人已经稳稳占据了三个位置，剩下的一个名额将在胡金秋和沈梓捷两个人中产生。沈梓捷身高出色，具备更好的护筐能力，胡金秋移动能力更好，中投能力也更加突出，对于这两个人的选择，李楠显然还需要考察。\r\n\r\n从目前的情况看，12人名单实际上只剩下了两个位置的悬念。', 0, 0, '2019-07-11', 0, 0, 402, '1', 'Jrs直播吧', '北京时间7月10日消息，中国男篮在NBA夏联击败了黄蜂，时隔12年赢得夏联首场胜利，这也让男篮12人名单的争夺结果变得更加清晰。', '男篮世界杯大名单,', '男篮胜黄蜂 12人名单逐渐确定');
INSERT INTO `app_articlemodel` VALUES (888, '官宣：广州男篮续约主帅胡安', '球迷', '北京时间6月19日讯，今天，广州男篮在其官方微博上宣布与主帅胡安完成续约工作，并签下丁伟为球队助理教练。原文如下：\r\n\r\n官宣：广州男篮续约主帅胡安 签约丁伟为助教\r\n\r\n6月19日，龙狮篮球俱乐部正式与胡安·安东尼奥·奥兰加先生完成续约工作。新赛季，胡安先生将继续担任时代中国广州队主教练一职。同时，俱乐部还与丁伟先生完成签约工作。丁伟先生将担任球队助理教练一职。\r\n\r\n胡安先生于2018年7月开始执教球队，休赛期带领球队获得了“超级8”夏季联赛冠军，“金丘杯”邀请赛冠军，“非凡12”锦标赛亚军。2018-2019赛季，他带领球队创下队史最长连胜纪录和双外援阵容的队史最佳战绩。他的执教能力得到了俱乐部管理层的一致认可。\r\n\r\n丁伟先生曾担任浙江、同曦和北控男篮的主教练以及新疆男篮的助理教练。担任新疆男篮助理教练期间，他帮助新疆男篮在2012-13赛季取得联赛第四名，2013-14赛季取得联赛第二名。在担任浙江男篮主教练的2015-2016赛季，他带领浙江男篮以联盟第八名的成绩进入季后赛。\r\n\r\n留下胡安教练，球队将稳固上赛季根基，不断提升技战术水平。而丁伟教练的加盟，也将补充教练组实力，为球队征战新赛季打下坚实基础。', 0, 0, '2019-07-11', 0, 0, 402, '1', 'zrs直播吧', 'jrs直北京时间6月19日讯，今天，广州男篮在其官方微博上宣布与主帅胡安完成续约工作，并签下丁伟为球队助理教练播吧是一个专业为球迷提供免费的NBA,CBA,英超,西甲,德甲,意甲,法甲,中超,欧冠,世界杯等各大体育赛事直播，无插件，高清，直播线路多球迷可以在线低调看直播', '广州男篮,', '官宣：广州男篮续约主帅胡安');
INSERT INTO `app_articlemodel` VALUES (889, '尤文拒绝埃弗顿对小基恩的3000万欧元报价', '球迷', '北京时间7月9日讯 尤文小将小基恩上赛季横空出世，他的出色表现也吸引到了英超球队埃弗顿的目光。据悉，埃弗顿为小基恩开出了3000万欧元的报价，但是被尤文图斯拒绝。\r\n\r\n意媒：尤文拒绝埃弗顿对小基恩的3000万欧元报价\r\n\r\n据《米兰体育报》转会专家尼科洛-希拉消息：太妃糖报价3000万欧求购小基恩，但是被尤文图斯拒绝了。\r\n\r\n这名19岁的意大利小将还与阿贾克斯联系在一起，据悉他有可能成为德里赫特转会尤文交易的一部分。\r\n\r\n直到目前为止，小基恩已经创造了多项纪录，比如说：他是第一个在五大联赛进球的00后球员。\r\n\r\n在5月底，他也得到了曼奇尼的征召，身披国家队战袍为意大利出战欧预赛。小基恩上赛季在尤文出场17次打入7球。', 0, 0, '2019-07-11', 0, 0, 400, '1', 'Jrs直播吧', '北京时间7月9日讯 尤文小将小基恩上赛季横空出世，他的出色表现也吸引到了英超球队埃弗顿的目光。据悉，埃弗顿为小基恩开出了3000万欧元的报价，但是被尤文图斯拒绝。', '尤文图斯,', '尤文拒绝埃弗顿对小基恩的3000万欧元报价');
INSERT INTO `app_articlemodel` VALUES (890, 'AC米兰巨头：我们的目标是创造良性的财政基础', '球迷', '北京时间7月10日讯 近日，AC米兰首席执行官加齐迪斯在推特上对于球队的欧战前景发表了自己的看法。\r\n\r\nAC米兰巨头：我们的目标是创造良性的财政基础\r\n\r\n此前由于违反财政公平法案，AC米兰与欧足联达成了协议，他们放弃了新赛季的欧联杯参赛资格，以换取一年的财政自由。\r\n\r\n对此加齐迪斯表示：“这是和解协议还是自愿协议？这将取决于欧足联将如何定义这件事情。”\r\n\r\n“我们对俱乐部的未来发展前景有一个清晰的规划。不可否认的是，在这个过程中我们可能会犯错，但是我们知道我们所要前进的方向，所以我们对球队的未来规划十分有信心。”\r\n\r\n“我们的目标是创造一个结构化的，并且十分良性的财政基础，我们的目标与欧足联基本相同。可以设想的是，当下次欧足联检查AC米兰的财务状况时，我们希望结果会像是我们所想的那样，符合2020-21赛季的欧战参赛资格。”', 0, 0, '2019-07-11', 0, 0, 400, '1', 'zrs直播吧', '北京时间7月10日讯 近日，AC米兰首席执行官加齐迪斯在推特上对于球队的欧战前景发表了自己的看法。', 'AC米兰,', 'AC米兰巨头：我们的目标是创造良性的财政基础');
INSERT INTO `app_articlemodel` VALUES (891, '热身赛-兰帕德执教蓝军首秀 切尔西89分钟丢球双方打平', '球迷', '北京时间7月11日02:45，2019/20赛季切尔西首场季前热身赛在达利蒙特公园展开争夺，切尔西客场1比1战平波希米亚人，巴舒亚伊进球，莫洛伊终场前扳平。\r\n\r\n热身赛-兰帕德执教蓝军首秀 切尔西89分钟丢球1-1\r\n\r\n开场仅2分钟，斯特林头球解围失误，赖特禁区弧顶抽射反弹球稍稍偏出左侧立柱。切尔西第8分钟取得领先，加拉赫传球，肯尼迪左路突破至禁区前1对4果断射门，皮球被封堵后偏转，巴舒亚伊小禁区前射入上角。半场结束前，佩德罗开出角球，巴舒亚伊头球攻门偏出。\r\n\r\n兰帕德下半场更换全部11人。皮亚松传球，吉尔摩禁区右侧劲射偏出近角。巴卡约科外围劲射也被扑出。皮亚松传球，吉尔摩禁区边缘内左脚低射再次被扑出。但其后的比赛，切尔西的进攻缺乏活力，兰帕德在教练席上也满面愁容。波希米亚人第89分钟扳平，凯斯-沃德反击中斜传，埃里克-莫洛伊禁区右肋10码处射入近角，1-1。', 0, 0, '2019-07-11', 0, 0, 396, '1', 'zrs直播吧', '北京时间7月11日02:45，2019/20赛季切尔西首场季前热身赛在达利蒙特公园展开争夺，切尔西客场1比1战平波希米亚人，巴舒亚伊进球，莫洛伊终场前扳平。', '兰帕德执教首秀,', '热身赛-兰帕德执教蓝军首秀 切尔西89分钟丢球双方打平');
INSERT INTO `app_articlemodel` VALUES (892, '泰晤士报：马德里警方将出动4700名警员维持欧冠观赛秩序', '球迷', '北京时间5月29日 据《泰晤士报》报道，北京时间6月2日凌晨，欧冠决赛将在马德里上演。为了应对众多远道而来的的球迷，马德里警方将出动4700名警察上街执勤，以确保观赛秩序。\r\n\r\n泰晤士报：马德里警方将出动4700名警员维持欧冠观赛秩序\r\n\r\n据悉，有超过7万名球迷将前往马德里观赛。届时，警方将拉起三道警戒线。并且从比赛当天下午5点开始，球迷区将实施禁酒令。球迷区将于比赛前两个小时关闭。\r\n\r\n为了应对欧冠决赛的人流，默西塞德郡警方与伦敦警方近期都与马德里警方保持联系，届时将有一些来自英国的警员将被调往马德里的比赛现场。利物浦和热刺都分配到了约17000张球票，但是依然有成千上万的球迷打算不买票直接前往马德里为球队助威。', 0, 0, '2019-07-12', 0, 0, 401, '1', 'Jrs直播吧', '北京时间5月29日 据《泰晤士报》报道，北京时间6月2日凌晨，欧冠决赛将在马德里上演。为了应对众多远道而来的的球迷，马德里警方将出动4700名警察上街执勤，以确保观赛秩序。', '马德里欧冠决赛,', '泰晤士报：马德里警方将出动4700名警员维持欧冠观赛秩序');
INSERT INTO `app_articlemodel` VALUES (893, '胡梅尔斯重回多特后很受欢迎', '球迷', '据《体育图片报》报道，胡梅尔斯在回归多特的首堂训练课中受到了球迷们的欢迎。\r\n\r\n胡梅尔斯重回多特后很受欢迎 首训没有反对者砸场\r\n\r\n在今天的训练课中，胡梅尔斯进行了小组赛的练习。期间，他也受到了很多多特球迷的欢迎。对于回归多特后的感受，胡梅尔斯表示：“这里看起来几乎和过去一样。”在训练结束后，胡梅尔斯还和托普拉克以及助教有过几分钟的交流。\r\n\r\n对于胡梅尔斯的回归，多特主管佐尔克表示：“对我而言，胡梅尔斯是德国最好的中后卫。我们当然希望他在赛场上再次扮演主角，所以我们把他带回来了。”', 0, 0, '2019-07-12', 0, 0, 399, '1', 'zrs直播吧', '据《体育图片报》报道，胡梅尔斯在回归多特的首堂训练课中受到了球迷们的欢迎。', 'Jrs直播吧,低调看,英超直播吧,NBA直播吧,NBA录像吧', '胡梅尔斯重回多特后很受欢迎');
INSERT INTO `app_articlemodel` VALUES (894, '罗本正式宣布退役 19年职业生涯结束', '球迷', '北京时间7月4日，荷兰球星罗本宣布退役，拜仁成为了他职业生涯的最后一站。“小飞侠”表示：“毫无疑问这是我职业生涯中最艰难的决定。”\r\n\r\n再见小飞侠！罗本正式宣布退役 19年职业生涯结束\r\n\r\n罗本出道于格罗宁根青训，随后他在埃因霍温、切尔西、皇家马德里留下了自己的足迹。2009年夏天，罗本以2400万欧元身价加盟拜仁，与里贝里组成了踏雪无痕的“罗贝里”组合。为拜仁效力整整十年之后，罗本选择离开并随后告别绿茵场。\r\n\r\n罗本职业生涯中总共出战606场比赛， 打进247球。拜仁无疑是“小飞侠”职业生涯最浓墨重彩的一笔，代表拜仁出场309次，奉献144次和74次助攻。帮助拜仁赢得过1次欧冠冠军、8次德甲联赛冠军、5次德国杯冠军、5个德国超级杯冠军、1次世俱杯冠军。在2013年的欧冠决赛中，罗本接里贝里脚后跟助攻，一剑封喉锁定胜局，打入了拜仁生涯最重要的一球。\r\n\r\n国家队层面，罗本90次出场，与橙衣军团的黄金一代携手，拿到过南非世界杯的亚军以及巴西世界杯的季军。面对卡西利亚斯的单刀未进，也是罗本国家队生涯最大的遗憾。\r\n\r\n罗本表示：“过去几周我一直在思考很多东西。大家都知道，在我离开拜仁以后，我专门花时间来为自己的未来确定一个正式的方向。最后我决定向职业生涯说声再见。”\r\n\r\n罗本还表示，这是“他职业生涯中做过的最艰难的决定。”', 0, 0, '2019-07-12', 0, 0, 399, '1', 'zrs直播吧', '北京时间7月4日，荷兰球星罗本宣布退役，拜仁成为了他职业生涯的最后一站。“小飞侠”表示：“毫无疑问这是我职业生涯中最艰难的决定。”', '罗本退役,', '罗本正式宣布退役 19年职业生涯结束');
INSERT INTO `app_articlemodel` VALUES (895, '梅西获得ESPYS最佳男子足球运动员奖', '球迷', '北京时间7月11日讯 官方消息，梅西获得ESPYS本年度最佳男子足球运动员奖。\r\n\r\n荣誉加身！梅西获得ESPYS最佳男子足球运动员奖\r\n\r\nESYPS奖全称Excellence in Sports Performance Yearly，奖项由运动员、各大媒体以及粉丝投票选出，颁发给在运动场上拥有卓越表现的运动员。\r\n\r\n2018-19赛季，梅西共代表巴萨出战50场，打进51球并贡献22次助攻，荣获联赛金靴，帮助巴萨夺得了联赛冠军。', 0, 0, '2019-07-12', 0, 0, 397, '1', 'zrs直播吧', '北京时间7月11日讯 官方消息，梅西获得ESPYS本年度最佳男子足球运动员奖。', '梅西获奖,', '梅西获得ESPYS最佳男子足球运动员奖');
INSERT INTO `app_articlemodel` VALUES (896, '格列兹曼肥皂剧结束！巴萨今将激活1.2亿违约金', '球迷', '据西班牙各大媒体的消息，巴萨将在周五激活格列兹曼的违约金，违约金1.2亿欧元。\r\n\r\n格列兹曼肥皂剧结束！巴萨今将激活1.2亿违约金\r\n\r\n因为格列兹曼没有按时参加马竞的季前赛，这让马竞感到愤怒，他们拒绝跟巴萨谈判，为此巴萨只有激活违约金一条路。\r\n\r\n按照巴萨的计划，他们希望格列兹曼周六亮相，之后于下周一与巴萨全队汇合。下周一，巴萨将全队集合，备战新赛季。\r\n\r\n此前有消息声称，巴萨准备向银行贷款，来支付格列兹曼1.2亿欧元的违约金。但这则消息遭到了巴萨的否认。\r\n\r\n据《队报》的消息，巴萨已经通过银行汇款，支付了1.2亿欧元的违约金，但是巴萨跟马竞都对此进行了否认。根据规定，激活违约金的方式，只有球员前往西甲总部，买断违约金的方式才行。', 0, 0, '2019-07-12', 0, 0, 397, '1', 'zrs直播吧', '据西班牙各大媒体的消息，巴萨将在周五激活格列兹曼的违约金，违约金1.2亿欧元。', '巴塞罗那激活违约金，', '格列兹曼肥皂剧结束！巴萨今将激活1.2亿违约金');
INSERT INTO `app_articlemodel` VALUES (897, '哈维：内马尔南回巴萨 签下格子是伟大的签约', '球迷', '巴萨名宿哈维在接受《马卡报》采访时谈到了内马尔的问题，他认为加泰豪门现在很难签回巴西人。\r\n\r\n“这会是一次难以置信的签约，但老实说，我认为很困难。我们已经见识了许多我们认为从未发生的事情，例如之前巴黎支付了2.22亿欧元的违约金，我们不得不等待事情最终的结果。毫无疑问，内马尔是世界上最好的球员之一，但我们也需要看看巴塞罗那的表现。”\r\n\r\n\r\n\r\n而关于巴萨近期的转会对象格列兹曼，哈维说道：\r\n\r\n“格列兹曼是个伟大的球星，他是世界级的。他在马竞时和他在法国队有所不同，他是一个出色的球员。尽管现在看来格列兹曼很接近巴塞罗那了，我认为这会是伟大的签约。”\r\n\r\n“他能不能和苏亚雷斯兼容？这得问巴尔韦德，教练组会作出合适的安排。若格列兹曼完成了签约，那意味着巴尔韦德认同其能和队内球员一起比赛。这会很壮观。”', 0, 0, '2019-07-12', 0, 0, 397, '1', 'zrs直播吧', '巴萨名宿哈维在接受《马卡报》采访时谈到了内马尔的问题，他认为加泰豪门现在很难签回巴西人。', '格子转会巴塞罗那,', '哈维：内马尔南回巴萨 签下格子是伟大的签约');
INSERT INTO `app_articlemodel` VALUES (898, '朴规现租借加盟云达不莱梅', '球迷', '德甲云达不莱梅官方宣布，韩国球员朴规现正式租借加盟不莱梅U19梯队，有买断条款。\r\n\r\n\r\n\r\n朴规现此前效力于蔚山现代，目前只有18岁，司职中后卫。他最后的合同手续将在未来几天落实。\r\n\r\n\r\n朴规现是是韩国U18国家队的队长。此前在中国进行的熊猫杯比赛中，朴规现在球队夺冠庆祝时将熊猫杯奖杯踩在脚下，引发了中国球迷极度不满，此后与全队进行了道歉。', 0, 0, '2019-07-12', 0, 0, 399, '1', 'zrs直播吧', '德甲云达不莱梅官方宣布，韩国球员朴规现正式租借加盟不莱梅U19梯队，有买断条款。', '朴规现加盟不莱梅,', '朴规现租借加盟云达不莱梅');
INSERT INTO `app_articlemodel` VALUES (899, '沙尔克已经为努贝尔开出续约合同', '球迷', '沙尔克年轻门将努贝尔在欧青赛上表现出色，努贝尔已经得到了欧洲多家豪门俱乐部的关注。沙尔克方面也希望留住努贝尔，据德国媒体《图片报》的消息，沙尔克已经为努贝尔开出续约合同。\r\n\r\n\r\n\r\n德国媒体《图片报》列出了沙尔克为努贝尔开出的续约合同中的一些条款：沙尔克希望与努贝尔续约至2023年；努贝尔的年薪会有大幅增加；另外合同中包含一项2021年生效的解约金条款。\r\n\r\n\r\n\r\n努贝尔是否会接受续约还不得而知，努贝尔已经得到拜仁等多家欧洲豪门的关注。目前努贝尔与沙尔克的合同将在明年到期。', 0, 0, '2019-07-12', 0, 0, 399, '1', 'zrs直播吧', '沙尔克年轻门将努贝尔在欧青赛上表现出色，努贝尔已经得到了欧洲多家豪门俱乐部的关注。沙尔克方面也希望留住努贝尔，据德国媒体《图片报》的消息，沙尔克已经为努贝尔开出续约合同。', '沙尔克续约女贝尔,', '沙尔克已经为努贝尔开出续约合同');
INSERT INTO `app_articlemodel` VALUES (900, '西班牙人1050万欧签阿根廷左边锋', '球迷', '北京时间7月14日晚讯 西班牙人俱乐部官方宣布，球队签下22岁的阿根廷左边锋马蒂亚斯-巴尔加斯，合同为期5年。他是西班牙人今夏继中卫埃斯皮诺萨和前西班牙国脚伊图拉斯佩后的第三位新援。\r\n\r\n武磊主力地位受考验！西人1050万欧签阿根廷左边锋\r\n\r\n西班牙人将支付1050万欧的转会费，巴尔加斯在西班牙人的解约金为5000万欧。\r\n\r\n巴尔加斯在场上主打左边锋，也能踢右路和攻击型中场。他此前效力于阿根廷超级联赛的萨斯菲尔德俱乐部。年仅22岁的他已经踢了63场正式比赛，打进17球助攻15次。同时在2018年9月3-0战胜危地马拉的友谊赛，巴尔加斯已经在中完成了阿根廷国家队首秀。\r\n\r\n由于巴尔加斯的习惯位置是左边锋，武磊的主力位置将迎来严峻的竞争，此外上赛季的西班牙人主帅鲁比执掌贝蒂斯后，急于想带走西人的主力中锋伊格莱西亚斯，这也将成为锋线上的一大变数。', 0, 0, '2019-07-16', 0, 0, 397, '1', 'Jrs直播吧', '北京时间7月14日晚讯 西班牙人俱乐部官方宣布，球队签下22岁的阿根廷左边锋马蒂亚斯-巴尔加斯，合同为期5年。他是西班牙人今夏继中卫埃斯皮诺萨和前西班牙国脚伊图拉斯佩后的第三位新援。', '西班牙人，武磊,', '西班牙人1050万欧签阿根廷左边锋');
INSERT INTO `app_articlemodel` VALUES (901, '格子加盟巴塞罗那 身披17号战袍', '球迷', '巴萨新援格列兹曼早早敲定了自己的球衣号码，他选择了17号。\r\n\r\n格列兹曼加盟巴萨号码敲定 不是7号！而是17号！\r\n\r\n格列兹曼的选择有点让人吃惊，他职业生涯初期，曾在皇家社会身披27号，之后无论是皇家社会、马竞还是法国国家队，他都是身披7号战袍。\r\n\r\n有一种观点，格列兹曼在等待库蒂尼奥的离开，他在等待巴萨的7号战袍。库蒂尼奥刚加盟巴萨的时候，身披14号战袍，上赛季改成了7号球衣。\r\n\r\n巴萨上一位身穿17号战袍的球员是穆里略。阿尔卡塞尔、穆尼尔、宋、佩德罗、多斯桑托斯、范博梅尔、门迪塔、克里斯坦瓦尔、佩蒂特、博加德、阿穆尼克，他们也曾身穿过巴萨的17号。', 0, 0, '2019-07-16', 0, 0, 397, '1', 'zrs直播吧', '巴萨新援格列兹曼早早敲定了自己的球衣号码，他选择了17号。', '格子加盟巴塞罗那,', '格子加盟巴塞罗那 身披17号战袍');
INSERT INTO `app_articlemodel` VALUES (902, '男篮已回归北京 23日迎战突尼斯', '球迷', '北京时间7月14日下午，中国男篮结束了NBA夏季联赛的征程，启程回国。北京时间15日早晨，中国男篮回到北京。\r\n\r\n\r\n在这次NBA夏季联赛中，中国男篮取得1胜4负的成绩。他们回国经过休整，接下来将出战在深圳举行的斯坦科维奇杯的比赛。\r\n\r\n\r\n\r\n中国男篮将在7月23日迎战突尼斯，并在24再进行一场比赛。之后男篮将在26日浙江慈溪和28日陕西西安与喀麦隆进行两场热身赛。', 0, 0, '2019-07-16', 0, 0, 402, '1', 'zrs直播吧', '北京时间7月14日下午，中国男篮结束了NBA夏季联赛的征程，启程回国。北京时间15日早晨，中国男篮回到北京。', '男篮回归,', '男篮已回归北京 23日迎战突尼斯');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_articlemodel_tag
-- ----------------------------
BEGIN;
INSERT INTO `app_articlemodel_tag` VALUES (1, 1, 1);
INSERT INTO `app_articlemodel_tag` VALUES (34, 126, 7);
INSERT INTO `app_articlemodel_tag` VALUES (33, 607, 2);
INSERT INTO `app_articlemodel_tag` VALUES (11, 832, 2);
INSERT INTO `app_articlemodel_tag` VALUES (5, 844, 1);
INSERT INTO `app_articlemodel_tag` VALUES (18, 848, 2);
INSERT INTO `app_articlemodel_tag` VALUES (9, 851, 1);
INSERT INTO `app_articlemodel_tag` VALUES (49, 857, 2);
INSERT INTO `app_articlemodel_tag` VALUES (4, 864, 1);
INSERT INTO `app_articlemodel_tag` VALUES (17, 865, 2);
INSERT INTO `app_articlemodel_tag` VALUES (7, 866, 1);
INSERT INTO `app_articlemodel_tag` VALUES (3, 867, 1);
INSERT INTO `app_articlemodel_tag` VALUES (21, 868, 8);
INSERT INTO `app_articlemodel_tag` VALUES (22, 869, 11);
INSERT INTO `app_articlemodel_tag` VALUES (23, 870, 1);
INSERT INTO `app_articlemodel_tag` VALUES (24, 871, 8);
INSERT INTO `app_articlemodel_tag` VALUES (25, 872, 8);
INSERT INTO `app_articlemodel_tag` VALUES (26, 873, 8);
INSERT INTO `app_articlemodel_tag` VALUES (27, 874, 12);
INSERT INTO `app_articlemodel_tag` VALUES (28, 875, 1);
INSERT INTO `app_articlemodel_tag` VALUES (29, 876, 1);
INSERT INTO `app_articlemodel_tag` VALUES (31, 877, 7);
INSERT INTO `app_articlemodel_tag` VALUES (35, 878, 1);
INSERT INTO `app_articlemodel_tag` VALUES (36, 879, 16);
INSERT INTO `app_articlemodel_tag` VALUES (37, 880, 18);
INSERT INTO `app_articlemodel_tag` VALUES (38, 881, 18);
INSERT INTO `app_articlemodel_tag` VALUES (39, 882, 17);
INSERT INTO `app_articlemodel_tag` VALUES (40, 883, 17);
INSERT INTO `app_articlemodel_tag` VALUES (41, 884, 17);
INSERT INTO `app_articlemodel_tag` VALUES (42, 885, 17);
INSERT INTO `app_articlemodel_tag` VALUES (43, 885, 19);
INSERT INTO `app_articlemodel_tag` VALUES (44, 886, 17);
INSERT INTO `app_articlemodel_tag` VALUES (45, 887, 20);
INSERT INTO `app_articlemodel_tag` VALUES (46, 888, 20);
INSERT INTO `app_articlemodel_tag` VALUES (47, 889, 21);
INSERT INTO `app_articlemodel_tag` VALUES (48, 890, 21);
INSERT INTO `app_articlemodel_tag` VALUES (50, 891, 1);
INSERT INTO `app_articlemodel_tag` VALUES (51, 892, 12);
INSERT INTO `app_articlemodel_tag` VALUES (52, 893, 18);
INSERT INTO `app_articlemodel_tag` VALUES (53, 894, 18);
INSERT INTO `app_articlemodel_tag` VALUES (54, 895, 17);
INSERT INTO `app_articlemodel_tag` VALUES (55, 896, 17);
INSERT INTO `app_articlemodel_tag` VALUES (56, 897, 17);
INSERT INTO `app_articlemodel_tag` VALUES (57, 898, 18);
INSERT INTO `app_articlemodel_tag` VALUES (58, 899, 18);
INSERT INTO `app_articlemodel_tag` VALUES (59, 900, 17);
INSERT INTO `app_articlemodel_tag` VALUES (60, 901, 17);
INSERT INTO `app_articlemodel_tag` VALUES (61, 902, 20);
COMMIT;

-- ----------------------------
-- Table structure for app_brocademodel
-- ----------------------------
DROP TABLE IF EXISTS `app_brocademodel`;
CREATE TABLE `app_brocademodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(16) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `web_desc` varchar(255) NOT NULL,
  `web_keyword` varchar(255) NOT NULL,
  `web_title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_brocademodel
-- ----------------------------
BEGIN;
INSERT INTO `app_brocademodel` VALUES (67, '6月15日 中超 广州富力vs武汉卓尔 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:22.963789', 'jrs直播吧是一个专业为球迷提供免费的NBA,CBA,英超,西甲,德甲,意甲,法甲,中超,欧冠,世界杯等各大体育赛事直播，无插件，高清，直播线路多球迷可以在线低调看直播', 'Jrs直播吧,低调看,英超直播吧,NBA直播吧,NBA录像吧', 'Jrs直播吧-低调在线免费看直播');
INSERT INTO `app_brocademodel` VALUES (68, '6月16日 中超 江苏苏宁vs北京人和 全场录像', '球迷', 'jrs直播吧', '2019-06-17 11:25:22.964681', 'jrs直播吧是一个专业为球迷提供免费的NBA,CBA,英超,西甲,德甲,意甲,法甲,中超,欧冠,世界杯等各大体育赛事直播，无插件，高清，直播线路多球迷可以在线低调看直播', 'Jrs直播吧,低调看,英超直播吧,NBA直播吧,NBA录像吧', 'Jrs直播吧-低调在线免费看直播');
INSERT INTO `app_brocademodel` VALUES (69, '6月15日 中超 河北华夏vs大连一方 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:22.970779', 'jrs直播吧是一个专业为球迷提供免费的NBA,CBA,英超,西甲,德甲,意甲,法甲,中超,欧冠,世界杯等各大体育赛事直播，无插件，高清，直播线路多球迷可以在线低调看直播', 'Jrs直播吧,低调看,英超直播吧,NBA直播吧,NBA录像吧', 'Jrs直播吧-低调在线免费看直播');
INSERT INTO `app_brocademodel` VALUES (70, '6月16日 中超 天津天海vs河南建业 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:22.970092', 'jrs直播吧是一个专业为球迷提供免费的NBA,CBA,英超,西甲,德甲,意甲,法甲,中超,欧冠,世界杯等各大体育赛事直播，无插件，高清，直播线路多球迷可以在线低调看直播', 'Jrs直播吧,低调看,英超直播吧,NBA直播吧,NBA录像吧', 'Jrs直播吧-低调在线免费看直播');
INSERT INTO `app_brocademodel` VALUES (71, '6月16日 中超 深圳佳兆业vs天津泰达  全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.254462', 'jrs直播吧是一个专业为球迷提供免费的NBA,CBA,英超,西甲,德甲,意甲,法甲,中超,欧冠,世界杯等各大体育赛事直播，无插件，高清，直播线路多球迷可以在线低调看直播', 'Jrs直播吧,低调看,英超直播吧,NBA直播吧,NBA录像吧', 'Jrs直播吧-低调在线免费看直播');
INSERT INTO `app_brocademodel` VALUES (72, '6月14日 中超 上海上港vs广州恒大 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.319092', 'jrs直播吧是一个专业为球迷提供免费的NBA,CBA,英超,西甲,德甲,意甲,法甲,中超,欧冠,世界杯等各大体育赛事直播，无插件，高清，直播线路多球迷可以在线低调看直播', 'Jrs直播吧,低调看,英超直播吧,NBA直播吧,NBA录像吧', 'Jrs直播吧-低调在线免费看直播');
INSERT INTO `app_brocademodel` VALUES (73, '6月15日 女足世界杯 牙买加女足vs意大利女足 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.340446', 'jrs直播吧是一个专业为球迷提供免费的NBA,CBA,英超,西甲,德甲,意甲,法甲,中超,欧冠,世界杯等各大体育赛事直播，无插件，高清，直播线路多球迷可以在线低调看直播', 'Jrs直播吧,低调看,英超直播吧,NBA直播吧,NBA录像吧', 'Jrs直播吧-低调在线免费看直播');
INSERT INTO `app_brocademodel` VALUES (74, '6月14日 女足世界杯 日本女足vs苏格兰女足 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.350300', 'jrs直播吧是一个专业为球迷提供免费的NBA,CBA,英超,西甲,德甲,意甲,法甲,中超,欧冠,世界杯等各大体育赛事直播，无插件，高清，直播线路多球迷可以在线低调看直播', 'Jrs直播吧,低调看,英超直播吧,NBA直播吧,NBA录像吧', 'Jrs直播吧-低调在线免费看直播');
INSERT INTO `app_brocademodel` VALUES (75, '6月15日 女足世界杯 英格兰女足vs阿根廷女足 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.715107', 'jrs直播吧是一个专业为球迷提供免费的NBA,CBA,英超,西甲,德甲,意甲,法甲,中超,欧冠,世界杯等各大体育赛事直播，无插件，高清，直播线路多球迷可以在线低调看直播', 'Jrs直播吧,低调看,英超直播吧,NBA直播吧,NBA录像吧', 'Jrs直播吧-低调在线免费看直播');
INSERT INTO `app_brocademodel` VALUES (76, '6月15日 中甲 南通支云vs浙江绿城 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.719682', 'jrs直播吧是一个专业为球迷提供免费的NBA,CBA,英超,西甲,德甲,意甲,法甲,中超,欧冠,世界杯等各大体育赛事直播，无插件，高清，直播线路多球迷可以在线低调看直播', 'Jrs直播吧,低调看,英超直播吧,NBA直播吧,NBA录像吧', 'Jrs直播吧-低调在线免费看直播');
INSERT INTO `app_brocademodel` VALUES (77, '6月15日 美洲杯 巴西vs玻利维亚 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.752144', 'jrs直播吧是一个专业为球迷提供免费的NBA,CBA,英超,西甲,德甲,意甲,法甲,中超,欧冠,世界杯等各大体育赛事直播，无插件，高清，直播线路多球迷可以在线低调看直播', 'Jrs直播吧,低调看,英超直播吧,NBA直播吧,NBA录像吧', 'Jrs直播吧-低调在线免费看直播');
INSERT INTO `app_brocademodel` VALUES (78, '6月15日 中甲 上海申鑫vs呼和浩特 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.784301', 'jrs直播吧是一个专业为球迷提供免费的NBA,CBA,英超,西甲,德甲,意甲,法甲,中超,欧冠,世界杯等各大体育赛事直播，无插件，高清，直播线路多球迷可以在线低调看直播', 'Jrs直播吧,低调看,英超直播吧,NBA直播吧,NBA录像吧', 'Jrs直播吧-低调在线免费看直播');
INSERT INTO `app_brocademodel` VALUES (79, '6月15日 中甲 新疆雪豹纳欢vs四川FC 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.172058', 'jrs直播吧是一个专业为球迷提供免费的NBA,CBA,英超,西甲,德甲,意甲,法甲,中超,欧冠,世界杯等各大体育赛事直播，无插件，高清，直播线路多球迷可以在线低调看直播', 'Jrs直播吧,低调看,英超直播吧,NBA直播吧,NBA录像吧', 'Jrs直播吧-低调在线免费看直播');
INSERT INTO `app_brocademodel` VALUES (80, '6月15日 女足世界杯 荷兰女足vs喀麦隆女足 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.177268', 'jrs直播吧是一个专业为球迷提供免费的NBA,CBA,英超,西甲,德甲,意甲,法甲,中超,欧冠,世界杯等各大体育赛事直播，无插件，高清，直播线路多球迷可以在线低调看直播', 'Jrs直播吧,低调看,英超直播吧,NBA直播吧,NBA录像吧', 'Jrs直播吧-低调在线免费看直播');
INSERT INTO `app_brocademodel` VALUES (81, '6月15日 中甲 黑龙江FCvs梅州客家 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.193477', 'jrs直播吧是一个专业为球迷提供免费的NBA,CBA,英超,西甲,德甲,意甲,法甲,中超,欧冠,世界杯等各大体育赛事直播，无插件，高清，直播线路多球迷可以在线低调看直播', 'Jrs直播吧,低调看,英超直播吧,NBA直播吧,NBA录像吧', 'Jrs直播吧-低调在线免费看直播');
INSERT INTO `app_brocademodel` VALUES (82, '6月16日 土伦杯 墨西哥vs爱尔兰 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.263887', 'jrs直播吧是一个专业为球迷提供免费的NBA,CBA,英超,西甲,德甲,意甲,法甲,中超,欧冠,世界杯等各大体育赛事直播，无插件，高清，直播线路多球迷可以在线低调看直播', 'Jrs直播吧,低调看,英超直播吧,NBA直播吧,NBA录像吧', 'Jrs直播吧-低调在线免费看直播');
INSERT INTO `app_brocademodel` VALUES (83, '6月16日 世青赛 乌克兰U20vs韩国U20 全场录像', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.704822', 'jrs直播吧是一个专业为球迷提供免费的NBA,CBA,英超,西甲,德甲,意甲,法甲,中超,欧冠,世界杯等各大体育赛事直播，无插件，高清，直播线路多球迷可以在线低调看直播', 'Jrs直播吧,低调看,英超直播吧,NBA直播吧,NBA录像吧', 'Jrs直播吧-低调在线免费看直播');
INSERT INTO `app_brocademodel` VALUES (84, '美洲杯 阿根廷vs哥伦比亚高清全场录像', '球迷', 'jrs直播吧', '2019-06-17 11:25:24.711027', 'jrs直播吧是一个专业为球迷提供免费的NBA,CBA,英超,西甲,德甲,意甲,法甲,中超,欧冠,世界杯等各大体育赛事直播，无插件，高清，直播线路多球迷可以在线低调看直播', 'Jrs直播吧,低调看,英超直播吧,NBA直播吧,NBA录像吧', 'Jrs直播吧-低调在线免费看直播');
INSERT INTO `app_brocademodel` VALUES (85, '看球网', '球迷', 'zrs直播吧', '2019-07-10 03:45:48.571588', 'jrs直播吧是一个专业为球迷提供免费的NBA,CBA,英超,西甲,德甲,意甲,法甲,中超,欧冠,世界杯等各大体育赛事直播，无插件，高清，直播线路多球迷可以在线低调看直播', 'Jrs直播吧,低调看,英超直播吧,NBA直播吧,NBA录像吧', 'Jrs直播吧-低调在线免费看直播');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

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
INSERT INTO `app_brocademodel_videos` VALUES (18, 85, 379);
INSERT INTO `app_brocademodel_videos` VALUES (19, 85, 380);
COMMIT;

-- ----------------------------
-- Table structure for app_competitionsinfomodel
-- ----------------------------
DROP TABLE IF EXISTS `app_competitionsinfomodel`;
CREATE TABLE `app_competitionsinfomodel` (
  `create_time` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` datetime(6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `tag_info_id` int(11) DEFAULT NULL,
  `status` varchar(2),
  `parm_id` varchar(255),
  PRIMARY KEY (`id`),
  KEY `app_competitionsinfo_tag_info_id_414750fb_fk_app_compe` (`tag_info_id`),
  CONSTRAINT `app_competitionsinfo_tag_info_id_414750fb_fk_app_compe` FOREIGN KEY (`tag_info_id`) REFERENCES `app_competitionstagmodel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3047 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_competitionsinfomodel
-- ----------------------------
BEGIN;
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.183465', 1522, '2019-06-06 21:00:00.000000', 'https://www.ballbar.cc/live/14980', '立陶宛 U19 VS 拉脱维亚 U19', NULL, NULL, 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.195933', 1523, '2019-06-06 23:00:00.000000', 'https://www.ballbar.cc/live/9080', '中国 U23 VS 巴林 U23', NULL, NULL, 298, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.205610', 1524, '2019-06-06 23:50:00.000000', 'https://www.ballbar.cc/live/22410', '萨拉基利斯 VS 瑞塔斯', NULL, NULL, 303, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.207893', 1525, '2019-06-07 00:00:00.000000', 'https://www.ballbar.cc/live/18170', '爱沙尼亚 U19 VS 芬兰 U19', NULL, NULL, 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.212629', 1526, '2019-06-07 00:00:00.000000', 'https://www.ballbar.cc/live/10530', '费内巴切 VS 托法斯', NULL, NULL, 308, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.222276', 1527, '2019-06-07 00:00:00.000000', 'https://www.ballbar.cc/live/14590', '斯洛伐克 U21 VS 亚美尼亚 U21', NULL, NULL, 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.228608', 1528, '2019-06-07 00:30:00.000000', 'https://www.ballbar.cc/live/17300', '都灵U19 VS 佛罗伦萨U19', NULL, NULL, 290, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.239896', 1529, '2019-06-07 01:00:00.000000', 'https://www.ballbar.cc/live/15250', '列支敦士登 U21 VS 阿塞拜疆 U21 ', NULL, NULL, 350, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.240719', 1530, '2019-06-07 01:30:00.000000', 'https://www.ballbar.cc/live/17880', '爱尔兰 U21 VS 墨西哥 U21', NULL, NULL, 298, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.242878', 1531, '2019-06-07 02:15:00.000000', 'https://www.ballbar.cc/live/10100', '比利时 女队 VS 波兰 女队', NULL, NULL, 305, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.245465', 1532, '2019-06-07 02:45:00.000000', 'https://www.ballbar.cc/live/9640', '荷兰 VS 英格兰', NULL, NULL, 296, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.252526', 1533, '2019-06-07 07:00:00.000000', 'https://www.ballbar.cc/live/10960', '亚特兰大梦想 VS 拉斯维加斯王牌', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.256011', 1534, '2019-06-07 07:00:00.000000', 'https://www.ballbar.cc/live/11140', '康涅狄格太阳 VS 洛杉矶火花', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.260451', 1535, '2019-06-07 07:00:00.000000', 'https://www.ballbar.cc/live/8680', '智利 VS 海地', NULL, NULL, 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.265617', 1536, '2019-06-07 07:00:00.000000', 'https://www.ballbar.cc/live/22140', '纽约城 VS 辛辛那提', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.266879', 1537, '2019-06-07 08:00:00.000000', 'https://www.ballbar.cc/live/18210', '明尼苏达山猫 VS 菲尼克斯水星', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.269213', 1538, '2019-06-07 10:10:00.000000', 'https://www.ballbar.cc/live/8760', '国民 VS 教士', NULL, NULL, 338, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.272943', 1539, '2019-06-07 19:00:00.000000', 'https://www.ballbar.cc/live/10470', '韩国 VS 澳大利亚', NULL, NULL, 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.280764', 1540, '2019-06-07 19:35:00.000000', 'https://www.ballbar.cc/live/6870', '中国 VS 菲律宾', NULL, NULL, 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.285056', 1541, '2019-06-07 20:00:00.000000', 'https://www.ballbar.cc/live/15520', '克罗地亚波尔公开赛 - 1号场地', NULL, NULL, 347, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.288960', 1542, '2019-06-07 20:00:00.000000', 'https://www.ballbar.cc/live/13230', '克罗地亚波尔公开赛 - 中央场地', NULL, NULL, 347, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.289893', 1543, '2019-06-07 21:40:00.000000', 'https://www.ballbar.cc/live/12400', '芬兰 U19 VS 拉脱维亚 U19', NULL, NULL, 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.297915', 1544, '2019-06-07 23:00:00.000000', 'https://www.ballbar.cc/live/10980', '亚美尼亚 U21 VS 摩尔多瓦 U21', NULL, NULL, 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.304645', 1545, '2019-06-08 00:00:00.000000', 'https://www.ballbar.cc/live/22230', '丹麦 U21 VS 爱尔兰 U21', NULL, NULL, 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.308407', 1546, '2019-06-08 00:30:00.000000', 'https://www.ballbar.cc/live/22300', '罗马U19 VS 切沃维罗纳U19', NULL, NULL, 290, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.316884', 1547, '2019-06-08 02:30:00.000000', 'https://www.ballbar.cc/live/7870', '斯洛伐克 VS 约旦', NULL, NULL, 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.321133', 1548, '2019-06-08 02:45:00.000000', 'https://www.ballbar.cc/live/10450', '乌克兰 VS 塞尔维亚', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.324256', 1549, '2019-06-08 02:45:00.000000', 'https://www.ballbar.cc/live/10570', '捷克 VS 保加利亚', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.326546', 1550, '2019-06-08 02:45:00.000000', 'https://www.ballbar.cc/live/10640', '黑山 VS 科索沃', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.329704', 1551, '2019-06-08 02:45:00.000000', 'https://www.ballbar.cc/live/10770', '丹麦 VS 爱尔兰', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.334565', 1552, '2019-06-08 02:45:00.000000', 'https://www.ballbar.cc/live/9240', '拉脱维亚 VS 以色列', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.335006', 1553, '2019-06-08 02:45:00.000000', 'https://www.ballbar.cc/live/11060', '挪威 VS 罗马尼亚', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.340815', 1554, '2019-06-08 02:45:00.000000', 'https://www.ballbar.cc/live/7090', '奥地利 VS 斯洛文尼亚', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.345645', 1555, '2019-06-08 02:45:00.000000', 'https://www.ballbar.cc/live/9710', '瑞典 VS 马耳他', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.345970', 1556, '2019-06-08 02:45:00.000000', 'https://www.ballbar.cc/live/7500', '北马其顿 VS 波兰', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.350071', 1557, '2019-06-08 02:45:00.000000', 'https://www.ballbar.cc/live/10140', '法罗群岛 VS 西班牙', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.352880', 1558, '2019-06-08 02:45:00.000000', 'https://www.ballbar.cc/live/10200', '立陶宛 VS 卢森堡', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.357264', 1559, '2019-06-08 04:30:00.000000', 'https://www.ballbar.cc/live/17810', '皇家加西拉索 VS 秘鲁体育大学', NULL, NULL, 357, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.360998', 1560, '2019-06-08 07:00:00.000000', 'https://www.ballbar.cc/live/18300', '印第安纳狂热 VS 达拉斯飞翼', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.363791', 1561, '2019-06-08 07:00:00.000000', 'https://www.ballbar.cc/live/8940', '乌拉圭 VS 巴拿马', NULL, NULL, 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.368542', 1562, '2019-06-08 07:30:00.000000', 'https://www.ballbar.cc/live/18730', '纽约自由 VS 华盛顿神秘人', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.370979', 1563, '2019-06-08 07:30:00.000000', 'https://www.ballbar.cc/live/8920', '亚特兰大联B队 VS 纽约红牛后备队', NULL, NULL, 333, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.373900', 1564, '2019-06-08 08:00:00.000000', 'https://www.ballbar.cc/live/22150', '多伦多FC VS 体育堪萨斯城', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.375805', 1565, '2019-06-08 08:10:00.000000', 'https://www.ballbar.cc/live/9210', '阿根廷 VS 尼加拉瓜', NULL, NULL, 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-04 07:09:23.116864', 1566, '2019-06-08 09:00:00.000000', 'https://www.ballbar.cc/live/21550', '勇士 VS 猛龙', NULL, '', 335, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.383580', 1567, '2019-06-08 09:00:00.000000', 'https://www.ballbar.cc/live/19640', '卡萨大学队 VS 阿连扎大学', NULL, NULL, 357, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.387831', 1568, '2019-06-08 10:15:00.000000', 'https://www.ballbar.cc/live/8030', '道奇 VS 巨人', NULL, NULL, 338, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.392240', 1569, '2019-06-08 10:30:00.000000', 'https://www.ballbar.cc/live/10110', '凤凰重生 VS 塔尔萨竞技队', NULL, NULL, 333, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.402584', 1570, '2019-06-08 13:00:00.000000', 'https://www.ballbar.cc/live/5950', '长崎成功丸 VS 冈山绿雉', NULL, NULL, 359, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.404502', 1571, '2019-06-08 14:00:00.000000', 'https://www.ballbar.cc/live/8620', 'FC岐埠 VS 新泻天鹅', NULL, NULL, 359, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.412214', 1572, '2019-06-08 15:30:00.000000', 'https://www.ballbar.cc/live/11070', '吉林百嘉 VS 盐城大丰', NULL, NULL, 354, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.412853', 1573, '2019-06-08 15:30:00.000000', 'https://www.ballbar.cc/live/11320', '青岛中能 VS 河北精英', NULL, NULL, 354, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.417060', 1574, '2019-06-08 15:30:00.000000', 'https://www.ballbar.cc/live/14170', '山西信都 VS 西安大兴崇德', NULL, NULL, 354, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.421362', 1575, '2019-06-08 15:30:00.000000', 'https://www.ballbar.cc/live/12140', '宁夏火凤凰 VS 沈阳城市建设', NULL, NULL, 354, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.422565', 1576, '2019-06-08 16:00:00.000000', 'https://www.ballbar.cc/live/18710', '北京理工 VS 淄博蹴鞠', NULL, NULL, 354, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.427575', 1577, '2019-06-08 16:00:00.000000', 'https://www.ballbar.cc/live/19080', '内蒙古草上飞 VS 延边北国', NULL, NULL, 354, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.431142', 1578, '2019-06-08 16:00:00.000000', 'https://www.ballbar.cc/live/16990', '云南昆陆 VS 南京沙叶河海', NULL, NULL, 354, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.435339', 1579, '2019-06-08 16:00:00.000000', 'https://www.ballbar.cc/live/17050', '四川优必选 VS 昆山FC', NULL, NULL, 354, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.437835', 1580, '2019-06-08 16:00:00.000000', 'https://www.ballbar.cc/live/14870', '深圳鹏城 VS 拉萨城投', NULL, NULL, 354, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.440366', 1581, '2019-06-08 16:00:00.000000', 'https://www.ballbar.cc/live/17580', '保定容大 VS 青岛红狮', NULL, NULL, 354, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.443211', 1582, '2019-06-08 16:00:00.000000', 'https://www.ballbar.cc/live/15110', '湖南湘涛 VS 广西宝韵', NULL, NULL, 354, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.444583', 1583, '2019-06-08 16:30:00.000000', 'https://www.ballbar.cc/live/20130', '湖北楚风合力 VS 浙江义乌商城', NULL, NULL, 354, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.448154', 1584, '2019-06-08 17:00:00.000000', 'https://www.ballbar.cc/live/9090', '大宫松鼠 VS 京都不死鸟', NULL, NULL, 359, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.454466', 1585, '2019-06-08 17:00:00.000000', 'https://www.ballbar.cc/live/9580', '德岛漩涡 VS 町田泽维亚', NULL, NULL, 359, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.456914', 1586, '2019-06-08 18:00:00.000000', 'https://www.ballbar.cc/live/9320', '雷法山口 VS FC横滨', NULL, NULL, 359, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.458114', 1587, '2019-06-08 18:30:00.000000', 'https://www.ballbar.cc/live/10180', '琉球 VS 金泽塞维根', NULL, NULL, 359, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.461515', 1588, '2019-06-08 19:00:00.000000', 'https://www.ballbar.cc/live/20480', '浙江毅腾 VS 福建天信', NULL, NULL, 354, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.462604', 1589, '2019-06-08 19:00:00.000000', 'https://www.ballbar.cc/live/20450', '江西联盛国贸 VS 武汉三镇', NULL, NULL, 354, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.466365', 1590, '2019-06-08 19:30:00.000000', 'https://www.ballbar.cc/live/20500', '泰州远大 VS 大连千兆', NULL, NULL, 354, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.474873', 1591, '2019-06-08 21:00:00.000000', 'https://www.ballbar.cc/live/6040', '德国 VS 中国', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.477126', 1592, '2019-06-08 21:00:00.000000', 'https://www.ballbar.cc/live/11610', '克罗地亚 VS 威尔士', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.481728', 1593, '2019-06-08 21:00:00.000000', 'https://www.ballbar.cc/live/12120', '冰岛 VS 阿尔巴尼亚', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.485828', 1594, '2019-06-08 21:00:00.000000', 'https://www.ballbar.cc/live/20010', '老吕德斯多夫 VS 托尔格洛狮鹫', NULL, NULL, 362, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.488017', 1595, '2019-06-08 21:00:00.000000', 'https://www.ballbar.cc/live/20020', '勃兰登堡南部05 VS 汉莎罗斯托克后备队', NULL, NULL, 362, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.500794', 1596, '2019-06-08 22:00:00.000000', 'https://www.ballbar.cc/live/9790', '特利堡足球会 VS 戴戈福斯', NULL, NULL, 363, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.503784', 1597, '2019-06-08 22:00:00.000000', 'https://www.ballbar.cc/live/10190', '韦斯特罗斯 VS 弗雷吉', NULL, NULL, 363, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.506044', 1598, '2019-06-08 23:00:00.000000', 'https://www.ballbar.cc/live/22580', 'F1大奖赛', NULL, NULL, 356, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.509149', 1599, '2019-06-09 00:00:00.000000', 'https://www.ballbar.cc/live/12850', '阿塞拜疆 VS 匈牙利', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.510548', 1600, '2019-06-09 00:00:00.000000', 'https://www.ballbar.cc/live/12870', '亚美尼亚 VS 列支敦士登', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.513802', 1601, '2019-06-09 00:00:00.000000', 'https://www.ballbar.cc/live/13040', '俄罗斯 VS 圣马力诺', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.517115', 1602, '2019-06-09 00:00:00.000000', 'https://www.ballbar.cc/live/13840', '爱沙尼亚 VS 北爱尔兰', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.521240', 1603, '2019-06-09 00:00:00.000000', 'https://www.ballbar.cc/live/6380', '西班牙 VS 南非', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.523308', 1604, '2019-06-09 00:00:00.000000', 'https://www.ballbar.cc/live/11700', '西里安斯卡 VS 奥斯达', NULL, NULL, 363, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.526735', 1605, '2019-06-09 00:00:00.000000', 'https://www.ballbar.cc/live/14610', '摩尔多瓦 VS 安道尔', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.528598', 1606, '2019-06-09 00:00:00.000000', 'https://www.ballbar.cc/live/12460', '芬兰 VS 波斯尼亚和黑塞哥维那', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.531858', 1607, '2019-06-09 02:15:00.000000', 'https://www.ballbar.cc/live/20900', '慕尼斯帕尔体育 VS 卡洛斯曼努西', NULL, NULL, 357, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.536084', 1608, '2019-06-09 02:30:00.000000', 'https://www.ballbar.cc/live/22530', '拜仁慕尼黑 VS 维尔茨堡', NULL, NULL, 319, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.537792', 1609, '2019-06-09 02:45:00.000000', 'https://www.ballbar.cc/live/15430', '白俄罗斯 VS 德国', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.542658', 1610, '2019-06-09 02:45:00.000000', 'https://www.ballbar.cc/live/15530', '希腊 VS 意大利', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.546413', 1611, '2019-06-09 02:45:00.000000', 'https://www.ballbar.cc/live/15790', '土耳其 VS 法国', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.548891', 1612, '2019-06-09 02:45:00.000000', 'https://www.ballbar.cc/live/16120', '比利时 VS 哈萨克斯坦', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.551800', 1613, '2019-06-09 02:45:00.000000', 'https://www.ballbar.cc/live/14650', '苏格兰 VS 塞浦路斯', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.554210', 1614, '2019-06-09 03:00:00.000000', 'https://www.ballbar.cc/live/6790', '挪威 VS 尼日利亚', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.556855', 1615, '2019-06-09 03:30:00.000000', 'https://www.ballbar.cc/live/20530', '明尼苏达山猫 VS 洛杉矶火花', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.568634', 1616, '2019-06-09 03:45:00.000000', 'https://www.ballbar.cc/live/11510', '斯利格流浪 VS 圣帕特里克', NULL, NULL, 365, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.572996', 1617, '2019-06-09 03:45:00.000000', 'https://www.ballbar.cc/live/9260', '沙姆洛克 VS 德利城', NULL, NULL, 365, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.575670', 1618, '2019-06-09 04:30:00.000000', 'https://www.ballbar.cc/live/15710', '圣何塞地震 VS FC达拉斯', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.578093', 1619, '2019-06-09 04:30:00.000000', 'https://www.ballbar.cc/live/21760', '水晶竞技队 VS 比尼斯纳勒', NULL, NULL, 357, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.581517', 1620, '2019-06-09 05:00:00.000000', 'https://www.ballbar.cc/live/16240', '斯沃普柏流浪 VS 夏洛特独立', NULL, NULL, 333, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.587850', 1621, '2019-06-09 06:45:00.000000', 'https://www.ballbar.cc/live/21770', '体育生队 VS 万卡约', NULL, NULL, 357, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.589786', 1622, '2019-06-09 07:00:00.000000', 'https://www.ballbar.cc/live/16820', '圣路易斯狮子 VS 劳顿联', NULL, NULL, 333, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.594708', 1623, '2019-06-09 07:00:00.000000', 'https://www.ballbar.cc/live/16890', '哈特福德竞技 VS 密苏里圣路易斯', NULL, NULL, 333, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.599468', 1624, '2019-06-09 07:00:00.000000', 'https://www.ballbar.cc/live/17270', '匹兹堡猎犬河队 SC VS 渥太华复仇者', NULL, NULL, 333, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.599806', 1625, '2019-06-09 07:30:00.000000', 'https://www.ballbar.cc/live/18110', '查尔斯顿电池 VS 伯明翰军团', NULL, NULL, 333, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.605423', 1626, '2019-06-09 07:30:00.000000', 'https://www.ballbar.cc/live/18150', '坦帕湾 VS 北卡罗莱纳', NULL, NULL, 333, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.605867', 1627, '2019-06-09 07:30:00.000000', 'https://www.ballbar.cc/live/17010', '费城联盟 VS 纽约红牛', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.613626', 1628, '2019-06-09 08:00:00.000000', 'https://www.ballbar.cc/live/18230', '科罗拉多跃泉 VS 塔科马反抗军', NULL, NULL, 333, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.613802', 1629, '2019-06-09 08:30:00.000000', 'https://www.ballbar.cc/live/18330', '奥斯丁伯尔德 VS 波特兰木材预备队', NULL, NULL, 333, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.617778', 1630, '2019-06-09 09:00:00.000000', 'https://www.ballbar.cc/live/21790', '学术界体育 VS 梅格', NULL, NULL, 357, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.619901', 1631, '2019-06-09 09:00:00.000000', 'https://www.ballbar.cc/live/17350', '科罗拉多急流 VS 明尼苏达联', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.623261', 1632, '2019-06-09 12:00:00.000000', 'https://www.ballbar.cc/live/11190', '鹿儿岛联 VS 东京绿茵', NULL, NULL, 359, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.624547', 1633, '2019-06-09 12:00:00.000000', 'https://www.ballbar.cc/live/13750', '八户云罗里 VS 藤枝MYFC', NULL, NULL, 360, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.629432', 1634, '2019-06-09 12:00:00.000000', 'https://www.ballbar.cc/live/14440', '盛冈仙鹤 VS 沼津青蓝', NULL, NULL, 360, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.632870', 1635, '2019-06-09 12:00:00.000000', 'https://www.ballbar.cc/live/14940', '福岛联队 VS 相模原', NULL, NULL, 360, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.639322', 1636, '2019-06-09 13:00:00.000000', 'https://www.ballbar.cc/live/15990', '富山胜利 VS 秋田蓝闪电', NULL, NULL, 360, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.636896', 1637, '2019-06-09 12:00:00.000000', 'https://www.ballbar.cc/live/15040', '横滨体育 VS 北九州向日葵', NULL, NULL, 360, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.642752', 1638, '2019-06-09 13:00:00.000000', 'https://www.ballbar.cc/live/16170', '大阪钢巴U23 VS 赞岐乌冬', NULL, NULL, 360, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.647369', 1639, '2019-06-09 13:00:00.000000', 'https://www.ballbar.cc/live/11300', '水户蜀葵 VS 福冈黄蜂', NULL, NULL, 359, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.651552', 1640, '2019-06-09 13:00:00.000000', 'https://www.ballbar.cc/live/11350', '枥木SC VS 千叶市原', NULL, NULL, 359, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.653731', 1641, '2019-06-09 14:00:00.000000', 'https://www.ballbar.cc/live/16510', '群马草津温泉 VS 鸟取飞翔', NULL, NULL, 360, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.659638', 1642, '2019-06-09 16:00:00.000000', 'https://www.ballbar.cc/live/11490', 'FC爱媛 VS 柏雷素尔', NULL, NULL, 359, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.660428', 1643, '2019-06-09 18:00:00.000000', 'https://www.ballbar.cc/live/16780', '熊本深红 VS 大阪樱花U23', NULL, NULL, 360, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.665085', 1644, '2019-06-09 18:00:00.000000', 'https://www.ballbar.cc/live/12500', '日本 VS 萨尔瓦多', NULL, NULL, 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.667226', 1645, '2019-06-09 19:00:00.000000', 'https://www.ballbar.cc/live/7440', '澳大利亚 VS 意大利', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.689370', 1646, '2019-06-09 20:00:00.000000', 'https://www.ballbar.cc/live/10160', '贝吉舍尔HC VS 弗伦斯堡汉德威特', NULL, NULL, 367, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.691842', 1647, '2019-06-09 20:00:00.000000', 'https://www.ballbar.cc/live/7610', 'THW基尔 VS TSV汉诺威布格多夫', NULL, NULL, 367, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.691986', 1648, '2019-06-09 21:00:00.000000', 'https://www.ballbar.cc/live/11500', '柏林狐狸 VS 韦斯特拉', NULL, NULL, 367, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.696707', 1649, '2019-06-09 21:00:00.000000', 'https://www.ballbar.cc/live/14150', '盖斯 VS 诺尔比', NULL, NULL, 363, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.700392', 1650, '2019-06-09 21:00:00.000000', 'https://www.ballbar.cc/live/22210', 'TVB斯图加特1898 VS 埃朗根', NULL, NULL, 367, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.705083', 1651, '2019-06-09 21:00:00.000000', 'https://www.ballbar.cc/live/22280', '艾伦堡 VS 桑德尔斯多夫联队', NULL, NULL, 362, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.706375', 1652, '2019-06-09 21:00:00.000000', 'https://www.ballbar.cc/live/20030', '卢肯瓦尔德63 VS 霍亨斯泰因', NULL, NULL, 362, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.708500', 1653, '2019-06-09 21:00:00.000000', 'https://www.ballbar.cc/live/20240', 'EWE奥尔登堡 VS ALBA柏林', NULL, NULL, 319, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.711424', 1654, '2019-06-09 21:00:00.000000', 'https://www.ballbar.cc/live/15330', '路德维希 VS 明登GWD', NULL, NULL, 367, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.712997', 1655, '2019-06-09 21:30:00.000000', 'https://www.ballbar.cc/live/7450', '巴西 VS 牙买加', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.725871', 1656, '2019-06-09 22:00:00.000000', 'https://www.ballbar.cc/live/18650', '阿尔梅里亚 VS 阿尔巴塞特', NULL, NULL, 369, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.728891', 1657, '2019-06-09 22:00:00.000000', 'https://www.ballbar.cc/live/8730', '马拉加 VS 艾尔切', NULL, NULL, 369, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.731212', 1658, '2019-06-09 22:00:00.000000', 'https://www.ballbar.cc/live/16570', '拉科鲁尼亚 VS 科尔多瓦', NULL, NULL, 369, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.734966', 1659, '2019-06-09 22:00:00.000000', 'https://www.ballbar.cc/live/6710', '塔拉格纳 VS 卢高', NULL, NULL, 369, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.738584', 1660, '2019-06-09 22:00:00.000000', 'https://www.ballbar.cc/live/22170', '拉约马哈达翁达 VS 雷乌斯', NULL, NULL, 369, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.741825', 1661, '2019-06-09 22:00:00.000000', 'https://www.ballbar.cc/live/22180', '埃斯特雷马杜拉 VS 皇家马略卡', NULL, NULL, 369, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.747828', 1662, '2019-06-09 22:00:00.000000', 'https://www.ballbar.cc/live/19760', '特内里费 VS 萨拉戈萨', NULL, NULL, 369, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.750520', 1663, '2019-06-09 22:00:00.000000', 'https://www.ballbar.cc/live/19920', '奥萨苏纳 VS 奥维多', NULL, NULL, 369, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.755421', 1664, '2019-06-09 22:00:00.000000', 'https://www.ballbar.cc/live/17520', '希洪竞技 VS 卡迪斯', NULL, NULL, 369, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.757171', 1665, '2019-06-09 23:30:00.000000', 'https://www.ballbar.cc/live/17570', '达尔库德 VS 哈尔姆斯达斯', NULL, NULL, 363, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.762486', 1666, '2019-06-10 00:00:00.000000', 'https://www.ballbar.cc/live/7750', '英格兰 VS 苏格兰', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.765679', 1667, '2019-06-10 02:00:00.000000', 'https://www.ballbar.cc/live/11760', '科克城 VS Waterford FC', NULL, NULL, 365, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.767851', 1668, '2019-06-10 02:00:00.000000', 'https://www.ballbar.cc/live/14500', '美国 VS 委内瑞拉', NULL, NULL, 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.771094', 1669, '2019-06-10 03:00:00.000000', 'https://www.ballbar.cc/live/8700', '巴西 VS 洪都拉斯', NULL, NULL, 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.773455', 1670, '2019-06-10 03:00:00.000000', 'https://www.ballbar.cc/live/22490', '亚特兰大梦想 VS 康涅狄格太阳', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.777322', 1671, '2019-06-10 03:00:00.000000', 'https://www.ballbar.cc/live/7380', '纽约自由 VS 拉斯维加斯王牌', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.778275', 1672, '2019-06-10 03:00:00.000000', 'https://www.ballbar.cc/live/7390', '华盛顿神秘人 VS 达拉斯飞翼', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.781911', 1673, '2019-06-10 04:00:00.000000', 'https://www.ballbar.cc/live/8240', '印第安纳狂热 VS 菲尼克斯水星', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.785168', 1674, '2019-06-10 05:00:00.000000', 'https://www.ballbar.cc/live/8830', '巴拉圭 VS 危地马拉', NULL, NULL, 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.788864', 1675, '2019-06-10 05:00:00.000000', 'https://www.ballbar.cc/live/12620', '秘鲁 VS 哥伦比亚', NULL, NULL, 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.793568', 1676, '2019-06-10 06:00:00.000000', 'https://www.ballbar.cc/live/8480', '芝加哥天空 VS 西雅图风暴', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.796883', 1677, '2019-06-10 07:00:00.000000', 'https://www.ballbar.cc/live/14800', '墨西哥 VS 厄瓜多尔', NULL, NULL, 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.799313', 1678, '2019-06-11 00:00:00.000000', 'https://www.ballbar.cc/live/8190', '阿根廷 VS 日本', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.802218', 1679, '2019-06-11 02:45:00.000000', 'https://www.ballbar.cc/live/17950', '乌克兰 VS 卢森堡', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.805022', 1680, '2019-06-11 02:45:00.000000', 'https://www.ballbar.cc/live/18500', '捷克 VS 黑山', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.808028', 1681, '2019-06-11 02:45:00.000000', 'https://www.ballbar.cc/live/18670', '丹麦 VS 格鲁吉亚', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.810915', 1682, '2019-06-11 02:45:00.000000', 'https://www.ballbar.cc/live/16360', '北马其顿 VS 奥地利', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.817733', 1683, '2019-06-11 02:45:00.000000', 'https://www.ballbar.cc/live/16620', '拉脱维亚 VS 斯洛文尼亚', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.820487', 1684, '2019-06-11 02:45:00.000000', 'https://www.ballbar.cc/live/16700', '波兰 VS 以色列', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.824644', 1685, '2019-06-11 02:45:00.000000', 'https://www.ballbar.cc/live/16740', '法罗群岛 VS 挪威', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.827923', 1686, '2019-06-11 02:45:00.000000', 'https://www.ballbar.cc/live/17410', '马耳他 VS 罗马尼亚', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.832156', 1687, '2019-06-11 02:45:00.000000', 'https://www.ballbar.cc/live/20140', '保加利亚 VS 科索沃', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.837600', 1688, '2019-06-11 02:45:00.000000', 'https://www.ballbar.cc/live/17780', '西班牙 VS 瑞典', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.840422', 1689, '2019-06-11 02:45:00.000000', 'https://www.ballbar.cc/live/17890', '爱尔兰 VS 直布罗陀', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.842654', 1690, '2019-06-11 02:45:00.000000', 'https://www.ballbar.cc/live/17910', '塞尔维亚 VS 立陶宛', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.844806', 1691, '2019-06-11 03:00:00.000000', 'https://www.ballbar.cc/live/8670', '加拿大 VS 喀麦隆', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.851102', 1692, '2019-06-11 19:00:00.000000', 'https://www.ballbar.cc/live/15920', '韩国 VS 伊朗', NULL, NULL, 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.851241', 1693, '2019-06-11 04:30:00.000000', 'https://www.ballbar.cc/live/21800', '英提加斯 VS 圣马丁大学', NULL, NULL, 357, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.857462', 1694, '2019-06-11 21:00:00.000000', 'https://www.ballbar.cc/live/16330', '克罗地亚 VS 突尼斯', NULL, NULL, 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.859221', 1695, '2019-06-11 21:00:00.000000', 'https://www.ballbar.cc/live/8850', '新西兰 VS 荷兰', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.863622', 1696, '2019-06-11 22:00:00.000000', 'https://www.ballbar.cc/live/20150', '哈萨克斯坦 VS 圣马力诺', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.867897', 1697, '2019-06-12 00:00:00.000000', 'https://www.ballbar.cc/live/8870', '智利 VS 瑞典', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.869020', 1698, '2019-06-12 00:00:00.000000', 'https://www.ballbar.cc/live/20180', '阿塞拜疆 VS 斯洛伐克', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.872440', 1699, '2019-06-12 00:30:00.000000', 'https://www.ballbar.cc/live/19030', 'IK布拉格 VS 奥尔格里特', NULL, NULL, 363, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.874480', 1700, '2019-06-12 02:45:00.000000', 'https://www.ballbar.cc/live/20490', '阿尔巴尼亚 VS 摩尔多瓦', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.877846', 1701, '2019-06-12 02:45:00.000000', 'https://www.ballbar.cc/live/20510', '意大利 VS 波斯尼亚和黑塞哥维那', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.880838', 1702, '2019-06-12 02:45:00.000000', 'https://www.ballbar.cc/live/20520', '希腊 VS 亚美尼亚', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.885539', 1703, '2019-06-12 02:45:00.000000', 'https://www.ballbar.cc/live/22160', '列支敦士登 VS 芬兰', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.888858', 1704, '2019-06-12 02:45:00.000000', 'https://www.ballbar.cc/live/22330', '比利时 VS 苏格兰', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.890826', 1705, '2019-06-12 02:45:00.000000', 'https://www.ballbar.cc/live/22540', '俄罗斯 VS 塞浦路斯', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.892401', 1706, '2019-06-12 02:45:00.000000', 'https://www.ballbar.cc/live/20210', '安道尔 VS 法国', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.895428', 1707, '2019-06-12 02:45:00.000000', 'https://www.ballbar.cc/live/20360', '冰岛 VS 土耳其', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.898075', 1708, '2019-06-12 02:45:00.000000', 'https://www.ballbar.cc/live/20420', '白俄罗斯 VS 北爱尔兰', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.903550', 1709, '2019-06-12 02:45:00.000000', 'https://www.ballbar.cc/live/20460', '德国 VS 爱沙尼亚', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.907457', 1710, '2019-06-12 02:45:00.000000', 'https://www.ballbar.cc/live/20470', '匈牙利 VS 威尔士', NULL, NULL, 355, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.910733', 1711, '2019-06-12 03:00:00.000000', 'https://www.ballbar.cc/live/9330', '美国 VS 泰国', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.911518', 1712, '2019-06-12 03:35:00.000000', 'https://www.ballbar.cc/live/19070', '中国 VS 塔吉克斯坦', NULL, NULL, 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.916725', 1713, '2019-06-12 04:30:00.000000', 'https://www.ballbar.cc/live/21830', '卡哈马卡 VS 莫利诺斯', NULL, NULL, 357, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.919666', 1714, '2019-06-12 07:00:00.000000', 'https://www.ballbar.cc/live/10750', '康涅狄格太阳 VS 华盛顿神秘人', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.922258', 1715, '2019-06-12 07:00:00.000000', 'https://www.ballbar.cc/live/11720', '印第安纳狂热 VS 西雅图风暴', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.925781', 1716, '2019-06-12 08:00:00.000000', 'https://www.ballbar.cc/live/11110', '芝加哥天空 VS 菲尼克斯水星', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.934565', 1717, '2019-06-12 21:00:00.000000', 'https://www.ballbar.cc/live/9540', '尼日利亚 VS 韩国', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.937456', 1718, '2019-06-13 00:00:00.000000', 'https://www.ballbar.cc/live/9850', '德国 VS 西班牙', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.939539', 1719, '2019-06-13 03:00:00.000000', 'https://www.ballbar.cc/live/10090', '法国 VS 挪威', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.942427', 1720, '2019-06-13 07:00:00.000000', 'https://www.ballbar.cc/live/13830', '纽约自由 VS 明尼苏达山猫', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.946315', 1721, '2019-06-14 00:00:00.000000', 'https://www.ballbar.cc/live/10290', '澳大利亚 VS 巴西', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.948240', 1722, '2019-06-14 03:00:00.000000', 'https://www.ballbar.cc/live/10380', '南非 VS 中国', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.952619', 1723, '2019-06-14 08:00:00.000000', 'https://www.ballbar.cc/live/16630', '达拉斯飞翼 VS 印第安纳狂热', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.958049', 1724, '2019-06-14 16:30:00.000000', 'https://www.ballbar.cc/live/6740', '马都拉联 VS PSS斯莱曼', NULL, NULL, 372, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.969474', 1725, '2019-06-14 18:00:00.000000', 'https://www.ballbar.cc/live/22110', '广岛三箭 VS 湘南比马', NULL, NULL, 373, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.971515', 1726, '2019-06-14 18:00:00.000000', 'https://www.ballbar.cc/live/6900', '川崎前锋 VS 北海道札幌冈萨多', NULL, NULL, 373, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.975539', 1727, '2019-06-14 18:00:00.000000', 'https://www.ballbar.cc/live/17760', '北京国安 VS 上海申花', NULL, NULL, 361, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.978072', 1728, '2019-06-14 19:30:00.000000', 'https://www.ballbar.cc/live/9560', '阿雷马 VS 万隆', NULL, NULL, 372, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.983341', 1729, '2019-06-14 19:35:00.000000', 'https://www.ballbar.cc/live/18220', '重庆斯威 VS 山东鲁能', NULL, NULL, 361, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.985399', 1730, '2019-06-14 20:00:00.000000', 'https://www.ballbar.cc/live/18380', '上海上港 VS 广州恒大', NULL, NULL, 361, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.988745', 1731, '2019-06-14 21:00:00.000000', 'https://www.ballbar.cc/live/10590', '日本 VS 苏格兰', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:45.996827', 1732, '2019-06-14 21:00:00.000000', 'https://www.ballbar.cc/live/16190', 'FK Dnyapro Mogilev VS 伊斯洛', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.000980', 1733, '2019-06-14 21:00:00.000000', 'https://www.ballbar.cc/live/14640', '布列斯特迪纳摩 VS 戈梅利', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.008422', 1734, '2019-06-14 23:45:00.000000', 'https://www.ballbar.cc/live/16440', 'FC明斯克 VS 格罗德诺 尼曼', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.011710', 1735, '2019-06-15 00:00:00.000000', 'https://www.ballbar.cc/live/11230', '牙买加 VS 意大利', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.015946', 1736, '2019-06-15 01:00:00.000000', 'https://www.ballbar.cc/live/12830', '萨布塔罗提比利锡 VS 施安尼', NULL, NULL, 376, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.017520', 1737, '2019-06-15 01:00:00.000000', 'https://www.ballbar.cc/live/21930', '考纳斯 斯帕尼斯 VS 扎尔吉里斯', NULL, NULL, 375, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.022929', 1738, '2019-06-15 01:00:00.000000', 'https://www.ballbar.cc/live/9590', '西里安斯卡 VS 乔科平所达', NULL, NULL, 363, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.024308', 1739, '2019-06-15 01:45:00.000000', 'https://www.ballbar.cc/live/16850', 'FC格罗德亚 VS 明斯克鱼雷', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.027333', 1740, '2019-06-15 03:00:00.000000', 'https://www.ballbar.cc/live/11480', '英格兰 VS 阿根廷', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.029707', 1741, '2019-06-15 03:45:00.000000', 'https://www.ballbar.cc/live/16220', '都柏林波希米亚人 VS 沙姆洛克', NULL, NULL, 365, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.035148', 1742, '2019-06-15 03:45:00.000000', 'https://www.ballbar.cc/live/12080', '登克尔克 VS 都柏林大学', NULL, NULL, 365, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.036454', 1743, '2019-06-15 03:45:00.000000', 'https://www.ballbar.cc/live/12180', '斯利格流浪 VS 科克城', NULL, NULL, 365, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.041001', 1744, '2019-06-15 03:45:00.000000', 'https://www.ballbar.cc/live/15090', '德利城 VS Waterford FC', NULL, NULL, 365, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.045428', 1745, '2019-06-15 03:45:00.000000', 'https://www.ballbar.cc/live/15210', '圣帕特里克 VS 费恩夏普', NULL, NULL, 365, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.047603', 1746, '2019-06-15 07:00:00.000000', 'https://www.ballbar.cc/live/17130', '华盛顿神秘人 VS 西雅图风暴', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.050892', 1747, '2019-06-15 08:00:00.000000', 'https://www.ballbar.cc/live/17590', '明尼苏达山猫 VS 康涅狄格太阳', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.055932', 1748, '2019-06-15 10:00:00.000000', 'https://www.ballbar.cc/live/17730', '菲尼克斯水星 VS 洛杉矶火花', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.059106', 1749, '2019-06-15 10:30:00.000000', 'https://www.ballbar.cc/live/19820', '拉斯维加斯王牌 VS 纽约自由', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.064612', 1750, '2019-06-15 16:30:00.000000', 'https://www.ballbar.cc/live/10690', '巴扬卡拉 VS 佩塞拉', NULL, NULL, 372, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.068299', 1751, '2019-06-15 16:30:00.000000', 'https://www.ballbar.cc/live/13570', '苏拉巴亚 VS PSM马卡萨', NULL, NULL, 372, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.073783', 1752, '2019-06-15 17:00:00.000000', 'https://www.ballbar.cc/live/15750', '大宫松鼠 VS FC岐埠', NULL, NULL, 359, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.074318', 1753, '2019-06-15 16:30:00.000000', 'https://www.ballbar.cc/live/11080', '佩西加雅加达 VS 婆罗洲', NULL, NULL, 372, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.075852', 1754, '2019-06-15 17:00:00.000000', 'https://www.ballbar.cc/live/13280', '甲府风林 VS 东京绿茵', NULL, NULL, 359, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.080113', 1755, '2019-06-15 17:00:00.000000', 'https://www.ballbar.cc/live/11690', '金泽塞维根 VS FC爱媛', NULL, NULL, 359, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.085397', 1756, '2019-06-15 17:00:00.000000', 'https://www.ballbar.cc/live/14540', 'FC横滨 VS 德岛漩涡', NULL, NULL, 359, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.087701', 1757, '2019-06-15 17:00:00.000000', 'https://www.ballbar.cc/live/9630', '清水心跳 VS 横滨水手', NULL, NULL, 373, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.091444', 1758, '2019-06-15 17:00:00.000000', 'https://www.ballbar.cc/live/15100', '千叶市原 VS 鹿儿岛联', NULL, NULL, 359, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.098816', 1759, '2019-06-15 18:00:00.000000', 'https://www.ballbar.cc/live/18290', '冈山绿雉 VS 雷法山口', NULL, NULL, 359, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.102638', 1760, '2019-06-15 18:00:00.000000', 'https://www.ballbar.cc/live/21350', '松本雅美加 VS 仙台维加泰', NULL, NULL, 373, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.109814', 1761, '2019-06-15 18:00:00.000000', 'https://www.ballbar.cc/live/16320', '山形山神 VS 水户蜀葵', NULL, NULL, 359, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.113667', 1762, '2019-06-15 18:00:00.000000', 'https://www.ballbar.cc/live/21520', '磐田山叶 VS 大阪飞脚', NULL, NULL, 373, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.117774', 1763, '2019-06-15 18:00:00.000000', 'https://www.ballbar.cc/live/11290', '大田市民 VS 安山木槿花', NULL, NULL, 380, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.121264', 1764, '2019-06-15 18:00:00.000000', 'https://www.ballbar.cc/live/11580', '浦和红钻 VS 鸟栖沙岩', NULL, NULL, 373, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.124998', 1765, '2019-06-15 18:00:00.000000', 'https://www.ballbar.cc/live/17000', '新泻天鹅 VS 枥木SC', NULL, NULL, 359, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.133973', 1766, '2019-06-15 18:00:00.000000', 'https://www.ballbar.cc/live/22120', '大分三神 VS 名古屋八鲸', NULL, NULL, 373, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.136311', 1767, '2019-06-15 18:00:00.000000', 'https://www.ballbar.cc/live/11930', '蔚山现代 VS 浦项制铁', NULL, NULL, 381, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.139148', 1768, '2019-06-15 18:00:00.000000', 'https://www.ballbar.cc/live/17180', '东京 VS 神户胜利船', NULL, NULL, 373, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.142239', 1769, '2019-06-15 18:00:00.000000', 'https://www.ballbar.cc/live/17230', '京都不死鸟 VS 琉球', NULL, NULL, 359, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.146641', 1770, '2019-06-15 18:00:00.000000', 'https://www.ballbar.cc/live/12410', '仁川联 VS 全北现代', NULL, NULL, 381, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.151893', 1771, '2019-06-15 18:30:00.000000', 'https://www.ballbar.cc/live/14850', '大邱FC VS 江原FC', NULL, NULL, 381, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.156393', 1772, '2019-06-15 18:45:00.000000', 'https://www.ballbar.cc/live/17330', '尚卡汶里 VS 北榄城', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.157657', 1773, '2019-06-15 19:00:00.000000', 'https://www.ballbar.cc/live/17470', '桐艾足球会 VS 沙拉武里', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.160610', 1774, '2019-06-15 19:30:00.000000', 'https://www.ballbar.cc/live/15460', '帕特里克卡滕格普特拉 VS 普特拉马林达', NULL, NULL, 372, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.163582', 1775, '2019-06-15 19:30:00.000000', 'https://www.ballbar.cc/live/16290', '佩塞巴亚苏拉巴亚 VS 巴日托', NULL, NULL, 372, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.166939', 1776, '2019-06-15 19:35:00.000000', 'https://www.ballbar.cc/live/18470', '河北华夏 VS 大连一方', NULL, NULL, 361, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.171206', 1777, '2019-06-15 19:35:00.000000', 'https://www.ballbar.cc/live/18760', '广州富力 VS 武汉卓尔', NULL, NULL, 361, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.172829', 1778, '2019-06-15 20:00:00.000000', 'https://www.ballbar.cc/live/17970', '普拉楚普 VS 清莱联', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.176466', 1779, '2019-06-15 21:00:00.000000', 'https://www.ballbar.cc/live/18090', '那空拉查斯马 VS 查英特', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.180000', 1780, '2019-06-15 21:00:00.000000', 'https://www.ballbar.cc/live/12050', '荷兰 VS 喀麦隆', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.182749', 1781, '2019-06-15 21:30:00.000000', 'https://www.ballbar.cc/live/2960', '广士云格 VS 斯达', NULL, NULL, 351, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.185739', 1782, '2019-06-15 22:00:00.000000', 'https://www.ballbar.cc/live/10400', 'IK布拉格 VS 特利堡足球会', NULL, NULL, 363, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.187946', 1783, '2019-06-15 22:00:00.000000', 'https://www.ballbar.cc/live/10870', '弗雷吉 VS 达尔库德', NULL, NULL, 363, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.191467', 1784, '2019-06-15 22:00:00.000000', 'https://www.ballbar.cc/live/11630', '华保斯FC VS 诺尔比', NULL, NULL, 363, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.195181', 1785, '2019-06-15 22:00:00.000000', 'https://www.ballbar.cc/live/21940', '考纳斯野牛 VS 帕兰加', NULL, NULL, 375, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.202033', 1786, '2019-06-15 22:00:00.000000', 'https://www.ballbar.cc/live/14710', '古泰斯鱼雷 VS 圣肯河雷', NULL, NULL, 376, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.202791', 1787, '2019-06-15 22:00:00.000000', 'https://www.ballbar.cc/live/10080', '奥斯达 VS 布洛马波卡纳', NULL, NULL, 363, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.207737', 1788, '2019-06-16 00:00:00.000000', 'https://www.ballbar.cc/live/22010', '苏度瓦 VS 帕内韦日斯', NULL, NULL, 375, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.209863', 1789, '2019-06-16 00:00:00.000000', 'https://www.ballbar.cc/live/20100', '戴戈福斯 VS 韦斯特罗斯', NULL, NULL, 363, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.213314', 1790, '2019-06-16 01:00:00.000000', 'https://www.ballbar.cc/live/14880', '第比利斯火车头 VS 巴塔米戴拿模', NULL, NULL, 376, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.217007', 1791, '2019-06-16 01:45:00.000000', 'https://www.ballbar.cc/live/16930', '若基诺鱼雷 VS FC维特布斯克', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.223919', 1792, '2019-06-16 03:00:00.000000', 'https://www.ballbar.cc/live/15660', '秘鲁 VS 委内瑞拉', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.225023', 1793, '2019-06-16 03:00:00.000000', 'https://www.ballbar.cc/live/12150', '加拿大 VS 新西兰', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.227901', 1794, '2019-06-16 06:00:00.000000', 'https://www.ballbar.cc/live/9340', '阿根廷 VS 哥伦比亚', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.230452', 1795, '2019-06-16 07:00:00.000000', 'https://www.ballbar.cc/live/19830', '印第安纳狂热 VS 芝加哥天空', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.243845', 1796, '2019-06-16 08:00:00.000000', 'https://www.ballbar.cc/live/20380', '达拉斯飞翼 VS 亚特兰大梦想', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-12 03:15:11.184018', 1797, '2019-06-16 08:30:00.000000', 'https://www.ballbar.cc/live/19610', '休斯顿达斯女足 VS 奥兰多荣耀女足', NULL, '', 384, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.251157', 1798, '2019-06-16 10:00:00.000000', 'https://www.ballbar.cc/live/8580', '墨西哥 VS 古巴', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-12 03:15:07.928123', 1799, '2019-06-16 10:00:00.000000', 'https://www.ballbar.cc/live/21890', '犹他王室女足 VS FC天蓝女足', NULL, '', 384, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-12 03:15:04.878030', 1800, '2019-06-16 10:00:00.000000', 'https://www.ballbar.cc/live/21900', '西雅图君主女足 VS 华盛顿精神女足', NULL, '', 384, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.260006', 1801, '2019-06-16 10:00:00.000000', 'https://www.ballbar.cc/live/20390', '洛杉矶火花 VS 纽约自由', NULL, NULL, 327, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.264499', 1802, '2019-06-16 16:00:00.000000', 'https://www.ballbar.cc/live/18690', '町田泽维亚 VS 长崎成功丸', NULL, NULL, 359, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.267990', 1803, '2019-06-16 16:30:00.000000', 'https://www.ballbar.cc/live/20880', '塞曼巴东 VS 匹尼', NULL, NULL, 372, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.271559', 1804, '2019-06-16 17:00:00.000000', 'https://www.ballbar.cc/live/18810', '福冈黄蜂 VS 柏雷素尔', NULL, NULL, 359, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.273553', 1805, '2019-06-16 17:30:00.000000', 'https://www.ballbar.cc/live/19940', '芽笼联 VS 马里士他卡沙', NULL, NULL, 378, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.276770', 1806, '2019-06-16 18:00:00.000000', 'https://www.ballbar.cc/live/16060', '光州FC VS 富川FC', NULL, NULL, 380, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.279138', 1807, '2019-06-16 18:00:00.000000', 'https://www.ballbar.cc/live/16500', '首尔 VS 水原三星', NULL, NULL, 381, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.283118', 1808, '2019-06-16 18:00:00.000000', 'https://www.ballbar.cc/live/15140', '仁川凤凰 VS 济州联队', NULL, NULL, 381, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.289729', 1809, '2019-06-16 19:00:00.000000', 'https://www.ballbar.cc/live/18440', '清迈足球会 VS PTT罗勇', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.291535', 1810, '2019-06-16 19:00:00.000000', 'https://www.ballbar.cc/live/18910', '曼谷联 VS 拉查布里府', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.292624', 1811, '2019-06-16 19:35:00.000000', 'https://www.ballbar.cc/live/18780', '天津天海 VS 河南建业', NULL, NULL, 361, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.295083', 1812, '2019-06-16 19:35:00.000000', 'https://www.ballbar.cc/live/19220', '江苏苏宁 VS 北京人和', NULL, NULL, 361, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.299020', 1813, '2019-06-16 19:35:00.000000', 'https://www.ballbar.cc/live/19240', '深圳市 VS 天津泰达', NULL, NULL, 361, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.304249', 1814, '2019-06-16 20:00:00.000000', 'https://www.ballbar.cc/live/18920', '春武里 VS 蒙通联', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.305083', 1815, '2019-06-16 20:00:00.000000', 'https://www.ballbar.cc/live/18990', '狮子港足球会 VS 武里南', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.309735', 1816, '2019-06-16 21:00:00.000000', 'https://www.ballbar.cc/live/6430', '汉坎 VS 阿勒桑', NULL, NULL, 351, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.313103', 1817, '2019-06-16 21:00:00.000000', 'https://www.ballbar.cc/live/14580', '瑞典 VS 泰国', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.315942', 1818, '2019-06-16 22:00:00.000000', 'https://www.ballbar.cc/live/17480', '波里索夫巴特 VS 索里格尔斯克', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.318919', 1819, '2019-06-16 23:00:00.000000', 'https://www.ballbar.cc/live/15010', '第比利斯迪纳摩 VS 格鲁吉亚第比利斯', NULL, NULL, 376, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.324717', 1820, '2019-06-16 23:30:00.000000', 'https://www.ballbar.cc/live/20120', '哈尔姆斯达斯 VS 米亚尔比', NULL, NULL, 363, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.328334', 1821, '2019-06-17 00:00:00.000000', 'https://www.ballbar.cc/live/8170', '诺托登 VS 辛迪佐夫特', NULL, NULL, 351, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.333648', 1822, '2019-06-17 00:00:00.000000', 'https://www.ballbar.cc/live/18510', '莫庄达伦 VS 克里斯蒂安桑德', NULL, NULL, 382, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.336962', 1823, '2019-06-17 00:00:00.000000', 'https://www.ballbar.cc/live/16140', '博多格林特 VS 斯托姆加斯特', NULL, NULL, 382, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.339324', 1824, '2019-06-17 00:00:00.000000', 'https://www.ballbar.cc/live/18840', '莫尔德 VS 雷海姆', NULL, NULL, 382, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.340991', 1825, '2019-06-17 00:00:00.000000', 'https://www.ballbar.cc/live/16310', '萨普斯堡 VS 奥特', NULL, NULL, 382, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.342885', 1826, '2019-06-17 00:00:00.000000', 'https://www.ballbar.cc/live/11390', '利勒斯特罗姆 VS 维京', NULL, NULL, 382, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.345996', 1827, '2019-06-17 00:00:00.000000', 'https://www.ballbar.cc/live/6440', '特罗姆斯达伦 VS 尼斯特索特拉', NULL, NULL, 351, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.352039', 1828, '2019-06-17 00:00:00.000000', 'https://www.ballbar.cc/live/14750', '美国 VS 智利', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.353713', 1829, '2019-06-17 00:00:00.000000', 'https://www.ballbar.cc/live/17370', 'UII 奇萨 VS 诺霍斯', NULL, NULL, 351, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.355727', 1830, '2019-06-17 00:00:00.000000', 'https://www.ballbar.cc/live/17400', '谢夫 VS 桑德尼斯', NULL, NULL, 351, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.360109', 1831, '2019-06-17 00:00:00.000000', 'https://www.ballbar.cc/live/7230', '桑恩达 VS 斯特罗曼', NULL, NULL, 351, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.361693', 1832, '2019-06-17 00:00:00.000000', 'https://www.ballbar.cc/live/17490', '明斯克迪纳摩 VS 白罗斯国立大学动力', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.362998', 1833, '2019-06-17 00:00:00.000000', 'https://www.ballbar.cc/live/12740', '斯吉德 VS KFUM奥斯陆', NULL, NULL, 351, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.367593', 1834, '2019-06-17 02:00:00.000000', 'https://www.ballbar.cc/live/21340', '罗森博格 VS 瓦勒伦加', NULL, NULL, 382, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.370684', 1835, '2019-06-17 03:00:00.000000', 'https://www.ballbar.cc/live/11240', '巴拉圭 VS 卡塔尔', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.376493', 1836, '2019-06-17 06:00:00.000000', 'https://www.ballbar.cc/live/8740', '海地 VS 百慕达', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.377726', 1837, '2019-06-17 06:00:00.000000', 'https://www.ballbar.cc/live/7290', '乌拉圭 VS 厄瓜多尔', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.382794', 1838, '2019-06-17 08:30:00.000000', 'https://www.ballbar.cc/live/9430', '哥斯达黎加 VS 尼加拉瓜', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.384199', 1839, '2019-06-17 18:00:00.000000', 'https://www.ballbar.cc/live/17380', '首尔衣恋 VS 全南龙', NULL, NULL, 380, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.386863', 1840, '2019-06-17 18:30:00.000000', 'https://www.ballbar.cc/live/21250', '安阳FC VS 釜山偶像', NULL, NULL, 380, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.396130', 1841, '2019-06-17 23:30:00.000000', 'https://www.ballbar.cc/live/11250', '瓦萨 VS 库普斯', NULL, NULL, 385, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.400038', 1842, '2019-06-18 00:00:00.000000', 'https://www.ballbar.cc/live/15590', '中国 VS 西班牙', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.405102', 1843, '2019-06-18 00:00:00.000000', 'https://www.ballbar.cc/live/14910', '南非 VS 德国', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.406163', 1844, '2019-06-18 01:00:00.000000', 'https://www.ballbar.cc/live/21620', '史达比克 VS 特罗姆瑟', NULL, NULL, 382, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.409667', 1845, '2019-06-18 01:00:00.000000', 'https://www.ballbar.cc/live/22500', '奥尔格里特 VS 盖斯', NULL, NULL, 363, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.411585', 1846, '2019-06-18 03:00:00.000000', 'https://www.ballbar.cc/live/16130', '尼日利亚 VS 法国', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.413872', 1847, '2019-06-18 03:00:00.000000', 'https://www.ballbar.cc/live/16180', '韩国 VS 挪威', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.416973', 1848, '2019-06-18 07:00:00.000000', 'https://www.ballbar.cc/live/11710', '日本 VS 智利', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.421304', 1849, '2019-06-18 07:00:00.000000', 'https://www.ballbar.cc/live/9660', '库拉索岛 VS 萨尔瓦多', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.425474', 1850, '2019-06-18 09:30:00.000000', 'https://www.ballbar.cc/live/9860', '牙买加 VS 洪都拉斯', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.425954', 1851, '2019-06-18 23:00:00.000000', 'https://www.ballbar.cc/live/14900', '上海上港 VS 全北现代', NULL, NULL, 386, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.430227', 1852, '2019-06-18 23:00:00.000000', 'https://www.ballbar.cc/live/15060', '浦和红钻 VS 蔚山现代', NULL, NULL, 386, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.435360', 1853, '2019-06-18 23:30:00.000000', 'https://www.ballbar.cc/live/11360', '拉赫蒂 VS 路云尼米', NULL, NULL, 385, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.436021', 1854, '2019-06-18 23:30:00.000000', 'https://www.ballbar.cc/live/12520', '赫尔辛基IFK VS 塞纳容', NULL, NULL, 385, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.443548', 1855, '2019-06-19 03:00:00.000000', 'https://www.ballbar.cc/live/16540', '牙买加 VS 澳大利亚', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.444038', 1856, '2019-06-19 03:00:00.000000', 'https://www.ballbar.cc/live/16590', '意大利 VS 巴西', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.447474', 1857, '2019-06-19 05:30:00.000000', 'https://www.ballbar.cc/live/16660', '秘鲁 VS 玻利维亚', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.451134', 1858, '2019-06-19 07:30:00.000000', 'https://www.ballbar.cc/live/10230', '巴拿马 VS 特立尼达和多巴哥', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.454608', 1859, '2019-06-19 08:30:00.000000', 'https://www.ballbar.cc/live/7510', '委内瑞拉 VS 巴西', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.456608', 1860, '2019-06-19 10:00:00.000000', 'https://www.ballbar.cc/live/11530', '美国 VS 圭亚那', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.469464', 1861, '2019-06-19 19:45:00.000000', 'https://www.ballbar.cc/live/11220', '达卡阿巴罕尼足球会 VS Manang Marshyangdi', NULL, NULL, 388, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.473154', 1862, '2019-06-19 20:00:00.000000', 'https://www.ballbar.cc/live/12130', 'FK Khujand VS 伊提洛尔足球会', NULL, NULL, 388, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.474733', 1863, '2019-06-19 20:00:00.000000', 'https://www.ballbar.cc/live/12290', '和富大埔 VS 志杰SC', NULL, NULL, 388, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.477391', 1864, '2019-06-19 21:00:00.000000', 'https://www.ballbar.cc/live/19270', '米勒娃学院 VS 清奈泰坦', NULL, NULL, 388, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.481719', 1865, '2019-06-19 22:00:00.000000', 'https://www.ballbar.cc/live/19280', '金色世纪 VS FC Dordoi Bishkek', NULL, NULL, 388, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.485555', 1866, '2019-06-19 23:30:00.000000', 'https://www.ballbar.cc/live/18030', '赫尔辛基 VS 洪卡', NULL, NULL, 385, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.489655', 1867, '2019-06-20 00:30:00.000000', 'https://www.ballbar.cc/live/16750', '乔科平所达 VS 华保斯FC', NULL, NULL, 363, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.491590', 1868, '2019-06-20 03:00:00.000000', 'https://www.ballbar.cc/live/16910', '日本 VS 英格兰', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.494309', 1869, '2019-06-20 03:00:00.000000', 'https://www.ballbar.cc/live/16920', '苏格兰 VS 阿根廷', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.499354', 1870, '2019-06-20 05:30:00.000000', 'https://www.ballbar.cc/live/19180', '卡塔尔 VS 哥伦比亚', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.501800', 1871, '2019-06-20 08:00:00.000000', 'https://www.ballbar.cc/live/11590', '古巴 VS 马丁尼克岛', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.506731', 1872, '2019-06-20 08:25:00.000000', 'https://www.ballbar.cc/live/9820', '阿根廷 VS 巴拉圭', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.509214', 1873, '2019-06-20 10:30:00.000000', 'https://www.ballbar.cc/live/12970', '墨西哥 VS 加拿大', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.512889', 1874, '2019-06-21 00:00:00.000000', 'https://www.ballbar.cc/live/17030', '喀麦隆 VS 新西兰', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.516180', 1875, '2019-06-21 00:00:00.000000', 'https://www.ballbar.cc/live/17040', '荷兰 VS 加拿大', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.517664', 1876, '2019-06-21 03:00:00.000000', 'https://www.ballbar.cc/live/17160', '泰国 VS 智利', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.520294', 1877, '2019-06-21 03:00:00.000000', 'https://www.ballbar.cc/live/17190', '瑞典 VS 美国', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.523161', 1878, '2019-06-21 07:00:00.000000', 'https://www.ballbar.cc/live/11020', '日本 VS 乌拉圭', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.529883', 1879, '2019-06-21 07:00:00.000000', 'https://www.ballbar.cc/live/13700', '尼加拉瓜 VS 海地', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.531509', 1880, '2019-06-21 09:30:00.000000', 'https://www.ballbar.cc/live/14700', '哥斯达黎加 VS 百慕达', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.536662', 1881, '2019-06-21 18:30:00.000000', 'https://www.ballbar.cc/live/16690', '济州联队 VS 城南一和', NULL, NULL, 381, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.538048', 1882, '2019-06-21 19:35:00.000000', 'https://www.ballbar.cc/live/7220', '江苏苏宁 VS 上海申花', NULL, NULL, 361, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.540884', 1883, '2019-06-21 19:45:00.000000', 'https://www.ballbar.cc/live/19950', '马里士他卡沙 VS 新加坡新泻天鹅 FC', NULL, NULL, 378, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.543528', 1884, '2019-06-21 21:00:00.000000', 'https://www.ballbar.cc/live/17920', '戈梅利 VS 莫兹尔斯拉维亚', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.546379', 1885, '2019-06-21 21:00:00.000000', 'https://www.ballbar.cc/live/17960', '索里格尔斯克 VS 布列斯特迪纳摩', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.552350', 1886, '2019-06-21 21:00:00.000000', 'https://www.ballbar.cc/live/18350', '明斯克迪纳摩 VS 若基诺鱼雷', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.555074', 1887, '2019-06-21 21:00:00.000000', 'https://www.ballbar.cc/live/19100', '伊斯洛 VS 波里索夫巴特', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.559731', 1888, '2019-06-21 21:00:00.000000', 'https://www.ballbar.cc/live/19360', '斯鲁特斯克 VS FC明斯克', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.562471', 1889, '2019-06-21 21:00:00.000000', 'https://www.ballbar.cc/live/17550', '格罗德诺 尼曼 VS FC格罗德亚', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.567411', 1890, '2019-06-21 21:00:00.000000', 'https://www.ballbar.cc/live/17650', 'FC维特布斯克 VS FK Dnyapro Mogilev', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.569559', 1891, '2019-06-21 21:00:00.000000', 'https://www.ballbar.cc/live/17840', '白罗斯国立大学动力 VS 明斯克鱼雷', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.577168', 1892, '2019-06-22 07:00:00.000000', 'https://www.ballbar.cc/live/6620', '智利 VS 厄瓜多尔', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.582303', 1893, '2019-06-22 07:00:00.000000', 'https://www.ballbar.cc/live/15280', '萨尔瓦多 VS 牙买加', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.583900', 1894, '2019-06-22 09:30:00.000000', 'https://www.ballbar.cc/live/15630', '洪都拉斯 VS 库拉索岛', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-12 03:15:01.851970', 1895, '2019-06-22 11:00:00.000000', 'https://www.ballbar.cc/live/21910', '波特兰荆棘女足 VS 犹他王室女足', NULL, '', 384, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.594363', 1896, '2019-06-22 15:30:00.000000', 'https://www.ballbar.cc/live/14190', '河南建业 VS 深圳市', NULL, NULL, 361, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.596242', 1897, '2019-06-22 17:30:00.000000', 'https://www.ballbar.cc/live/16050', '北京国安 VS 广州富力', NULL, NULL, 361, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.597382', 1898, '2019-06-22 17:30:00.000000', 'https://www.ballbar.cc/live/19960', '淡滨尼流浪 VS 文莱DPMM', NULL, NULL, 378, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.602548', 1899, '2019-06-22 18:00:00.000000', 'https://www.ballbar.cc/live/21260', '牙山木槿花 VS 大田市民', NULL, NULL, 380, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.603642', 1900, '2019-06-22 18:00:00.000000', 'https://www.ballbar.cc/live/16760', '庆南FC VS 仁川联', NULL, NULL, 381, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.606163', 1901, '2019-06-22 18:00:00.000000', 'https://www.ballbar.cc/live/16880', '蔚山现代 VS 仁川凤凰', NULL, NULL, 381, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.610136', 1902, '2019-06-22 18:00:00.000000', 'https://www.ballbar.cc/live/7270', '安山木槿花 VS 釜山偶像', NULL, NULL, 380, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.617765', 1903, '2019-06-22 18:30:00.000000', 'https://www.ballbar.cc/live/17310', '大邱FC VS 首尔', NULL, NULL, 381, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.619234', 1904, '2019-06-22 18:45:00.000000', 'https://www.ballbar.cc/live/19010', '蒙通联 VS 桐艾足球会', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.622164', 1905, '2019-06-22 19:00:00.000000', 'https://www.ballbar.cc/live/19200', '拉查布里府 VS 普拉楚普', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-04 09:13:53.569186', 1906, '2019-06-22 19:35:00.000000', 'https://www.ballbar.cc/live/20720', '广州恒大 VS 河北华夏', NULL, '', 361, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.632760', 1907, '2019-06-22 19:35:00.000000', 'https://www.ballbar.cc/live/17530', '天津泰达 VS 山东鲁能', NULL, NULL, 361, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.635504', 1908, '2019-06-22 19:35:00.000000', 'https://www.ballbar.cc/live/20160', '上海上港 VS 北京人和', NULL, NULL, 361, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.639664', 1909, '2019-06-22 20:00:00.000000', 'https://www.ballbar.cc/live/20700', '沙拉武里 VS 那空拉查斯马', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.642812', 1910, '2019-06-22 20:00:00.000000', 'https://www.ballbar.cc/live/9680', '阿兰达斯 VS 考纳斯 斯帕尼斯', NULL, NULL, 375, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.647070', 1911, '2019-06-22 21:00:00.000000', 'https://www.ballbar.cc/live/21190', '武里南 VS 清迈足球会', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.649708', 1912, '2019-06-22 21:00:00.000000', 'https://www.ballbar.cc/live/17240', '1B VS 3Acd', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.653447', 1913, '2019-06-22 21:30:00.000000', 'https://www.ballbar.cc/live/6450', '斯达 VS 诺托登', NULL, NULL, 351, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.657350', 1914, '2019-06-22 21:30:00.000000', 'https://www.ballbar.cc/live/22510', '辛迪佐夫特 VS UII 奇萨', NULL, NULL, 351, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.662411', 1915, '2019-06-22 21:30:00.000000', 'https://www.ballbar.cc/live/15070', '古泰斯鱼雷 VS 施安尼', NULL, NULL, 376, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.665238', 1916, '2019-06-22 22:00:00.000000', 'https://www.ballbar.cc/live/10430', '考纳斯野牛 VS 帕内韦日斯', NULL, NULL, 375, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.670838', 1917, '2019-06-22 23:15:00.000000', 'https://www.ballbar.cc/live/17440', '第比利斯火车头 VS 鲁斯塔维', NULL, NULL, 376, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.670502', 1918, '2019-06-22 22:30:00.000000', 'https://www.ballbar.cc/live/5390', '刚果民主共和国 VS 乌干达', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.676025', 1919, '2019-06-23 00:00:00.000000', 'https://www.ballbar.cc/live/10710', '苏度瓦 VS 维尔纽斯骑士', NULL, NULL, 375, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.678508', 1920, '2019-06-23 00:30:00.000000', 'https://www.ballbar.cc/live/17340', '2A VS 2C', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.682606', 1921, '2019-06-23 01:00:00.000000', 'https://www.ballbar.cc/live/6330', '尼日利亚 VS 布隆迪', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.687367', 1922, '2019-06-23 01:30:00.000000', 'https://www.ballbar.cc/live/17930', '萨布塔罗提比利锡 VS 巴塔米戴拿模', NULL, NULL, 376, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.688245', 1923, '2019-06-23 03:00:00.000000', 'https://www.ballbar.cc/live/8230', '玻利维亚 VS 委内瑞拉', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.692318', 1924, '2019-06-23 03:00:00.000000', 'https://www.ballbar.cc/live/14160', '秘鲁 VS 巴西', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.693471', 1925, '2019-06-23 04:00:00.000000', 'https://www.ballbar.cc/live/6860', '几内亚 VS 马达加斯加', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.696880', 1926, '2019-06-23 05:30:00.000000', 'https://www.ballbar.cc/live/15880', '圭亚那 VS 巴拿马', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.700334', 1927, '2019-06-23 07:30:00.000000', 'https://www.ballbar.cc/live/17430', '辛辛那提 VS 洛杉矶银河', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.707438', 1928, '2019-06-23 08:00:00.000000', 'https://www.ballbar.cc/live/17980', 'FC达拉斯 VS 多伦多FC', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.708933', 1929, '2019-06-23 08:00:00.000000', 'https://www.ballbar.cc/live/15960', '美国 VS 特立尼达和多巴哥', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.712817', 1930, '2019-06-23 10:00:00.000000', 'https://www.ballbar.cc/live/18310', '温哥华白帽 VS 科罗拉多急流', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.711678', 1931, '2019-06-23 08:00:00.000000', 'https://www.ballbar.cc/live/17770', '芝加哥火焰 VS 皇家盐湖城', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.719680', 1932, '2019-06-23 11:00:00.000000', 'https://www.ballbar.cc/live/18320', '波特兰木材 VS 休斯顿迪纳摩', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.722323', 1933, '2019-06-23 15:30:00.000000', 'https://www.ballbar.cc/live/21100', '大连一方 VS 天津天海', NULL, NULL, 361, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.727485', 1934, '2019-06-23 17:30:00.000000', 'https://www.ballbar.cc/live/19970', '勇士足球会 VS 芽笼联', NULL, NULL, 378, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.729004', 1935, '2019-06-23 18:00:00.000000', 'https://www.ballbar.cc/live/18010', '江原FC VS 浦项制铁', NULL, NULL, 381, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.731789', 1936, '2019-06-23 18:00:00.000000', 'https://www.ballbar.cc/live/8630', '安阳FC VS 全南龙', NULL, NULL, 380, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.736606', 1937, '2019-06-23 18:00:00.000000', 'https://www.ballbar.cc/live/17510', '全北现代 VS 水原三星', NULL, NULL, 381, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.739010', 1938, '2019-06-23 19:00:00.000000', 'https://www.ballbar.cc/live/21690', 'PTT罗勇 VS 曼谷联', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.739367', 1939, '2019-06-23 19:00:00.000000', 'https://www.ballbar.cc/live/21680', '查英特 VS 春武里', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.746031', 1940, '2019-06-23 19:35:00.000000', 'https://www.ballbar.cc/live/22190', '武汉卓尔 VS 重庆斯威', NULL, NULL, 361, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.749750', 1941, '2019-06-23 20:00:00.000000', 'https://www.ballbar.cc/live/21700', '清莱联 VS 尚卡汶里', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.753413', 1942, '2019-06-23 20:00:00.000000', 'https://www.ballbar.cc/live/21710', '北榄城 VS 狮子港足球会', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.755707', 1943, '2019-06-23 22:30:00.000000', 'https://www.ballbar.cc/live/7580', '摩洛哥 VS 纳米比亚', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.757905', 1944, '2019-06-23 23:30:00.000000', 'https://www.ballbar.cc/live/18130', '1D VS 3Bef', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.759268', 1945, '2019-06-23 23:30:00.000000', 'https://www.ballbar.cc/live/18410', '第比利斯迪纳摩 VS 圣肯河雷', NULL, NULL, 376, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.763828', 1946, '2019-06-24 00:00:00.000000', 'https://www.ballbar.cc/live/21020', '诺霍斯 VS 阿勒桑', NULL, NULL, 351, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.764765', 1947, '2019-06-24 00:00:00.000000', 'https://www.ballbar.cc/live/11430', '扎尔吉里斯 VS 帕兰加', NULL, NULL, 375, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.770734', 1948, '2019-06-24 00:00:00.000000', 'https://www.ballbar.cc/live/19170', '桑恩达 VS 斯吉德', NULL, NULL, 351, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.772583', 1949, '2019-06-24 00:00:00.000000', 'https://www.ballbar.cc/live/17170', '尼斯特索特拉 VS 谢夫', NULL, NULL, 351, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.774675', 1950, '2019-06-24 00:00:00.000000', 'https://www.ballbar.cc/live/22480', '桑德尼斯 VS 特罗姆斯达伦', NULL, NULL, 351, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.777947', 1951, '2019-06-24 00:00:00.000000', 'https://www.ballbar.cc/live/20230', '斯特罗曼 VS 广士云格', NULL, NULL, 351, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.779225', 1952, '2019-06-24 00:00:00.000000', 'https://www.ballbar.cc/live/7640', 'KFUM奥斯陆 VS 汉坎', NULL, NULL, 351, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.783421', 1953, '2019-06-24 01:00:00.000000', 'https://www.ballbar.cc/live/7660', '塞内加尔 VS 坦桑尼亚', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.789179', 1954, '2019-06-24 01:30:00.000000', 'https://www.ballbar.cc/live/19750', '哥里迪拉 VS 格鲁吉亚第比利斯', NULL, NULL, 376, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.790149', 1955, '2019-06-24 03:00:00.000000', 'https://www.ballbar.cc/live/10480', '阿根廷 VS 卡塔尔', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.795487', 1956, '2019-06-24 03:00:00.000000', 'https://www.ballbar.cc/live/18370', '1A VS 3Cde', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.798121', 1957, '2019-06-24 03:00:00.000000', 'https://www.ballbar.cc/live/16870', '巴拉圭 VS 哥伦比亚', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.800772', 1958, '2019-06-24 04:00:00.000000', 'https://www.ballbar.cc/live/7760', '阿尔及利亚 VS 肯尼亚', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.806134', 1959, '2019-06-24 06:00:00.000000', 'https://www.ballbar.cc/live/16030', '加拿大 VS 古巴', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.806391', 1960, '2019-06-24 07:30:00.000000', 'https://www.ballbar.cc/live/19020', '哥伦布水手 VS 体育堪萨斯城', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.812512', 1961, '2019-06-24 08:30:00.000000', 'https://www.ballbar.cc/live/16250', '马丁尼克岛 VS 墨西哥', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.817287', 1962, '2019-06-24 18:00:00.000000', 'https://www.ballbar.cc/live/9830', '水原 VS 光州FC', NULL, NULL, 380, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.819990', 1963, '2019-06-24 18:30:00.000000', 'https://www.ballbar.cc/live/10910', '富川FC VS 首尔衣恋', NULL, NULL, 380, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.821266', 1964, '2019-06-24 22:30:00.000000', 'https://www.ballbar.cc/live/7840', '象牙海岸 VS 南非', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.823833', 1965, '2019-06-24 23:00:00.000000', 'https://www.ballbar.cc/live/16710', '山东鲁能 VS 广州恒大', NULL, NULL, 386, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.826444', 1966, '2019-06-24 23:00:00.000000', 'https://www.ballbar.cc/live/15270', '广岛三箭 VS 鹿岛鹿角', NULL, NULL, 386, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.833063', 1967, '2019-06-25 00:00:00.000000', 'https://www.ballbar.cc/live/18860', '2B VS 1F', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.834062', 1968, '2019-06-25 01:00:00.000000', 'https://www.ballbar.cc/live/8110', '突尼斯 VS 安哥拉', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.840289', 1969, '2019-06-25 03:00:00.000000', 'https://www.ballbar.cc/live/19260', '2F VS 2E', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.842802', 1970, '2019-06-25 04:00:00.000000', 'https://www.ballbar.cc/live/8180', '马里 VS 毛里塔尼亚', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.844845', 1971, '2019-06-25 06:30:00.000000', 'https://www.ballbar.cc/live/17360', '百慕达 VS 尼加拉瓜', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.845900', 1972, '2019-06-25 07:00:00.000000', 'https://www.ballbar.cc/live/5680', '日本 VS 厄瓜多尔', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.851406', 1973, '2019-06-25 07:00:00.000000', 'https://www.ballbar.cc/live/9780', '智利 VS 乌拉圭', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.853258', 1974, '2019-06-25 09:00:00.000000', 'https://www.ballbar.cc/live/17460', '海地 VS 哥斯达黎加', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.857087', 1975, '2019-06-25 23:00:00.000000', 'https://www.ballbar.cc/live/18070', '玛丽港 VS 赫尔辛基', NULL, NULL, 385, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-04 09:07:42.935739', 1976, '2019-06-25 23:00:00.000000', 'https://www.ballbar.cc/live/16800', '蔚山现代 VS 浦和红钻', NULL, '', 386, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-04 09:07:37.836871', 1977, '2019-06-25 23:00:00.000000', 'https://www.ballbar.cc/live/16840', '全北现代 VS 上海上港', NULL, '', 386, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.868262', 1978, '2019-06-25 23:30:00.000000', 'https://www.ballbar.cc/live/18900', '洪卡 VS 路云尼米', NULL, NULL, 385, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.870419', 1979, '2019-06-25 23:30:00.000000', 'https://www.ballbar.cc/live/14180', '库普斯 VS 拉赫蒂', NULL, NULL, 385, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.872532', 1980, '2019-06-25 23:30:00.000000', 'https://www.ballbar.cc/live/6680', '图尔库国际 VS 瓦萨', NULL, NULL, 385, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.902700', 1981, '2019-06-25 23:30:00.000000', 'https://www.ballbar.cc/live/6730', '坦佩雷埃尔维斯 VS 科科拉', NULL, NULL, 385, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.905033', 1982, '2019-06-25 23:30:00.000000', 'https://www.ballbar.cc/live/19790', '第比利斯火车头 VS 萨布塔罗提比利锡', NULL, NULL, 376, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.906550', 1983, '2019-06-26 00:00:00.000000', 'https://www.ballbar.cc/live/19540', '1C VS 3Abf', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.907108', 1984, '2019-06-26 01:00:00.000000', 'https://www.ballbar.cc/live/10820', 'AIK索尔纳 VS IFK诺尔雪平', NULL, NULL, 391, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.907567', 1985, '2019-06-26 01:30:00.000000', 'https://www.ballbar.cc/live/19800', '巴塔米戴拿模 VS 古泰斯鱼雷', NULL, NULL, 376, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.909272', 1986, '2019-06-26 01:00:00.000000', 'https://www.ballbar.cc/live/8310', '喀麦隆 VS 几内亚比绍', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.909932', 1987, '2019-06-26 04:00:00.000000', 'https://www.ballbar.cc/live/8520', '加纳 VS 比宁', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.910596', 1988, '2019-06-26 08:00:00.000000', 'https://www.ballbar.cc/live/17720', '牙买加 VS 库拉索岛', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.911156', 1989, '2019-06-26 03:00:00.000000', 'https://www.ballbar.cc/live/20730', '1E VS 2D', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.915806', 1990, '2019-06-26 18:30:00.000000', 'https://www.ballbar.cc/live/19290', '米勒娃学院 VS 达卡阿巴罕尼足球会', NULL, NULL, 388, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.916347', 1991, '2019-06-26 20:00:00.000000', 'https://www.ballbar.cc/live/19310', '志杰SC VS 4.25体育团 足球队', NULL, NULL, 388, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.916504', 1992, '2019-06-26 18:30:00.000000', 'https://www.ballbar.cc/live/19300', 'Manang Marshyangdi VS 清奈泰坦', NULL, NULL, 388, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.916869', 1993, '2019-06-26 10:30:00.000000', 'https://www.ballbar.cc/live/18570', '洪都拉斯 VS 萨尔瓦多', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.918180', 1994, '2019-06-26 20:00:00.000000', 'https://www.ballbar.cc/live/19320', '航源足球队 VS 和富大埔', NULL, NULL, 388, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.921103', 1995, '2019-06-26 21:30:00.000000', 'https://www.ballbar.cc/live/19840', '施安尼 VS 第比利斯迪纳摩', NULL, NULL, 376, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.922795', 1996, '2019-06-26 22:00:00.000000', 'https://www.ballbar.cc/live/19330', 'FC Dordoi Bishkek VS FK Khujand', NULL, NULL, 388, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.930789', 1997, '2019-06-26 22:00:00.000000', 'https://www.ballbar.cc/live/19340', '伊提洛尔足球会 VS 金色世纪', NULL, NULL, 388, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.932082', 1998, '2019-06-26 22:30:00.000000', 'https://www.ballbar.cc/live/8530', '尼日利亚 VS 几内亚', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.933243', 1999, '2019-06-26 23:30:00.000000', 'https://www.ballbar.cc/live/19850', '圣肯河雷 VS 哥里迪拉', NULL, NULL, 376, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.934184', 2000, '2019-06-27 01:00:00.000000', 'https://www.ballbar.cc/live/9150', '乌干达 VS 津巴布韦', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.937699', 2001, '2019-06-27 01:30:00.000000', 'https://www.ballbar.cc/live/19860', '鲁斯塔维 VS 格鲁吉亚第比利斯', NULL, NULL, 376, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.938633', 2002, '2019-06-27 04:00:00.000000', 'https://www.ballbar.cc/live/10060', '埃及 VS 刚果民主共和国', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.942220', 2003, '2019-06-27 06:30:00.000000', 'https://www.ballbar.cc/live/19140', '特立尼达和多巴哥 VS 圭亚那', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.943474', 2004, '2019-06-27 07:30:00.000000', 'https://www.ballbar.cc/live/21950', '蒙特利尔冲击 VS 波特兰木材', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.948586', 2005, '2019-06-27 07:30:00.000000', 'https://www.ballbar.cc/live/21970', '新英格兰革命 VS 费城联盟', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.950061', 2006, '2019-06-27 08:00:00.000000', 'https://www.ballbar.cc/live/21990', '多伦多FC VS 亚特兰大联', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.955162', 2007, '2019-06-27 08:00:00.000000', 'https://www.ballbar.cc/live/22000', '华盛顿特区联 VS 奥兰多城', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.956128', 2008, '2019-06-27 09:00:00.000000', 'https://www.ballbar.cc/live/22270', 'FC达拉斯 VS 温哥华白帽', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.985118', 2009, '2019-06-27 22:30:00.000000', 'https://www.ballbar.cc/live/10840', '马达加斯加 VS 布隆迪', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.985610', 2010, '2019-06-27 10:30:00.000000', 'https://www.ballbar.cc/live/18560', '圣何塞地震 VS 休斯顿迪纳摩', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.985759', 2011, '2019-06-27 09:00:00.000000', 'https://www.ballbar.cc/live/19810', '巴拿马 VS 美国', NULL, NULL, 383, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.988471', 2012, '2019-06-28 01:00:00.000000', 'https://www.ballbar.cc/live/11160', '塞内加尔 VS 阿尔及利亚', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.988768', 2013, '2019-06-28 03:00:00.000000', 'https://www.ballbar.cc/live/20740', 'W37 VS W39', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.990110', 2014, '2019-06-28 04:00:00.000000', 'https://www.ballbar.cc/live/11380', '肯尼亚 VS 坦桑尼亚', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.990250', 2015, '2019-06-28 18:30:00.000000', 'https://www.ballbar.cc/live/18160', '城南一和 VS 仁川凤凰', NULL, NULL, 381, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.991230', 2016, '2019-06-28 08:30:00.000000', 'https://www.ballbar.cc/live/20540', '1A VS 3Bc', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.992007', 2017, '2019-06-28 20:15:00.000000', 'https://www.ballbar.cc/live/19980', '文莱DPMM VS 马里士他卡沙', NULL, NULL, 378, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.993583', 2018, '2019-06-28 21:00:00.000000', 'https://www.ballbar.cc/live/21470', '莫兹尔斯拉维亚 VS 索里格尔斯克', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.994289', 2019, '2019-06-28 21:00:00.000000', 'https://www.ballbar.cc/live/21490', '波里索夫巴特 VS FC维特布斯克', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.998382', 2020, '2019-06-28 21:00:00.000000', 'https://www.ballbar.cc/live/21480', '布列斯特迪纳摩 VS 伊斯洛', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:46.999158', 2021, '2019-06-28 21:00:00.000000', 'https://www.ballbar.cc/live/21500', '若基诺鱼雷 VS 白罗斯国立大学动力', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.000959', 2022, '2019-06-28 21:00:00.000000', 'https://www.ballbar.cc/live/21510', '明斯克鱼雷 VS 格罗德诺 尼曼', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.007983', 2023, '2019-06-28 21:00:00.000000', 'https://www.ballbar.cc/live/19370', 'FK Dnyapro Mogilev VS 明斯克迪纳摩', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.010570', 2024, '2019-06-28 21:00:00.000000', 'https://www.ballbar.cc/live/19380', 'FC格罗德亚 VS 斯鲁特斯克', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.011654', 2025, '2019-06-28 21:00:00.000000', 'https://www.ballbar.cc/live/20090', 'FC明斯克 VS 戈梅利', NULL, NULL, 374, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.015851', 2026, '2019-06-28 22:30:00.000000', 'https://www.ballbar.cc/live/11920', '突尼斯 VS 马里', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.022075', 2027, '2019-06-29 01:00:00.000000', 'https://www.ballbar.cc/live/12310', '摩洛哥 VS 象牙海岸', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.023244', 2028, '2019-06-29 03:00:00.000000', 'https://www.ballbar.cc/live/20550', '2A VS 2B', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.026492', 2029, '2019-06-29 03:00:00.000000', 'https://www.ballbar.cc/live/21200', 'W40 VS W41', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.028566', 2030, '2019-06-29 03:45:00.000000', 'https://www.ballbar.cc/live/18100', '都柏林大学 VS 圣帕特里克', NULL, NULL, 365, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.033168', 2031, '2019-06-29 03:45:00.000000', 'https://www.ballbar.cc/live/18520', 'Waterford FC VS 都柏林波希米亚人', NULL, NULL, 365, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.037141', 2032, '2019-06-29 03:45:00.000000', 'https://www.ballbar.cc/live/16610', '科克城 VS 德利城', NULL, NULL, 365, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.038377', 2033, '2019-06-29 04:00:00.000000', 'https://www.ballbar.cc/live/20750', '沙姆洛克 VS 登克尔克', NULL, NULL, 365, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.042724', 2034, '2019-06-29 04:00:00.000000', 'https://www.ballbar.cc/live/13290', '南非 VS 纳米比亚', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.049011', 2035, '2019-06-29 04:00:00.000000', 'https://www.ballbar.cc/live/18550', '费恩夏普 VS 斯利格流浪', NULL, NULL, 365, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.050554', 2036, '2019-06-29 07:00:00.000000', 'https://www.ballbar.cc/live/20560', '1B VS 2C', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.052425', 2037, '2019-06-29 08:00:00.000000', 'https://www.ballbar.cc/live/11800', '纽约红牛 VS 芝加哥火焰', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.058411', 2038, '2019-06-29 17:30:00.000000', 'https://www.ballbar.cc/live/20000', '内政联 VS 后港联足球会', NULL, NULL, 378, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.058717', 2039, '2019-06-29 10:00:00.000000', 'https://www.ballbar.cc/live/14230', '科罗拉多急流 VS 洛杉矶', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.067340', 2040, '2019-06-29 18:00:00.000000', 'https://www.ballbar.cc/live/21360', '水原三星 VS 庆南FC', NULL, NULL, 381, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.067598', 2041, '2019-06-29 17:30:00.000000', 'https://www.ballbar.cc/live/20040', '芽笼联 VS 幼狮队', NULL, NULL, 378, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.071354', 2042, '2019-06-29 18:00:00.000000', 'https://www.ballbar.cc/live/21370', '济州联队 VS 大邱FC', NULL, NULL, 381, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.072761', 2043, '2019-06-29 18:00:00.000000', 'https://www.ballbar.cc/live/12190', '大田市民 VS 光州FC', NULL, NULL, 380, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.075949', 2044, '2019-06-29 18:00:00.000000', 'https://www.ballbar.cc/live/12720', '安山木槿花 VS 首尔衣恋', NULL, NULL, 380, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.078665', 2045, '2019-06-29 18:45:00.000000', 'https://www.ballbar.cc/live/22070', '曼谷联 VS 沙拉武里', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.082490', 2046, '2019-06-29 19:00:00.000000', 'https://www.ballbar.cc/live/22080', '那空拉查斯马 VS PTT罗勇', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.084814', 2047, '2019-06-29 19:00:00.000000', 'https://www.ballbar.cc/live/22090', '桐艾足球会 VS 拉查布里府', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.089215', 2048, '2019-06-29 20:00:00.000000', 'https://www.ballbar.cc/live/22100', '清迈足球会 VS 北榄城', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.091548', 2049, '2019-06-29 21:00:00.000000', 'https://www.ballbar.cc/live/21280', 'W43 VS W44', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.094291', 2050, '2019-06-29 21:00:00.000000', 'https://www.ballbar.cc/live/14420', '尚卡汶里 VS 查英特', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.099810', 2051, '2019-06-29 21:00:00.000000', 'https://www.ballbar.cc/live/11870', '帕内韦日斯 VS 扎尔吉里斯', NULL, NULL, 375, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.101634', 2052, '2019-06-29 22:30:00.000000', 'https://www.ballbar.cc/live/14360', '毛里塔尼亚 VS 安哥拉', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.105715', 2053, '2019-06-29 23:00:00.000000', 'https://www.ballbar.cc/live/11990', '考纳斯 斯帕尼斯 VS 帕兰加', NULL, NULL, 375, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.106942', 2054, '2019-06-30 00:00:00.000000', 'https://www.ballbar.cc/live/14550', '阿兰达斯 VS 苏度瓦', NULL, NULL, 375, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.111792', 2055, '2019-06-30 00:30:00.000000', 'https://www.ballbar.cc/live/21290', 'W38 VS W42', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.116991', 2056, '2019-06-30 01:00:00.000000', 'https://www.ballbar.cc/live/14830', '维尔纽斯骑士 VS 考纳斯野牛', NULL, NULL, 375, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.119601', 2057, '2019-06-30 01:00:00.000000', 'https://www.ballbar.cc/live/15350', '喀麦隆 VS 加纳', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.121993', 2058, '2019-06-30 03:00:00.000000', 'https://www.ballbar.cc/live/20570', '1C VS 3Ab', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.123620', 2059, '2019-06-30 04:00:00.000000', 'https://www.ballbar.cc/live/16270', '比宁 VS 几内亚比绍', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.128592', 2060, '2019-06-30 04:00:00.000000', 'https://www.ballbar.cc/live/14490', '明尼苏达联 VS 辛辛那提', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.131480', 2061, '2019-06-30 06:00:00.000000', 'https://www.ballbar.cc/live/21380', '亚特兰大联 VS 蒙特利尔冲击', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.133951', 2062, '2019-06-30 07:00:00.000000', 'https://www.ballbar.cc/live/21390', '纽约城 VS 费城联盟', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.138652', 2063, '2019-06-30 07:30:00.000000', 'https://www.ballbar.cc/live/21400', '新英格兰革命 VS 休斯顿迪纳摩', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.142054', 2064, '2019-06-30 07:30:00.000000', 'https://www.ballbar.cc/live/21410', '哥伦布水手 VS 奥兰多城', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.144492', 2065, '2019-06-30 08:00:00.000000', 'https://www.ballbar.cc/live/21420', '华盛顿特区联 VS 多伦多FC', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.150598', 2066, '2019-06-30 10:00:00.000000', 'https://www.ballbar.cc/live/21430', '圣何塞地震 VS 洛杉矶银河', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.151823', 2067, '2019-06-30 10:00:00.000000', 'https://www.ballbar.cc/live/21440', '皇家盐湖城 VS 体育堪萨斯城', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.153995', 2068, '2019-06-30 10:00:00.000000', 'https://www.ballbar.cc/live/21450', '西雅图海湾人 VS 温哥华白帽', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.159002', 2069, '2019-06-30 17:30:00.000000', 'https://www.ballbar.cc/live/20050', '新加坡新泻天鹅 FC VS 勇士足球会', NULL, NULL, 378, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.160681', 2070, '2019-06-30 18:00:00.000000', 'https://www.ballbar.cc/live/20890', '首尔 VS 蔚山现代', NULL, NULL, 381, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.166198', 2071, '2019-06-30 18:00:00.000000', 'https://www.ballbar.cc/live/18450', '浦项制铁 VS 全北现代', NULL, NULL, 381, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.167243', 2072, '2019-06-30 18:00:00.000000', 'https://www.ballbar.cc/live/16390', '全南龙 VS 富川FC', NULL, NULL, 380, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.170011', 2073, '2019-06-30 18:00:00.000000', 'https://www.ballbar.cc/live/16730', '安阳FC VS 水原', NULL, NULL, 380, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.173520', 2074, '2019-06-30 18:00:00.000000', 'https://www.ballbar.cc/live/20260', '仁川联 VS 江原FC', NULL, NULL, 381, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.175699', 2075, '2019-06-30 19:00:00.000000', 'https://www.ballbar.cc/live/16950', '釜山偶像 VS 牙山木槿花', NULL, NULL, 380, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.182192', 2076, '2019-06-30 19:00:00.000000', 'https://www.ballbar.cc/live/17140', '普拉楚普 VS 蒙通联', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.184779', 2077, '2019-06-30 20:00:00.000000', 'https://www.ballbar.cc/live/19000', '春武里 VS 武里南', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.187967', 2078, '2019-06-30 20:00:00.000000', 'https://www.ballbar.cc/live/19910', '狮子港足球会 VS 清莱联', NULL, NULL, 371, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.189297', 2079, '2019-07-01 00:00:00.000000', 'https://www.ballbar.cc/live/16770', '布隆迪 VS 几内亚', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.194497', 2080, '2019-07-01 00:00:00.000000', 'https://www.ballbar.cc/live/17150', '马达加斯加 VS 尼日利亚', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.200306', 2081, '2019-07-01 03:00:00.000000', 'https://www.ballbar.cc/live/17250', '津巴布韦 VS 刚果民主共和国', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.201691', 2082, '2019-07-01 03:00:00.000000', 'https://www.ballbar.cc/live/17670', '乌干达 VS 埃及', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.204288', 2083, '2019-07-01 11:00:00.000000', 'https://www.ballbar.cc/live/21460', '波特兰木材 VS FC达拉斯', NULL, NULL, 331, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.208291', 2084, '2019-07-02 00:00:00.000000', 'https://www.ballbar.cc/live/18190', '南非 VS 摩洛哥', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.210043', 2085, '2019-07-02 00:00:00.000000', 'https://www.ballbar.cc/live/18850', '纳米比亚 VS 象牙海岸', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.212344', 2086, '2019-07-02 03:00:00.000000', 'https://www.ballbar.cc/live/19400', '坦桑尼亚 VS 阿尔及利亚', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.214822', 2087, '2019-07-02 03:00:00.000000', 'https://www.ballbar.cc/live/19410', '肯尼亚 VS 塞内加尔', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.217438', 2088, '2019-07-03 00:00:00.000000', 'https://www.ballbar.cc/live/19420', '比宁 VS 喀麦隆', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.225039', 2089, '2019-07-03 00:00:00.000000', 'https://www.ballbar.cc/live/19430', '几内亚比绍 VS 加纳', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.227624', 2090, '2019-07-03 03:00:00.000000', 'https://www.ballbar.cc/live/21310', 'W45 VS W46', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.230645', 2091, '2019-07-03 03:00:00.000000', 'https://www.ballbar.cc/live/19440', '安哥拉 VS 马里', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.234068', 2092, '2019-07-03 03:00:00.000000', 'https://www.ballbar.cc/live/19450', '毛里塔尼亚 VS 突尼斯', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.238554', 2093, '2019-07-03 08:30:00.000000', 'https://www.ballbar.cc/live/20580', 'W19 VS W21', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.243349', 2094, '2019-07-03 19:45:00.000000', 'https://www.ballbar.cc/live/20060', '幼狮队 VS 内政联', NULL, NULL, 378, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.245740', 2095, '2019-07-04 03:00:00.000000', 'https://www.ballbar.cc/live/21320', 'W47 VS W48', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.248667', 2096, '2019-07-04 08:30:00.000000', 'https://www.ballbar.cc/live/20590', 'W20 VS W22', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.253892', 2097, '2019-07-04 23:00:00.000000', 'https://www.ballbar.cc/live/15500', '帕兰加 VS 帕内韦日斯', NULL, NULL, 375, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.254687', 2098, '2019-07-05 01:00:00.000000', 'https://www.ballbar.cc/live/15620', '苏度瓦 VS 考纳斯 斯帕尼斯', NULL, NULL, 375, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.256558', 2099, '2019-07-05 19:45:00.000000', 'https://www.ballbar.cc/live/20070', '芽笼联 VS 后港联足球会', NULL, NULL, 378, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.261808', 2100, '2019-07-06 00:00:00.000000', 'https://www.ballbar.cc/live/16600', '扎尔吉里斯 VS 维尔纽斯骑士', NULL, NULL, 375, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.266038', 2101, '2019-07-06 00:00:00.000000', 'https://www.ballbar.cc/live/19460', 'D组第一 VS B3/E3/F3', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.269974', 2102, '2019-07-06 03:00:00.000000', 'https://www.ballbar.cc/live/19470', 'A组第二 VS C组第二', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.271196', 2103, '2019-07-06 17:30:00.000000', 'https://www.ballbar.cc/live/17990', '幼狮队 VS 新加坡新泻天鹅 FC', NULL, NULL, 378, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.275015', 2104, '2019-07-06 17:30:00.000000', 'https://www.ballbar.cc/live/18280', '勇士足球会 VS 文莱DPMM', NULL, NULL, 378, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.275862', 2105, '2019-07-06 18:00:00.000000', 'https://www.ballbar.cc/live/21660', '光州FC VS 安山木槿花', NULL, NULL, 380, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.279402', 2106, '2019-07-06 18:00:00.000000', 'https://www.ballbar.cc/live/21670', '首尔衣恋 VS 釜山偶像', NULL, NULL, 380, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.282449', 2107, '2019-07-06 22:00:00.000000', 'https://www.ballbar.cc/live/20170', '考纳斯野牛 VS 阿兰达斯', NULL, NULL, 375, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.289037', 2108, '2019-07-06 23:00:00.000000', 'https://www.ballbar.cc/live/21330', 'L49 VS L50', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.290973', 2109, '2019-07-07 01:00:00.000000', 'https://www.ballbar.cc/live/19480', 'B组第二 VS F组第二', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.295766', 2110, '2019-07-07 03:00:00.000000', 'https://www.ballbar.cc/live/20600', 'L23 VS L24', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.297534', 2111, '2019-07-07 03:00:00.000000', 'https://www.ballbar.cc/live/19490', 'A组第一 VS 3CDE', NULL, NULL, 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.300429', 2112, '2019-07-07 17:30:00.000000', 'https://www.ballbar.cc/live/22050', '淡滨尼流浪 VS 马里士他卡沙', NULL, NULL, 378, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.302236', 2113, '2019-07-07 21:00:00.000000', 'https://www.ballbar.cc/live/13210', 'IFK诺尔雪平 VS 赫根', NULL, NULL, 391, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.307536', 2114, '2019-07-07 21:00:00.000000', 'https://www.ballbar.cc/live/18620', '天狼星 VS 厄斯特松德', NULL, NULL, 391, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.308710', 2115, '2019-07-07 21:00:00.000000', 'https://www.ballbar.cc/live/18700', '哥德堡 VS 桑斯瓦尔', NULL, NULL, 391, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.311159', 2116, '2019-07-07 21:00:00.000000', 'https://www.ballbar.cc/live/21730', '马尔默 VS 奥雷布洛', NULL, NULL, 391, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.314055', 2117, '2019-07-07 21:00:00.000000', 'https://www.ballbar.cc/live/21740', '卡马亚 VS AIK索尔纳', NULL, NULL, 391, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.317162', 2118, '2019-07-07 21:00:00.000000', 'https://www.ballbar.cc/live/14430', '艾斯基斯杜拿 VS 佐加顿斯', NULL, NULL, 391, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.320684', 2119, '2019-07-07 21:00:00.000000', 'https://www.ballbar.cc/live/20200', '哈马比 VS 法尔肯贝里', NULL, NULL, 391, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.326483', 2120, '2019-07-07 23:00:00.000000', 'https://www.ballbar.cc/live/22250', 'W49 VS W50', NULL, NULL, 358, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-09 06:02:15.963012', 2121, '2019-07-08 00:00:00.000000', 'https://www.ballbar.cc/live/19500', 'B组第一 VS 3ACD', NULL, '', 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-09 06:02:22.555039', 2122, '2019-07-08 03:00:00.000000', 'https://www.ballbar.cc/live/19510', 'C组第一 VS A3/B3/F3', NULL, '', 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-05 19:24:47.336722', 2123, '2019-07-08 04:00:00.000000', 'https://www.ballbar.cc/live/20610', 'W23 VS W24', NULL, NULL, 377, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-09 06:01:52.564699', 2124, '2019-07-09 01:00:00.000000', 'https://www.ballbar.cc/live/19520', 'E组第一 VS D组第二', NULL, '', 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-09 05:59:10.277128', 2125, '2019-07-09 03:00:00.000000', 'https://www.ballbar.cc/live/19550', 'F组第一 VS E组第二', NULL, '', 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-09 05:59:04.012484', 2126, '2019-07-11 01:00:00.000000', 'https://www.ballbar.cc/live/19930', 'W38 VS W41', NULL, '', 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-09 05:59:06.327087', 2127, '2019-07-11 03:00:00.000000', 'https://www.ballbar.cc/live/20190', 'W42 VS W39', NULL, '', 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-09 05:59:12.743111', 2128, '2019-07-12 01:00:00.000000', 'https://www.ballbar.cc/live/20290', 'W43 VS W40', NULL, '', 390, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-10 02:47:46.554708', 2129, '2019-07-12 03:00:00.000000', 'https://www.ballbar.cc/live/20300', 'W37 VS W44', NULL, '', 335, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-10 01:36:07.548733', 2130, '2019-07-20 16:00:00.000000', 'https://www.ballbar.cc/live/21070', '山西信都 VS 宁夏火凤凰', NULL, '', 392, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-10 01:36:12.438549', 2131, '2019-07-20 16:00:00.000000', 'https://www.ballbar.cc/live/21080', '广西宝韵 VS 江西联盛国贸', NULL, '', 392, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-10 01:36:15.889780', 2132, '2019-07-20 19:30:00.000000', 'https://www.ballbar.cc/live/21090', '成都兴城 VS 浙江义乌商城', NULL, '', 392, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-09 05:48:07.659738', 2133, '2019-07-23 15:00:00.000000', 'https://www.ballbar.cc/live/16530', '山东鲁能 VS 北京国安', NULL, '', 393, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-09 05:47:58.642273', 2134, '2019-07-23 15:00:00.000000', 'https://www.ballbar.cc/live/12240', '广州恒大 VS 上海上港', NULL, '', 393, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-09 05:47:54.405258', 2135, '2019-07-23 15:00:00.000000', 'https://www.ballbar.cc/live/7340', '天津天海 VS 大连一方', NULL, '', 393, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-10 01:36:22.203424', 2136, '2019-07-24 08:00:00.000000', 'https://www.ballbar.cc/live/20650', '葛度尔古斯 VS SP帕尔梅拉斯', NULL, '', 394, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-10 01:36:27.278907', 2137, '2019-07-24 08:00:00.000000', 'https://www.ballbar.cc/live/20660', '埃梅莱克 VS RJ弗拉门戈', NULL, '', 394, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-10 01:36:31.038089', 2138, '2019-07-24 08:00:00.000000', 'https://www.ballbar.cc/live/18250', '圣洛伦佐 VS 波特诺山丘', NULL, '', 394, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-10 01:36:36.277004', 2139, '2019-07-24 08:00:00.000000', 'https://www.ballbar.cc/live/17420', '基多大学体育联盟 VS 奥林匹亚', NULL, '', 394, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-10 01:36:41.235933', 2140, '2019-07-25 06:15:00.000000', 'https://www.ballbar.cc/live/20670', 'PR巴拉纳竞技 VS 博卡青年', NULL, '', 394, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-10 01:36:45.874036', 2141, '2019-07-26 08:30:00.000000', 'https://www.ballbar.cc/live/20680', '格雷米奥阿雷格里港 VS 里本泰德', NULL, '', 394, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-10 01:36:49.236023', 2142, '2019-07-31 06:15:00.000000', 'https://www.ballbar.cc/live/22260', 'MG克鲁塞罗 VS CA河床', NULL, '', 394, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-10 01:36:53.352856', 2143, '2019-07-31 08:00:00.000000', 'https://www.ballbar.cc/live/20690', '里本泰德 VS 格雷米奥阿雷格里港', NULL, '', 394, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-10 01:36:57.828808', 2144, '2019-07-31 08:00:00.000000', 'https://www.ballbar.cc/live/7930', '波特诺山丘 VS 圣洛伦佐', NULL, '', 394, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-10 01:37:02.179487', 2145, '2019-07-31 08:00:00.000000', 'https://www.ballbar.cc/live/15820', '奥林匹亚 VS 基多大学体育联盟', NULL, '', 394, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-12 03:14:11.103779', 2146, '2019-07-31 08:00:00.000000', 'https://www.ballbar.cc/live/5660', '博卡青年 VS PR巴拉纳竞技', NULL, '', 394, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-12 02:43:52.816746', 2147, '2019-07-31 08:30:00.000000', 'https://www.ballbar.cc/live/14210', 'SP帕尔梅拉斯 VS 葛度尔古斯', NULL, '', 394, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-12 02:43:49.345636', 2148, '2019-08-01 06:15:00.000000', 'https://www.ballbar.cc/live/21300', 'RS国际体育俱乐部 VS 国民队', NULL, '', 394, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-06-12 02:43:45.746775', 2149, '2019-08-01 08:30:00.000000', 'https://www.ballbar.cc/live/21810', 'RJ弗拉门戈 VS 埃梅莱克', NULL, '', 394, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-09 05:47:00.974422', 2150, '2019-10-10 02:45:00.000000', 'https://www.ballbar.cc/live/21870', '德国 VS 阿根廷', NULL, '', 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-15 18:51:43.133419', 2151, '2019-07-15 19:00:00.000000', 'https://live.sportlive.cc/live/15500', '布加勒斯特公开赛 - 中央场地 ', NULL, NULL, 347, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-15 18:51:43.134455', 2152, '2019-07-15 19:00:00.000000', 'https://live.sportlive.cc/live/17680', '布加勒斯特公开赛 - 看台场地 ', NULL, NULL, 347, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-15 18:51:43.136547', 2153, '2019-07-15 22:30:00.000000', 'https://live.sportlive.cc/live/20730', ' 朝鲜 VS 塔吉克斯坦', NULL, NULL, 288, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-15 18:51:43.143312', 2154, '2019-07-16 01:00:00.000000', 'https://live.sportlive.cc/live/21000', '赫尔辛堡 VS 天狼星', NULL, NULL, 391, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-15 18:51:43.125817', 2155, '2019-07-15 15:00:00.000000', 'https://live.sportlive.cc/live/14020', '奥斯特拉瓦 2号桌', NULL, NULL, 339, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-15 18:51:43.145734', 2156, '2019-07-16 01:00:00.000000', 'https://live.sportlive.cc/live/18680', '桑斯瓦尔 VS 哈马比', NULL, NULL, 391, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-15 18:51:43.147559', 2157, '2019-07-16 01:00:00.000000', 'https://live.sportlive.cc/live/16140', '史达比克 VS 萨普斯堡', NULL, NULL, 382, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-15 18:51:43.153836', 2158, '2019-07-16 02:10:00.000000', 'https://live.sportlive.cc/live/9360', '旧金山巨人 VS 科罗拉多洛矶', NULL, NULL, 338, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-15 18:51:43.157878', 2159, '2019-07-16 04:00:00.000000', 'https://live.sportlive.cc/live/19480', '皇家加西拉索 VS 莫利诺斯海盗 ', NULL, NULL, 357, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-15 18:51:43.162182', 2162, '2019-07-16 07:10:00.000000', 'https://live.sportlive.cc/live/10260', '底特律老虎 VS 克里夫蓝印地安人', NULL, NULL, 338, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-15 18:51:43.163442', 2163, '2019-07-16 07:10:00.000000', 'https://live.sportlive.cc/live/10680', '多伦多蓝鸟 VS 波士顿红袜', NULL, NULL, 338, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-15 18:51:43.166595', 2164, '2019-07-16 08:05:00.000000', 'https://live.sportlive.cc/live/9410', '辛辛那提红人 VS 芝加哥小熊', NULL, NULL, 338, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-15 18:51:43.168289', 2165, '2019-07-16 08:15:00.000000', 'https://live.sportlive.cc/live/8030', '芝加哥白袜 VS 堪萨斯皇家', NULL, NULL, 338, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-15 18:51:43.167502', 2166, '2019-07-16 08:10:00.000000', 'https://live.sportlive.cc/live/22990', '勇士 VS 酿酒人', NULL, NULL, 338, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-15 18:51:43.168579', 2167, '2019-07-16 08:15:00.000000', 'https://live.sportlive.cc/live/8760', '匹兹堡海盗 VS 圣路易红雀', NULL, NULL, 338, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-15 18:51:43.173203', 2169, '2019-07-15 15:00:00.000000', 'https://live.sportlive.cc/live/22060', '奥斯特拉瓦 1号桌', NULL, NULL, 339, '1', '0');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:55.963873', 2476, '2019-07-16 15:00:00.000000', 'https://live.sportlive.cc/live/6870', '奥斯特拉瓦 1号桌', NULL, NULL, 339, '1', '6870');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:55.973093', 2477, '2019-07-16 17:30:00.000000', 'https://live.sportlive.cc/live/20910', '斗山熊 VS KT巫师', NULL, NULL, 300, '1', '20910');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:55.976503', 2478, '2019-07-16 17:30:00.000000', 'https://live.sportlive.cc/live/21610', 'SK飞龙 VS LG双子', NULL, NULL, 300, '1', '21610');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:55.982086', 2479, '2019-07-16 17:30:00.000000', 'https://live.sportlive.cc/live/14730', '基乌姆英雄 VS 三星狮子', NULL, NULL, 300, '1', '14730');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:55.987856', 2480, '2019-07-16 17:30:00.000000', 'https://live.sportlive.cc/live/9650', '起亚老虎 VS 乐天巨人', NULL, NULL, 300, '1', '9650');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:55.994046', 2481, '2019-07-16 17:30:00.000000', 'https://live.sportlive.cc/live/9770', '韩华老鹰 VS NC恐龙', NULL, NULL, 300, '1', '9770');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.059171', 2482, '2019-07-16 19:00:00.000000', 'https://live.sportlive.cc/live/16130', '球员锦标赛 19 - 板 2 ', NULL, NULL, 352, '1', '16130');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.060825', 2483, '2019-07-16 19:00:00.000000', 'https://live.sportlive.cc/live/19670', '布加勒斯特公开赛 - 4号场地 ', NULL, NULL, 347, '1', '19670');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.060635', 2484, '2019-07-16 19:00:00.000000', 'https://live.sportlive.cc/live/22170', '布加勒斯特公开赛 - 中央场地 ', NULL, NULL, 347, '1', '22170');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.068227', 2485, '2019-07-16 10:00:00.000000', 'https://live.sportlive.cc/live/6550', '休士顿太空人 VS 洛杉矶天使', NULL, NULL, 338, '1', '6550');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.069868', 2486, '2019-07-16 19:30:00.000000', 'https://live.sportlive.cc/live/20930', '球员锦标赛 19 - 板 1 ', NULL, NULL, 352, '1', '20930');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.079265', 2487, '2019-07-16 22:30:00.000000', 'https://live.sportlive.cc/live/20750', '印度 VS 叙利亚', NULL, NULL, 288, '1', '20750');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.086347', 2488, '2019-07-17 01:00:00.000000', 'https://live.sportlive.cc/live/15990', '韦斯特罗斯 VS 乔科平所达', NULL, NULL, 363, '1', '15990');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.101900', 2489, '2019-07-17 08:10:00.000000', 'https://live.sportlive.cc/live/23260', '大都会 VS 双城', NULL, NULL, 338, '1', '23260');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.105260', 2490, '2019-07-17 08:10:00.000000', 'https://live.sportlive.cc/live/21500', '甘拿斯亚门多萨 VS 河床', NULL, NULL, 321, '1', '21500');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.106206', 2491, '2019-07-17 17:30:00.000000', 'https://live.sportlive.cc/live/11840', '乐天巨人队 VS 起亚虎', NULL, NULL, 300, '1', '11840');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.107233', 2492, '2019-07-17 17:30:00.000000', 'https://live.sportlive.cc/live/10660', 'NC恐龙 VS 韩华老鹰', NULL, NULL, 300, '1', '10660');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.108636', 2493, '2019-07-17 17:30:00.000000', 'https://live.sportlive.cc/live/12260', 'LG双子 VS SK飞龙', NULL, NULL, 300, '1', '12260');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.109048', 2494, '2019-07-17 17:30:00.000000', 'https://live.sportlive.cc/live/17450', 'KT巫师 VS 斗山熊', NULL, NULL, 300, '1', '17450');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.110851', 2495, '2019-07-17 17:30:00.000000', 'https://live.sportlive.cc/live/16580', '三星狮 VS 耐克森英雄', NULL, NULL, 300, '1', '16580');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.118597', 2496, '2019-07-18 00:05:00.000000', 'https://live.sportlive.cc/live/14500', '芝加哥天空 VS 亚特兰大梦想', NULL, NULL, 327, '1', '14500');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.122466', 2497, '2019-07-18 03:00:00.000000', 'https://live.sportlive.cc/live/20400', 'L49 VS L50', NULL, NULL, 390, '1', '20400');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.126180', 2498, '2019-07-18 03:35:00.000000', 'https://live.sportlive.cc/live/21570', '菲尼克斯水星 VS 达拉斯飞翼', NULL, NULL, 327, '1', '21570');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.125109', 2499, '2019-07-18 07:00:00.000000', 'https://live.sportlive.cc/live/19840', '亚特兰大联 VS 休斯顿迪纳摩', NULL, NULL, 331, '1', '19840');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.128443', 2500, '2019-07-18 07:00:00.000000', 'https://live.sportlive.cc/live/19850', '新英格兰革命 VS 温哥华白帽', NULL, NULL, 331, '1', '19850');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.128516', 2501, '2019-07-18 08:00:00.000000', 'https://live.sportlive.cc/live/11270', '多伦多FC VS 纽约红牛', NULL, NULL, 331, '1', '11270');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.129138', 2502, '2019-07-18 08:00:00.000000', 'https://live.sportlive.cc/live/19310', '芝加哥火焰 VS 哥伦布水手', NULL, NULL, 331, '1', '19310');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.129780', 2503, '2019-07-18 08:05:00.000000', 'https://live.sportlive.cc/live/7270', '明尼苏达山猫 VS 西雅图风暴', NULL, NULL, 327, '1', '7270');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.132821', 2504, '2019-07-18 19:45:00.000000', 'https://live.sportlive.cc/live/20980', '幼狮队 VS 淡滨尼流浪', NULL, NULL, 378, '1', '20980');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.132594', 2505, '2019-07-18 19:45:00.000000', 'https://live.sportlive.cc/live/22680', '内政联 VS 新加坡新泻天鹅 FC', NULL, NULL, 378, '1', '22680');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.133122', 2506, '2019-07-19 03:35:00.000000', 'https://live.sportlive.cc/live/16560', '洛杉矶火花 VS 达拉斯飞翼', NULL, NULL, 327, '1', '16560');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.136637', 2507, '2019-07-19 10:00:00.000000', 'https://live.sportlive.cc/live/17200', '波特兰木材 VS 奥兰多城', NULL, NULL, 331, '1', '17200');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.136758', 2508, '2019-07-19 08:00:00.000000', 'https://live.sportlive.cc/live/19320', '辛辛那提 VS 华盛顿特区联', NULL, NULL, 331, '1', '19320');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.137517', 2509, '2019-07-19 18:00:00.000000', 'https://live.sportlive.cc/live/8110', '富山胜利 VS 横滨体育', NULL, NULL, 360, '1', '8110');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.138329', 2510, '2019-07-19 19:45:00.000000', 'https://live.sportlive.cc/live/17960', '后港联 VS 文莱DPMM', NULL, NULL, 378, '1', '17960');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.140522', 2511, '2019-07-19 19:45:00.000000', 'https://live.sportlive.cc/live/10710', '勇士 VS 马里士他卡沙', NULL, NULL, 378, '1', '10710');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.155677', 2512, '2019-07-20 03:00:00.000000', 'https://live.sportlive.cc/live/22200', 'W49 VS W50', NULL, NULL, 390, '1', '22200');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.155983', 2513, '2019-07-20 07:05:00.000000', 'https://live.sportlive.cc/live/20210', '印第安纳狂热 VS 华盛顿神秘人', NULL, NULL, 327, '1', '20210');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.157023', 2514, '2019-07-20 07:35:00.000000', 'https://live.sportlive.cc/live/16680', '康涅狄格太阳 VS 亚特兰大梦想', NULL, NULL, 327, '1', '16680');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.160679', 2515, '2019-07-20 10:00:00.000000', 'https://live.sportlive.cc/live/19290', '洛杉矶银河 VS 洛杉矶', NULL, NULL, 331, '1', '19290');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.160954', 2516, '2019-07-20 10:00:00.000000', 'https://live.sportlive.cc/live/19900', '犹他王室女足 VS 波特兰荆棘女足', NULL, NULL, 384, '1', '19900');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.161104', 2517, '2019-07-20 10:05:00.000000', 'https://live.sportlive.cc/live/16340', '西雅图风暴 VS 拉斯维加斯王牌', NULL, NULL, 327, '1', '16340');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.162162', 2518, '2019-07-20 14:00:00.000000', 'https://live.sportlive.cc/live/10400', '盛冈仙鹤 VS 群马草津温泉', NULL, NULL, 360, '1', '10400');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.164060', 2519, '2019-07-20 14:00:00.000000', 'https://live.sportlive.cc/live/21800', '北海道札幌冈萨多 VS 湘南比马', NULL, NULL, 373, '1', '21800');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.169469', 2520, '2019-07-20 16:00:00.000000', 'https://live.sportlive.cc/live/21080', '广西宝韵 VS 江西联盛国贸', NULL, NULL, 392, '1', '21080');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.171093', 2521, '2019-07-20 16:00:00.000000', 'https://live.sportlive.cc/live/21060', '内蒙古草上飞 VS 河北精英', NULL, NULL, 392, '1', '21060');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.171457', 2522, '2019-07-20 17:00:00.000000', 'https://live.sportlive.cc/live/10910', '北九州向日葵 VS 八户云罗里', NULL, NULL, 360, '1', '10910');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.172091', 2523, '2019-07-20 16:00:00.000000', 'https://live.sportlive.cc/live/21070', '山西信都 VS 宁夏火凤凰', NULL, NULL, 392, '1', '21070');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.172781', 2524, '2019-07-20 16:00:00.000000', 'https://live.sportlive.cc/live/8970', '东京 VS 赞岐乌冬', NULL, NULL, 360, '1', '8970');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.175072', 2525, '2019-07-20 17:00:00.000000', 'https://live.sportlive.cc/live/18860', '秋田蓝闪电 VS 鸟取飞翔', NULL, NULL, 360, '1', '18860');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.175299', 2526, '2019-07-20 17:00:00.000000', 'https://live.sportlive.cc/live/19170', '千叶市原 VS 福冈黄蜂', NULL, NULL, 359, '1', '19170');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.178500', 2527, '2019-07-20 17:00:00.000000', 'https://live.sportlive.cc/live/22480', 'FC横滨 VS 枥木SC', NULL, NULL, 359, '1', '22480');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.182248', 2528, '2019-07-20 17:00:00.000000', 'https://live.sportlive.cc/live/20240', '长崎成功丸 VS 甲府风林', NULL, NULL, 359, '1', '20240');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.185535', 2529, '2019-07-20 18:00:00.000000', 'https://live.sportlive.cc/live/21020', '东京绿茵 VS FC爱媛', NULL, NULL, 359, '1', '21020');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.188316', 2530, '2019-07-20 18:00:00.000000', 'https://live.sportlive.cc/live/18890', '首尔 VS 全北现代', NULL, NULL, 381, '1', '18890');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.189161', 2531, '2019-07-20 18:00:00.000000', 'https://live.sportlive.cc/live/16220', '雷法山口 VS 新泻天鹅', NULL, NULL, 359, '1', '16220');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.194067', 2532, '2019-07-20 18:00:00.000000', 'https://live.sportlive.cc/live/11430', '京都不死鸟 VS 大宫松鼠', NULL, NULL, 359, '1', '11430');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.196790', 2533, '2019-07-20 18:00:00.000000', 'https://live.sportlive.cc/live/19150', '庆南FC VS 济州联队', NULL, NULL, 381, '1', '19150');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.197988', 2534, '2019-07-20 18:00:00.000000', 'https://live.sportlive.cc/live/6710', '鹿儿岛联 VS FC岐埠', NULL, NULL, 359, '1', '6710');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.198658', 2535, '2019-07-20 18:00:00.000000', 'https://live.sportlive.cc/live/22330', '浦项制铁 VS 仁川联', NULL, NULL, 381, '1', '22330');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.198718', 2536, '2019-07-20 18:00:00.000000', 'https://live.sportlive.cc/live/22790', '蔚山现代 VS 江原FC', NULL, NULL, 381, '1', '22790');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.200448', 2537, '2019-07-20 18:00:00.000000', 'https://live.sportlive.cc/live/12770', '柏雷素尔 VS 金泽塞维根', NULL, NULL, 359, '1', '12770');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.201325', 2538, '2019-07-20 18:45:00.000000', 'https://live.sportlive.cc/live/6100', 'PTT罗勇 VS 狮子港', NULL, NULL, 371, '1', '6100');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.203093', 2539, '2019-07-20 19:00:00.000000', 'https://live.sportlive.cc/live/18310', '查英特 VS 普拉楚普', NULL, NULL, 371, '1', '18310');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.206150', 2540, '2019-07-20 19:00:00.000000', 'https://live.sportlive.cc/live/21520', '松本雅美加 VS 广岛三箭', NULL, NULL, 373, '1', '21520');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.211540', 2541, '2019-07-20 19:00:00.000000', 'https://live.sportlive.cc/live/22120', '神户胜利船 VS 横滨水手', NULL, NULL, 373, '1', '22120');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.215565', 2542, '2019-07-20 19:00:00.000000', 'https://live.sportlive.cc/live/20140', '名古屋八鲸 VS 大阪飞脚', NULL, NULL, 373, '1', '20140');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.220457', 2543, '2019-07-20 19:30:00.000000', 'https://live.sportlive.cc/live/21090', '成都兴城 VS 浙江义乌商城', NULL, NULL, 392, '1', '21090');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.230016', 2544, '2019-07-20 19:30:00.000000', 'https://live.sportlive.cc/live/21350', '鹿岛鹿角 VS 鸟栖沙岩', NULL, NULL, 373, '1', '21350');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.355553', 2545, '2019-07-20 20:00:00.000000', 'https://live.sportlive.cc/live/10790', '春武里 VS 尚卡汶里', NULL, NULL, 371, '1', '10790');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.358435', 2546, '2019-07-20 20:00:00.000000', 'https://live.sportlive.cc/live/11580', '磐田山叶 VS 浦和红钻', NULL, NULL, 373, '1', '11580');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.361532', 2547, '2019-07-20 20:00:00.000000', 'https://live.sportlive.cc/live/17180', '清水心跳 VS 东京', NULL, NULL, 373, '1', '17180');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.362974', 2548, '2019-07-20 20:00:00.000000', 'https://live.sportlive.cc/live/9630', '大阪樱花 VS 仙台维加泰', NULL, NULL, 373, '1', '9630');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.364952', 2549, '2019-07-20 20:00:00.000000', 'https://live.sportlive.cc/live/17770', '拉查布里府 VS 清迈', NULL, NULL, 371, '1', '17770');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.370095', 2550, '2019-07-20 22:00:00.000000', 'https://live.sportlive.cc/live/7920', '科科拉 VS 塞纳容', NULL, NULL, 385, '1', '7920');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.371459', 2551, '2019-07-20 22:00:00.000000', 'https://live.sportlive.cc/live/18660', '坦佩雷埃尔维斯 VS 赫尔辛基', NULL, NULL, 385, '1', '18660');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.372166', 2552, '2019-07-20 22:00:00.000000', 'https://live.sportlive.cc/live/19160', 'AIK索尔纳 VS 赫尔辛堡', NULL, NULL, 391, '1', '19160');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.373406', 2553, '2019-07-20 22:00:00.000000', 'https://live.sportlive.cc/live/18640', '达尔库德 VS 华保斯FC', NULL, NULL, 363, '1', '18640');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.373993', 2554, '2019-07-20 22:00:00.000000', 'https://live.sportlive.cc/live/16510', '西里安斯卡 VS IK布拉格', NULL, NULL, 363, '1', '16510');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.373796', 2555, '2019-07-20 22:00:00.000000', 'https://live.sportlive.cc/live/11490', '戴戈福斯 VS 盖斯', NULL, NULL, 363, '1', '11490');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.374772', 2556, '2019-07-20 22:00:00.000000', 'https://live.sportlive.cc/live/14470', '布洛马波卡纳 VS 诺尔比', NULL, NULL, 363, '1', '14470');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.375186', 2557, '2019-07-20 22:00:00.000000', 'https://live.sportlive.cc/live/22720', '奥雷布洛 VS 法尔肯贝里', NULL, NULL, 391, '1', '22720');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.376176', 2558, '2019-07-20 22:00:00.000000', 'https://live.sportlive.cc/live/9490', '瓦萨 VS 拉赫蒂', NULL, NULL, 385, '1', '9490');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.381803', 2559, '2019-07-21 00:00:00.000000', 'https://live.sportlive.cc/live/18240', '弗雷吉 VS 奥尔格里特', NULL, NULL, 363, '1', '18240');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.384100', 2560, '2019-07-21 00:10:00.000000', 'https://live.sportlive.cc/live/21200', 'Mitre VS 拉普拉塔大学生', NULL, NULL, 321, '1', '21200');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.384332', 2561, '2019-07-21 00:00:00.000000', 'https://live.sportlive.cc/live/17510', '桑斯瓦尔 VS 赫根', NULL, NULL, 391, '1', '17510');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.394946', 2562, '2019-07-21 03:05:00.000000', 'https://live.sportlive.cc/live/16720', '纽约自由 VS 洛杉矶火花', NULL, NULL, 327, '1', '16720');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.399652', 2563, '2019-07-21 04:10:00.000000', 'https://live.sportlive.cc/live/22840', 'Gimnasia La Plata VS Defensa y Justicia', NULL, NULL, 321, '1', '22840');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.400113', 2564, '2019-07-21 07:30:00.000000', 'https://live.sportlive.cc/live/7780', '奥兰多荣耀女足 VS FC天蓝女足', NULL, NULL, 384, '1', '7780');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.401701', 2565, '2019-07-21 07:00:00.000000', 'https://live.sportlive.cc/live/6750', '华盛顿精神女足 VS 休斯顿达斯女足', NULL, NULL, 384, '1', '6750');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.402574', 2566, '2019-07-21 07:30:00.000000', 'https://live.sportlive.cc/live/19280', '哥伦布水手 VS 蒙特利尔冲击', NULL, NULL, 331, '1', '19280');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.406288', 2567, '2019-07-21 07:30:00.000000', 'https://live.sportlive.cc/live/19300', '多伦多FC VS 休斯顿迪纳摩', NULL, NULL, 331, '1', '19300');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.407806', 2568, '2019-07-21 08:30:00.000000', 'https://live.sportlive.cc/live/18030', '体育堪萨斯城 VS FC达拉斯', NULL, NULL, 331, '1', '18030');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.408666', 2569, '2019-07-21 08:05:00.000000', 'https://live.sportlive.cc/live/21260', '达拉斯飞翼 VS 菲尼克斯水星', NULL, NULL, 327, '1', '21260');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.409422', 2570, '2019-07-21 10:00:00.000000', 'https://live.sportlive.cc/live/21450', '皇家盐湖城 VS 明尼苏达联', NULL, NULL, 331, '1', '21450');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.409657', 2571, '2019-07-21 07:30:00.000000', 'https://live.sportlive.cc/live/16840', '费城联盟 VS 芝加哥火焰', NULL, NULL, 331, '1', '16840');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.409544', 2572, '2019-07-21 09:00:00.000000', 'https://live.sportlive.cc/live/16800', '科罗拉多急流 VS 纽约城', NULL, NULL, 331, '1', '16800');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.413278', 2573, '2019-07-21 10:00:00.000000', 'https://live.sportlive.cc/live/11220', '温哥华白帽 VS 圣何塞地震', NULL, NULL, 331, '1', '11220');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.413496', 2574, '2019-07-21 14:00:00.000000', 'https://live.sportlive.cc/live/16250', '沼津青蓝 VS 长野帕塞罗', NULL, NULL, 360, '1', '16250');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.416070', 2575, '2019-07-21 14:00:00.000000', 'https://live.sportlive.cc/live/9830', '福岛联队 VS 熊本深红', NULL, NULL, 360, '1', '9830');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.416916', 2576, '2019-07-21 17:00:00.000000', 'https://live.sportlive.cc/live/19580', '大阪樱花U23 VS 大阪钢巴U23', NULL, NULL, 360, '1', '19580');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.419462', 2577, '2019-07-21 17:00:00.000000', 'https://live.sportlive.cc/live/17650', '町田泽维亚 VS 德岛漩涡', NULL, NULL, 359, '1', '17650');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.419787', 2578, '2019-07-21 17:00:00.000000', 'https://live.sportlive.cc/live/17170', '水户蜀葵 VS 琉球', NULL, NULL, 359, '1', '17170');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.420789', 2579, '2019-07-21 16:00:00.000000', 'https://live.sportlive.cc/live/21840', '藤枝MYFC VS 相模原', NULL, NULL, 360, '1', '21840');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.427297', 2580, '2019-07-21 18:00:00.000000', 'https://live.sportlive.cc/live/16500', '水原三星 VS 城南一和', NULL, NULL, 381, '1', '16500');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.428893', 2581, '2019-07-21 18:00:00.000000', 'https://live.sportlive.cc/live/15140', '仁川凤凰 VS 大邱FC', NULL, NULL, 381, '1', '15140');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.429607', 2582, '2019-07-21 18:00:00.000000', 'https://live.sportlive.cc/live/9500', '冈山绿雉 VS 山形山神', NULL, NULL, 359, '1', '9500');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.433007', 2583, '2019-07-21 19:00:00.000000', 'https://live.sportlive.cc/live/17980', '桐艾 VS 那空拉查斯马', NULL, NULL, 371, '1', '17980');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.434695', 2584, '2019-07-21 19:00:00.000000', 'https://live.sportlive.cc/live/22710', '武里南 VS 曼谷联', NULL, NULL, 371, '1', '22710');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.449686', 2585, '2019-07-21 20:00:00.000000', 'https://live.sportlive.cc/live/15960', '蒙通联 VS 清莱联', NULL, NULL, 371, '1', '15960');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.454815', 2586, '2019-07-21 20:00:00.000000', 'https://live.sportlive.cc/live/19560', '沙拉武里 VS 北榄城', NULL, NULL, 371, '1', '19560');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.456242', 2587, '2019-07-21 21:00:00.000000', 'https://live.sportlive.cc/live/8630', '哥德堡 VS 艾斯基斯杜拿', NULL, NULL, 391, '1', '8630');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.457818', 2588, '2019-07-21 21:00:00.000000', 'https://live.sportlive.cc/live/10470', '马尔默 VS 天狼星', NULL, NULL, 391, '1', '10470');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.458629', 2589, '2019-07-21 21:00:00.000000', 'https://live.sportlive.cc/live/16780', '米亚尔比 VS 哈尔姆斯达斯', NULL, NULL, 363, '1', '16780');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.463234', 2590, '2019-07-21 22:00:00.000000', 'https://live.sportlive.cc/live/8670', '库普斯 VS 玛丽港', NULL, NULL, 385, '1', '8670');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.464573', 2591, '2019-07-21 22:00:00.000000', 'https://live.sportlive.cc/live/21750', '图尔库国际 VS 洪卡', NULL, NULL, 385, '1', '21750');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.473157', 2592, '2019-07-21 23:30:00.000000', 'https://live.sportlive.cc/live/16540', 'IFK诺尔雪平 VS 厄斯特松德', NULL, NULL, 391, '1', '16540');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.467794', 2593, '2019-07-21 22:00:00.000000', 'https://live.sportlive.cc/live/12500', '赫尔辛基IFK VS 路云尼米', NULL, NULL, 385, '1', '12500');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.473861', 2594, '2019-07-21 23:30:00.000000', 'https://live.sportlive.cc/live/15330', '奥斯达 VS 特利堡', NULL, NULL, 363, '1', '15330');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.474361', 2595, '2019-07-22 00:00:00.000000', 'https://live.sportlive.cc/live/20820', '斯特罗曼 VS 斯吉德', NULL, NULL, 351, '1', '20820');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.477737', 2596, '2019-07-22 00:00:00.000000', 'https://live.sportlive.cc/live/16150', '斯达 VS 汉坎', NULL, NULL, 351, '1', '16150');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.479977', 2597, '2019-07-22 00:00:00.000000', 'https://live.sportlive.cc/live/11390', '布兰 VS 史达比克', NULL, NULL, 382, '1', '11390');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.479122', 2598, '2019-07-22 00:00:00.000000', 'https://live.sportlive.cc/live/16350', '尼斯特索特拉 VS 诺托登', NULL, NULL, 351, '1', '16350');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.481035', 2599, '2019-07-22 00:00:00.000000', 'https://live.sportlive.cc/live/8730', '桑德尼斯 VS UII 奇萨', NULL, NULL, 351, '1', '8730');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.484628', 2600, '2019-07-22 00:00:00.000000', 'https://live.sportlive.cc/live/12080', '诺霍斯 VS 谢夫', NULL, NULL, 351, '1', '12080');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.485855', 2601, '2019-07-22 00:00:00.000000', 'https://live.sportlive.cc/live/15090', 'KFUM奥斯陆 VS 阿勒桑', NULL, NULL, 351, '1', '15090');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.488657', 2602, '2019-07-22 02:00:00.000000', 'https://live.sportlive.cc/live/11280', '莫尔德 VS 萨普斯堡', NULL, NULL, 382, '1', '11280');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.489702', 2603, '2019-07-22 02:00:00.000000', 'https://live.sportlive.cc/live/11480', '辛迪佐夫特 VS 广士云格', NULL, NULL, 351, '1', '11480');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.490207', 2604, '2019-07-22 00:00:00.000000', 'https://live.sportlive.cc/live/15150', '桑恩达 VS 特罗姆斯达伦', NULL, NULL, 351, '1', '15150');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.492708', 2605, '2019-07-22 03:05:00.000000', 'https://live.sportlive.cc/live/12630', '华盛顿神秘人 VS 亚特兰大梦想', NULL, NULL, 327, '1', '12630');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.493173', 2606, '2019-07-22 04:00:00.000000', 'https://live.sportlive.cc/live/21440', '亚特兰大联 VS 华盛顿特区联', NULL, NULL, 331, '1', '21440');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.495858', 2607, '2019-07-22 06:00:00.000000', 'https://live.sportlive.cc/live/21430', '辛辛那提 VS 新英格兰革命', NULL, NULL, 331, '1', '21430');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.496581', 2608, '2019-07-22 06:05:00.000000', 'https://live.sportlive.cc/live/16050', '拉斯维加斯王牌 VS 明尼苏达山猫', NULL, NULL, 327, '1', '16050');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.496063', 2609, '2019-07-22 06:00:00.000000', 'https://live.sportlive.cc/live/5300', '芝加哥红星女足 VS 北卡罗莱纳女足', NULL, NULL, 384, '1', '5300');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.497017', 2610, '2019-07-22 06:05:00.000000', 'https://live.sportlive.cc/live/16230', '芝加哥天空 VS 印第安纳狂热', NULL, NULL, 327, '1', '16230');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.499976', 2611, '2019-07-22 07:30:00.000000', 'https://live.sportlive.cc/live/21420', '奥兰多城 VS 纽约红牛', NULL, NULL, 331, '1', '21420');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.499639', 2612, '2019-07-22 09:30:00.000000', 'https://live.sportlive.cc/live/21410', '西雅图海湾人 VS 波特兰木材', NULL, NULL, 331, '1', '21410');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.502846', 2613, '2019-07-23 01:00:00.000000', 'https://live.sportlive.cc/live/17080', '哈马比 VS 埃尔夫斯堡', NULL, NULL, 391, '1', '17080');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.503952', 2614, '2019-07-23 01:00:00.000000', 'https://live.sportlive.cc/live/21720', '卡马亚 VS 佐加顿斯', NULL, NULL, 391, '1', '21720');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.508148', 2615, '2019-07-23 15:00:00.000000', 'https://live.sportlive.cc/live/10320', '天津泰达 VS 上海申花', NULL, NULL, 393, '1', '10320');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.508312', 2616, '2019-07-23 15:00:00.000000', 'https://live.sportlive.cc/live/16530', '山东鲁能 VS 北京国安', NULL, NULL, 393, '1', '16530');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.509187', 2617, '2019-07-23 15:00:00.000000', 'https://live.sportlive.cc/live/20900', '广州恒大 VS 上海上港', NULL, NULL, 393, '1', '20900');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.510622', 2618, '2019-07-23 15:00:00.000000', 'https://live.sportlive.cc/live/11510', '山东鲁能 VS 北京国安', NULL, NULL, 393, '1', '11510');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.510468', 2619, '2019-07-23 15:00:00.000000', 'https://live.sportlive.cc/live/8090', '天津天海 VS 大连一方', NULL, NULL, 393, '1', '8090');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.511836', 2620, '2019-07-23 15:00:00.000000', 'https://live.sportlive.cc/live/9260', '天津泰达 VS 上海申花', NULL, NULL, 393, '1', '9260');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.511773', 2621, '2019-07-23 15:00:00.000000', 'https://live.sportlive.cc/live/12240', '广州恒大 VS 上海上港', NULL, NULL, 393, '1', '12240');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.518302', 2622, '2019-07-23 15:00:00.000000', 'https://live.sportlive.cc/live/7340', '天津天海 VS 大连一方', NULL, NULL, 393, '1', '7340');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.519998', 2623, '2019-07-23 19:45:00.000000', 'https://live.sportlive.cc/live/20050', '内政联 VS 淡滨尼流浪', NULL, NULL, 378, '1', '20050');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.520373', 2624, '2019-07-24 01:00:00.000000', 'https://live.sportlive.cc/live/20030', '乔科平所达 VS 韦斯特罗斯', NULL, NULL, 363, '1', '20030');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.521422', 2625, '2019-07-24 07:05:00.000000', 'https://live.sportlive.cc/live/5500', '亚特兰大梦想 VS 洛杉矶火花', NULL, NULL, 327, '1', '5500');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.524362', 2626, '2019-07-24 08:00:00.000000', 'https://live.sportlive.cc/live/20630', 'CA河床 VS MG克鲁塞罗', NULL, NULL, 394, '1', '20630');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.525931', 2627, '2019-07-24 08:00:00.000000', 'https://live.sportlive.cc/live/20640', '国民队 VS RS国际体育俱乐部', NULL, NULL, 394, '1', '20640');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.527351', 2628, '2019-07-24 08:00:00.000000', 'https://live.sportlive.cc/live/20650', '葛度尔古斯 VS SP帕尔梅拉斯', NULL, NULL, 394, '1', '20650');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.528867', 2629, '2019-07-24 08:00:00.000000', 'https://live.sportlive.cc/live/18250', '圣洛伦佐 VS 波特诺山丘', NULL, NULL, 394, '1', '18250');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.529034', 2630, '2019-07-24 08:00:00.000000', 'https://live.sportlive.cc/live/20660', '埃梅莱克 VS RJ弗拉门戈', NULL, NULL, 394, '1', '20660');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.529465', 2631, '2019-07-24 08:00:00.000000', 'https://live.sportlive.cc/live/17420', '基多大学体育联盟 VS 奥林匹亚', NULL, NULL, 394, '1', '17420');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.531267', 2632, '2019-07-24 10:05:00.000000', 'https://live.sportlive.cc/live/22730', '菲尼克斯水星 VS 印第安纳狂热', NULL, NULL, 327, '1', '22730');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.532172', 2633, '2019-07-24 10:05:00.000000', 'https://live.sportlive.cc/live/8930', '拉斯维加斯王牌 VS 西雅图风暴', NULL, NULL, 327, '1', '8930');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.532664', 2634, '2019-07-24 18:00:00.000000', 'https://live.sportlive.cc/live/16880', '蔚山现代 VS 仁川凤凰', NULL, NULL, 381, '1', '16880');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.571584', 2635, '2019-07-24 23:35:00.000000', 'https://live.sportlive.cc/live/9540', '康涅狄格太阳 VS 纽约自由', NULL, NULL, 327, '1', '9540');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.571713', 2636, '2019-07-25 01:00:00.000000', 'https://live.sportlive.cc/live/11500', '盖斯 VS 诺尔比', NULL, NULL, 363, '1', '11500');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.574639', 2637, '2019-07-25 06:15:00.000000', 'https://live.sportlive.cc/live/20670', 'PR巴拉纳竞技 VS 博卡青年', NULL, NULL, 394, '1', '20670');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.574810', 2638, '2019-07-25 01:05:00.000000', 'https://live.sportlive.cc/live/20220', '明尼苏达山猫 VS 华盛顿神秘人', NULL, NULL, 327, '1', '20220');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.578181', 2639, '2019-07-25 07:30:00.000000', 'https://live.sportlive.cc/live/12010', 'FC天蓝女足 VS 华盛顿精神女足', NULL, NULL, 384, '1', '12010');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.578785', 2640, '2019-07-25 10:30:00.000000', 'https://live.sportlive.cc/live/15910', '波特兰荆棘女足 VS 休斯顿达斯女足', NULL, NULL, 384, '1', '15910');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.581570', 2641, '2019-07-26 01:00:00.000000', 'https://live.sportlive.cc/live/8950', '哈尔姆斯达斯 VS 布洛马波卡纳', NULL, NULL, 363, '1', '8950');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.582634', 2642, '2019-07-26 08:30:00.000000', 'https://live.sportlive.cc/live/20680', '格雷米奥阿雷格里港 VS 里本泰德', NULL, NULL, 394, '1', '20680');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.584615', 2643, '2019-07-26 17:30:00.000000', 'https://live.sportlive.cc/live/10800', '基乌姆英雄 VS NC恐龙', NULL, NULL, 300, '1', '10800');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.586436', 2644, '2019-07-26 17:30:00.000000', 'https://live.sportlive.cc/live/16460', '三星狮子 VS 韩华老鹰', NULL, NULL, 300, '1', '16460');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.588220', 2645, '2019-07-26 17:30:00.000000', 'https://live.sportlive.cc/live/17060', '乐天巨人 VS SK飞龙', NULL, NULL, 300, '1', '17060');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.588568', 2646, '2019-07-26 17:30:00.000000', 'https://live.sportlive.cc/live/9200', '斗山熊 VS 起亚老虎', NULL, NULL, 300, '1', '9200');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.589604', 2647, '2019-07-26 17:30:00.000000', 'https://live.sportlive.cc/live/9670', 'KT巫师 VS LG双子', NULL, NULL, 300, '1', '9670');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.593960', 2648, '2019-07-26 23:30:00.000000', 'https://live.sportlive.cc/live/8190', '塞纳容 VS 拉赫蒂', NULL, NULL, 385, '1', '8190');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.594156', 2649, '2019-07-26 19:45:00.000000', 'https://live.sportlive.cc/live/20040', '芽笼联 VS 新加坡新泻天鹅 FC', NULL, NULL, 378, '1', '20040');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.674865', 2650, '2019-07-27 07:30:00.000000', 'https://live.sportlive.cc/live/21400', '纽约城 VS 体育堪萨斯城', NULL, NULL, 331, '1', '21400');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.682688', 2651, '2019-07-27 16:00:00.000000', 'https://live.sportlive.cc/live/6290', '藤枝MYFC VS 东京', NULL, NULL, 360, '1', '6290');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.686587', 2652, '2019-07-27 17:00:00.000000', 'https://live.sportlive.cc/live/8020', '赞岐乌冬 VS 沼津青蓝', NULL, NULL, 360, '1', '8020');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.689225', 2653, '2019-07-27 17:00:00.000000', 'https://live.sportlive.cc/live/10860', '相模原 VS 福岛联队', NULL, NULL, 360, '1', '10860');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.690298', 2654, '2019-07-27 17:00:00.000000', 'https://live.sportlive.cc/live/8660', '北九州向日葵 VS 富山胜利', NULL, NULL, 360, '1', '8660');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.690526', 2655, '2019-07-27 17:00:00.000000', 'https://live.sportlive.cc/live/19030', '千叶市原 VS FC横滨', NULL, NULL, 359, '1', '19030');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.690810', 2656, '2019-07-27 17:00:00.000000', 'https://live.sportlive.cc/live/8830', '枥木SC VS 柏雷素尔', NULL, NULL, 359, '1', '8830');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.691074', 2657, '2019-07-27 17:00:00.000000', 'https://live.sportlive.cc/live/9590', '甲府风林 VS 冈山绿雉', NULL, NULL, 359, '1', '9590');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.692033', 2658, '2019-07-27 17:00:00.000000', 'https://live.sportlive.cc/live/7120', '秋田蓝闪电 VS 盛冈仙鹤', NULL, NULL, 360, '1', '7120');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.693312', 2659, '2019-07-27 17:30:00.000000', 'https://live.sportlive.cc/live/19980', '后港联 VS 淡滨尼流浪', NULL, NULL, 378, '1', '19980');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.693502', 2660, '2019-07-27 17:30:00.000000', 'https://live.sportlive.cc/live/20000', '内政联 VS 文莱DPMM', NULL, NULL, 378, '1', '20000');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.694077', 2661, '2019-07-27 18:00:00.000000', 'https://live.sportlive.cc/live/15490', '京都不死鸟 VS FC岐埠', NULL, NULL, 359, '1', '15490');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.695608', 2662, '2019-07-27 18:00:00.000000', 'https://live.sportlive.cc/live/5380', 'FC爱媛 VS 金泽塞维根', NULL, NULL, 359, '1', '5380');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.696202', 2663, '2019-07-27 18:00:00.000000', 'https://live.sportlive.cc/live/8990', '群马草津温泉 VS 大阪樱花U23', NULL, NULL, 360, '1', '8990');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.697470', 2664, '2019-07-27 18:00:00.000000', 'https://live.sportlive.cc/live/14150', '大宫松鼠 VS 雷法山口', NULL, NULL, 359, '1', '14150');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.697639', 2665, '2019-07-27 18:00:00.000000', 'https://live.sportlive.cc/live/22190', '东京绿茵 VS 町田泽维亚', NULL, NULL, 359, '1', '22190');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.697792', 2666, '2019-07-27 18:00:00.000000', 'https://live.sportlive.cc/live/19360', '福冈黄蜂 VS 水户蜀葵', NULL, NULL, 359, '1', '19360');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.698809', 2667, '2019-07-27 18:00:00.000000', 'https://live.sportlive.cc/live/17570', '新泻天鹅 VS 琉球', NULL, NULL, 359, '1', '17570');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.698959', 2668, '2019-07-27 18:00:00.000000', 'https://live.sportlive.cc/live/9740', '鸟取飞翔 VS 熊本深红', NULL, NULL, 360, '1', '9740');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.699735', 2669, '2019-07-27 18:00:00.000000', 'https://live.sportlive.cc/live/15210', '鹿儿岛联 VS 长崎成功丸', NULL, NULL, 359, '1', '15210');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.699884', 2670, '2019-07-27 18:00:00.000000', 'https://live.sportlive.cc/live/20470', '山形山神 VS 德岛漩涡', NULL, NULL, 359, '1', '20470');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.700022', 2671, '2019-07-27 18:45:00.000000', 'https://live.sportlive.cc/live/19570', '普拉楚普 VS 春武里', NULL, NULL, 371, '1', '19570');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.702369', 2672, '2019-07-27 19:00:00.000000', 'https://live.sportlive.cc/live/9270', '尚卡汶里 VS 桐艾', NULL, NULL, 371, '1', '9270');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.707803', 2673, '2019-07-27 20:00:00.000000', 'https://live.sportlive.cc/live/15880', '北榄城 VS 武里南', NULL, NULL, 371, '1', '15880');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.710600', 2674, '2019-07-27 20:00:00.000000', 'https://live.sportlive.cc/live/22110', '川崎前锋 VS 大分三神', NULL, NULL, 373, '1', '22110');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.712907', 2675, '2019-07-27 21:00:00.000000', 'https://live.sportlive.cc/live/22700', '蒙通联 VS 拉查布里府', NULL, NULL, 371, '1', '22700');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.715781', 2676, '2019-07-27 22:00:00.000000', 'https://live.sportlive.cc/live/7810', 'IK布拉格 VS 米亚尔比', NULL, NULL, 363, '1', '7810');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.716426', 2677, '2019-07-27 22:00:00.000000', 'https://live.sportlive.cc/live/10540', '诺尔比 VS 奥斯达', NULL, NULL, 363, '1', '10540');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.716910', 2678, '2019-07-27 22:00:00.000000', 'https://live.sportlive.cc/live/8270', '洪卡 VS 坦佩雷埃尔维斯', NULL, NULL, 385, '1', '8270');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.719758', 2679, '2019-07-27 22:00:00.000000', 'https://live.sportlive.cc/live/7330', '赫尔辛基 VS 瓦萨', NULL, NULL, 385, '1', '7330');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.720764', 2680, '2019-07-27 22:00:00.000000', 'https://live.sportlive.cc/live/16380', '盖斯 VS 西里安斯卡', NULL, NULL, 363, '1', '16380');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.724999', 2681, '2019-07-27 22:00:00.000000', 'https://live.sportlive.cc/live/7610', '特利堡 VS 弗雷吉', NULL, NULL, 363, '1', '7610');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.732580', 2682, '2019-07-28 00:00:00.000000', 'https://live.sportlive.cc/live/10160', '乔科平所达 VS 戴戈福斯', NULL, NULL, 363, '1', '10160');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.748363', 2683, '2019-07-28 08:00:00.000000', 'https://live.sportlive.cc/live/21380', '新英格兰革命 VS 奥兰多城', NULL, NULL, 331, '1', '21380');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.748703', 2684, '2019-07-28 08:00:00.000000', 'https://live.sportlive.cc/live/18560', '休斯顿迪纳摩 VS 西雅图海湾人', NULL, NULL, 331, '1', '18560');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.749257', 2685, '2019-07-28 08:00:00.000000', 'https://live.sportlive.cc/live/21390', '纽约红牛 VS 哥伦布水手', NULL, NULL, 331, '1', '21390');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.836369', 2686, '2019-07-28 08:00:00.000000', 'https://live.sportlive.cc/live/21990', 'FC达拉斯 VS 皇家盐湖城', NULL, NULL, 331, '1', '21990');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.839115', 2687, '2019-07-28 08:00:00.000000', 'https://live.sportlive.cc/live/11800', '洛杉矶 VS 亚特兰大联', NULL, NULL, 331, '1', '11800');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.839253', 2688, '2019-07-28 08:00:00.000000', 'https://live.sportlive.cc/live/22000', '芝加哥火焰 VS 华盛顿特区联', NULL, NULL, 331, '1', '22000');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.836727', 2689, '2019-07-28 08:00:00.000000', 'https://live.sportlive.cc/live/14230', '明尼苏达联 VS 温哥华白帽', NULL, NULL, 331, '1', '14230');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.846205', 2690, '2019-07-28 08:00:00.000000', 'https://live.sportlive.cc/live/14490', '蒙特利尔冲击 VS 费城联盟', NULL, NULL, 331, '1', '14490');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.848253', 2691, '2019-07-28 08:00:00.000000', 'https://live.sportlive.cc/live/22270', '多伦多FC VS 辛辛那提', NULL, NULL, 331, '1', '22270');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.850524', 2692, '2019-07-28 10:00:00.000000', 'https://live.sportlive.cc/live/7550', '犹他王室女足 VS 北卡罗莱纳女足', NULL, NULL, 384, '1', '7550');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.850688', 2693, '2019-07-28 10:00:00.000000', 'https://live.sportlive.cc/live/21950', '圣何塞地震 VS 科罗拉多急流', NULL, NULL, 331, '1', '21950');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.855205', 2694, '2019-07-28 16:00:00.000000', 'https://live.sportlive.cc/live/9810', '横滨体育 VS 八户云罗里', NULL, NULL, 360, '1', '9810');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.857058', 2695, '2019-07-28 10:30:00.000000', 'https://live.sportlive.cc/live/21970', '波特兰木材 VS 洛杉矶银河', NULL, NULL, 331, '1', '21970');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.859027', 2696, '2019-07-28 17:00:00.000000', 'https://live.sportlive.cc/live/9880', '大阪钢巴U23 VS 长野帕塞罗', NULL, NULL, 360, '1', '9880');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.860497', 2697, '2019-07-28 17:30:00.000000', 'https://live.sportlive.cc/live/19970', '幼狮队 VS 马里士他卡沙', NULL, NULL, 378, '1', '19970');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.872399', 2698, '2019-07-28 19:00:00.000000', 'https://live.sportlive.cc/live/19000', '曼谷联 VS 那空拉查斯马', NULL, NULL, 371, '1', '19000');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.874815', 2699, '2019-07-28 19:00:00.000000', 'https://live.sportlive.cc/live/19910', '清莱联 VS 清迈', NULL, NULL, 371, '1', '19910');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.892778', 2700, '2019-07-28 20:00:00.000000', 'https://live.sportlive.cc/live/22090', '狮子港 VS 沙拉武里', NULL, NULL, 371, '1', '22090');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.893594', 2701, '2019-07-28 20:00:00.000000', 'https://live.sportlive.cc/live/17140', 'PTT罗勇 VS 查英特', NULL, NULL, 371, '1', '17140');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.896529', 2702, '2019-07-28 21:00:00.000000', 'https://live.sportlive.cc/live/15710', '赫尔辛堡 VS 奥雷布洛', NULL, NULL, 391, '1', '15710');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.897758', 2703, '2019-07-28 21:00:00.000000', 'https://live.sportlive.cc/live/10930', '法尔肯贝里 VS 桑斯瓦尔', NULL, NULL, 391, '1', '10930');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.898132', 2704, '2019-07-28 21:00:00.000000', 'https://live.sportlive.cc/live/18750', '韦斯特罗斯 VS 达尔库德', NULL, NULL, 363, '1', '18750');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.898733', 2705, '2019-07-28 21:00:00.000000', 'https://live.sportlive.cc/live/11320', '哥德堡 VS IFK诺尔雪平', NULL, NULL, 391, '1', '11320');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.900349', 2706, '2019-07-28 21:00:00.000000', 'https://live.sportlive.cc/live/21760', '佐加顿斯 VS 赫根', NULL, NULL, 391, '1', '21760');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.900543', 2707, '2019-07-28 21:00:00.000000', 'https://live.sportlive.cc/live/9110', '厄斯特松德 VS 马尔默', NULL, NULL, 391, '1', '9110');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.901417', 2708, '2019-07-28 21:00:00.000000', 'https://live.sportlive.cc/live/17010', '天狼星 VS AIK索尔纳', NULL, NULL, 391, '1', '17010');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.901857', 2709, '2019-07-28 21:00:00.000000', 'https://live.sportlive.cc/live/21770', '艾斯基斯杜拿 VS 哈马比', NULL, NULL, 391, '1', '21770');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.906001', 2710, '2019-07-28 22:00:00.000000', 'https://live.sportlive.cc/live/11250', '科科拉 VS 库普斯', NULL, NULL, 385, '1', '11250');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.907724', 2711, '2019-07-28 22:00:00.000000', 'https://live.sportlive.cc/live/9300', '路云尼米 VS 图尔库国际', NULL, NULL, 385, '1', '9300');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.908120', 2712, '2019-07-28 22:00:00.000000', 'https://live.sportlive.cc/live/22740', '玛丽港 VS 赫尔辛基IFK', NULL, NULL, 385, '1', '22740');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.914790', 2713, '2019-07-28 23:30:00.000000', 'https://live.sportlive.cc/live/20800', '华保斯FC VS 奥尔格里特', NULL, NULL, 363, '1', '20800');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.916212', 2714, '2019-07-29 00:00:00.000000', 'https://live.sportlive.cc/live/8170', 'KFUM奥斯陆 VS 诺霍斯', NULL, NULL, 351, '1', '8170');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.916425', 2715, '2019-07-29 00:00:00.000000', 'https://live.sportlive.cc/live/6430', '广士云格 VS 斯吉德', NULL, NULL, 351, '1', '6430');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.918315', 2716, '2019-07-29 00:00:00.000000', 'https://live.sportlive.cc/live/6440', '诺托登 VS 桑德尼斯', NULL, NULL, 351, '1', '6440');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.919247', 2717, '2019-07-29 00:00:00.000000', 'https://live.sportlive.cc/live/7230', '阿勒桑 VS 尼斯特索特拉', NULL, NULL, 351, '1', '7230');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.919753', 2718, '2019-07-29 00:00:00.000000', 'https://live.sportlive.cc/live/17400', '谢夫 VS 桑恩达', NULL, NULL, 351, '1', '17400');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.919655', 2719, '2019-07-29 00:00:00.000000', 'https://live.sportlive.cc/live/17370', '汉坎 VS 辛迪佐夫特', NULL, NULL, 351, '1', '17370');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.922217', 2720, '2019-07-29 02:00:00.000000', 'https://live.sportlive.cc/live/2960', 'UII 奇萨 VS 斯达', NULL, NULL, 351, '1', '2960');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.922888', 2721, '2019-07-29 00:00:00.000000', 'https://live.sportlive.cc/live/12740', '特罗姆斯达伦 VS 斯特罗曼', NULL, NULL, 351, '1', '12740');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.925230', 2722, '2019-07-29 08:30:00.000000', 'https://live.sportlive.cc/live/10630', '休斯顿达斯女足 VS FC天蓝女足', NULL, NULL, 384, '1', '10630');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.924925', 2723, '2019-07-29 04:00:00.000000', 'https://live.sportlive.cc/live/9160', '西雅图君主女足 VS 芝加哥红星女足', NULL, NULL, 384, '1', '9160');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.925659', 2724, '2019-07-30 01:00:00.000000', 'https://live.sportlive.cc/live/10820', '埃尔夫斯堡 VS 卡马亚', NULL, NULL, 391, '1', '10820');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.929287', 2725, '2019-07-30 17:30:00.000000', 'https://live.sportlive.cc/live/8290', 'NC恐龙 VS 斗山熊', NULL, NULL, 300, '1', '8290');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.929852', 2726, '2019-07-30 17:30:00.000000', 'https://live.sportlive.cc/live/8910', 'LG双子 VS 基乌姆英雄', NULL, NULL, 300, '1', '8910');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.930253', 2727, '2019-07-30 17:30:00.000000', 'https://live.sportlive.cc/live/9310', '三星狮子 VS 乐天巨人', NULL, NULL, 300, '1', '9310');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.933221', 2728, '2019-07-30 17:30:00.000000', 'https://live.sportlive.cc/live/14040', 'KT巫师 VS 韩华老鹰', NULL, NULL, 300, '1', '14040');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.939146', 2729, '2019-07-30 18:30:00.000000', 'https://live.sportlive.cc/live/11930', '仁川联 VS 庆南FC', NULL, NULL, 381, '1', '11930');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.938606', 2730, '2019-07-30 18:30:00.000000', 'https://live.sportlive.cc/live/18160', '城南一和 VS 仁川凤凰', NULL, NULL, 381, '1', '18160');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.939725', 2731, '2019-07-30 17:30:00.000000', 'https://live.sportlive.cc/live/17210', 'SK飞龙 VS 起亚老虎', NULL, NULL, 300, '1', '17210');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.942778', 2732, '2019-07-30 18:30:00.000000', 'https://live.sportlive.cc/live/12410', '大邱FC VS 水原三星', NULL, NULL, 381, '1', '12410');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.943974', 2733, '2019-07-30 18:30:00.000000', 'https://live.sportlive.cc/live/14850', '蔚山现代 VS 首尔', NULL, NULL, 381, '1', '14850');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.951646', 2734, '2019-07-31 06:15:00.000000', 'https://live.sportlive.cc/live/22260', 'MG克鲁塞罗 VS CA河床', NULL, NULL, 394, '1', '22260');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.955070', 2735, '2019-07-31 07:05:00.000000', 'https://live.sportlive.cc/live/17090', '康涅狄格太阳 VS 芝加哥天空', NULL, NULL, 327, '1', '17090');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.957259', 2736, '2019-07-31 07:05:00.000000', 'https://live.sportlive.cc/live/15280', '华盛顿神秘人 VS 菲尼克斯水星', NULL, NULL, 327, '1', '15280');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.959595', 2737, '2019-07-31 08:00:00.000000', 'https://live.sportlive.cc/live/7930', '波特诺山丘 VS 圣洛伦佐', NULL, NULL, 394, '1', '7930');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.959481', 2738, '2019-07-31 08:00:00.000000', 'https://live.sportlive.cc/live/20690', '里本泰德 VS 格雷米奥阿雷格里港', NULL, NULL, 394, '1', '20690');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.960694', 2739, '2019-07-31 08:00:00.000000', 'https://live.sportlive.cc/live/15820', '奥林匹亚 VS 基多大学体育联盟', NULL, NULL, 394, '1', '15820');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.962517', 2740, '2019-07-31 08:00:00.000000', 'https://live.sportlive.cc/live/5660', '博卡青年 VS PR巴拉纳竞技', NULL, NULL, 394, '1', '5660');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.963026', 2741, '2019-07-31 10:05:00.000000', 'https://live.sportlive.cc/live/10090', '拉斯维加斯王牌 VS 达拉斯飞翼', NULL, NULL, 327, '1', '10090');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.963349', 2742, '2019-07-31 08:30:00.000000', 'https://live.sportlive.cc/live/14210', 'SP帕尔梅拉斯 VS 葛度尔古斯', NULL, NULL, 394, '1', '14210');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.965603', 2743, '2019-07-31 18:00:00.000000', 'https://live.sportlive.cc/live/15750', '琉球 VS 千叶市原', NULL, NULL, 359, '1', '15750');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.967790', 2744, '2019-07-31 18:00:00.000000', 'https://live.sportlive.cc/live/13280', '金泽塞维根 VS 京都不死鸟', NULL, NULL, 359, '1', '13280');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.970483', 2745, '2019-07-31 18:00:00.000000', 'https://live.sportlive.cc/live/18690', '町田泽维亚 VS 新泻天鹅', NULL, NULL, 359, '1', '18690');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.970637', 2746, '2019-07-31 18:00:00.000000', 'https://live.sportlive.cc/live/11690', '长崎成功丸 VS FC爱媛', NULL, NULL, 359, '1', '11690');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.973636', 2747, '2019-07-31 18:00:00.000000', 'https://live.sportlive.cc/live/17000', '水户蜀葵 VS 甲府风林', NULL, NULL, 359, '1', '17000');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.975048', 2748, '2019-07-31 18:00:00.000000', 'https://live.sportlive.cc/live/11780', '全北现代 VS 济州联队', NULL, NULL, 381, '1', '11780');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.975824', 2749, '2019-07-31 18:00:00.000000', 'https://live.sportlive.cc/live/17230', '枥木SC VS 东京绿茵', NULL, NULL, 359, '1', '17230');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.976123', 2750, '2019-07-31 18:00:00.000000', 'https://live.sportlive.cc/live/14540', 'FC岐埠 VS 大宫松鼠', NULL, NULL, 359, '1', '14540');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.976712', 2751, '2019-07-31 18:00:00.000000', 'https://live.sportlive.cc/live/15100', '德岛漩涡 VS 鹿儿岛联', NULL, NULL, 359, '1', '15100');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.977965', 2752, '2019-07-31 18:00:00.000000', 'https://live.sportlive.cc/live/10220', '冈山绿雉 VS 柏雷素尔', NULL, NULL, 359, '1', '10220');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.979011', 2753, '2019-07-31 18:30:00.000000', 'https://live.sportlive.cc/live/18810', 'FC横滨 VS 雷法山口', NULL, NULL, 359, '1', '18810');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.981402', 2754, '2019-07-31 18:45:00.000000', 'https://live.sportlive.cc/live/14420', '那空拉查斯马 VS 普拉楚普', NULL, NULL, 371, '1', '14420');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.981960', 2755, '2019-07-31 18:30:00.000000', 'https://live.sportlive.cc/live/16320', '山形山神 VS 福冈黄蜂', NULL, NULL, 359, '1', '16320');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.983254', 2756, '2019-07-31 19:00:00.000000', 'https://live.sportlive.cc/live/18010', '江原FC VS 浦项制铁', NULL, NULL, 381, '1', '18010');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.983887', 2757, '2019-07-31 18:45:00.000000', 'https://live.sportlive.cc/live/22100', '查英特 VS 蒙通联', NULL, NULL, 371, '1', '22100');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.984443', 2758, '2019-07-31 19:00:00.000000', 'https://live.sportlive.cc/live/22080', '清迈 VS 尚卡汶里', NULL, NULL, 371, '1', '22080');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.986860', 2759, '2019-07-31 20:00:00.000000', 'https://live.sportlive.cc/live/10880', '广岛三箭 VS 川崎前锋', NULL, NULL, 373, '1', '10880');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.988541', 2760, '2019-07-31 20:00:00.000000', 'https://live.sportlive.cc/live/21700', '春武里 VS 曼谷联', NULL, NULL, 371, '1', '21700');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.989130', 2761, '2019-07-31 20:00:00.000000', 'https://live.sportlive.cc/live/21710', '沙拉武里 VS PTT罗勇', NULL, NULL, 371, '1', '21710');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.991344', 2762, '2019-07-31 20:00:00.000000', 'https://live.sportlive.cc/live/22070', '清莱联 VS 武里南', NULL, NULL, 371, '1', '22070');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.995764', 2763, '2019-07-31 20:30:00.000000', 'https://live.sportlive.cc/live/6900', '浦和红钻 VS 鹿岛鹿角', NULL, NULL, 373, '1', '6900');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.997229', 2764, '2019-07-31 21:00:00.000000', 'https://live.sportlive.cc/live/21680', '拉查布里府 VS 北榄城', NULL, NULL, 371, '1', '21680');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:56.997563', 2765, '2019-07-31 21:00:00.000000', 'https://live.sportlive.cc/live/21690', '桐艾 VS 狮子港', NULL, NULL, 371, '1', '21690');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.000166', 2766, '2019-08-01 06:15:00.000000', 'https://live.sportlive.cc/live/21300', 'RS国际体育俱乐部 VS 国民队', NULL, NULL, 394, '1', '21300');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.001820', 2767, '2019-08-01 08:30:00.000000', 'https://live.sportlive.cc/live/21810', 'RJ弗拉门戈 VS 埃梅莱克', NULL, NULL, 394, '1', '21810');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.345839', 2768, '2019-09-06 00:00:00.000000', 'https://live.sportlive.cc/live/14950', '亚美尼亚 VS 意大利', NULL, NULL, 355, '1', '14950');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.347277', 2769, '2019-09-06 02:45:00.000000', 'https://live.sportlive.cc/live/18360', '挪威 VS 马耳他', NULL, NULL, 355, '1', '18360');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.347398', 2770, '2019-09-06 02:45:00.000000', 'https://live.sportlive.cc/live/5770', '爱尔兰 VS 瑞士', NULL, NULL, 355, '1', '5770');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.348594', 2771, '2019-09-06 02:45:00.000000', 'https://live.sportlive.cc/live/16740', '直布罗陀 VS 丹麦', NULL, NULL, 355, '1', '16740');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.351245', 2772, '2019-09-06 02:45:00.000000', 'https://live.sportlive.cc/live/19700', '以色列 VS 北马其顿', NULL, NULL, 355, '1', '19700');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.355618', 2773, '2019-09-06 02:45:00.000000', 'https://live.sportlive.cc/live/17910', '波斯尼亚和黑塞哥维那 VS 列支敦士登', NULL, NULL, 355, '1', '17910');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.356039', 2774, '2019-09-06 02:45:00.000000', 'https://live.sportlive.cc/live/17410', '罗马尼亚 VS 西班牙', NULL, NULL, 355, '1', '17410');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.358490', 2775, '2019-09-06 02:45:00.000000', 'https://live.sportlive.cc/live/17280', '芬兰 VS 希腊', NULL, NULL, 355, '1', '17280');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.358753', 2776, '2019-09-06 02:45:00.000000', 'https://live.sportlive.cc/live/7440', '法罗群岛 VS 瑞典', NULL, NULL, 355, '1', '7440');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.359981', 2777, '2019-09-07 02:45:00.000000', 'https://live.sportlive.cc/live/20830', '威尔士 VS 阿塞拜疆', NULL, NULL, 355, '1', '20830');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.362258', 2778, '2019-09-07 02:45:00.000000', 'https://live.sportlive.cc/live/20960', '苏格兰 VS 俄罗斯', NULL, NULL, 355, '1', '20960');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.366802', 2779, '2019-09-07 02:45:00.000000', 'https://live.sportlive.cc/live/18610', '奥地利 VS 拉脱维亚', NULL, NULL, 355, '1', '18610');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.367052', 2780, '2019-09-07 02:45:00.000000', 'https://live.sportlive.cc/live/18790', '斯洛文尼亚 VS 波兰', NULL, NULL, 355, '1', '18790');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.367279', 2781, '2019-09-07 02:45:00.000000', 'https://live.sportlive.cc/live/8200', '圣马力诺 VS 比利时', NULL, NULL, 355, '1', '8200');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.369143', 2782, '2019-09-07 02:45:00.000000', 'https://live.sportlive.cc/live/7180', '德国 VS 荷兰', NULL, NULL, 355, '1', '7180');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.369309', 2783, '2019-09-07 02:45:00.000000', 'https://live.sportlive.cc/live/8880', '斯洛伐克 VS 克罗地亚', NULL, NULL, 355, '1', '8880');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.370281', 2784, '2019-09-07 02:45:00.000000', 'https://live.sportlive.cc/live/9800', '爱沙尼亚 VS 白俄罗斯', NULL, NULL, 355, '1', '9800');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.372498', 2785, '2019-09-07 21:00:00.000000', 'https://live.sportlive.cc/live/8550', '科索沃 VS 捷克', NULL, NULL, 355, '1', '8550');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.372720', 2786, '2019-09-07 02:45:00.000000', 'https://live.sportlive.cc/live/20150', '塞浦路斯 VS 哈萨克斯坦', NULL, NULL, 355, '1', '20150');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.374757', 2787, '2019-09-08 00:00:00.000000', 'https://live.sportlive.cc/live/10390', '立陶宛 VS 乌克兰', NULL, NULL, 355, '1', '10390');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.375377', 2788, '2019-09-08 00:00:00.000000', 'https://live.sportlive.cc/live/21270', '英格兰 VS 保加利亚', NULL, NULL, 355, '1', '21270');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.377102', 2789, '2019-09-08 00:00:00.000000', 'https://live.sportlive.cc/live/9070', '冰岛 VS 摩尔多瓦', NULL, NULL, 355, '1', '9070');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.380144', 2790, '2019-09-08 02:45:00.000000', 'https://live.sportlive.cc/live/10380', '塞尔维亚 VS 葡萄牙', NULL, NULL, 355, '1', '10380');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.380662', 2791, '2019-09-08 02:45:00.000000', 'https://live.sportlive.cc/live/10650', '土耳其 VS 安道尔', NULL, NULL, 355, '1', '10650');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.382782', 2792, '2019-09-08 02:45:00.000000', 'https://live.sportlive.cc/live/20130', '法国 VS 阿尔巴尼亚', NULL, NULL, 355, '1', '20130');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.384333', 2793, '2019-09-08 21:00:00.000000', 'https://live.sportlive.cc/live/19080', '西班牙 VS 法罗群岛', NULL, NULL, 355, '1', '19080');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.386099', 2794, '2019-09-09 00:00:00.000000', 'https://live.sportlive.cc/live/10290', '瑞士 VS 直布罗陀', NULL, NULL, 355, '1', '10290');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.388569', 2795, '2019-09-09 00:00:00.000000', 'https://live.sportlive.cc/live/23130', '格鲁吉亚 VS 丹麦', NULL, NULL, 355, '1', '23130');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.389529', 2796, '2019-09-09 00:00:00.000000', 'https://live.sportlive.cc/live/18710', '罗马尼亚 VS 马耳他', NULL, NULL, 355, '1', '18710');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.391675', 2797, '2019-09-09 00:00:00.000000', 'https://live.sportlive.cc/live/16430', '亚美尼亚 VS 波斯尼亚和黑塞哥维那', NULL, NULL, 355, '1', '16430');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.393462', 2798, '2019-09-09 02:45:00.000000', 'https://live.sportlive.cc/live/17050', '瑞典 VS 挪威', NULL, NULL, 355, '1', '17050');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.395183', 2799, '2019-09-09 02:45:00.000000', 'https://live.sportlive.cc/live/17580', '芬兰 VS 意大利', NULL, NULL, 355, '1', '17580');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.397407', 2800, '2019-09-09 02:45:00.000000', 'https://live.sportlive.cc/live/17710', '希腊 VS 列支敦士登', NULL, NULL, 355, '1', '17710');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.398898', 2801, '2019-09-10 00:00:00.000000', 'https://live.sportlive.cc/live/17890', '阿塞拜疆 VS 克罗地亚', NULL, NULL, 355, '1', '17890');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.401663', 2802, '2019-09-10 02:45:00.000000', 'https://live.sportlive.cc/live/15470', '俄罗斯 VS 哈萨克斯坦', NULL, NULL, 355, '1', '15470');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.403577', 2803, '2019-09-10 02:45:00.000000', 'https://live.sportlive.cc/live/15930', '斯洛文尼亚 VS 以色列', NULL, NULL, 355, '1', '15930');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.405417', 2804, '2019-09-10 02:45:00.000000', 'https://live.sportlive.cc/live/18500', '匈牙利 VS 斯洛伐克', NULL, NULL, 355, '1', '18500');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.411409', 2805, '2019-09-10 02:45:00.000000', 'https://live.sportlive.cc/live/6690', '圣马力诺 VS 塞浦路斯', NULL, NULL, 355, '1', '6690');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.415328', 2806, '2019-09-10 02:45:00.000000', 'https://live.sportlive.cc/live/16940', '北爱尔兰 VS 德国', NULL, NULL, 355, '1', '16940');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.416627', 2807, '2019-09-10 02:45:00.000000', 'https://live.sportlive.cc/live/16990', '爱沙尼亚 VS 荷兰', NULL, NULL, 355, '1', '16990');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.419648', 2808, '2019-09-10 02:45:00.000000', 'https://live.sportlive.cc/live/17260', '波兰 VS 奥地利', NULL, NULL, 355, '1', '17260');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.423577', 2809, '2019-09-10 02:45:00.000000', 'https://live.sportlive.cc/live/14870', '苏格兰 VS 比利时', NULL, NULL, 355, '1', '14870');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.429337', 2810, '2019-09-11 02:45:00.000000', 'https://live.sportlive.cc/live/23090', '黑山 VS 捷克', NULL, NULL, 355, '1', '23090');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.430053', 2811, '2019-09-11 02:45:00.000000', 'https://live.sportlive.cc/live/8690', '英格兰 VS 科索沃', NULL, NULL, 355, '1', '8690');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.430593', 2812, '2019-09-10 02:45:00.000000', 'https://live.sportlive.cc/live/15110', '拉脱维亚 VS 北马其顿', NULL, NULL, 355, '1', '15110');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.435259', 2813, '2019-09-11 02:45:00.000000', 'https://live.sportlive.cc/live/21560', '卢森堡 VS 塞尔维亚', NULL, NULL, 355, '1', '21560');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.437215', 2814, '2019-09-11 02:45:00.000000', 'https://live.sportlive.cc/live/9250', '立陶宛 VS 葡萄牙', NULL, NULL, 355, '1', '9250');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.439889', 2815, '2019-09-11 02:45:00.000000', 'https://live.sportlive.cc/live/19690', '摩尔多瓦 VS 土耳其', NULL, NULL, 355, '1', '19690');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.441729', 2816, '2019-09-11 02:45:00.000000', 'https://live.sportlive.cc/live/9520', '法国 VS 安道尔', NULL, NULL, 355, '1', '9520');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.450943', 2817, '2019-10-10 02:45:00.000000', 'https://live.sportlive.cc/live/21870', '德国 VS 阿根廷', NULL, NULL, 288, '1', '21870');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 11:44:57.451249', 2818, '2019-09-11 02:45:00.000000', 'https://live.sportlive.cc/live/20110', '阿尔巴尼亚 VS 冰岛', NULL, NULL, 355, '1', '20110');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:04.915713', 2819, '2019-07-16 18:00:00.000000', 'https://live.sportlive.cc/live/21550', '广州富力 VS 天津泰达', NULL, NULL, 361, '1', '21550');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:04.922425', 2820, '2019-07-16 19:35:00.000000', 'https://live.sportlive.cc/live/22150', '上海申花 VS 河南建业', NULL, NULL, 361, '1', '22150');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:04.923349', 2821, '2019-07-16 20:00:00.000000', 'https://live.sportlive.cc/live/17700', '广州恒大 VS 大连一方', NULL, NULL, 361, '1', '17700');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:04.954998', 2822, '2019-07-17 19:35:00.000000', 'https://live.sportlive.cc/live/22140', '上海上港 VS 河北华夏', NULL, NULL, 361, '1', '22140');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:04.957603', 2823, '2019-07-17 19:35:00.000000', 'https://live.sportlive.cc/live/19770', '北京国安 VS 北京人和', NULL, NULL, 361, '1', '19770');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:04.962196', 2824, '2019-07-17 19:35:00.000000', 'https://live.sportlive.cc/live/10530', '深圳市 VS 重庆斯威', NULL, NULL, 361, '1', '10530');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:04.963316', 2825, '2019-07-17 19:35:00.000000', 'https://live.sportlive.cc/live/22550', '山东鲁能 VS 天津天海', NULL, NULL, 361, '1', '22550');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:04.969185', 2826, '2019-07-17 19:35:00.000000', 'https://live.sportlive.cc/live/7490', '武汉卓尔 VS 江苏苏宁', NULL, NULL, 361, '1', '7490');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.066136', 2827, '2019-07-20 19:35:00.000000', 'https://live.sportlive.cc/live/19710', '天津泰达 VS 大连一方', NULL, NULL, 361, '1', '19710');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.066289', 2828, '2019-07-20 19:35:00.000000', 'https://live.sportlive.cc/live/20840', '广州富力 VS 广州恒大', NULL, NULL, 361, '1', '20840');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.104766', 2829, '2019-07-21 18:00:00.000000', 'https://live.sportlive.cc/live/5810', '北京人和 VS 上海申花', NULL, NULL, 361, '1', '5810');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.112635', 2830, '2019-07-21 19:35:00.000000', 'https://live.sportlive.cc/live/7720', '江苏苏宁 VS 北京国安', NULL, NULL, 361, '1', '7720');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.112857', 2831, '2019-07-21 19:35:00.000000', 'https://live.sportlive.cc/live/18430', '河南建业 VS 武汉卓尔', NULL, NULL, 361, '1', '18430');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.113632', 2832, '2019-07-21 19:35:00.000000', 'https://live.sportlive.cc/live/19240', '重庆斯威 VS 上海上港', NULL, NULL, 361, '1', '19240');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.114753', 2833, '2019-07-21 19:35:00.000000', 'https://live.sportlive.cc/live/14250', '河北华夏 VS 天津天海', NULL, NULL, 361, '1', '14250');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.115100', 2834, '2019-07-21 19:35:00.000000', 'https://live.sportlive.cc/live/22130', '山东鲁能 VS 深圳市', NULL, NULL, 361, '1', '22130');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.242542', 2835, '2019-07-27 17:30:00.000000', 'https://live.sportlive.cc/live/19220', '河北华夏 VS 重庆斯威', NULL, NULL, 361, '1', '19220');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.286705', 2836, '2019-07-27 19:35:00.000000', 'https://live.sportlive.cc/live/18470', '上海申花 VS 广州富力', NULL, NULL, 361, '1', '18470');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.288330', 2837, '2019-07-27 19:35:00.000000', 'https://live.sportlive.cc/live/18760', '河南建业 VS 北京国安', NULL, NULL, 361, '1', '18760');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.291227', 2838, '2019-07-27 19:35:00.000000', 'https://live.sportlive.cc/live/18780', '大连一方 VS 山东鲁能', NULL, NULL, 361, '1', '18780');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.391377', 2839, '2019-07-28 19:35:00.000000', 'https://live.sportlive.cc/live/18220', '广州恒大 VS 北京人和', NULL, NULL, 361, '1', '18220');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.393253', 2840, '2019-07-28 19:35:00.000000', 'https://live.sportlive.cc/live/18380', '天津天海 VS 天津泰达', NULL, NULL, 361, '1', '18380');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.398206', 2841, '2019-07-28 19:35:00.000000', 'https://live.sportlive.cc/live/17320', '江苏苏宁 VS 深圳市', NULL, NULL, 361, '1', '17320');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.400381', 2842, '2019-07-28 19:35:00.000000', 'https://live.sportlive.cc/live/17760', '武汉卓尔 VS 上海上港', NULL, NULL, 361, '1', '17760');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.641509', 2843, '2019-08-10 03:00:00.000000', 'https://live.sportlive.cc/live/12420', '利物浦 VS 诺维奇', NULL, NULL, 396, '1', '12420');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.643963', 2844, '2019-08-10 19:30:00.000000', 'https://live.sportlive.cc/live/21030', '西汉姆 VS 曼城', NULL, NULL, 396, '1', '21030');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.645380', 2845, '2019-08-10 22:00:00.000000', 'https://live.sportlive.cc/live/5980', '沃特福德 VS 布莱顿', NULL, NULL, 396, '1', '5980');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.652430', 2846, '2019-08-10 22:00:00.000000', 'https://live.sportlive.cc/live/8610', '伯恩茅斯 VS 谢菲尔德联', NULL, NULL, 396, '1', '8610');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.654405', 2847, '2019-08-10 22:00:00.000000', 'https://live.sportlive.cc/live/8770', '伯恩利 VS 南安普敦', NULL, NULL, 396, '1', '8770');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.656254', 2848, '2019-08-10 22:00:00.000000', 'https://live.sportlive.cc/live/9040', '水晶宫 VS 埃弗顿', NULL, NULL, 396, '1', '9040');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.657151', 2849, '2019-08-10 22:00:00.000000', 'https://live.sportlive.cc/live/9120', '莱切斯特 VS 狼队', NULL, NULL, 396, '1', '9120');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.681357', 2850, '2019-08-11 00:30:00.000000', 'https://live.sportlive.cc/live/9440', '托特纳姆 VS 阿斯顿维拉', NULL, NULL, 396, '1', '9440');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.688907', 2851, '2019-08-11 03:00:00.000000', 'https://live.sportlive.cc/live/17930', '巴黎圣日尔曼 VS 奈梅斯', NULL, NULL, 398, '1', '17930');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.690837', 2852, '2019-08-11 03:00:00.000000', 'https://live.sportlive.cc/live/16280', '斯特拉斯堡 VS 梅斯', NULL, NULL, 398, '1', '16280');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.693153', 2853, '2019-08-11 03:00:00.000000', 'https://live.sportlive.cc/live/8680', '摩纳哥 VS 里昂', NULL, NULL, 398, '1', '8680');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.694806', 2854, '2019-08-11 03:00:00.000000', 'https://live.sportlive.cc/live/19420', '里尔 VS 南特', NULL, NULL, 398, '1', '19420');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.697511', 2855, '2019-08-11 03:00:00.000000', 'https://live.sportlive.cc/live/19430', '尼斯 VS 阿美恩斯', NULL, NULL, 398, '1', '19430');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.699319', 2856, '2019-08-11 03:00:00.000000', 'https://live.sportlive.cc/live/17160', '马赛 VS 雷姆斯', NULL, NULL, 398, '1', '17160');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.700506', 2857, '2019-08-11 03:00:00.000000', 'https://live.sportlive.cc/live/14620', '安格斯 VS 波尔多', NULL, NULL, 398, '1', '14620');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.704185', 2858, '2019-08-11 03:00:00.000000', 'https://live.sportlive.cc/live/14880', '蒙彼利埃 VS 雷恩', NULL, NULL, 398, '1', '14880');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.705110', 2859, '2019-08-11 03:00:00.000000', 'https://live.sportlive.cc/live/17440', '布雷斯特 VS 图鲁兹', NULL, NULL, 398, '1', '17440');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.707475', 2860, '2019-08-11 03:00:00.000000', 'https://live.sportlive.cc/live/12370', '第戎 VS 圣埃蒂安', NULL, NULL, 398, '1', '12370');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.715389', 2861, '2019-08-11 21:00:00.000000', 'https://live.sportlive.cc/live/9000', '纽卡斯尔 VS 阿森纳', NULL, NULL, 396, '1', '9000');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.722948', 2862, '2019-08-11 23:30:00.000000', 'https://live.sportlive.cc/live/16490', '曼联 VS 切尔西', NULL, NULL, 396, '1', '16490');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.730852', 2863, '2019-08-17 02:30:00.000000', 'https://live.sportlive.cc/live/5390', '拜仁慕尼黑 VS 柏林赫塔', NULL, NULL, 399, '1', '5390');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.732686', 2864, '2019-08-17 21:30:00.000000', 'https://live.sportlive.cc/live/10250', '勒沃库森 VS 帕德博恩', NULL, NULL, 399, '1', '10250');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.736862', 2865, '2019-08-17 21:30:00.000000', 'https://live.sportlive.cc/live/15670', '门兴格拉德巴赫 VS 沙尔克04', NULL, NULL, 399, '1', '15670');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.738443', 2866, '2019-08-17 21:30:00.000000', 'https://live.sportlive.cc/live/5740', '弗赖堡 VS 美因茨05', NULL, NULL, 399, '1', '5740');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.781109', 2867, '2019-08-17 21:30:00.000000', 'https://live.sportlive.cc/live/9320', '柏林联 VS 莱比锡RB', NULL, NULL, 399, '1', '9320');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.781667', 2868, '2019-08-17 21:30:00.000000', 'https://live.sportlive.cc/live/19180', '云达不莱梅 VS 杜塞尔多夫', NULL, NULL, 399, '1', '19180');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.782082', 2869, '2019-08-17 21:30:00.000000', 'https://live.sportlive.cc/live/22630', '法兰克福 VS 霍芬海姆', NULL, NULL, 399, '1', '22630');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.782852', 2870, '2019-08-17 21:30:00.000000', 'https://live.sportlive.cc/live/7450', '沃尔夫斯堡 VS 科隆', NULL, NULL, 399, '1', '7450');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.783047', 2871, '2019-08-17 21:30:00.000000', 'https://live.sportlive.cc/live/9580', '多特蒙德 VS 奥格斯堡', NULL, NULL, 399, '1', '9580');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.816581', 2872, '2019-08-24 21:30:00.000000', 'https://live.sportlive.cc/live/18450', '美因茨05 VS 门兴格拉德巴赫', NULL, NULL, 399, '1', '18450');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.819749', 2873, '2019-08-24 21:30:00.000000', 'https://live.sportlive.cc/live/16080', '科隆 VS 多特蒙德', NULL, NULL, 399, '1', '16080');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.820280', 2874, '2019-08-24 21:30:00.000000', 'https://live.sportlive.cc/live/6140', '杜塞尔多夫 VS 勒沃库森', NULL, NULL, 399, '1', '6140');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.820596', 2875, '2019-08-24 21:30:00.000000', 'https://live.sportlive.cc/live/8870', '帕德博恩 VS 弗赖堡', NULL, NULL, 399, '1', '8870');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.821659', 2876, '2019-08-24 21:30:00.000000', 'https://live.sportlive.cc/live/16950', '沙尔克04 VS 拜仁慕尼黑', NULL, NULL, 399, '1', '16950');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.822598', 2877, '2019-08-24 21:30:00.000000', 'https://live.sportlive.cc/live/14720', '柏林赫塔 VS 沃尔夫斯堡', NULL, NULL, 399, '1', '14720');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.822797', 2878, '2019-08-24 21:30:00.000000', 'https://live.sportlive.cc/live/9330', '霍芬海姆 VS 云达不莱梅', NULL, NULL, 399, '1', '9330');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.823560', 2879, '2019-08-24 21:30:00.000000', 'https://live.sportlive.cc/live/16730', '奥格斯堡 VS 柏林联', NULL, NULL, 399, '1', '16730');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.830307', 2880, '2019-08-24 21:30:00.000000', 'https://live.sportlive.cc/live/20260', '莱比锡RB VS 法兰克福', NULL, NULL, 399, '1', '20260');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.886270', 2881, '2019-08-31 21:30:00.000000', 'https://live.sportlive.cc/live/7830', '沃尔夫斯堡 VS 帕德博恩', NULL, NULL, 399, '1', '7830');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.886658', 2882, '2019-08-31 21:30:00.000000', 'https://live.sportlive.cc/live/23230', '拜仁慕尼黑 VS 美因茨05', NULL, NULL, 399, '1', '23230');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.888911', 2883, '2019-08-31 21:30:00.000000', 'https://live.sportlive.cc/live/16390', '云达不莱梅 VS 奥格斯堡', NULL, NULL, 399, '1', '16390');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.889485', 2884, '2019-08-31 21:30:00.000000', 'https://live.sportlive.cc/live/21830', '法兰克福 VS 杜塞尔多夫', NULL, NULL, 399, '1', '21830');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.890216', 2885, '2019-08-31 21:30:00.000000', 'https://live.sportlive.cc/live/20890', '柏林联 VS 多特蒙德', NULL, NULL, 399, '1', '20890');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.890363', 2886, '2019-08-31 21:30:00.000000', 'https://live.sportlive.cc/live/6560', '勒沃库森 VS 霍芬海姆', NULL, NULL, 399, '1', '6560');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.892103', 2887, '2019-08-31 21:30:00.000000', 'https://live.sportlive.cc/live/11940', '弗赖堡 VS 科隆', NULL, NULL, 399, '1', '11940');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.892332', 2888, '2019-08-31 21:30:00.000000', 'https://live.sportlive.cc/live/14290', '沙尔克04 VS 柏林赫塔', NULL, NULL, 399, '1', '14290');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 14:07:05.892799', 2889, '2019-08-31 21:30:00.000000', 'https://live.sportlive.cc/live/19740', '门兴格拉德巴赫 VS 莱比锡RB', NULL, NULL, 399, '1', '19740');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 15:25:02.584001', 2890, '2019-07-16 16:30:00.000000', 'https://live.sportlive.cc/live/5320', 'TIRA伯希卡波 VS 佩西加雅加达', NULL, NULL, 372, '1', '5320');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 15:25:03.167925', 2891, '2019-07-17 07:05:00.000000', 'https://live.sportlive.cc/live/20170', '洛杉矶道奇 VS 费城费城人', NULL, NULL, 338, '1', '20170');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 15:25:03.168624', 2892, '2019-07-16 19:30:00.000000', 'https://live.sportlive.cc/live/10140', '阿雷玛 VS 帕森洳涩瑞', NULL, NULL, 372, '1', '10140');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 15:25:03.172771', 2893, '2019-07-17 07:10:00.000000', 'https://live.sportlive.cc/live/18930', '圣地亚哥教士 VS 迈阿密马林鱼', NULL, NULL, 338, '1', '18930');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 15:25:03.174285', 2894, '2019-07-17 07:05:00.000000', 'https://live.sportlive.cc/live/20320', '华盛顿国民 VS 巴尔的摩金莺', NULL, NULL, 338, '1', '20320');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 15:25:03.176234', 2895, '2019-07-17 07:10:00.000000', 'https://live.sportlive.cc/live/10900', '底特律老虎 VS 克里夫蓝印地安人', NULL, NULL, 338, '1', '10900');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-16 15:25:03.183202', 2896, '2019-07-17 07:10:00.000000', 'https://live.sportlive.cc/live/17730', '多伦多蓝鸟 VS 波士顿红袜', NULL, NULL, 338, '1', '17730');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-19 10:59:45.022603', 2897, '2019-07-19 09:07:00.000000', 'https://live.sportlive.cc/live/22020', '太空人 VS 天使', NULL, NULL, 338, '1', '22020');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-19 10:59:45.027052', 2898, '2019-07-19 12:00:00.000000', 'https://live.sportlive.cc/live/23050', '国际乒联T2钻石联赛', NULL, NULL, 339, '1', '23050');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-19 10:59:44.975708', 2899, '2019-07-19 09:40:00.000000', 'https://live.sportlive.cc/live/8030', '密尔瓦基酿酒人 VS 亚利桑纳响尾蛇', NULL, NULL, 338, '1', '8030');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-19 10:59:45.092448', 2900, '2019-07-19 19:00:00.000000', 'https://live.sportlive.cc/live/8320', '青岛 VS 北京', NULL, NULL, 402, '1', '8320');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-19 10:59:45.131191', 2901, '2019-07-19 20:00:00.000000', 'https://live.sportlive.cc/live/15500', '布加勒斯特公开赛 - 中央场地 ', NULL, NULL, 347, '1', '15500');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-19 10:59:45.143164', 2902, '2019-07-19 21:00:00.000000', 'https://live.sportlive.cc/live/22690', '天津 VS 辽宁', NULL, NULL, 402, '1', '22690');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-19 10:59:45.152337', 2903, '2019-07-19 22:30:00.000000', 'https://live.sportlive.cc/live/20730', '塔吉克斯坦 VS 朝鲜', NULL, NULL, 288, '1', '20730');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-19 10:59:45.200521', 2904, '2019-07-20 02:00:00.000000', 'https://live.sportlive.cc/live/22290', '西恩 VS 巴塞尔', NULL, NULL, 391, '1', '22290');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-19 10:59:45.200998', 2905, '2019-07-20 02:45:00.000000', 'https://live.sportlive.cc/live/10', '德里 VS 思力高流浪', NULL, NULL, 365, '1', '10');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-19 10:59:45.204115', 2906, '2019-07-20 03:00:00.000000', 'https://live.sportlive.cc/live/21650', '沃特福德联队 VS 费恩哈普', NULL, NULL, 365, '1', '21650');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-19 10:59:45.224420', 2907, '2019-07-20 07:05:00.000000', 'https://live.sportlive.cc/live/22990', '洛基 VS 扬基', NULL, NULL, 338, '1', '22990');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-19 10:59:45.234114', 2908, '2019-07-20 09:00:00.000000', 'https://live.sportlive.cc/live/20190', '利马联盟 VS 水晶竞技队 ', NULL, NULL, 357, '1', '20190');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-19 10:59:45.270020', 2909, '2019-07-20 10:30:00.000000', 'https://live.sportlive.cc/live/18150', '凤凰重生 VS 奥斯丁伯尔德', NULL, NULL, 333, '1', '18150');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-19 10:59:45.270289', 2910, '2019-07-20 12:00:00.000000', 'https://live.sportlive.cc/live/14020', '国际乒联T2钻石联赛', NULL, NULL, 339, '1', '14020');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-19 10:59:45.287196', 2911, '2019-07-20 12:00:00.000000', 'https://live.sportlive.cc/live/17830', '札幌冈萨多 VS 湘南海洋 ', NULL, NULL, 373, '1', '17830');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-19 10:59:45.467585', 2912, '2019-07-21 07:00:00.000000', 'https://live.sportlive.cc/live/23170', '渥太华复仇者 VS 斯沃普柏流浪', NULL, NULL, 333, '1', '23170');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-19 10:59:45.470164', 2913, '2019-07-21 07:00:00.000000', 'https://live.sportlive.cc/live/18110', '匹兹堡猎犬河队 SC VS 北卡罗莱纳', NULL, NULL, 333, '1', '18110');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-19 10:59:45.471770', 2914, '2019-07-21 07:00:00.000000', 'https://live.sportlive.cc/live/20990', '圣路易斯狮子 VS 伯利恒钢铁', NULL, NULL, 333, '1', '20990');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-19 10:59:45.473521', 2915, '2019-07-21 07:00:00.000000', 'https://live.sportlive.cc/live/16890', '哈特福德竞技 VS 查尔斯顿电池', NULL, NULL, 333, '1', '16890');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-19 10:59:45.474374', 2916, '2019-07-21 07:00:00.000000', 'https://live.sportlive.cc/live/17270', '印地十一 VS 劳顿联', NULL, NULL, 333, '1', '17270');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-19 10:59:45.481545', 2917, '2019-07-21 07:30:00.000000', 'https://live.sportlive.cc/live/10830', '坦帕湾 VS 密苏里圣路易斯', NULL, NULL, 333, '1', '10830');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.044154', 2918, '2019-07-23 09:40:00.000000', 'https://live.sportlive.cc/live/8760', '巴尔的摩金莺 VS 亚利桑纳响尾蛇', NULL, NULL, 338, '1', '8760');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.041854', 2919, '2019-07-23 09:00:00.000000', 'https://live.sportlive.cc/live/21630', '万卡约 VS 卡萨大学队', NULL, NULL, 357, '1', '21630');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.035376', 2920, '2019-07-23 08:10:00.000000', 'https://live.sportlive.cc/live/10260', '奥克兰运动 VS 休士顿太空人', NULL, NULL, 338, '1', '10260');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.035533', 2921, '2019-07-23 08:10:00.000000', 'https://live.sportlive.cc/live/23270', '扬基 VS 双城', NULL, NULL, 338, '1', '23270');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.036005', 2922, '2019-07-23 08:10:00.000000', 'https://live.sportlive.cc/live/9360', '迈阿密马林鱼 VS 芝加哥白袜', NULL, NULL, 338, '1', '9360');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.085933', 2923, '2019-07-23 19:00:00.000000', 'https://live.sportlive.cc/live/20360', '波罗的海公开赛 - 1号场地 ', NULL, NULL, 347, '1', '20360');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.100802', 2924, '2019-07-23 22:00:00.000000', 'https://live.sportlive.cc/live/13230', '巴勒莫公开赛 - 2号场地 ', NULL, NULL, 347, '1', '13230');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.102632', 2925, '2019-07-23 22:00:00.000000', 'https://live.sportlive.cc/live/15830', '巴勒莫公开赛 - 3号场地 ', NULL, NULL, 347, '1', '15830');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.103350', 2926, '2019-07-23 22:00:00.000000', 'https://live.sportlive.cc/live/20330', '巴勒莫公开赛 - 中央场地 ', NULL, NULL, 347, '1', '20330');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.115604', 2927, '2019-07-24 02:00:00.000000', 'https://live.sportlive.cc/live/19470', '飞镖世界杯-晚', NULL, NULL, 352, '1', '19470');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.189718', 2928, '2019-07-25 08:30:00.000000', 'https://live.sportlive.cc/live/18340', '巴拉纳竞技 VS 博卡青年', NULL, NULL, 394, '1', '18340');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.199860', 2929, '2019-07-26 08:30:00.000000', 'https://live.sportlive.cc/live/23140', '格雷米奥 VS 自由队', NULL, NULL, 394, '1', '23140');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.207085', 2930, '2019-07-23 08:10:00.000000', 'https://live.sportlive.cc/live/9410', '辛辛那提红人 VS 密尔瓦基酿酒人', NULL, NULL, 338, '1', '9410');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.233719', 2931, '2019-07-26 19:30:00.000000', 'https://live.sportlive.cc/live/18330', '苏州东吴 VS 四川优必选', NULL, NULL, 354, '1', '18330');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.278572', 2932, '2019-07-27 16:00:00.000000', 'https://live.sportlive.cc/live/18600', '西安大兴崇德 VS 宁夏火凤凰', NULL, NULL, 354, '1', '18600');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.287031', 2933, '2019-07-27 16:00:00.000000', 'https://live.sportlive.cc/live/18850', '拉萨城投 VS 湖南湘涛', NULL, NULL, 354, '1', '18850');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.287624', 2934, '2019-07-27 16:00:00.000000', 'https://live.sportlive.cc/live/17290', '保定容大 VS 青岛中能', NULL, NULL, 354, '1', '17290');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.289140', 2935, '2019-07-27 16:00:00.000000', 'https://live.sportlive.cc/live/19100', '广西宝韵 VS 云南昆陆', NULL, NULL, 354, '1', '19100');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.289687', 2936, '2019-07-27 16:00:00.000000', 'https://live.sportlive.cc/live/15070', '北京理工 VS 沈阳城市建设', NULL, NULL, 354, '1', '15070');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.289864', 2937, '2019-07-27 16:30:00.000000', 'https://live.sportlive.cc/live/17330', '湖北楚风合力 VS 浙江毅腾', NULL, NULL, 354, '1', '17330');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.290270', 2938, '2019-07-27 16:00:00.000000', 'https://live.sportlive.cc/live/15900', '深圳鹏城 VS 江西联盛国贸', NULL, NULL, 354, '1', '15900');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.296164', 2939, '2019-07-27 17:00:00.000000', 'https://live.sportlive.cc/live/11300', '淄博蹴鞠 VS 河北精英', NULL, NULL, 354, '1', '11300');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.393482', 2940, '2019-07-27 19:00:00.000000', 'https://live.sportlive.cc/live/16170', '南京沙叶河海 VS 昆山FC', NULL, NULL, 354, '1', '16170');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.394156', 2941, '2019-07-27 19:00:00.000000', 'https://live.sportlive.cc/live/19090', '浙江义乌商城 VS 武汉三镇', NULL, NULL, 354, '1', '19090');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.402381', 2942, '2019-07-27 19:30:00.000000', 'https://live.sportlive.cc/live/10960', '成都兴城 VS 福建天信', NULL, NULL, 354, '1', '10960');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.806596', 2943, '2019-08-03 15:30:00.000000', 'https://live.sportlive.cc/live/18840', '宁夏火凤凰 VS 山西信都', NULL, NULL, 354, '1', '18840');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.814049', 2944, '2019-08-03 15:30:00.000000', 'https://live.sportlive.cc/live/19890', '延边北国 VS 西安大兴崇德', NULL, NULL, 354, '1', '19890');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.816676', 2945, '2019-08-03 15:30:00.000000', 'https://live.sportlive.cc/live/15290', '青岛中能 VS 北京理工', NULL, NULL, 354, '1', '15290');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.816936', 2946, '2019-08-03 16:00:00.000000', 'https://live.sportlive.cc/live/18190', '四川优必选 VS 云南昆陆', NULL, NULL, 354, '1', '18190');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.820239', 2947, '2019-08-03 16:00:00.000000', 'https://live.sportlive.cc/live/16310', '广西宝韵 VS 南京沙叶河海', NULL, NULL, 354, '1', '16310');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.822435', 2948, '2019-08-03 16:00:00.000000', 'https://live.sportlive.cc/live/12330', '河北精英 VS 青岛红狮', NULL, NULL, 354, '1', '12330');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.852339', 2949, '2019-08-03 16:00:00.000000', 'https://live.sportlive.cc/live/12700', '内蒙古草上飞 VS 吉林百嘉', NULL, NULL, 354, '1', '12700');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.867078', 2950, '2019-08-03 19:00:00.000000', 'https://live.sportlive.cc/live/18510', '大连千兆 VS 盐城大丰', NULL, NULL, 354, '1', '18510');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.868035', 2951, '2019-08-03 19:00:00.000000', 'https://live.sportlive.cc/live/10280', '江西联盛国贸 VS 湖北楚风合力', NULL, NULL, 354, '1', '10280');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.868614', 2952, '2019-08-03 19:00:00.000000', 'https://live.sportlive.cc/live/20370', '沈阳城市建设 VS 淄博蹴鞠', NULL, NULL, 354, '1', '20370');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.868774', 2953, '2019-08-03 19:30:00.000000', 'https://live.sportlive.cc/live/23150', '福建天信 VS 浙江义乌商城', NULL, NULL, 354, '1', '23150');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.871017', 2954, '2019-08-03 19:30:00.000000', 'https://live.sportlive.cc/live/17130', '泰州远大 VS 保定容大', NULL, NULL, 354, '1', '17130');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.871493', 2955, '2019-08-03 19:30:00.000000', 'https://live.sportlive.cc/live/19650', '浙江毅腾 VS 苏州东吴', NULL, NULL, 354, '1', '19650');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.872234', 2956, '2019-08-03 19:30:00.000000', 'https://live.sportlive.cc/live/14800', '湖南湘涛 VS 深圳鹏城', NULL, NULL, 354, '1', '14800');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.872395', 2957, '2019-08-03 19:30:00.000000', 'https://live.sportlive.cc/live/23160', '武汉三镇 VS 拉萨城投', NULL, NULL, 354, '1', '23160');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.875678', 2958, '2019-08-03 20:00:00.000000', 'https://live.sportlive.cc/live/11720', '斯帕尼斯 VS 帕内韦日斯', NULL, NULL, 375, '1', '11720');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.875936', 2959, '2019-08-03 19:30:00.000000', 'https://live.sportlive.cc/live/10060', '昆山FC VS 成都兴城', NULL, NULL, 354, '1', '10060');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.881307', 2960, '2019-08-03 22:00:00.000000', 'https://live.sportlive.cc/live/21230', '维尔纽斯骑士 VS 帕兰加', NULL, NULL, 375, '1', '21230');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.907840', 2961, '2019-08-04 00:00:00.000000', 'https://live.sportlive.cc/live/14440', '苏度瓦 VS 考纳斯野牛', NULL, NULL, 375, '1', '14440');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:01.972399', 2962, '2019-08-05 00:00:00.000000', 'https://live.sportlive.cc/live/11190', '阿兰达斯 VS 萨尔格里斯', NULL, NULL, 375, '1', '11190');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.001896', 2963, '2019-08-08 19:45:00.000000', 'https://live.sportlive.cc/live/18050', '后港联 VS 新加坡新泻天鹅 FC', NULL, NULL, 378, '1', '18050');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.023642', 2964, '2019-08-10 15:30:00.000000', 'https://live.sportlive.cc/live/10270', '盐城大丰 VS 河北精英', NULL, NULL, 354, '1', '10270');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.027199', 2965, '2019-08-10 15:30:00.000000', 'https://live.sportlive.cc/live/15560', '青岛红狮 VS 沈阳城市建设', NULL, NULL, 354, '1', '15560');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.039851', 2966, '2019-08-10 15:30:00.000000', 'https://live.sportlive.cc/live/15620', '延边北国 VS 宁夏火凤凰', NULL, NULL, 354, '1', '15620');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.040781', 2967, '2019-08-10 16:00:00.000000', 'https://live.sportlive.cc/live/16550', '云南昆陆 VS 浙江毅腾', NULL, NULL, 354, '1', '16550');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.041030', 2968, '2019-08-10 16:00:00.000000', 'https://live.sportlive.cc/live/15520', '拉萨城投 VS 福建天信', NULL, NULL, 354, '1', '15520');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.042143', 2969, '2019-08-10 16:00:00.000000', 'https://live.sportlive.cc/live/19330', '北京理工 VS 泰州远大', NULL, NULL, 354, '1', '19330');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.048871', 2970, '2019-08-10 16:30:00.000000', 'https://live.sportlive.cc/live/19120', '湖北楚风合力 VS 深圳鹏城', NULL, NULL, 354, '1', '19120');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.049054', 2971, '2019-08-10 16:00:00.000000', 'https://live.sportlive.cc/live/20380', '保定容大 VS 内蒙古草上飞', NULL, NULL, 354, '1', '20380');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.055555', 2972, '2019-08-10 19:00:00.000000', 'https://live.sportlive.cc/live/19800', '浙江义乌商城 VS 昆山FC', NULL, NULL, 354, '1', '19800');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.062203', 2973, '2019-08-10 19:30:00.000000', 'https://live.sportlive.cc/live/22060', '淄博蹴鞠 VS 青岛中能', NULL, NULL, 354, '1', '22060');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.065350', 2974, '2019-08-10 19:30:00.000000', 'https://live.sportlive.cc/live/11100', '成都兴城 VS 广西宝韵', NULL, NULL, 354, '1', '11100');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.066492', 2975, '2019-08-10 19:30:00.000000', 'https://live.sportlive.cc/live/17680', '武汉三镇 VS 湖南湘涛', NULL, NULL, 354, '1', '17680');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.076253', 2976, '2019-08-10 19:30:00.000000', 'https://live.sportlive.cc/live/4890', '苏州东吴 VS 江西联盛国贸', NULL, NULL, 354, '1', '4890');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.109461', 2977, '2019-08-11 00:00:00.000000', 'https://live.sportlive.cc/live/11230', '维尔纽斯骑士 VS 阿兰达斯', NULL, NULL, 375, '1', '11230');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.157115', 2978, '2019-08-11 16:00:00.000000', 'https://live.sportlive.cc/live/18680', '西安大兴崇德 VS 大连千兆', NULL, NULL, 354, '1', '18680');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.168007', 2979, '2019-08-11 19:00:00.000000', 'https://live.sportlive.cc/live/16140', '南京沙叶河海 VS 四川优必选', NULL, NULL, 354, '1', '16140');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.169151', 2980, '2019-08-11 20:00:00.000000', 'https://live.sportlive.cc/live/18320', '帕兰加 VS 考纳斯野牛', NULL, NULL, 375, '1', '18320');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.180194', 2981, '2019-08-11 22:00:00.000000', 'https://live.sportlive.cc/live/19500', '帕内韦日斯 VS 苏度瓦', NULL, NULL, 375, '1', '19500');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.193311', 2982, '2019-08-12 00:00:00.000000', 'https://live.sportlive.cc/live/21490', '萨尔格里斯 VS 斯帕尼斯', NULL, NULL, 375, '1', '21490');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.220493', 2983, '2019-08-17 03:00:00.000000', 'https://live.sportlive.cc/live/21940', '毕尔巴鄂竞技 VS 巴塞罗那', NULL, NULL, 397, '1', '21940');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.227425', 2984, '2019-08-17 17:30:00.000000', 'https://live.sportlive.cc/live/12970', '淡滨尼流浪 VS 新加坡新泻天鹅 FC', NULL, NULL, 378, '1', '12970');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.256281', 2985, '2019-08-17 23:00:00.000000', 'https://live.sportlive.cc/live/6680', '塞尔塔 VS 皇家马德里', NULL, NULL, 397, '1', '6680');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.282723', 2986, '2019-08-18 00:00:00.000000', 'https://live.sportlive.cc/live/20700', '斯帕尼斯 VS 维尔纽斯骑士', NULL, NULL, 375, '1', '20700');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.304081', 2987, '2019-08-18 01:00:00.000000', 'https://live.sportlive.cc/live/18900', '瓦伦西亚 VS 皇家社会', NULL, NULL, 397, '1', '18900');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.325593', 2988, '2019-08-18 03:00:00.000000', 'https://live.sportlive.cc/live/18400', '雷加利斯 VS 奥萨苏纳', NULL, NULL, 397, '1', '18400');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.325758', 2989, '2019-08-18 17:30:00.000000', 'https://live.sportlive.cc/live/10610', '马里士他卡沙 VS 芽笼联', NULL, NULL, 378, '1', '10610');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.327983', 2990, '2019-08-18 17:30:00.000000', 'https://live.sportlive.cc/live/15790', '幼狮队 VS 后港联', NULL, NULL, 378, '1', '15790');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.326091', 2991, '2019-08-18 03:00:00.000000', 'https://live.sportlive.cc/live/9840', '维拉里尔 VS 格拉纳达', NULL, NULL, 397, '1', '9840');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.329552', 2992, '2019-08-18 20:00:00.000000', 'https://live.sportlive.cc/live/20080', '考纳斯野牛 VS 萨尔格里斯', NULL, NULL, 375, '1', '20080');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.346714', 2993, '2019-08-18 22:00:00.000000', 'https://live.sportlive.cc/live/21780', '阿兰达斯 VS 帕内韦日斯', NULL, NULL, 375, '1', '21780');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.353264', 2994, '2019-08-18 23:00:00.000000', 'https://live.sportlive.cc/live/10050', '阿拉维斯 VS 莱万特', NULL, NULL, 397, '1', '10050');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.359366', 2995, '2019-08-19 00:00:00.000000', 'https://live.sportlive.cc/live/16810', '苏度瓦 VS 帕兰加', NULL, NULL, 375, '1', '16810');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.362141', 2996, '2019-08-19 01:00:00.000000', 'https://live.sportlive.cc/live/5950', '西班牙人 VS 塞维利亚', NULL, NULL, 397, '1', '5950');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.370110', 2997, '2019-08-19 03:00:00.000000', 'https://live.sportlive.cc/live/22660', '马德里竞技 VS 赫塔菲', NULL, NULL, 397, '1', '22660');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.380696', 2998, '2019-08-20 04:00:00.000000', 'https://live.sportlive.cc/live/12290', '皇家贝蒂斯 VS 巴拉多利德', NULL, NULL, 397, '1', '12290');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.382755', 2999, '2019-08-23 23:00:00.000000', 'https://live.sportlive.cc/live/22510', '帕内韦日斯 VS 维尔纽斯骑士', NULL, NULL, 375, '1', '22510');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.389469', 3000, '2019-08-20 02:00:00.000000', 'https://live.sportlive.cc/live/19020', '皇家马略卡 VS 埃瓦尔', NULL, NULL, 397, '1', '19020');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.389721', 3001, '2019-08-24 02:00:00.000000', 'https://live.sportlive.cc/live/9450', '格拉纳达 VS 塞维利亚', NULL, NULL, 397, '1', '9450');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.391241', 3002, '2019-08-24 01:00:00.000000', 'https://live.sportlive.cc/live/16920', '萨尔格里斯 VS 苏度瓦', NULL, NULL, 375, '1', '16920');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.392247', 3003, '2019-08-24 04:00:00.000000', 'https://live.sportlive.cc/live/6450', '莱万特 VS 维拉里尔', NULL, NULL, 397, '1', '6450');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.412141', 3004, '2019-08-24 22:00:00.000000', 'https://live.sportlive.cc/live/17390', '考纳斯野牛 VS 斯帕尼斯', NULL, NULL, 375, '1', '17390');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.417460', 3005, '2019-08-24 23:00:00.000000', 'https://live.sportlive.cc/live/7870', '奥萨苏纳 VS 埃瓦尔', NULL, NULL, 397, '1', '7870');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.449356', 3006, '2019-08-25 01:00:00.000000', 'https://live.sportlive.cc/live/5800', '皇家马德里 VS 巴拉多利德', NULL, NULL, 397, '1', '5800');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.468792', 3007, '2019-08-25 03:00:00.000000', 'https://live.sportlive.cc/live/18980', '赫塔菲 VS 毕尔巴鄂竞技', NULL, NULL, 397, '1', '18980');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.467550', 3008, '2019-08-25 03:00:00.000000', 'https://live.sportlive.cc/live/22650', '塞尔塔 VS 瓦伦西亚', NULL, NULL, 397, '1', '22650');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.494367', 3009, '2019-08-25 23:00:00.000000', 'https://live.sportlive.cc/live/17250', '帕兰加 VS 阿兰达斯', NULL, NULL, 375, '1', '17250');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.500977', 3010, '2019-08-26 01:00:00.000000', 'https://live.sportlive.cc/live/10480', '皇家马略卡 VS 皇家社会', NULL, NULL, 397, '1', '10480');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.501262', 3011, '2019-08-25 23:00:00.000000', 'https://live.sportlive.cc/live/7160', '阿拉维斯 VS 西班牙人', NULL, NULL, 397, '1', '7160');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.506909', 3012, '2019-08-26 03:00:00.000000', 'https://live.sportlive.cc/live/16850', '巴塞罗那 VS 皇家贝蒂斯', NULL, NULL, 397, '1', '16850');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.507110', 3013, '2019-08-27 03:00:00.000000', 'https://live.sportlive.cc/live/19640', '雷加利斯 VS 马德里竞技', NULL, NULL, 397, '1', '19640');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.509857', 3014, '2019-08-27 19:45:00.000000', 'https://live.sportlive.cc/live/15650', '新加坡新泻天鹅 FC VS 马里士他卡沙', NULL, NULL, 378, '1', '15650');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.516780', 3015, '2019-08-28 15:30:00.000000', 'https://live.sportlive.cc/live/8700', '山西信都 VS 青岛红狮', NULL, NULL, 354, '1', '8700');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.517348', 3016, '2019-08-28 16:00:00.000000', 'https://live.sportlive.cc/live/21000', '深圳鹏城 VS 广西宝韵', NULL, NULL, 354, '1', '21000');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.522235', 3017, '2019-08-28 16:00:00.000000', 'https://live.sportlive.cc/live/19790', '河北精英 VS 北京理工', NULL, NULL, 354, '1', '19790');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.524604', 3018, '2019-08-28 18:30:00.000000', 'https://live.sportlive.cc/live/17520', '吉林百嘉 VS 延边北国', NULL, NULL, 354, '1', '17520');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.529329', 3019, '2019-08-28 20:15:00.000000', 'https://live.sportlive.cc/live/19540', '文莱DPMM VS 淡滨尼流浪', NULL, NULL, 378, '1', '19540');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.531649', 3020, '2019-08-31 02:00:00.000000', 'https://live.sportlive.cc/live/18920', '塞维利亚 VS 塞尔塔', NULL, NULL, 397, '1', '18920');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.540037', 3021, '2019-08-31 04:00:00.000000', 'https://live.sportlive.cc/live/22860', '毕尔巴鄂竞技 VS 皇家社会', NULL, NULL, 397, '1', '22860');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.547840', 3022, '2019-08-31 20:00:00.000000', 'https://live.sportlive.cc/live/11070', '帕兰加 VS 萨尔格里斯', NULL, NULL, 375, '1', '11070');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.570828', 3023, '2019-08-31 22:00:00.000000', 'https://live.sportlive.cc/live/20850', '斯帕尼斯 VS 阿兰达斯', NULL, NULL, 375, '1', '20850');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.603338', 3024, '2019-09-01 00:00:00.000000', 'https://live.sportlive.cc/live/19720', '维尔纽斯骑士 VS 苏度瓦', NULL, NULL, 375, '1', '19720');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.603615', 3025, '2019-08-31 23:00:00.000000', 'https://live.sportlive.cc/live/22870', '奥萨苏纳 VS 巴塞罗那', NULL, NULL, 397, '1', '22870');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.606437', 3026, '2019-09-01 01:00:00.000000', 'https://live.sportlive.cc/live/11010', '赫塔菲 VS 阿拉维斯', NULL, NULL, 397, '1', '11010');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.607797', 3027, '2019-09-01 01:00:00.000000', 'https://live.sportlive.cc/live/11810', '莱万特 VS 巴拉多利德', NULL, NULL, 397, '1', '11810');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.621461', 3028, '2019-09-01 03:00:00.000000', 'https://live.sportlive.cc/live/21540', '皇家贝蒂斯 VS 雷加利斯', NULL, NULL, 397, '1', '21540');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.632978', 3029, '2019-09-01 23:00:00.000000', 'https://live.sportlive.cc/live/18520', '瓦伦西亚 VS 皇家马略卡', NULL, NULL, 397, '1', '18520');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.633431', 3030, '2019-09-02 01:00:00.000000', 'https://live.sportlive.cc/live/20620', '西班牙人 VS 格拉纳达', NULL, NULL, 397, '1', '20620');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.633618', 3031, '2019-09-01 23:00:00.000000', 'https://live.sportlive.cc/live/21170', '帕内韦日斯 VS 考纳斯野牛', NULL, NULL, 375, '1', '21170');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.635597', 3032, '2019-09-02 01:00:00.000000', 'https://live.sportlive.cc/live/22900', '马德里竞技 VS 埃瓦尔', NULL, NULL, 397, '1', '22900');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.655813', 3033, '2019-09-02 03:00:00.000000', 'https://live.sportlive.cc/live/22240', '维拉里尔 VS 皇家马德里', NULL, NULL, 397, '1', '22240');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.752502', 3034, '2019-09-14 00:00:00.000000', 'https://live.sportlive.cc/live/22890', '阿兰达斯 VS 苏度瓦', NULL, NULL, 375, '1', '22890');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.754842', 3035, '2019-09-14 20:00:00.000000', 'https://live.sportlive.cc/live/5960', '帕兰加 VS 斯帕尼斯', NULL, NULL, 375, '1', '5960');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.766557', 3036, '2019-09-15 00:00:00.000000', 'https://live.sportlive.cc/live/22910', '萨尔格里斯 VS 帕内韦日斯', NULL, NULL, 375, '1', '22910');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.766759', 3037, '2019-09-14 22:00:00.000000', 'https://live.sportlive.cc/live/22540', '考纳斯野牛 VS 维尔纽斯骑士', NULL, NULL, 375, '1', '22540');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.772823', 3038, '2019-09-21 20:00:00.000000', 'https://live.sportlive.cc/live/10080', '斯帕尼斯 VS 苏度瓦', NULL, NULL, 375, '1', '10080');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.773037', 3039, '2019-09-21 18:00:00.000000', 'https://live.sportlive.cc/live/21150', '维尔纽斯骑士 VS 萨尔格里斯', NULL, NULL, 375, '1', '21150');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.776043', 3040, '2019-09-21 22:00:00.000000', 'https://live.sportlive.cc/live/7640', '帕内韦日斯 VS 帕兰加', NULL, NULL, 375, '1', '7640');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.776277', 3041, '2019-09-22 00:00:00.000000', 'https://live.sportlive.cc/live/19730', '阿兰达斯 VS 考纳斯野牛', NULL, NULL, 375, '1', '19730');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.778937', 3042, '2019-09-22 17:30:00.000000', 'https://live.sportlive.cc/live/16600', '勇士 VS 淡滨尼流浪', NULL, NULL, 378, '1', '16600');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.784124', 3043, '2019-09-24 23:00:00.000000', 'https://live.sportlive.cc/live/19250', '帕内韦日斯 VS 斯帕尼斯', NULL, NULL, 375, '1', '19250');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.786802', 3044, '2019-09-25 23:00:00.000000', 'https://live.sportlive.cc/live/15510', '考纳斯野牛 VS 苏度瓦', NULL, NULL, 375, '1', '15510');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.785983', 3045, '2019-09-25 22:00:00.000000', 'https://live.sportlive.cc/live/10360', '帕兰加 VS 维尔纽斯骑士', NULL, NULL, 375, '1', '10360');
INSERT INTO `app_competitionsinfomodel` VALUES ('2019-07-23 10:07:02.792271', 3046, '2019-09-26 00:00:00.000000', 'https://live.sportlive.cc/live/17810', '萨尔格里斯 VS 阿兰达斯', NULL, NULL, 375, '1', '17810');
COMMIT;

-- ----------------------------
-- Table structure for app_competitionsmodel
-- ----------------------------
DROP TABLE IF EXISTS `app_competitionsmodel`;
CREATE TABLE `app_competitionsmodel` (
  `create_time` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `status` varchar(2),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1519 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_competitionsmodel
-- ----------------------------
BEGIN;
INSERT INTO `app_competitionsmodel` VALUES ('2019-07-04 08:46:13.514272', 1473, '直播', '1');
INSERT INTO `app_competitionsmodel` VALUES ('2019-06-05 19:24:44.923161', 1474, '网球', '0');
INSERT INTO `app_competitionsmodel` VALUES ('2019-06-05 19:24:44.935572', 1476, '棒球', '0');
INSERT INTO `app_competitionsmodel` VALUES ('2019-06-05 19:24:44.935677', 1477, '运动', '0');
INSERT INTO `app_competitionsmodel` VALUES ('2019-06-05 19:24:44.950662', 1479, '排球', '0');
INSERT INTO `app_competitionsmodel` VALUES ('2019-07-04 08:45:41.211296', 1487, '资讯', '1');
INSERT INTO `app_competitionsmodel` VALUES ('2019-06-05 19:24:45.100806', 1514, '乒乓球', '0');
INSERT INTO `app_competitionsmodel` VALUES ('2019-06-05 19:24:45.291496', 1516, '赛车', '0');
INSERT INTO `app_competitionsmodel` VALUES ('2019-07-04 08:46:05.019052', 1517, '录像', '1');
COMMIT;

-- ----------------------------
-- Table structure for app_competitionstagmodel
-- ----------------------------
DROP TABLE IF EXISTS `app_competitionstagmodel`;
CREATE TABLE `app_competitionstagmodel` (
  `create_time` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `tag_model_id` int(11) NOT NULL,
  `status` varchar(2),
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_competitionstagm_tag_model_id_ed323045_fk_app_compe` (`tag_model_id`),
  CONSTRAINT `app_competitionstagm_tag_model_id_ed323045_fk_app_compe` FOREIGN KEY (`tag_model_id`) REFERENCES `app_competitionsmodel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=406 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_competitionstagmodel
-- ----------------------------
BEGIN;
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.021862', 286, '法网2019', 1474, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.029241', 288, '国际友谊赛', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.037229', 289, '板球', 1477, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.044972', 290, '意青联', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.078988', 296, '欧国联', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.084953', 297, '捷克丙', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.092751', 298, '土伦杯', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.095806', 299, '澳足总杯', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.096452', 300, '韩国职棒', 1476, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.103732', 303, '立陶宛篮甲', 1487, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.105598', 305, 'FIVB国家联赛', 1479, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.109167', 307, 'VTB联赛', 1487, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.109651', 308, '土耳其篮甲', 1487, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.121952', 312, '丹麦乙', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.126028', 317, '意大利篮甲', 1487, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.126144', 319, '德国篮甲', 1487, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.126399', 320, '意大利乙', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.127435', 321, '阿根廷杯', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.127925', 323, '哥伦比亚甲', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-12 03:13:45.207967', 324, '巴西杯', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-07-08 02:09:15.711655', 327, 'WNBA', 1487, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.135106', 331, '美职联', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.135230', 332, '阿根廷篮甲', 1487, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.136187', 333, '美冠联', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-07-05 03:07:12.881650', 335, 'NBA直播', 1473, '1', 5);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.177737', 338, 'MLB', 1476, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.181263', 339, '国际乒联', 1514, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.189701', 344, '韩国排球联赛', 1479, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.218898', 347, 'WTA', 1474, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.234304', 350, '欧洲U21锦标赛', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.234442', 351, '挪威甲', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.237005', 352, '飞镖', 1477, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-07-08 02:10:05.594194', 353, '法国篮甲', 1487, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.275651', 354, '中乙', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-07-16 01:44:39.664784', 355, '欧锦赛预', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.311517', 356, 'F1', 1516, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.313944', 357, '秘鲁甲', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.355121', 358, '女足世界杯', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.392933', 359, '日乙', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.398742', 360, '日本丙', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-07-05 03:41:07.738370', 361, '中超直播', 1473, '1', 3);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.482739', 362, '德堡州联赛', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.491791', 363, '瑞典甲', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.560584', 365, '爱尔兰超', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.575442', 366, '阿乙', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-07-08 02:10:27.189261', 367, '德手球联赛', 1517, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.718493', 369, '西乙', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.932826', 371, '泰国超', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.955301', 372, '印尼甲', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.960918', 373, '日职联', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:45.991076', 374, '白俄超', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.004209', 375, '立陶宛甲', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.006067', 376, '格鲁吉亚超', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.054341', 377, '美洲杯', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.093463', 378, '新加坡甲', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.109699', 380, '韩国K2联赛', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.123705', 381, '韩K联', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.205661', 382, '挪威超', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.234614', 383, '美洲金杯2019', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-07-04 08:51:26.364857', 384, '美国女足联赛', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-07-04 08:51:17.150658', 385, '芬兰超', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-07-05 03:07:41.979879', 386, '亚冠直播', 1473, '1', 9);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.463391', 388, '亚协杯', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-07-09 05:51:06.344202', 390, '非洲杯2019', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:46.881288', 391, '瑞典超', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-06-05 19:24:47.369845', 392, '中国乙级联赛', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-07-04 08:49:13.936152', 393, '中国足协杯', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-07-04 08:49:08.031794', 394, '解放者杯', 1473, '0', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-07-05 03:09:07.370720', 396, '英超直播', 1473, '1', 5);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-07-05 03:01:53.729343', 397, '西甲直播', 1473, '1', 60);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-07-05 03:01:48.184925', 398, '法甲直播', 1473, '1', 50);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-07-05 03:01:43.963800', 399, '德甲直播', 1473, '1', 40);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-07-05 03:01:39.924800', 400, '意甲直播', 1473, '1', 30);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-07-05 03:01:35.745419', 401, '欧冠杯直播', 1473, '1', 20);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-07-05 03:01:30.195223', 402, 'CBA直播', 1473, '1', 10);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-07-05 02:37:21.256476', 403, '全部', 1473, '1', 0);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-07-08 07:20:45.220820', 404, '综合', 1473, '1', 65);
INSERT INTO `app_competitionstagmodel` VALUES ('2019-07-16 16:06:31.034535', 405, '资讯全部', 1487, '0', 0);
COMMIT;

-- ----------------------------
-- Table structure for app_linkmodel
-- ----------------------------
DROP TABLE IF EXISTS `app_linkmodel`;
CREATE TABLE `app_linkmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_linkmodel
-- ----------------------------
BEGIN;
INSERT INTO `app_linkmodel` VALUES (2, '看球网', 'www.kqw2.com');
COMMIT;

-- ----------------------------
-- Table structure for app_tagmodel
-- ----------------------------
DROP TABLE IF EXISTS `app_tagmodel`;
CREATE TABLE `app_tagmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `sort_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_tagmodel
-- ----------------------------
BEGIN;
INSERT INTO `app_tagmodel` VALUES (1, '英超', 0);
INSERT INTO `app_tagmodel` VALUES (2, 'NBA', 0);
INSERT INTO `app_tagmodel` VALUES (3, '足球', 0);
INSERT INTO `app_tagmodel` VALUES (4, '广州恒大', 0);
INSERT INTO `app_tagmodel` VALUES (5, '德甲', 0);
INSERT INTO `app_tagmodel` VALUES (6, '亚冠', 0);
INSERT INTO `app_tagmodel` VALUES (7, 'CBA', 0);
INSERT INTO `app_tagmodel` VALUES (8, '中超', 0);
INSERT INTO `app_tagmodel` VALUES (9, '河北华夏', 0);
INSERT INTO `app_tagmodel` VALUES (10, '大连一方', 0);
INSERT INTO `app_tagmodel` VALUES (11, '天津天海', 0);
INSERT INTO `app_tagmodel` VALUES (12, '欧冠杯', 0);
INSERT INTO `app_tagmodel` VALUES (13, '美洲杯', 0);
INSERT INTO `app_tagmodel` VALUES (14, '阿根廷', 0);
INSERT INTO `app_tagmodel` VALUES (15, '哥伦比亚', 0);
INSERT INTO `app_tagmodel` VALUES (16, '非洲杯', 0);
INSERT INTO `app_tagmodel` VALUES (17, '西甲', 0);
INSERT INTO `app_tagmodel` VALUES (18, '德甲', 0);
INSERT INTO `app_tagmodel` VALUES (19, '阿扎尔', 0);
INSERT INTO `app_tagmodel` VALUES (20, 'CBA', 0);
INSERT INTO `app_tagmodel` VALUES (21, '意甲', 0);
COMMIT;

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
  `category_id` int(11) DEFAULT NULL,
  `author` varchar(16) NOT NULL,
  `origin` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_videomodel_brocade_detail_id_45afa615_fk_app_brocademodel_id` (`brocade_detail_id`),
  KEY `app_videomodel_videos_detail_id_fd4a6634_fk_app_video` (`videos_detail_id`),
  KEY `app_videomodel_category_id_ae7c39c0_fk_app_compe` (`category_id`),
  CONSTRAINT `app_videomodel_brocade_detail_id_45afa615_fk_app_brocademodel_id` FOREIGN KEY (`brocade_detail_id`) REFERENCES `app_brocademodel` (`id`),
  CONSTRAINT `app_videomodel_category_id_ae7c39c0_fk_app_compe` FOREIGN KEY (`category_id`) REFERENCES `app_competitionstagmodel` (`id`),
  CONSTRAINT `app_videomodel_videos_detail_id_fd4a6634_fk_app_video` FOREIGN KEY (`videos_detail_id`) REFERENCES `app_videosdetailmodel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_videomodel
-- ----------------------------
BEGIN;
INSERT INTO `app_videomodel` VALUES (72, '深圳佳兆业vs天津泰达', '2019-06-17 11:28:27.789642', '0', 71, NULL, 402, '球迷', 'zrs直播吧');
INSERT INTO `app_videomodel` VALUES (73, '江苏苏宁vs北京人和', '2019-06-17 11:28:27.791205', '0', 68, NULL, 361, '球迷', 'zrs直播吧');
INSERT INTO `app_videomodel` VALUES (74, '河北华夏vs大连一方', '2019-06-17 11:28:27.792215', '1', NULL, 46, 361, '球迷', 'zrs直播吧');
INSERT INTO `app_videomodel` VALUES (75, '广州富力vs武汉卓尔', '2019-06-17 11:28:27.821336', '1', NULL, 47, 361, '球迷', 'zrs直播吧');
INSERT INTO `app_videomodel` VALUES (76, '天津天海vs河南建业', '2019-06-17 11:28:27.821611', '1', NULL, 45, 361, '球迷', 'zrs直播吧');
INSERT INTO `app_videomodel` VALUES (77, '广州富力vs武汉卓尔', '2019-06-17 11:28:27.821527', '0', 67, NULL, 361, '球迷', 'zrs直播吧');
INSERT INTO `app_videomodel` VALUES (78, '天津天海vs河南建业', '2019-06-17 11:28:27.821914', '0', 70, NULL, 361, '球迷', 'zrs直播吧');
INSERT INTO `app_videomodel` VALUES (79, '江苏苏宁vs北京人和', '2019-06-17 11:28:27.825241', '1', NULL, 48, 361, '球迷', 'zrs直播吧');
INSERT INTO `app_videomodel` VALUES (80, '上海上港vs广州恒大', '2019-06-17 11:28:28.138776', '0', 72, NULL, 361, '球迷', 'zrs直播吧');
INSERT INTO `app_videomodel` VALUES (81, ' 牙买加女足vs意大利女足  ', '2019-06-17 11:28:28.167185', '0', NULL, 50, NULL, '球迷', 'zrs直播吧');
INSERT INTO `app_videomodel` VALUES (82, ' 英格兰女足vs阿根廷女足  ', '2019-06-17 11:28:28.175833', '0', 75, NULL, NULL, '球迷', 'zrs直播吧');
INSERT INTO `app_videomodel` VALUES (83, ' 日本女足vs苏格兰女足  ', '2019-06-17 11:28:28.548942', '0', NULL, 49, NULL, '球迷', 'zrs直播吧');
INSERT INTO `app_videomodel` VALUES (84, '巴西vs玻利维亚', '2019-06-17 11:28:28.766451', '1', 77, NULL, 335, '球迷', 'zrs直播吧');
INSERT INTO `app_videomodel` VALUES (85, ' 南通支云vs浙江绿城  ', '2019-06-17 11:28:28.777970', '0', 76, NULL, 396, '球迷', 'zrs直播吧');
INSERT INTO `app_videomodel` VALUES (86, ' 上海申鑫vs呼和浩特  ', '2019-06-17 11:28:28.798767', '0', 78, NULL, 396, '球迷', 'zrs直播吧');
INSERT INTO `app_videomodel` VALUES (87, ' 新疆雪豹纳欢vs四川FC  ', '2019-06-17 11:28:29.098832', '0', 79, NULL, 361, '球迷', 'zrs直播吧');
INSERT INTO `app_videomodel` VALUES (88, '黑龙江FCvs梅州客家', '2019-06-17 11:28:29.108828', '1', NULL, 57, 361, '球迷', 'zrs直播吧');
INSERT INTO `app_videomodel` VALUES (89, ' 荷兰女足vs喀麦隆女足  ', '2019-06-17 11:28:29.128107', '0', 80, NULL, 396, '球迷', 'zrs直播吧');
INSERT INTO `app_videomodel` VALUES (90, '墨西哥vs爱尔兰', '2019-06-17 11:28:29.157955', '0', 82, NULL, 396, '球迷', 'zrs直播吧');
INSERT INTO `app_videomodel` VALUES (91, '乌克兰U20vs韩国U20', '2019-06-17 11:28:29.471667', '0', 83, NULL, 396, '球迷', 'zrs直播吧');
INSERT INTO `app_videomodel` VALUES (92, '河北华夏vs大连一方高清录像', '2019-06-17 11:28:29.500555', '1', 69, 28, 402, '球迷', 'zrs直播吧');
INSERT INTO `app_videomodel` VALUES (93, '阿根廷vs哥伦比亚录像集锦', '2019-07-09 02:49:59.319107', '1', 84, 62, 404, '球迷', 'zrs直播吧');
INSERT INTO `app_videomodel` VALUES (94, '1334', '2019-07-10 03:46:27.944481', '0', 85, NULL, 404, '球迷', 'zrs直播吧');
COMMIT;

-- ----------------------------
-- Table structure for app_videomodel_tag
-- ----------------------------
DROP TABLE IF EXISTS `app_videomodel_tag`;
CREATE TABLE `app_videomodel_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videomodel_id` int(11) NOT NULL,
  `tagmodel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_videomodel_tag_videomodel_id_tagmodel_id_cd92272c_uniq` (`videomodel_id`,`tagmodel_id`),
  KEY `app_videomodel_tag_tagmodel_id_97496977_fk_app_tagmodel_id` (`tagmodel_id`),
  CONSTRAINT `app_videomodel_tag_tagmodel_id_97496977_fk_app_tagmodel_id` FOREIGN KEY (`tagmodel_id`) REFERENCES `app_tagmodel` (`id`),
  CONSTRAINT `app_videomodel_tag_videomodel_id_8ca64c6b_fk_app_videomodel_id` FOREIGN KEY (`videomodel_id`) REFERENCES `app_videomodel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_videomodel_tag
-- ----------------------------
BEGIN;
INSERT INTO `app_videomodel_tag` VALUES (17, 72, 7);
INSERT INTO `app_videomodel_tag` VALUES (5, 74, 4);
INSERT INTO `app_videomodel_tag` VALUES (21, 76, 3);
INSERT INTO `app_videomodel_tag` VALUES (20, 78, 2);
INSERT INTO `app_videomodel_tag` VALUES (2, 80, 2);
INSERT INTO `app_videomodel_tag` VALUES (22, 84, 2);
INSERT INTO `app_videomodel_tag` VALUES (10, 88, 1);
INSERT INTO `app_videomodel_tag` VALUES (11, 88, 4);
INSERT INTO `app_videomodel_tag` VALUES (12, 88, 5);
INSERT INTO `app_videomodel_tag` VALUES (13, 88, 6);
INSERT INTO `app_videomodel_tag` VALUES (9, 90, 1);
INSERT INTO `app_videomodel_tag` VALUES (6, 91, 4);
INSERT INTO `app_videomodel_tag` VALUES (7, 92, 3);
INSERT INTO `app_videomodel_tag` VALUES (8, 92, 6);
INSERT INTO `app_videomodel_tag` VALUES (18, 92, 7);
INSERT INTO `app_videomodel_tag` VALUES (3, 92, 9);
INSERT INTO `app_videomodel_tag` VALUES (4, 92, 10);
INSERT INTO `app_videomodel_tag` VALUES (14, 93, 13);
INSERT INTO `app_videomodel_tag` VALUES (15, 93, 14);
INSERT INTO `app_videomodel_tag` VALUES (16, 93, 15);
INSERT INTO `app_videomodel_tag` VALUES (19, 94, 17);
COMMIT;

-- ----------------------------
-- Table structure for app_videosdetailmodel
-- ----------------------------
DROP TABLE IF EXISTS `app_videosdetailmodel`;
CREATE TABLE `app_videosdetailmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(16) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `web_desc` varchar(255) NOT NULL,
  `web_keyword` varchar(255) NOT NULL,
  `web_title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_videosdetailmodel
-- ----------------------------
BEGIN;
INSERT INTO `app_videosdetailmodel` VALUES (11, '6月12日 世青赛 韩国U20vs厄瓜多尔u20 全场集锦', '球迷', 'zrs直播吧', '2019-06-14 17:22:29.559581', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (12, '6月12日 欧预赛 匈牙利vs威尔士 全场集锦', '球迷', 'zrs直播吧', '2019-06-14 17:22:29.566087', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (13, '6月12日 欧预赛 列支敦士登vs芬兰 全场集锦', '球迷', 'zrs直播吧', '2019-06-14 17:22:29.571698', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (14, '6月12日 女足世界杯 智利女足vs瑞典女足 全场集锦', '球迷', 'zrs直播吧', '2019-06-14 17:22:29.596899', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (15, '6月12日 女足世界杯 美国女足vs泰国女足 全场集锦', '球迷', 'zrs直播吧', '2019-06-14 17:22:29.911119', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (16, '6月12日 土伦杯 日本vs墨西哥 全场集锦', '球迷', 'zrs直播吧', '2019-06-14 17:22:29.968011', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (17, '6月12日 女足世界杯 尼日利亚女足vs韩国 全场集锦', '球迷', 'zrs直播吧', '2019-06-14 18:05:47.111294', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (18, '6月14日 女足世界杯 澳大利亚女足vs巴西女足 全场集锦', '球迷', 'zrs直播吧', '2019-06-14 18:05:47.111613', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (19, '6月12日 女足世界杯 新西兰女足vs荷兰女足 全场集锦', '球迷', 'zrs直播吧', '2019-06-14 18:05:47.555418', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (20, '6月14日 女足世界杯 南非女足vs中国女足 全场集锦', '球迷', 'zrs直播吧', '2019-06-14 18:05:47.564011', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (21, '6月12日 欧预赛 阿塞拜疆vs斯洛伐克 全场集锦', '球迷', 'zrs直播吧', '2019-06-14 18:05:47.608644', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (22, '6月12日 欧预赛 安道尔vs法国 全场集锦', '球迷', 'zrs直播吧', '2019-06-14 18:05:47.614915', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (23, '6月12日 欧预赛 意大利vs波黑 全场集锦', '球迷', 'zrs直播吧', '2019-06-14 18:05:47.914935', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (24, '6月12日 欧预赛 德国vs爱沙尼亚 全场集锦', '球迷', 'zrs直播吧', '2019-06-14 18:05:47.942729', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (25, '6月12日 欧预赛 冰岛vs土耳其 全场集锦', '球迷', 'zrs直播吧', '2019-06-14 18:05:49.034023', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (26, '6月12日 欧预赛 比利时vs苏格兰 全场集锦', '球迷', 'zrs直播吧', '2019-06-14 18:05:49.055404', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (27, '6月16日 中超 天津天海vs河南建业  全场集锦', '球迷', 'zrs直播吧', '2019-06-17 10:05:13.700746', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (28, '6月15日 中超 河北华夏vs大连一方 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 10:05:13.698581', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (29, '6月15日 中超 广州富力vs武汉卓尔 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 10:05:13.705978', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (30, '6月16日 中超 江苏苏宁vs北京人和 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 10:05:13.706914', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (31, '6月14日 女足世界杯 日本女足vs苏格兰女足 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 10:05:14.065625', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (32, '6月16日 中超 深圳佳兆业vs天津泰达  全场集锦', '球迷', 'zrs直播吧', '2019-06-17 10:05:14.089451', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (33, '6月15日 女足世界杯 牙买加女足vs意大利女足 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 10:05:14.104133', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (34, '6月14日 中超 上海上港vs广州恒大 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 10:05:14.135862', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (35, '6月15日 美洲杯 巴西vs玻利维亚 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 10:05:14.585939', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (36, '6月15日 中甲 南通支云vs浙江绿城 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 10:05:14.598412', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (37, '6月15日 中甲 上海申鑫vs呼和浩特 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 10:05:14.628902', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (38, '6月15日 女足世界杯 荷兰女足vs喀麦隆女足 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 10:05:15.107561', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (39, '6月16日 土伦杯 日本U22vs巴西U22 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 10:05:15.117294', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (40, '6月16日 土伦杯 墨西哥vs爱尔兰 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 10:05:15.131469', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (41, '6月15日 中甲 新疆雪豹纳欢vs四川FC 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 10:05:15.139946', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (42, '6月15日 中甲 黑龙江FCvs梅州客家 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 10:05:15.149161', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (43, '6月16日 世青赛 乌克兰U20vs韩国U20 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 10:05:15.481580', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (44, '6月16日 美洲杯 阿根廷vs哥伦比亚 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 10:22:44.233082', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (45, '6月16日 中超 天津天海vs河南建业  全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:22.922402', '6月16日 中超 天津天海vs河南建业  全场集锦', '6月16日 中超 天津天海vs河南建业  全场集锦', '6月16日 中超 天津天海vs河南建业  全场集锦');
INSERT INTO `app_videosdetailmodel` VALUES (46, '6月15日 中超 河北华夏vs大连一方 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:22.963286', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (47, '6月15日 中超 广州富力vs武汉卓尔 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:22.967555', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (48, '6月16日 中超 江苏苏宁vs北京人和 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:22.969917', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (49, '6月14日 女足世界杯 日本女足vs苏格兰女足 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.354181', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (50, '6月15日 女足世界杯 牙买加女足vs意大利女足 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.358793', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (51, '6月16日 中超 深圳佳兆业vs天津泰达  全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.392740', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (52, '6月14日 中超 上海上港vs广州恒大 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.392945', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (53, '6月15日 美洲杯 巴西vs玻利维亚 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.730406', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (54, '6月15日 中甲 上海申鑫vs呼和浩特 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.741218', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (55, '6月15日 中甲 南通支云vs浙江绿城 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:23.757974', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (56, '6月15日 中甲 新疆雪豹纳欢vs四川FC 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.085086', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (57, '6月15日 中甲 黑龙江FCvs梅州客家 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.199463', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (58, '6月15日 女足世界杯 荷兰女足vs喀麦隆女足 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.206344', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (59, '6月16日 土伦杯 墨西哥vs爱尔兰 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.253805', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (60, '6月16日 土伦杯 日本U22vs巴西U22 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.616635', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (61, '6月16日 世青赛 乌克兰U20vs韩国U20 全场集锦', '球迷', 'zrs直播吧', '2019-06-17 11:25:24.640917', '', '', '');
INSERT INTO `app_videosdetailmodel` VALUES (62, '6月16日 美洲杯 阿根廷vs哥伦比亚 全场集锦', '球迷', 'jrs直播吧', '2019-06-17 11:26:35.334907', '美洲杯阿根廷vs哥伦比亚全场集锦在线播放', '阿根廷vs哥伦比亚,', '美洲杯阿根廷vs哥伦比亚全场集锦');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_videosdetailmodel_videos
-- ----------------------------
BEGIN;
INSERT INTO `app_videosdetailmodel_videos` VALUES (3, 27, 85);
INSERT INTO `app_videosdetailmodel_videos` VALUES (2, 28, 86);
INSERT INTO `app_videosdetailmodel_videos` VALUES (4, 29, 88);
INSERT INTO `app_videosdetailmodel_videos` VALUES (1, 30, 90);
INSERT INTO `app_videosdetailmodel_videos` VALUES (6, 31, 93);
INSERT INTO `app_videosdetailmodel_videos` VALUES (5, 32, 95);
INSERT INTO `app_videosdetailmodel_videos` VALUES (7, 33, 96);
INSERT INTO `app_videosdetailmodel_videos` VALUES (10, 35, 99);
INSERT INTO `app_videosdetailmodel_videos` VALUES (8, 36, 100);
INSERT INTO `app_videosdetailmodel_videos` VALUES (9, 37, 104);
INSERT INTO `app_videosdetailmodel_videos` VALUES (15, 38, 106);
INSERT INTO `app_videosdetailmodel_videos` VALUES (14, 39, 107);
INSERT INTO `app_videosdetailmodel_videos` VALUES (13, 40, 108);
INSERT INTO `app_videosdetailmodel_videos` VALUES (11, 41, 109);
INSERT INTO `app_videosdetailmodel_videos` VALUES (12, 42, 110);
INSERT INTO `app_videosdetailmodel_videos` VALUES (16, 43, 115);
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
INSERT INTO `app_videosdetailmodel_videos` VALUES (33, 62, 19);
COMMIT;

-- ----------------------------
-- Table structure for app_videostagmodel
-- ----------------------------
DROP TABLE IF EXISTS `app_videostagmodel`;
CREATE TABLE `app_videostagmodel` (
  `sort_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_videostagmodel
-- ----------------------------
BEGIN;
INSERT INTO `app_videostagmodel` VALUES (0, 1, 'NBA');
INSERT INTO `app_videostagmodel` VALUES (0, 2, '足球');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=381 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_videosurlstitlemodel
-- ----------------------------
BEGIN;
INSERT INTO `app_videosurlstitlemodel` VALUES (1, '2019-06-17 09:53:35.390635', 'http://v.youku.com/v_show/id_XNDIzMDcwNjU5Ng==.html', '[优酷] 06月16日 中超第13轮 天津天海vs河南建业 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (2, '2019-06-17 09:53:35.391089', 'http://v.youku.com/v_show/id_XNDIyOTc3OTEzNg==.html', '[优酷] 06月15日 中超第13轮 广州富力vs武汉卓尔 全场录像 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (3, '2019-06-17 09:53:35.398606', 'http://v.youku.com/v_show/id_XNDIzMDcwNjU5Ng==.html', '[优酷] 06月16日 中超第13轮 天津天海vs河南建业 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (4, '2019-06-17 09:53:35.400873', 'http://v.youku.com/v_show/id_XNDIzMDcyNDU4NA==.html', '[优酷] 06月16日 中超第13轮 江苏苏宁vs北京人和 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (5, '2019-06-17 09:53:35.686613', 'http://sports.cctv.com/2019/06/15/VIDEh0xz3GgSIuwt9rnzbLPh190615.shtml', '[CCTV] 06月15日 女足世界杯小组赛D组 英格兰女足vs阿根廷女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (6, '2019-06-17 09:53:35.702619', 'http://sports.cctv.com/2019/06/14/VIDENZGXnvP7iXUMigqyRts4190614.shtml', '[CCTV] 06月14日 女足世界杯小组赛D组 日本女足vs苏格兰女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (7, '2019-06-17 09:53:35.803592', 'http://sports.cctv.com/2019/06/15/VIDETfIvqnq8kaiyjrjbXOXl190615.shtml', '[小窗口/手机/Pad观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (8, '2019-06-17 09:53:36.337042', 'http://v.youku.com/v_show/id_XNDIyOTY0MDUyNA==.html', '[优酷] 06月15日 中甲第13轮 南通支云vs浙江绿城 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (9, '2019-06-17 09:53:36.341972', 'http://v.youku.com/v_show/id_XNDIyOTY3MDI4MA==.html', '[优酷] 06月15日 中甲第13轮 上海申鑫vs呼和浩特 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (10, '2019-06-17 09:53:36.347642', 'http://sports.cctv.com/2019/06/15/VIDEbTMXmYDbOyTsu7kaP12K190615.shtml', '[CNTV] 06月15日 美洲杯小组赛A组 巴西vs玻利维亚 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (11, '2019-06-17 09:53:36.355921', 'http://v.youku.com/v_show/id_XNDIyOTQ3NTc0OA==.html', '[优酷] 06月15日 中甲第13轮 新疆雪豹纳欢vs四川FC 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (12, '2019-06-17 09:53:36.858683', 'http://v.youku.com/v_show/id_XNDIyOTQwNjI0MA==.html', '[优酷] 06月15日 中甲第13轮 黑龙江FCvs梅州客家 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (13, '2019-06-17 09:53:36.876930', 'http://v.youku.com/v_show/id_XNDIyOTY5MDQ0MA==.html', '[优酷] 06月16日 土伦杯季军争夺战 墨西哥U22vs爱尔兰U21 全场录像 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (14, '2019-06-17 09:53:36.882926', 'http://sports.cctv.com/2019/06/16/VIDEpxGgom714UcDOMZzbImm190616.shtml', '[CCTV] 06月16日 世青赛决赛 乌克兰U20vs韩国U20 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (15, '2019-06-17 09:53:36.888709', 'http://sports.cctv.com/2019/06/15/VIDE9PDtcGpSbSIpbBBhQ8S3190615.shtml', '[CCTV] 06月15日 女足世界杯小组赛E组 荷兰女足vs喀麦隆女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (16, '2019-06-17 09:53:37.180598', 'http://sports.cctv.com/2019/06/16/VIDEuyT4nP2IXAghIl3UR8rj190616.shtml', '[CCTV] 06月16日 美洲杯小组赛B组 阿根廷vs哥伦比亚 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (17, '2019-06-17 09:53:37.274217', 'http://v.youku.com/v_show/id_XNDIyOTc3OTYyOA==.html', '[优酷] 06月15日 中超第13轮 河北华夏vs大连一方 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (18, '2019-06-17 09:54:49.156075', 'http://v.youku.com/v_show/id_XNDIyOTY5MDQ0MA==.html', '[优酷] 06月16日 土伦杯季军争夺战 墨西哥U22vs爱尔兰U21 全场录像 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (19, '2019-06-17 09:54:49.167286', 'http://sports.cctv.com/2019/06/16/VIDEuyT4nP2IXAghIl3UR8rj190616.shtml', '[CCTV] 06月16日 美洲杯小组赛B组 阿根廷vs哥伦比亚 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (20, '2019-06-17 09:54:49.185903', 'http://sports.cctv.com/2019/06/16/VIDEpxGgom714UcDOMZzbImm190616.shtml', '[CCTV] 06月16日 世青赛决赛 乌克兰U20vs韩国U20 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (21, '2019-06-17 09:54:49.191850', 'http://v.youku.com/v_show/id_XNDIyOTc3OTYyOA==.html', '[优酷] 06月15日 中超第13轮 河北华夏vs大连一方 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (22, '2019-06-17 09:54:49.514151', 'http://v.youku.com/v_show/id_XNDIzMDcwNjU5Ng==.html', '[优酷] 06月16日 中超第13轮 天津天海vs河南建业 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (23, '2019-06-17 09:54:49.546887', 'http://v.youku.com/v_show/id_XNDIzMDcwNjU5Ng==.html', '[优酷] 06月16日 中超第13轮 天津天海vs河南建业 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (24, '2019-06-17 09:54:49.567972', 'http://v.youku.com/v_show/id_XNDIzMDcyNDU4NA==.html', '[优酷] 06月16日 中超第13轮 江苏苏宁vs北京人和 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (25, '2019-06-17 09:54:49.586095', 'http://v.youku.com/v_show/id_XNDIyOTc3OTEzNg==.html', '[优酷] 06月15日 中超第13轮 广州富力vs武汉卓尔 全场录像 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (26, '2019-06-17 09:54:50.155805', 'http://sports.cctv.com/2019/06/14/VIDENZGXnvP7iXUMigqyRts4190614.shtml', '[CCTV] 06月14日 女足世界杯小组赛D组 日本女足vs苏格兰女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (27, '2019-06-17 09:54:50.169715', 'http://sports.cctv.com/2019/06/15/VIDEh0xz3GgSIuwt9rnzbLPh190615.shtml', '[CCTV] 06月15日 女足世界杯小组赛D组 英格兰女足vs阿根廷女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (28, '2019-06-17 09:54:50.197431', 'http://sports.cctv.com/2019/06/15/VIDETfIvqnq8kaiyjrjbXOXl190615.shtml', '[小窗口/手机/Pad观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (29, '2019-06-17 09:54:50.565750', 'http://v.youku.com/v_show/id_XNDIyOTY0MDUyNA==.html', '[优酷] 06月15日 中甲第13轮 南通支云vs浙江绿城 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (30, '2019-06-17 09:54:50.580716', 'http://v.youku.com/v_show/id_XNDIyOTQ3NTc0OA==.html', '[优酷] 06月15日 中甲第13轮 新疆雪豹纳欢vs四川FC 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (31, '2019-06-17 09:54:50.604148', 'http://sports.cctv.com/2019/06/15/VIDEbTMXmYDbOyTsu7kaP12K190615.shtml', '[CNTV] 06月15日 美洲杯小组赛A组 巴西vs玻利维亚 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (32, '2019-06-17 09:54:50.608421', 'http://v.youku.com/v_show/id_XNDIyOTY3MDI4MA==.html', '[优酷] 06月15日 中甲第13轮 上海申鑫vs呼和浩特 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (33, '2019-06-17 09:54:50.952886', 'http://sports.cctv.com/2019/06/15/VIDE9PDtcGpSbSIpbBBhQ8S3190615.shtml', '[CCTV] 06月15日 女足世界杯小组赛E组 荷兰女足vs喀麦隆女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (34, '2019-06-17 09:54:51.001606', 'http://v.youku.com/v_show/id_XNDIyOTQwNjI0MA==.html', '[优酷] 06月15日 中甲第13轮 黑龙江FCvs梅州客家 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (35, '2019-06-17 09:56:02.191583', 'http://v.youku.com/v_show/id_XNDIzMDcyNDU4NA==.html', '[优酷] 06月16日 中超第13轮 江苏苏宁vs北京人和 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (36, '2019-06-17 09:56:02.192267', 'http://v.youku.com/v_show/id_XNDIzMDcwNjU5Ng==.html', '[优酷] 06月16日 中超第13轮 天津天海vs河南建业 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (37, '2019-06-17 09:56:02.168802', 'http://v.youku.com/v_show/id_XNDIzMDcwNjU5Ng==.html', '[优酷] 06月16日 中超第13轮 天津天海vs河南建业 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (38, '2019-06-17 09:56:02.221631', 'http://v.youku.com/v_show/id_XNDIyOTc3OTEzNg==.html', '[优酷] 06月15日 中超第13轮 广州富力vs武汉卓尔 全场录像 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (39, '2019-06-17 09:56:02.530548', 'http://sports.cctv.com/2019/06/15/VIDETfIvqnq8kaiyjrjbXOXl190615.shtml', '[小窗口/手机/Pad观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (40, '2019-06-17 09:56:02.554954', 'http://sports.cctv.com/2019/06/14/VIDENZGXnvP7iXUMigqyRts4190614.shtml', '[CCTV] 06月14日 女足世界杯小组赛D组 日本女足vs苏格兰女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (41, '2019-06-17 09:56:02.594446', 'http://sports.cctv.com/2019/06/15/VIDEh0xz3GgSIuwt9rnzbLPh190615.shtml', '[CCTV] 06月15日 女足世界杯小组赛D组 英格兰女足vs阿根廷女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (42, '2019-06-17 09:56:02.880981', 'http://sports.cctv.com/2019/06/15/VIDEbTMXmYDbOyTsu7kaP12K190615.shtml', '[CNTV] 06月15日 美洲杯小组赛A组 巴西vs玻利维亚 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (43, '2019-06-17 09:56:02.891224', 'http://v.youku.com/v_show/id_XNDIyOTY3MDI4MA==.html', '[优酷] 06月15日 中甲第13轮 上海申鑫vs呼和浩特 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (44, '2019-06-17 09:56:02.915787', 'http://v.youku.com/v_show/id_XNDIyOTY0MDUyNA==.html', '[优酷] 06月15日 中甲第13轮 南通支云vs浙江绿城 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (45, '2019-06-17 09:56:02.921979', 'http://v.youku.com/v_show/id_XNDIyOTQ3NTc0OA==.html', '[优酷] 06月15日 中甲第13轮 新疆雪豹纳欢vs四川FC 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (46, '2019-06-17 09:56:03.213310', 'http://v.youku.com/v_show/id_XNDIyOTQwNjI0MA==.html', '[优酷] 06月15日 中甲第13轮 黑龙江FCvs梅州客家 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (47, '2019-06-17 09:56:03.311740', 'http://sports.cctv.com/2019/06/15/VIDE9PDtcGpSbSIpbBBhQ8S3190615.shtml', '[CCTV] 06月15日 女足世界杯小组赛E组 荷兰女足vs喀麦隆女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (48, '2019-06-17 09:56:03.337551', 'http://v.youku.com/v_show/id_XNDIyOTY5MDQ0MA==.html', '[优酷] 06月16日 土伦杯季军争夺战 墨西哥U22vs爱尔兰U21 全场录像 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (49, '2019-06-17 09:56:03.512405', 'http://sports.cctv.com/2019/06/16/VIDEpxGgom714UcDOMZzbImm190616.shtml', '[CCTV] 06月16日 世青赛决赛 乌克兰U20vs韩国U20 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (50, '2019-06-17 09:56:03.624351', 'http://sports.cctv.com/2019/06/16/VIDEuyT4nP2IXAghIl3UR8rj190616.shtml', '[CCTV] 06月16日 美洲杯小组赛B组 阿根廷vs哥伦比亚 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (51, '2019-06-17 09:56:03.702661', 'http://v.youku.com/v_show/id_XNDIyOTc3OTYyOA==.html', '[优酷] 06月15日 中超第13轮 河北华夏vs大连一方 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (52, '2019-06-17 09:57:03.912989', 'http://v.youku.com/v_show/id_XNDIzMDcwNjU5Ng==.html', '[优酷] 06月16日 中超第13轮 天津天海vs河南建业 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (53, '2019-06-17 09:57:03.935707', 'http://v.youku.com/v_show/id_XNDIyOTc3OTEzNg==.html', '[优酷] 06月15日 中超第13轮 广州富力vs武汉卓尔 全场录像 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (54, '2019-06-17 09:57:03.941122', 'http://v.youku.com/v_show/id_XNDIzMDcwNjU5Ng==.html', '[优酷] 06月16日 中超第13轮 天津天海vs河南建业 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (55, '2019-06-17 09:57:03.962290', 'http://v.youku.com/v_show/id_XNDIzMDcyNDU4NA==.html', '[优酷] 06月16日 中超第13轮 江苏苏宁vs北京人和 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (56, '2019-06-17 09:57:04.318606', 'http://sports.cctv.com/2019/06/14/VIDENZGXnvP7iXUMigqyRts4190614.shtml', '[CCTV] 06月14日 女足世界杯小组赛D组 日本女足vs苏格兰女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (57, '2019-06-17 09:57:04.328264', 'http://sports.cctv.com/2019/06/15/VIDEh0xz3GgSIuwt9rnzbLPh190615.shtml', '[CCTV] 06月15日 女足世界杯小组赛D组 英格兰女足vs阿根廷女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (58, '2019-06-17 09:57:04.333716', 'http://sports.cctv.com/2019/06/15/VIDETfIvqnq8kaiyjrjbXOXl190615.shtml', '[小窗口/手机/Pad观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (59, '2019-06-17 09:57:04.913708', 'http://v.youku.com/v_show/id_XNDIyOTQ3NTc0OA==.html', '[优酷] 06月15日 中甲第13轮 新疆雪豹纳欢vs四川FC 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (60, '2019-06-17 09:57:04.918759', 'http://v.youku.com/v_show/id_XNDIyOTY3MDI4MA==.html', '[优酷] 06月15日 中甲第13轮 上海申鑫vs呼和浩特 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (61, '2019-06-17 09:57:04.935680', 'http://sports.cctv.com/2019/06/15/VIDEbTMXmYDbOyTsu7kaP12K190615.shtml', '[CNTV] 06月15日 美洲杯小组赛A组 巴西vs玻利维亚 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (62, '2019-06-17 09:57:04.952325', 'http://v.youku.com/v_show/id_XNDIyOTY0MDUyNA==.html', '[优酷] 06月15日 中甲第13轮 南通支云vs浙江绿城 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (63, '2019-06-17 09:57:05.540790', 'http://sports.cctv.com/2019/06/15/VIDE9PDtcGpSbSIpbBBhQ8S3190615.shtml', '[CCTV] 06月15日 女足世界杯小组赛E组 荷兰女足vs喀麦隆女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (64, '2019-06-17 09:57:05.546249', 'http://v.youku.com/v_show/id_XNDIyOTQwNjI0MA==.html', '[优酷] 06月15日 中甲第13轮 黑龙江FCvs梅州客家 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (65, '2019-06-17 09:57:05.568883', 'http://v.youku.com/v_show/id_XNDIyOTY5MDQ0MA==.html', '[优酷] 06月16日 土伦杯季军争夺战 墨西哥U22vs爱尔兰U21 全场录像 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (66, '2019-06-17 09:57:05.804907', 'http://sports.cctv.com/2019/06/16/VIDEpxGgom714UcDOMZzbImm190616.shtml', '[CCTV] 06月16日 世青赛决赛 乌克兰U20vs韩国U20 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (67, '2019-06-17 09:57:05.914603', 'http://v.youku.com/v_show/id_XNDIyOTc3OTYyOA==.html', '[优酷] 06月15日 中超第13轮 河北华夏vs大连一方 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (68, '2019-06-17 09:57:30.829779', 'http://v.youku.com/v_show/id_XNDIyOTc3OTEzNg==.html', '[优酷] 06月15日 中超第13轮 广州富力vs武汉卓尔 全场录像 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (69, '2019-06-17 09:57:30.835036', 'http://v.youku.com/v_show/id_XNDIzMDcwNjU5Ng==.html', '[优酷] 06月16日 中超第13轮 天津天海vs河南建业 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (70, '2019-06-17 09:57:30.836347', 'http://v.youku.com/v_show/id_XNDIzMDcyNDU4NA==.html', '[优酷] 06月16日 中超第13轮 江苏苏宁vs北京人和 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (71, '2019-06-17 09:57:30.845286', 'http://v.youku.com/v_show/id_XNDIzMDcwNjU5Ng==.html', '[优酷] 06月16日 中超第13轮 天津天海vs河南建业 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (72, '2019-06-17 09:57:31.099365', 'http://sports.cctv.com/2019/06/15/VIDEh0xz3GgSIuwt9rnzbLPh190615.shtml', '[CCTV] 06月15日 女足世界杯小组赛D组 英格兰女足vs阿根廷女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (73, '2019-06-17 09:57:31.118698', 'http://sports.cctv.com/2019/06/15/VIDETfIvqnq8kaiyjrjbXOXl190615.shtml', '[小窗口/手机/Pad观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (74, '2019-06-17 09:57:31.143715', 'http://sports.cctv.com/2019/06/14/VIDENZGXnvP7iXUMigqyRts4190614.shtml', '[CCTV] 06月14日 女足世界杯小组赛D组 日本女足vs苏格兰女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (75, '2019-06-17 09:57:31.416661', 'http://v.youku.com/v_show/id_XNDIyOTY0MDUyNA==.html', '[优酷] 06月15日 中甲第13轮 南通支云vs浙江绿城 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (76, '2019-06-17 09:57:31.445791', 'http://sports.cctv.com/2019/06/15/VIDEbTMXmYDbOyTsu7kaP12K190615.shtml', '[CNTV] 06月15日 美洲杯小组赛A组 巴西vs玻利维亚 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (77, '2019-06-17 09:57:31.453481', 'http://v.youku.com/v_show/id_XNDIyOTY3MDI4MA==.html', '[优酷] 06月15日 中甲第13轮 上海申鑫vs呼和浩特 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (78, '2019-06-17 09:57:31.497498', 'http://v.youku.com/v_show/id_XNDIyOTQ3NTc0OA==.html', '[优酷] 06月15日 中甲第13轮 新疆雪豹纳欢vs四川FC 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (79, '2019-06-17 09:57:31.819831', 'http://sports.cctv.com/2019/06/15/VIDE9PDtcGpSbSIpbBBhQ8S3190615.shtml', '[CCTV] 06月15日 女足世界杯小组赛E组 荷兰女足vs喀麦隆女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (80, '2019-06-17 09:57:31.825954', 'http://v.youku.com/v_show/id_XNDIyOTY5MDQ0MA==.html', '[优酷] 06月16日 土伦杯季军争夺战 墨西哥U22vs爱尔兰U21 全场录像 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (81, '2019-06-17 09:57:31.846028', 'http://v.youku.com/v_show/id_XNDIyOTQwNjI0MA==.html', '[优酷] 06月15日 中甲第13轮 黑龙江FCvs梅州客家 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (82, '2019-06-17 09:57:32.109036', 'http://sports.cctv.com/2019/06/16/VIDEpxGgom714UcDOMZzbImm190616.shtml', '[CCTV] 06月16日 世青赛决赛 乌克兰U20vs韩国U20 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (83, '2019-06-17 09:57:32.192521', 'http://v.youku.com/v_show/id_XNDIyOTc3OTYyOA==.html', '[优酷] 06月15日 中超第13轮 河北华夏vs大连一方 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (84, '2019-06-17 09:57:32.197618', 'http://sports.cctv.com/2019/06/16/VIDEuyT4nP2IXAghIl3UR8rj190616.shtml', '[CCTV] 06月16日 美洲杯小组赛B组 阿根廷vs哥伦比亚 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (85, '2019-06-17 10:05:13.702481', 'http://v.youku.com/v_show/id_XNDIzMDU4MDAwNA==.html', '[开场换人] 开场55秒换人 天海用裴帅换下U23球员文俊杰  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (86, '2019-06-17 10:05:13.704165', 'http://v.youku.com/v_show/id_XNDIyOTUwNDA0NA==.html', '[外围远射] 华夏后卫解围不远 朱晓刚禁区外围远射偏出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (87, '2019-06-17 10:05:13.705294', 'http://v.youku.com/v_show/id_XNDIyOTc3OTEzNg==.html', '[优酷] 06月15日 中超第13轮 广州富力vs武汉卓尔 全场录像 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (88, '2019-06-17 10:05:13.706793', 'http://v.youku.com/v_show/id_XNDIyOTUwODYxMg==.html', '[错失单刀] 富力后卫冒顶送礼 拉斐尔单刀推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (89, '2019-06-17 10:05:13.707074', 'http://v.youku.com/v_show/id_XNDIzMDcyNDU4NA==.html', '[优酷] 06月16日 中超第13轮 江苏苏宁vs北京人和 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (90, '2019-06-17 10:05:13.707251', 'http://v.youku.com/v_show/id_XNDIzMDU4NzMyNA==.html', '[推射被扑] 埃德尔突入禁区横传 特谢拉跟进推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (91, '2019-06-17 10:05:13.749709', 'http://v.youku.com/v_show/id_XNDIzMDcwNjU5Ng==.html', '[优酷] 06月16日 中超第13轮 天津天海vs河南建业 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (92, '2019-06-17 10:05:13.752883', 'http://v.youku.com/v_show/id_XNDIzMDcwNjU5Ng==.html', '[优酷] 06月16日 中超第13轮 天津天海vs河南建业 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (93, '2019-06-17 10:05:14.066329', 'http://sports.cctv.com/2019/06/14/VIDEl84D1uN5SRmn6uKdO1xb190614.shtml', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (94, '2019-06-17 10:05:14.073413', 'http://sports.cctv.com/2019/06/15/VIDETfIvqnq8kaiyjrjbXOXl190615.shtml', '[小窗口/手机/Pad观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (95, '2019-06-17 10:05:14.090759', 'http://v.youku.com/v_show/id_XNDIzMDYwOTYzNg==.html', '[假摔染黄] 演技还需提高 张鹏假摔被裁判识破染黄  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (96, '2019-06-17 10:05:14.105697', 'http://t.cn/AiN2cH8U?m=4383265320646676&u=2993049293', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (97, '2019-06-17 10:05:14.112809', 'http://sports.cctv.com/2019/06/15/VIDEh0xz3GgSIuwt9rnzbLPh190615.shtml', '[CCTV] 06月15日 女足世界杯小组赛D组 英格兰女足vs阿根廷女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (98, '2019-06-17 10:05:14.141645', 'http://sports.cctv.com/2019/06/14/VIDENZGXnvP7iXUMigqyRts4190614.shtml', '[CCTV] 06月14日 女足世界杯小组赛D组 日本女足vs苏格兰女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (99, '2019-06-17 10:05:14.587059', 'http://sports.cctv.com/2019/06/15/VIDEAV1oUW7m3CquBs4TFJk3190615.shtml', '[进球视频] 玻利维亚球员手球送点 库蒂尼奥主罚一蹴而就 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (100, '2019-06-17 10:05:14.599302', 'http://v.youku.com/v_show/id_XNDIyOTYyMDgwNA==.html', '[优酷全场集锦] 中甲-李嘉玮染红迪诺屡造险 绿城0-0十人南通 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (101, '2019-06-17 10:05:14.610862', 'http://v.youku.com/v_show/id_XNDIyOTQ3NTc0OA==.html', '[优酷] 06月15日 中甲第13轮 新疆雪豹纳欢vs四川FC 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (102, '2019-06-17 10:05:14.616742', 'http://v.youku.com/v_show/id_XNDIyOTY0MDUyNA==.html', '[优酷] 06月15日 中甲第13轮 南通支云vs浙江绿城 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (103, '2019-06-17 10:05:14.621335', 'http://sports.cctv.com/2019/06/15/VIDEbTMXmYDbOyTsu7kaP12K190615.shtml', '[CNTV] 06月15日 美洲杯小组赛A组 巴西vs玻利维亚 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (104, '2019-06-17 10:05:14.629326', 'http://v.youku.com/v_show/id_XNDIyOTYzMjExMg==.html', '[Y优酷全场集锦] 中甲-巴巴卡破门 申鑫0-1呼和浩特7连败继续垫底 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (105, '2019-06-17 10:05:14.636060', 'http://v.youku.com/v_show/id_XNDIyOTY3MDI4MA==.html', '[优酷] 06月15日 中甲第13轮 上海申鑫vs呼和浩特 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (106, '2019-06-17 10:05:15.107998', 'http://sports.cctv.com/2019/06/15/VIDEmkXFA3q9aNKJ7MFlwyzF190615.shtml', '[CCTV全场集锦] 世界杯-米德玛梅开二度 荷兰女足3-1胜喀麦隆 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (107, '2019-06-17 10:05:15.119587', 'http://v.youku.com/v_show/id_XNDIyOTY3MjA0OA==.html', '[进球视频] 巴西地面配合打穿日本防线 安东尼推射破僵 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (108, '2019-06-17 10:05:15.133677', 'http://v.youku.com/v_show/id_XNDIyOTY3MzYzMg==.html', '[点球大战] 土伦杯季军战-墨西哥vs爱尔兰点球大战实录 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (109, '2019-06-17 10:05:15.140253', 'http://v.youku.com/v_show/id_XNDIyOTQwMDM1Ng==.html', '[优酷全场集锦] 中甲-麦合木提破僵斯特法诺点射 新疆主场3-0四川 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (110, '2019-06-17 10:05:15.150082', 'http://v.youku.com/v_show/id_XNDIyOTM2ODI4NA==.html', '[优酷全场集锦] 中甲-奇马梅开二度 黑龙江2-1九人梅州三轮不败 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (111, '2019-06-17 10:05:15.155940', 'http://v.youku.com/v_show/id_XNDIyOTY5MDQ0MA==.html', '[优酷] 06月16日 土伦杯季军争夺战 墨西哥U22vs爱尔兰U21 全场录像 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (112, '2019-06-17 10:05:15.160771', 'http://sports.cctv.com/2019/06/15/VIDE9PDtcGpSbSIpbBBhQ8S3190615.shtml', '[CCTV] 06月15日 女足世界杯小组赛E组 荷兰女足vs喀麦隆女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (113, '2019-06-17 10:05:15.171678', 'http://v.youku.com/v_show/id_XNDIyOTQwNjI0MA==.html', '[优酷] 06月15日 中甲第13轮 黑龙江FCvs梅州客家 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (114, '2019-06-17 10:05:15.453466', 'http://sports.cctv.com/2019/06/16/VIDEuyT4nP2IXAghIl3UR8rj190616.shtml', '[CCTV] 06月16日 美洲杯小组赛B组 阿根廷vs哥伦比亚 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (115, '2019-06-17 10:05:15.482210', 'http://sports.cctv.com/2019/06/16/VIDETnJCwBhQeRv9k5vDHw7O190616.shtml', '[进球视频] 金岁尹摔倒造点 李刚仁主罚一蹴而就取梦幻开局 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (116, '2019-06-17 10:05:15.490085', 'http://sports.cctv.com/2019/06/16/VIDEpxGgom714UcDOMZzbImm190616.shtml', '[CCTV] 06月16日 世青赛决赛 乌克兰U20vs韩国U20 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (117, '2019-06-17 10:05:15.494759', 'http://v.youku.com/v_show/id_XNDIyOTc3OTYyOA==.html', '[优酷] 06月15日 中超第13轮 河北华夏vs大连一方 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (118, '2019-06-17 10:22:42.833820', 'http://v.youku.com/v_show/id_XNDIzMDcyNDU4NA==.html', '[优酷] 06月16日 中超第13轮 江苏苏宁vs北京人和 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (119, '2019-06-17 10:22:42.833952', 'http://v.youku.com/v_show/id_XNDIzMDU4NzMyNA==.html', '[推射被扑] 埃德尔突入禁区横传 特谢拉跟进推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (120, '2019-06-17 10:22:42.836009', 'http://v.youku.com/v_show/id_XNDIzMDU4MDAwNA==.html', '[开场换人] 开场55秒换人 天海用裴帅换下U23球员文俊杰  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (121, '2019-06-17 10:22:42.836115', 'http://sports.cctv.com/2019/06/14/VIDEl84D1uN5SRmn6uKdO1xb190614.shtml', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (122, '2019-06-17 10:22:42.836787', 'http://v.youku.com/v_show/id_XNDIzMDcwNjU5Ng==.html', '[优酷] 06月16日 中超第13轮 天津天海vs河南建业 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (123, '2019-06-17 10:22:42.837401', 'http://v.youku.com/v_show/id_XNDIzMDYwOTYzNg==.html', '[假摔染黄] 演技还需提高 张鹏假摔被裁判识破染黄  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (124, '2019-06-17 10:22:42.838656', 'http://v.youku.com/v_show/id_XNDIzMDcwNjU5Ng==.html', '[优酷] 06月16日 中超第13轮 天津天海vs河南建业 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (125, '2019-06-17 10:22:42.862418', 'http://sports.cctv.com/2019/06/15/VIDETfIvqnq8kaiyjrjbXOXl190615.shtml', '[小窗口/手机/Pad观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (126, '2019-06-17 10:22:43.097418', 'http://t.cn/AiN2cH8U?m=4383265320646676&u=2993049293', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (127, '2019-06-17 10:22:43.097654', 'http://sports.cctv.com/2019/06/15/VIDEAV1oUW7m3CquBs4TFJk3190615.shtml', '[进球视频] 玻利维亚球员手球送点 库蒂尼奥主罚一蹴而就 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (128, '2019-06-17 10:22:43.104731', 'http://sports.cctv.com/2019/06/15/VIDEbTMXmYDbOyTsu7kaP12K190615.shtml', '[CNTV] 06月15日 美洲杯小组赛A组 巴西vs玻利维亚 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (129, '2019-06-17 10:22:43.124147', 'http://v.youku.com/v_show/id_XNDIyOTYyMDgwNA==.html', '[优酷全场集锦] 中甲-李嘉玮染红迪诺屡造险 绿城0-0十人南通 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (130, '2019-06-17 10:22:43.128681', 'http://sports.cctv.com/2019/06/15/VIDEh0xz3GgSIuwt9rnzbLPh190615.shtml', '[CCTV] 06月15日 女足世界杯小组赛D组 英格兰女足vs阿根廷女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (131, '2019-06-17 10:22:43.134689', 'http://v.youku.com/v_show/id_XNDIyOTY3MDI4MA==.html', '[优酷] 06月15日 中甲第13轮 上海申鑫vs呼和浩特 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (132, '2019-06-17 10:22:43.147116', 'http://v.youku.com/v_show/id_XNDIyOTY0MDUyNA==.html', '[优酷] 06月15日 中甲第13轮 南通支云vs浙江绿城 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (133, '2019-06-17 10:22:43.497047', 'http://v.youku.com/v_show/id_XNDIyOTYzMjExMg==.html', '[Y优酷全场集锦] 中甲-巴巴卡破门 申鑫0-1呼和浩特7连败继续垫底 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (134, '2019-06-17 10:22:43.501974', 'http://v.youku.com/v_show/id_XNDIyOTQ3NTc0OA==.html', '[优酷] 06月15日 中甲第13轮 新疆雪豹纳欢vs四川FC 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (135, '2019-06-17 10:22:43.520706', 'http://v.youku.com/v_show/id_XNDIyOTM2ODI4NA==.html', '[优酷全场集锦] 中甲-奇马梅开二度 黑龙江2-1九人梅州三轮不败 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (136, '2019-06-17 10:22:43.528045', 'http://sports.cctv.com/2019/06/14/VIDENZGXnvP7iXUMigqyRts4190614.shtml', '[CCTV] 06月14日 女足世界杯小组赛D组 日本女足vs苏格兰女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (137, '2019-06-17 10:22:43.547609', 'http://v.youku.com/v_show/id_XNDIyOTQwMDM1Ng==.html', '[优酷全场集锦] 中甲-麦合木提破僵斯特法诺点射 新疆主场3-0四川 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (138, '2019-06-17 10:22:43.555692', 'http://v.youku.com/v_show/id_XNDIyOTQwNjI0MA==.html', '[优酷] 06月15日 中甲第13轮 黑龙江FCvs梅州客家 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (139, '2019-06-17 10:22:43.873803', 'http://v.youku.com/v_show/id_XNDIyOTY3MjA0OA==.html', '[进球视频] 巴西地面配合打穿日本防线 安东尼推射破僵 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (140, '2019-06-17 10:22:43.883211', 'http://sports.cctv.com/2019/06/15/VIDE9PDtcGpSbSIpbBBhQ8S3190615.shtml', '[CCTV] 06月15日 女足世界杯小组赛E组 荷兰女足vs喀麦隆女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (141, '2019-06-17 10:22:43.894738', 'http://v.youku.com/v_show/id_XNDIyOTY3MzYzMg==.html', '[点球大战] 土伦杯季军战-墨西哥vs爱尔兰点球大战实录 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (142, '2019-06-17 10:22:43.901334', 'http://sports.cctv.com/2019/06/15/VIDEmkXFA3q9aNKJ7MFlwyzF190615.shtml', '[CCTV全场集锦] 世界杯-米德玛梅开二度 荷兰女足3-1胜喀麦隆 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (143, '2019-06-17 10:22:43.914049', 'http://sports.cctv.com/2019/06/16/VIDEpxGgom714UcDOMZzbImm190616.shtml', '[CCTV] 06月16日 世青赛决赛 乌克兰U20vs韩国U20 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (144, '2019-06-17 10:22:43.917810', 'http://v.youku.com/v_show/id_XNDIyOTY5MDQ0MA==.html', '[优酷] 06月16日 土伦杯季军争夺战 墨西哥U22vs爱尔兰U21 全场录像 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (145, '2019-06-17 10:22:43.929912', 'http://sports.cctv.com/2019/06/16/VIDEuyT4nP2IXAghIl3UR8rj190616.shtml', '[CCTV] 06月16日 美洲杯小组赛B组 阿根廷vs哥伦比亚 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (146, '2019-06-17 10:22:43.945134', 'http://sports.cctv.com/2019/06/16/VIDETnJCwBhQeRv9k5vDHw7O190616.shtml', '[进球视频] 金岁尹摔倒造点 李刚仁主罚一蹴而就取梦幻开局 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (147, '2019-06-17 10:22:44.225391', 'http://v.youku.com/v_show/id_XNDIyOTUwNDA0NA==.html', '[外围远射] 华夏后卫解围不远 朱晓刚禁区外围远射偏出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (148, '2019-06-17 10:22:44.233509', 'http://sports.cctv.com/2019/06/16/VIDE73HPet2dfeBNXY7cgDwQ190616.shtml', '[进球视频] 哥伦比亚打破僵局 罗杰-马丁内斯内切爆射建功 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (149, '2019-06-17 10:22:44.240758', 'http://v.youku.com/v_show/id_XNDIyOTc3OTYyOA==.html', '[优酷] 06月15日 中超第13轮 河北华夏vs大连一方 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (150, '2019-06-17 10:22:44.266737', 'http://v.youku.com/v_show/id_XNDIyOTUwODYxMg==.html', '[错失单刀] 富力后卫冒顶送礼 拉斐尔单刀推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (151, '2019-06-17 10:25:29.579302', 'http://v.youku.com/v_show/id_XNDIzMDcyNDU4NA==.html', '[优酷] 06月16日 中超第13轮 江苏苏宁vs北京人和 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (152, '2019-06-17 10:25:29.585323', 'http://v.youku.com/v_show/id_XNDIyOTc3OTEzNg==.html', '[优酷] 06月15日 中超第13轮 广州富力vs武汉卓尔 全场录像 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (153, '2019-06-17 10:25:29.598437', 'http://v.youku.com/v_show/id_XNDIyOTUwODYxMg==.html', '[错失单刀] 富力后卫冒顶送礼 拉斐尔单刀推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (154, '2019-06-17 10:25:29.608429', 'http://v.youku.com/v_show/id_XNDIzMDYwOTYzNg==.html', '[假摔染黄] 演技还需提高 张鹏假摔被裁判识破染黄  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (155, '2019-06-17 10:25:29.653634', 'http://v.youku.com/v_show/id_XNDIzMDcwNjU5Ng==.html', '[优酷] 06月16日 中超第13轮 天津天海vs河南建业 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (156, '2019-06-17 10:25:29.656193', 'http://v.youku.com/v_show/id_XNDIzMDU4NzMyNA==.html', '[推射被扑] 埃德尔突入禁区横传 特谢拉跟进推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (157, '2019-06-17 10:25:29.657743', 'http://v.youku.com/v_show/id_XNDIzMDU4MDAwNA==.html', '[开场换人] 开场55秒换人 天海用裴帅换下U23球员文俊杰  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (158, '2019-06-17 10:25:29.658520', 'http://v.youku.com/v_show/id_XNDIzMDcwNjU5Ng==.html', '[优酷] 06月16日 中超第13轮 天津天海vs河南建业 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (159, '2019-06-17 10:25:30.075579', 'http://sports.cctv.com/2019/06/15/VIDETfIvqnq8kaiyjrjbXOXl190615.shtml', '[小窗口/手机/Pad观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (160, '2019-06-17 10:25:30.087669', 'http://sports.cctv.com/2019/06/15/VIDEbTMXmYDbOyTsu7kaP12K190615.shtml', '[CNTV] 06月15日 美洲杯小组赛A组 巴西vs玻利维亚 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (161, '2019-06-17 10:25:30.102791', 'http://sports.cctv.com/2019/06/14/VIDEl84D1uN5SRmn6uKdO1xb190614.shtml', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (162, '2019-06-17 10:25:30.110160', 'http://t.cn/AiN2cH8U?m=4383265320646676&u=2993049293', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (163, '2019-06-17 10:25:30.114937', 'http://v.youku.com/v_show/id_XNDIyOTY0MDUyNA==.html', '[优酷] 06月15日 中甲第13轮 南通支云vs浙江绿城 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (164, '2019-06-17 10:25:30.122403', 'http://sports.cctv.com/2019/06/15/VIDEh0xz3GgSIuwt9rnzbLPh190615.shtml', '[CCTV] 06月15日 女足世界杯小组赛D组 英格兰女足vs阿根廷女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (165, '2019-06-17 10:25:30.132577', 'http://sports.cctv.com/2019/06/15/VIDEAV1oUW7m3CquBs4TFJk3190615.shtml', '[进球视频] 玻利维亚球员手球送点 库蒂尼奥主罚一蹴而就 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (166, '2019-06-17 10:25:30.450202', 'http://sports.cctv.com/2019/06/14/VIDENZGXnvP7iXUMigqyRts4190614.shtml', '[CCTV] 06月14日 女足世界杯小组赛D组 日本女足vs苏格兰女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (167, '2019-06-17 10:25:30.470040', 'http://v.youku.com/v_show/id_XNDIyOTQ3NTc0OA==.html', '[优酷] 06月15日 中甲第13轮 新疆雪豹纳欢vs四川FC 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (168, '2019-06-17 10:25:30.478925', 'http://v.youku.com/v_show/id_XNDIyOTYyMDgwNA==.html', '[优酷全场集锦] 中甲-李嘉玮染红迪诺屡造险 绿城0-0十人南通 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (169, '2019-06-17 10:25:30.486638', 'http://v.youku.com/v_show/id_XNDIyOTYzMjExMg==.html', '[Y优酷全场集锦] 中甲-巴巴卡破门 申鑫0-1呼和浩特7连败继续垫底 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (170, '2019-06-17 10:25:30.493865', 'http://v.youku.com/v_show/id_XNDIyOTY3MDI4MA==.html', '[优酷] 06月15日 中甲第13轮 上海申鑫vs呼和浩特 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (171, '2019-06-17 10:25:30.506525', 'http://v.youku.com/v_show/id_XNDIyOTQwMDM1Ng==.html', '[优酷全场集锦] 中甲-麦合木提破僵斯特法诺点射 新疆主场3-0四川 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (172, '2019-06-17 10:25:30.797057', 'http://v.youku.com/v_show/id_XNDIyOTM2ODI4NA==.html', '[优酷全场集锦] 中甲-奇马梅开二度 黑龙江2-1九人梅州三轮不败 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (173, '2019-06-17 10:25:30.797567', 'http://v.youku.com/v_show/id_XNDIyOTQwNjI0MA==.html', '[优酷] 06月15日 中甲第13轮 黑龙江FCvs梅州客家 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (174, '2019-06-17 10:25:30.833980', 'http://v.youku.com/v_show/id_XNDIyOTY3MjA0OA==.html', '[进球视频] 巴西地面配合打穿日本防线 安东尼推射破僵 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (175, '2019-06-17 10:25:30.838366', 'http://v.youku.com/v_show/id_XNDIyOTY5MDQ0MA==.html', '[优酷] 06月16日 土伦杯季军争夺战 墨西哥U22vs爱尔兰U21 全场录像 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (176, '2019-06-17 10:25:30.843077', 'http://sports.cctv.com/2019/06/15/VIDE9PDtcGpSbSIpbBBhQ8S3190615.shtml', '[CCTV] 06月15日 女足世界杯小组赛E组 荷兰女足vs喀麦隆女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (177, '2019-06-17 10:25:30.878180', 'http://sports.cctv.com/2019/06/16/VIDEpxGgom714UcDOMZzbImm190616.shtml', '[CCTV] 06月16日 世青赛决赛 乌克兰U20vs韩国U20 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (178, '2019-06-17 10:25:30.878804', 'http://v.youku.com/v_show/id_XNDIyOTY3MzYzMg==.html', '[点球大战] 土伦杯季军战-墨西哥vs爱尔兰点球大战实录 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (179, '2019-06-17 10:25:30.879764', 'http://sports.cctv.com/2019/06/15/VIDEmkXFA3q9aNKJ7MFlwyzF190615.shtml', '[CCTV全场集锦] 世界杯-米德玛梅开二度 荷兰女足3-1胜喀麦隆 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (180, '2019-06-17 10:25:31.155629', 'http://sports.cctv.com/2019/06/16/VIDEuyT4nP2IXAghIl3UR8rj190616.shtml', '[CCTV] 06月16日 美洲杯小组赛B组 阿根廷vs哥伦比亚 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (181, '2019-06-17 10:34:26.611879', 'http://v.youku.com/v_show/id_XNDIzMDU4MDAwNA==.html', '[开场换人] 开场55秒换人 天海用裴帅换下U23球员文俊杰  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (182, '2019-06-17 10:34:26.612603', 'http://v.youku.com/v_show/id_XNDIzMDYwOTYzNg==.html', '[假摔染黄] 演技还需提高 张鹏假摔被裁判识破染黄  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (183, '2019-06-17 10:34:26.607230', 'http://v.youku.com/v_show/id_XNDIyOTUwODYxMg==.html', '[错失单刀] 富力后卫冒顶送礼 拉斐尔单刀推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (184, '2019-06-17 10:34:26.614176', 'http://v.youku.com/v_show/id_XNDIzMDcyNDU4NA==.html', '[优酷] 06月16日 中超第13轮 江苏苏宁vs北京人和 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (185, '2019-06-17 10:34:26.625739', 'http://v.youku.com/v_show/id_XNDIzMDU4NzMyNA==.html', '[推射被扑] 埃德尔突入禁区横传 特谢拉跟进推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (186, '2019-06-17 10:34:26.629610', 'http://v.youku.com/v_show/id_XNDIzMDcwNjU5Ng==.html', '[优酷] 06月16日 中超第13轮 天津天海vs河南建业 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (187, '2019-06-17 10:34:26.633682', 'http://v.youku.com/v_show/id_XNDIyOTc3OTEzNg==.html', '[优酷] 06月15日 中超第13轮 广州富力vs武汉卓尔 全场录像 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (188, '2019-06-17 10:34:26.638913', 'http://v.youku.com/v_show/id_XNDIzMDcwNjU5Ng==.html', '[优酷] 06月16日 中超第13轮 天津天海vs河南建业 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (189, '2019-06-17 10:34:27.090019', 'http://sports.cctv.com/2019/06/14/VIDENZGXnvP7iXUMigqyRts4190614.shtml', '[CCTV] 06月14日 女足世界杯小组赛D组 日本女足vs苏格兰女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (190, '2019-06-17 10:34:27.096424', 'http://sports.cctv.com/2019/06/14/VIDEl84D1uN5SRmn6uKdO1xb190614.shtml', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (191, '2019-06-17 10:34:27.161361', 'http://sports.cctv.com/2019/06/15/VIDETfIvqnq8kaiyjrjbXOXl190615.shtml', '[小窗口/手机/Pad观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (192, '2019-06-17 10:34:27.165726', 'http://sports.cctv.com/2019/06/15/VIDEh0xz3GgSIuwt9rnzbLPh190615.shtml', '[CCTV] 06月15日 女足世界杯小组赛D组 英格兰女足vs阿根廷女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (193, '2019-06-17 10:34:27.172045', 'http://t.cn/AiN2cH8U?m=4383265320646676&u=2993049293', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (194, '2019-06-17 10:34:27.467433', 'http://sports.cctv.com/2019/06/15/VIDEbTMXmYDbOyTsu7kaP12K190615.shtml', '[CNTV] 06月15日 美洲杯小组赛A组 巴西vs玻利维亚 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (195, '2019-06-17 10:34:27.474044', 'http://v.youku.com/v_show/id_XNDIyOTY0MDUyNA==.html', '[优酷] 06月15日 中甲第13轮 南通支云vs浙江绿城 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (196, '2019-06-17 10:34:27.480258', 'http://v.youku.com/v_show/id_XNDIyOTYyMDgwNA==.html', '[优酷全场集锦] 中甲-李嘉玮染红迪诺屡造险 绿城0-0十人南通 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (197, '2019-06-17 10:34:27.485401', 'http://v.youku.com/v_show/id_XNDIyOTYzMjExMg==.html', '[Y优酷全场集锦] 中甲-巴巴卡破门 申鑫0-1呼和浩特7连败继续垫底 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (198, '2019-06-17 10:34:27.493899', 'http://v.youku.com/v_show/id_XNDIyOTY3MDI4MA==.html', '[优酷] 06月15日 中甲第13轮 上海申鑫vs呼和浩特 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (199, '2019-06-17 10:34:27.500975', 'http://v.youku.com/v_show/id_XNDIyOTQwMDM1Ng==.html', '[优酷全场集锦] 中甲-麦合木提破僵斯特法诺点射 新疆主场3-0四川 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (200, '2019-06-17 10:34:27.510874', 'http://v.youku.com/v_show/id_XNDIyOTQ3NTc0OA==.html', '[优酷] 06月15日 中甲第13轮 新疆雪豹纳欢vs四川FC 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (201, '2019-06-17 10:34:27.522152', 'http://sports.cctv.com/2019/06/15/VIDEAV1oUW7m3CquBs4TFJk3190615.shtml', '[进球视频] 玻利维亚球员手球送点 库蒂尼奥主罚一蹴而就 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (202, '2019-06-17 10:34:27.820375', 'http://v.youku.com/v_show/id_XNDIyOTQwNjI0MA==.html', '[优酷] 06月15日 中甲第13轮 黑龙江FCvs梅州客家 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (203, '2019-06-17 10:34:27.848871', 'http://sports.cctv.com/2019/06/15/VIDE9PDtcGpSbSIpbBBhQ8S3190615.shtml', '[CCTV] 06月15日 女足世界杯小组赛E组 荷兰女足vs喀麦隆女足 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (204, '2019-06-17 10:34:27.858120', 'http://sports.cctv.com/2019/06/16/VIDEpxGgom714UcDOMZzbImm190616.shtml', '[CCTV] 06月16日 世青赛决赛 乌克兰U20vs韩国U20 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (205, '2019-06-17 10:34:27.866424', 'http://v.youku.com/v_show/id_XNDIyOTM2ODI4NA==.html', '[优酷全场集锦] 中甲-奇马梅开二度 黑龙江2-1九人梅州三轮不败 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (206, '2019-06-17 10:34:27.877362', 'http://v.youku.com/v_show/id_XNDIyOTY3MzYzMg==.html', '[点球大战] 土伦杯季军战-墨西哥vs爱尔兰点球大战实录 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (207, '2019-06-17 10:34:27.886505', 'http://sports.cctv.com/2019/06/15/VIDEmkXFA3q9aNKJ7MFlwyzF190615.shtml', '[CCTV全场集锦] 世界杯-米德玛梅开二度 荷兰女足3-1胜喀麦隆 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (208, '2019-06-17 10:34:27.896802', 'http://v.youku.com/v_show/id_XNDIyOTY3MjA0OA==.html', '[进球视频] 巴西地面配合打穿日本防线 安东尼推射破僵 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (209, '2019-06-17 10:34:27.902454', 'http://v.youku.com/v_show/id_XNDIyOTY5MDQ0MA==.html', '[优酷] 06月16日 土伦杯季军争夺战 墨西哥U22vs爱尔兰U21 全场录像 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (210, '2019-06-17 10:34:28.184128', 'http://sports.cctv.com/2019/06/16/VIDETnJCwBhQeRv9k5vDHw7O190616.shtml', '[进球视频] 金岁尹摔倒造点 李刚仁主罚一蹴而就取梦幻开局 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (211, '2019-06-17 10:34:28.191006', 'http://sports.cctv.com/2019/06/16/VIDE73HPet2dfeBNXY7cgDwQ190616.shtml', '[进球视频] 哥伦比亚打破僵局 罗杰-马丁内斯内切爆射建功 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (212, '2019-06-17 10:34:28.198737', 'http://sports.cctv.com/2019/06/16/VIDEuyT4nP2IXAghIl3UR8rj190616.shtml', '[CCTV] 06月16日 美洲杯小组赛B组 阿根廷vs哥伦比亚 下半场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (213, '2019-06-17 10:34:28.223388', 'http://v.youku.com/v_show/id_XNDIyOTc3OTYyOA==.html', '[优酷] 06月15日 中超第13轮 河北华夏vs大连一方 全场录像	');
INSERT INTO `app_videosurlstitlemodel` VALUES (214, '2019-06-17 10:35:33.903440', 'http://v.youku.com/v_show/id_XNDIzMDU4NzMyNA==.html', '[推射被扑] 埃德尔突入禁区横传 特谢拉跟进推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (215, '2019-06-17 10:35:33.914835', 'http://v.youku.com/v_show/id_XNDIyOTUwODYxMg==.html', '[错失单刀] 富力后卫冒顶送礼 拉斐尔单刀推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (216, '2019-06-17 10:35:33.924700', 'http://v.youku.com/v_show/id_XNDIzMDYwOTYzNg==.html', '[假摔染黄] 演技还需提高 张鹏假摔被裁判识破染黄  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (217, '2019-06-17 10:35:33.890494', 'http://v.youku.com/v_show/id_XNDIzMDU4MDAwNA==.html', '[开场换人] 开场55秒换人 天海用裴帅换下U23球员文俊杰  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (218, '2019-06-17 10:35:34.706123', 'http://sports.cctv.com/2019/06/14/VIDEl84D1uN5SRmn6uKdO1xb190614.shtml', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (219, '2019-06-17 10:35:34.710073', 'http://t.cn/AiN2cH8U?m=4383265320646676&u=2993049293', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (220, '2019-06-17 10:35:35.060996', 'http://sports.cctv.com/2019/06/15/VIDEAV1oUW7m3CquBs4TFJk3190615.shtml', '[进球视频] 玻利维亚球员手球送点 库蒂尼奥主罚一蹴而就 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (221, '2019-06-17 10:35:35.074687', 'http://v.youku.com/v_show/id_XNDIyOTQwMDM1Ng==.html', '[优酷全场集锦] 中甲-麦合木提破僵斯特法诺点射 新疆主场3-0四川 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (222, '2019-06-17 10:35:35.090055', 'http://v.youku.com/v_show/id_XNDIyOTYyMDgwNA==.html', '[优酷全场集锦] 中甲-李嘉玮染红迪诺屡造险 绿城0-0十人南通 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (223, '2019-06-17 10:35:35.145807', 'http://v.youku.com/v_show/id_XNDIyOTYzMjExMg==.html', '[Y优酷全场集锦] 中甲-巴巴卡破门 申鑫0-1呼和浩特7连败继续垫底 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (224, '2019-06-17 10:35:35.416273', 'http://v.youku.com/v_show/id_XNDIyOTM2ODI4NA==.html', '[优酷全场集锦] 中甲-奇马梅开二度 黑龙江2-1九人梅州三轮不败 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (225, '2019-06-17 10:35:35.454915', 'http://sports.cctv.com/2019/06/15/VIDEmkXFA3q9aNKJ7MFlwyzF190615.shtml', '[CCTV全场集锦] 世界杯-米德玛梅开二度 荷兰女足3-1胜喀麦隆 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (226, '2019-06-17 10:35:35.472450', 'http://v.youku.com/v_show/id_XNDIyOTY3MzYzMg==.html', '[点球大战] 土伦杯季军战-墨西哥vs爱尔兰点球大战实录 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (227, '2019-06-17 10:35:35.517128', 'http://v.youku.com/v_show/id_XNDIyOTY3MjA0OA==.html', '[进球视频] 巴西地面配合打穿日本防线 安东尼推射破僵 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (228, '2019-06-17 10:35:35.755963', 'http://sports.cctv.com/2019/06/16/VIDETnJCwBhQeRv9k5vDHw7O190616.shtml', '[进球视频] 金岁尹摔倒造点 李刚仁主罚一蹴而就取梦幻开局 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (229, '2019-06-17 10:35:35.785639', 'http://sports.cctv.com/2019/06/16/VIDE73HPet2dfeBNXY7cgDwQ190616.shtml', '[进球视频] 哥伦比亚打破僵局 罗杰-马丁内斯内切爆射建功 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (230, '2019-06-17 10:36:29.063646', 'http://sports.cctv.com/2019/06/16/VIDETnJCwBhQeRv9k5vDHw7O190616.shtml', '[进球视频] 金岁尹摔倒造点 李刚仁主罚一蹴而就取梦幻开局 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (231, '2019-06-17 10:36:29.090518', 'http://v.youku.com/v_show/id_XNDIyOTY3MzYzMg==.html', '[点球大战] 土伦杯季军战-墨西哥vs爱尔兰点球大战实录 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (232, '2019-06-17 10:36:29.064004', 'http://v.youku.com/v_show/id_XNDIyOTY3MjA0OA==.html', '[进球视频] 巴西地面配合打穿日本防线 安东尼推射破僵 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (233, '2019-06-17 10:36:29.116247', 'http://v.youku.com/v_show/id_XNDIyOTUwNDA0NA==.html', '[外围远射] 华夏后卫解围不远 朱晓刚禁区外围远射偏出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (234, '2019-06-17 10:36:29.128051', 'http://sports.cctv.com/2019/06/16/VIDE73HPet2dfeBNXY7cgDwQ190616.shtml', '[进球视频] 哥伦比亚打破僵局 罗杰-马丁内斯内切爆射建功 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (235, '2019-06-17 10:36:29.433584', 'http://v.youku.com/v_show/id_XNDIyOTUwODYxMg==.html', '[错失单刀] 富力后卫冒顶送礼 拉斐尔单刀推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (236, '2019-06-17 10:36:29.471132', 'http://v.youku.com/v_show/id_XNDIzMDU4NzMyNA==.html', '[推射被扑] 埃德尔突入禁区横传 特谢拉跟进推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (237, '2019-06-17 10:36:29.486284', 'http://v.youku.com/v_show/id_XNDIzMDU4MDAwNA==.html', '[开场换人] 开场55秒换人 天海用裴帅换下U23球员文俊杰  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (238, '2019-06-17 10:36:29.497681', 'http://v.youku.com/v_show/id_XNDIzMDYwOTYzNg==.html', '[假摔染黄] 演技还需提高 张鹏假摔被裁判识破染黄  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (239, '2019-06-17 10:36:29.819751', 'http://t.cn/AiN2cH8U?m=4383265320646676&u=2993049293', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (240, '2019-06-17 10:36:29.867269', 'http://sports.cctv.com/2019/06/14/VIDEl84D1uN5SRmn6uKdO1xb190614.shtml', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (241, '2019-06-17 10:36:30.187978', 'http://sports.cctv.com/2019/06/15/VIDEAV1oUW7m3CquBs4TFJk3190615.shtml', '[进球视频] 玻利维亚球员手球送点 库蒂尼奥主罚一蹴而就 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (242, '2019-06-17 10:36:30.202530', 'http://v.youku.com/v_show/id_XNDIyOTYyMDgwNA==.html', '[优酷全场集锦] 中甲-李嘉玮染红迪诺屡造险 绿城0-0十人南通 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (243, '2019-06-17 10:36:30.228019', 'http://v.youku.com/v_show/id_XNDIyOTQwMDM1Ng==.html', '[优酷全场集锦] 中甲-麦合木提破僵斯特法诺点射 新疆主场3-0四川 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (244, '2019-06-17 10:36:30.244010', 'http://v.youku.com/v_show/id_XNDIyOTYzMjExMg==.html', '[Y优酷全场集锦] 中甲-巴巴卡破门 申鑫0-1呼和浩特7连败继续垫底 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (245, '2019-06-17 10:36:30.540809', 'http://sports.cctv.com/2019/06/15/VIDEmkXFA3q9aNKJ7MFlwyzF190615.shtml', '[CCTV全场集锦] 世界杯-米德玛梅开二度 荷兰女足3-1胜喀麦隆 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (246, '2019-06-17 10:37:23.072981', 'http://v.youku.com/v_show/id_XNDIzMDU4MDAwNA==.html', '[开场换人] 开场55秒换人 天海用裴帅换下U23球员文俊杰  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (247, '2019-06-17 10:37:23.069869', 'http://v.youku.com/v_show/id_XNDIzMDU4NzMyNA==.html', '[推射被扑] 埃德尔突入禁区横传 特谢拉跟进推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (248, '2019-06-17 10:37:23.075852', 'http://v.youku.com/v_show/id_XNDIyOTUwODYxMg==.html', '[错失单刀] 富力后卫冒顶送礼 拉斐尔单刀推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (249, '2019-06-17 10:37:23.086080', 'http://v.youku.com/v_show/id_XNDIyOTUwNDA0NA==.html', '[外围远射] 华夏后卫解围不远 朱晓刚禁区外围远射偏出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (250, '2019-06-17 10:37:23.362538', 'http://v.youku.com/v_show/id_XNDIzMDYwOTYzNg==.html', '[假摔染黄] 演技还需提高 张鹏假摔被裁判识破染黄  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (251, '2019-06-17 10:37:23.406160', 'http://sports.cctv.com/2019/06/14/VIDEl84D1uN5SRmn6uKdO1xb190614.shtml', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (252, '2019-06-17 10:37:23.430832', 'http://t.cn/AiN2cH8U?m=4383265320646676&u=2993049293', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (253, '2019-06-17 10:37:23.799210', 'http://sports.cctv.com/2019/06/15/VIDEAV1oUW7m3CquBs4TFJk3190615.shtml', '[进球视频] 玻利维亚球员手球送点 库蒂尼奥主罚一蹴而就 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (254, '2019-06-17 10:37:23.812529', 'http://v.youku.com/v_show/id_XNDIyOTYyMDgwNA==.html', '[优酷全场集锦] 中甲-李嘉玮染红迪诺屡造险 绿城0-0十人南通 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (255, '2019-06-17 10:37:23.845070', 'http://v.youku.com/v_show/id_XNDIyOTYzMjExMg==.html', '[Y优酷全场集锦] 中甲-巴巴卡破门 申鑫0-1呼和浩特7连败继续垫底 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (256, '2019-06-17 10:37:24.121681', 'http://v.youku.com/v_show/id_XNDIyOTQwMDM1Ng==.html', '[优酷全场集锦] 中甲-麦合木提破僵斯特法诺点射 新疆主场3-0四川 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (257, '2019-06-17 10:37:24.154813', 'http://v.youku.com/v_show/id_XNDIyOTM2ODI4NA==.html', '[优酷全场集锦] 中甲-奇马梅开二度 黑龙江2-1九人梅州三轮不败 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (258, '2019-06-17 10:37:24.191823', 'http://v.youku.com/v_show/id_XNDIyOTY3MjA0OA==.html', '[进球视频] 巴西地面配合打穿日本防线 安东尼推射破僵 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (259, '2019-06-17 10:37:24.213352', 'http://sports.cctv.com/2019/06/15/VIDEmkXFA3q9aNKJ7MFlwyzF190615.shtml', '[CCTV全场集锦] 世界杯-米德玛梅开二度 荷兰女足3-1胜喀麦隆 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (260, '2019-06-17 10:37:24.261844', 'http://v.youku.com/v_show/id_XNDIyOTY3MzYzMg==.html', '[点球大战] 土伦杯季军战-墨西哥vs爱尔兰点球大战实录 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (261, '2019-06-17 10:37:24.458429', 'http://sports.cctv.com/2019/06/16/VIDETnJCwBhQeRv9k5vDHw7O190616.shtml', '[进球视频] 金岁尹摔倒造点 李刚仁主罚一蹴而就取梦幻开局 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (262, '2019-06-17 10:37:24.530607', 'http://sports.cctv.com/2019/06/16/VIDE73HPet2dfeBNXY7cgDwQ190616.shtml', '[进球视频] 哥伦比亚打破僵局 罗杰-马丁内斯内切爆射建功 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (263, '2019-06-17 10:39:10.488716', 'http://v.youku.com/v_show/id_XNDIyOTY3MjA0OA==.html', '[进球视频] 巴西地面配合打穿日本防线 安东尼推射破僵 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (264, '2019-06-17 10:39:10.522720', 'http://sports.cctv.com/2019/06/16/VIDE73HPet2dfeBNXY7cgDwQ190616.shtml', '[进球视频] 哥伦比亚打破僵局 罗杰-马丁内斯内切爆射建功 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (265, '2019-06-17 10:39:10.532018', 'http://v.youku.com/v_show/id_XNDIyOTY3MzYzMg==.html', '[点球大战] 土伦杯季军战-墨西哥vs爱尔兰点球大战实录 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (266, '2019-06-17 10:39:10.548973', 'http://v.youku.com/v_show/id_XNDIyOTUwNDA0NA==.html', '[外围远射] 华夏后卫解围不远 朱晓刚禁区外围远射偏出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (267, '2019-06-17 10:39:10.557730', 'http://sports.cctv.com/2019/06/16/VIDETnJCwBhQeRv9k5vDHw7O190616.shtml', '[进球视频] 金岁尹摔倒造点 李刚仁主罚一蹴而就取梦幻开局 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (268, '2019-06-17 10:39:10.930861', 'http://v.youku.com/v_show/id_XNDIzMDU4MDAwNA==.html', '[开场换人] 开场55秒换人 天海用裴帅换下U23球员文俊杰  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (269, '2019-06-17 10:39:10.944101', 'http://v.youku.com/v_show/id_XNDIzMDU4NzMyNA==.html', '[推射被扑] 埃德尔突入禁区横传 特谢拉跟进推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (270, '2019-06-17 10:39:10.990109', 'http://v.youku.com/v_show/id_XNDIyOTUwODYxMg==.html', '[错失单刀] 富力后卫冒顶送礼 拉斐尔单刀推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (271, '2019-06-17 10:39:11.289082', 'http://v.youku.com/v_show/id_XNDIzMDYwOTYzNg==.html', '[假摔染黄] 演技还需提高 张鹏假摔被裁判识破染黄  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (272, '2019-06-17 10:39:11.320071', 'http://t.cn/AiN2cH8U?m=4383265320646676&u=2993049293', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (273, '2019-06-17 10:39:11.344676', 'http://sports.cctv.com/2019/06/14/VIDEl84D1uN5SRmn6uKdO1xb190614.shtml', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (274, '2019-06-17 10:39:11.716417', 'http://v.youku.com/v_show/id_XNDIyOTYzMjExMg==.html', '[Y优酷全场集锦] 中甲-巴巴卡破门 申鑫0-1呼和浩特7连败继续垫底 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (275, '2019-06-17 10:39:11.727774', 'http://sports.cctv.com/2019/06/15/VIDEAV1oUW7m3CquBs4TFJk3190615.shtml', '[进球视频] 玻利维亚球员手球送点 库蒂尼奥主罚一蹴而就 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (276, '2019-06-17 10:39:11.736472', 'http://v.youku.com/v_show/id_XNDIyOTYyMDgwNA==.html', '[优酷全场集锦] 中甲-李嘉玮染红迪诺屡造险 绿城0-0十人南通 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (277, '2019-06-17 10:39:11.973132', 'http://v.youku.com/v_show/id_XNDIyOTQwMDM1Ng==.html', '[优酷全场集锦] 中甲-麦合木提破僵斯特法诺点射 新疆主场3-0四川 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (278, '2019-06-17 10:39:12.070148', 'http://v.youku.com/v_show/id_XNDIyOTM2ODI4NA==.html', '[优酷全场集锦] 中甲-奇马梅开二度 黑龙江2-1九人梅州三轮不败 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (279, '2019-06-17 10:43:42.379557', 'http://v.youku.com/v_show/id_XNDIzMDU4MDAwNA==.html', '[开场换人] 开场55秒换人 天海用裴帅换下U23球员文俊杰  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (280, '2019-06-17 10:43:42.388567', 'http://v.youku.com/v_show/id_XNDIzMDYwOTYzNg==.html', '[假摔染黄] 演技还需提高 张鹏假摔被裁判识破染黄  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (281, '2019-06-17 10:43:42.468342', 'http://v.youku.com/v_show/id_XNDIzMDU4NzMyNA==.html', '[推射被扑] 埃德尔突入禁区横传 特谢拉跟进推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (282, '2019-06-17 10:43:42.704892', 'http://v.youku.com/v_show/id_XNDIyOTQwMDM1Ng==.html', '[优酷全场集锦] 中甲-麦合木提破僵斯特法诺点射 新疆主场3-0四川 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (283, '2019-06-17 10:43:42.713730', 'http://sports.cctv.com/2019/06/15/VIDEAV1oUW7m3CquBs4TFJk3190615.shtml', '[进球视频] 玻利维亚球员手球送点 库蒂尼奥主罚一蹴而就 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (284, '2019-06-17 10:43:42.731363', 'http://v.youku.com/v_show/id_XNDIyOTYzMjExMg==.html', '[Y优酷全场集锦] 中甲-巴巴卡破门 申鑫0-1呼和浩特7连败继续垫底 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (285, '2019-06-17 10:43:42.751525', 'http://v.youku.com/v_show/id_XNDIyOTYyMDgwNA==.html', '[优酷全场集锦] 中甲-李嘉玮染红迪诺屡造险 绿城0-0十人南通 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (286, '2019-06-17 10:43:43.098494', 'http://t.cn/AiN2cH8U?m=4383265320646676&u=2993049293', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (287, '2019-06-17 10:43:43.138753', 'http://sports.cctv.com/2019/06/14/VIDEl84D1uN5SRmn6uKdO1xb190614.shtml', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (288, '2019-06-17 10:43:43.170705', 'http://v.youku.com/v_show/id_XNDIyOTM2ODI4NA==.html', '[优酷全场集锦] 中甲-奇马梅开二度 黑龙江2-1九人梅州三轮不败 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (289, '2019-06-17 10:43:43.453447', 'http://v.youku.com/v_show/id_XNDIyOTY3MjA0OA==.html', '[进球视频] 巴西地面配合打穿日本防线 安东尼推射破僵 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (290, '2019-06-17 10:43:43.464708', 'http://sports.cctv.com/2019/06/16/VIDETnJCwBhQeRv9k5vDHw7O190616.shtml', '[进球视频] 金岁尹摔倒造点 李刚仁主罚一蹴而就取梦幻开局 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (291, '2019-06-17 10:43:43.476201', 'http://sports.cctv.com/2019/06/15/VIDEmkXFA3q9aNKJ7MFlwyzF190615.shtml', '[CCTV全场集锦] 世界杯-米德玛梅开二度 荷兰女足3-1胜喀麦隆 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (292, '2019-06-17 10:43:43.512535', 'http://v.youku.com/v_show/id_XNDIyOTY3MzYzMg==.html', '[点球大战] 土伦杯季军战-墨西哥vs爱尔兰点球大战实录 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (293, '2019-06-17 10:43:43.819054', 'http://v.youku.com/v_show/id_XNDIyOTUwODYxMg==.html', '[错失单刀] 富力后卫冒顶送礼 拉斐尔单刀推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (294, '2019-06-17 10:43:43.839601', 'http://sports.cctv.com/2019/06/16/VIDE73HPet2dfeBNXY7cgDwQ190616.shtml', '[进球视频] 哥伦比亚打破僵局 罗杰-马丁内斯内切爆射建功 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (295, '2019-06-17 10:43:43.860145', 'http://v.youku.com/v_show/id_XNDIyOTUwNDA0NA==.html', '[外围远射] 华夏后卫解围不远 朱晓刚禁区外围远射偏出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (296, '2019-06-17 10:45:33.721308', 'http://v.youku.com/v_show/id_XNDIzMDU4NzMyNA==.html', '[推射被扑] 埃德尔突入禁区横传 特谢拉跟进推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (297, '2019-06-17 10:45:33.723830', 'http://v.youku.com/v_show/id_XNDIyOTUwNDA0NA==.html', '[外围远射] 华夏后卫解围不远 朱晓刚禁区外围远射偏出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (298, '2019-06-17 10:45:33.725417', 'http://v.youku.com/v_show/id_XNDIzMDU4MDAwNA==.html', '[开场换人] 开场55秒换人 天海用裴帅换下U23球员文俊杰  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (299, '2019-06-17 10:45:33.726563', 'http://v.youku.com/v_show/id_XNDIyOTUwODYxMg==.html', '[错失单刀] 富力后卫冒顶送礼 拉斐尔单刀推射被扑出 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (300, '2019-06-17 10:45:34.005425', 'http://v.youku.com/v_show/id_XNDIzMDYwOTYzNg==.html', '[假摔染黄] 演技还需提高 张鹏假摔被裁判识破染黄  ');
INSERT INTO `app_videosurlstitlemodel` VALUES (301, '2019-06-17 10:45:34.019384', 'http://sports.cctv.com/2019/06/14/VIDEl84D1uN5SRmn6uKdO1xb190614.shtml', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (302, '2019-06-17 10:45:34.023201', 'http://t.cn/AiN2cH8U?m=4383265320646676&u=2993049293', '[窗口/手机/PAD观看]');
INSERT INTO `app_videosurlstitlemodel` VALUES (303, '2019-06-17 10:45:34.374547', 'http://v.youku.com/v_show/id_XNDIyOTYyMDgwNA==.html', '[优酷全场集锦] 中甲-李嘉玮染红迪诺屡造险 绿城0-0十人南通 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (304, '2019-06-17 10:45:34.380185', 'http://v.youku.com/v_show/id_XNDIyOTYzMjExMg==.html', '[Y优酷全场集锦] 中甲-巴巴卡破门 申鑫0-1呼和浩特7连败继续垫底 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (305, '2019-06-17 10:45:34.399964', 'http://sports.cctv.com/2019/06/15/VIDEAV1oUW7m3CquBs4TFJk3190615.shtml', '[进球视频] 玻利维亚球员手球送点 库蒂尼奥主罚一蹴而就 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (306, '2019-06-17 10:45:34.712050', 'http://v.youku.com/v_show/id_XNDIyOTQwMDM1Ng==.html', '[优酷全场集锦] 中甲-麦合木提破僵斯特法诺点射 新疆主场3-0四川 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (307, '2019-06-17 10:45:34.716439', 'http://v.youku.com/v_show/id_XNDIyOTM2ODI4NA==.html', '[优酷全场集锦] 中甲-奇马梅开二度 黑龙江2-1九人梅州三轮不败 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (308, '2019-06-17 10:45:34.771797', 'http://v.youku.com/v_show/id_XNDIyOTY3MzYzMg==.html', '[点球大战] 土伦杯季军战-墨西哥vs爱尔兰点球大战实录 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (309, '2019-06-17 10:45:34.788504', 'http://v.youku.com/v_show/id_XNDIyOTY3MjA0OA==.html', '[进球视频] 巴西地面配合打穿日本防线 安东尼推射破僵 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (310, '2019-06-17 10:45:34.798179', 'http://sports.cctv.com/2019/06/15/VIDEmkXFA3q9aNKJ7MFlwyzF190615.shtml', '[CCTV全场集锦] 世界杯-米德玛梅开二度 荷兰女足3-1胜喀麦隆 ');
INSERT INTO `app_videosurlstitlemodel` VALUES (311, '2019-06-17 10:45:35.126027', 'http://sports.cctv.com/2019/06/16/VIDETnJCwBhQeRv9k5vDHw7O190616.shtml', '[进球视频] 金岁尹摔倒造点 李刚仁主罚一蹴而就取梦幻开局 ');
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
INSERT INTO `app_videosurlstitlemodel` VALUES (379, '2019-07-10 03:45:07.756715', 'www.kqw2.com', '看球网');
INSERT INTO `app_videosurlstitlemodel` VALUES (380, '2019-07-10 03:45:32.432942', 'www.4231w.com', '看球网2');
COMMIT;

-- ----------------------------
-- Table structure for app_webdescmodel
-- ----------------------------
DROP TABLE IF EXISTS `app_webdescmodel`;
CREATE TABLE `app_webdescmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `web_type_id` int(11) DEFAULT NULL,
  `web_title` varchar(255) NOT NULL,
  `web_keyword` varchar(255) NOT NULL,
  `web_desc` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_webdescmodel_web_type_id_3c762b8f` (`web_type_id`),
  CONSTRAINT `app_webdescmodel_web_type_id_3c762b8f_fk_app_compe` FOREIGN KEY (`web_type_id`) REFERENCES `app_competitionstagmodel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_webdescmodel
-- ----------------------------
BEGIN;
INSERT INTO `app_webdescmodel` VALUES (1, 396, '英超直播吧_英超视频直播_英超免费在线高清直播_英超录像吧-jrs直播吧', '英超直播吧,英超视频直播,英超免费在线高清直播,英超录像吧,jrs直播吧', '英超频道页为您提供英超直播，英超视频直播，英超赛程，免费在线高清直播，无需插件；同时也有英超新闻资讯和英超录像等内容，带您更好的了解英超');
INSERT INTO `app_webdescmodel` VALUES (4, 361, '中超直播吧_中超视频直播_中超免费在线高清直播_中超录像吧-jrs直播吧', '中超直播吧,中超视频直播,中超免费在线高清直播,中超录像吧,jrs直播吧', '中超频道页为您提供中超直播，中超视频直播，中超赛程，免费在线高清直播，无需插件；同时也有中超新闻资讯和中超录像等内容，带您更好的了解中超');
INSERT INTO `app_webdescmodel` VALUES (5, 335, 'NBA直播吧_NBA视频直播_NBA免费在线高清直播_NBA录像吧-jrs直播吧', 'NBA直播吧,NBA视频直播,NBA免费在线高清直播,NBA录像吧,jrs直播吧', 'NBA频道页为您提供NBA直播，NBA视频直播，NBA赛程，免费在线高清直播，无需插件；同时也有NBA新闻资讯和NBA录像等内容，');
INSERT INTO `app_webdescmodel` VALUES (6, 386, '亚冠直播吧_亚冠视频直播_亚冠免费在线高清直播_亚冠录像吧-jrs直播吧', '亚冠直播吧,亚冠视频直播,亚冠免费在线高清直播,亚冠录像吧,jrs直播吧', '亚冠频道页为您提供亚冠直播，亚冠视频直播，亚冠赛程，免费在线高清直播，无需插件；同时也有亚冠新闻资讯和亚冠录像等内容');
INSERT INTO `app_webdescmodel` VALUES (7, 402, 'CBA直播吧_CBA视频直播_CBA免费在线高清直播_CBA录像吧-jrs直播吧', 'CBA直播吧_CBA视频直播_CBA免费在线高清直播_CBA录像吧-jrs直播吧', 'CBA频道页为您提供CBA直播，CBA视频直播，CBA赛程，免费在线高清直播，无需插件；同时也CBA新闻资讯和CBA录像等内容');
INSERT INTO `app_webdescmodel` VALUES (8, 401, '欧冠杯直播吧_欧冠杯视频直播_欧冠杯免费在线高清直播_欧冠杯录像吧-jrs直播吧', '欧冠杯直播吧_欧冠杯视频直播_欧冠杯免费在线高清直播_欧冠杯录像吧-jrs直播吧', '欧冠杯频道页为您提供欧冠直播，欧冠杯视频直播，欧冠杯赛程，免费在线高清直播，无需插件；同时也欧冠杯新闻资讯和欧冠杯录像等内容');
INSERT INTO `app_webdescmodel` VALUES (9, 400, '意甲直播吧_意甲视频直播_意甲免费在线高清直播_意甲录像吧-jrs直播吧', '意甲直播吧_意甲视频直播_意甲免费在线高清直播_意甲录像吧-jrs直播吧', '意甲频道页为您提供意甲直播，意甲视频直播，意甲赛程，免费在线高清直播，无需插件；同时也有意甲新闻资讯和意甲录像等内容');
INSERT INTO `app_webdescmodel` VALUES (10, 399, '德甲直播吧_德甲视频直播_德甲免费在线高清直播_德甲录像吧-jrs直播吧', '德甲直播吧_德甲视频直播_德甲免费在线高清直播_德甲录像吧-jrs直播吧', '德甲频道页为您提供意甲直播，德甲视频直播，德甲赛程，免费在线高清直播，无需插件；同时也有德甲新闻资讯和德甲录像等内容');
INSERT INTO `app_webdescmodel` VALUES (11, 398, '法甲直播吧_法甲视频直播_法甲免费在线高清直播_法甲录像吧-jrs直播吧', '法甲直播吧_法甲视频直播_法甲免费在线高清直播_法甲录像吧-jrs直播吧', '法甲频道页为您提供法甲直播，法甲视频直播，法甲赛程，免费在线高清直播，无需插件；同时也有法甲新闻资讯和法甲录像等内容');
INSERT INTO `app_webdescmodel` VALUES (12, 397, '西甲直播吧_西甲视频直播_西甲免费在线高清直播_西甲录像吧-jrs直播吧', '西甲直播吧_西甲视频直播_西甲免费在线高清直播_西甲录像吧-jrs直播吧', '西甲频道页为您提供西甲直播，西甲视频直播，西甲赛程，免费在线高清直播，无需插件；同时也有西甲新闻资讯和西甲录像等内容');
INSERT INTO `app_webdescmodel` VALUES (13, 404, '球赛直播吧_球赛视频直播_球赛免费在线高清直播_球赛录像吧-jrs直播吧', '球赛直播吧_球赛视频直播_球赛免费在线高清直播_球赛录像吧-jrs直播吧', '球赛频道页为您提供全球众多体育赛事直播，包括欧洲杯、欧国联、篮球世界杯等大型比赛');
COMMIT;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add Bookmark', 7, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (26, 'Can change Bookmark', 7, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (27, 'Can delete Bookmark', 7, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (28, 'Can view Bookmark', 7, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (29, 'Can add User Setting', 8, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (30, 'Can change User Setting', 8, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (31, 'Can delete User Setting', 8, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (32, 'Can view User Setting', 8, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (33, 'Can add User Widget', 9, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (34, 'Can change User Widget', 9, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (35, 'Can delete User Widget', 9, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (36, 'Can view User Widget', 9, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (37, 'Can add log entry', 10, 'add_log');
INSERT INTO `auth_permission` VALUES (38, 'Can change log entry', 10, 'change_log');
INSERT INTO `auth_permission` VALUES (39, 'Can delete log entry', 10, 'delete_log');
INSERT INTO `auth_permission` VALUES (40, 'Can view log entry', 10, 'view_log');
INSERT INTO `auth_permission` VALUES (41, 'Can add revision', 11, 'add_revision');
INSERT INTO `auth_permission` VALUES (42, 'Can change revision', 11, 'change_revision');
INSERT INTO `auth_permission` VALUES (43, 'Can delete revision', 11, 'delete_revision');
INSERT INTO `auth_permission` VALUES (44, 'Can view revision', 11, 'view_revision');
INSERT INTO `auth_permission` VALUES (45, 'Can add version', 12, 'add_version');
INSERT INTO `auth_permission` VALUES (46, 'Can change version', 12, 'change_version');
INSERT INTO `auth_permission` VALUES (47, 'Can delete version', 12, 'delete_version');
INSERT INTO `auth_permission` VALUES (48, 'Can view version', 12, 'view_version');
INSERT INTO `auth_permission` VALUES (49, 'Can add competitions info model', 13, 'add_competitionsinfomodel');
INSERT INTO `auth_permission` VALUES (50, 'Can change competitions info model', 13, 'change_competitionsinfomodel');
INSERT INTO `auth_permission` VALUES (51, 'Can delete competitions info model', 13, 'delete_competitionsinfomodel');
INSERT INTO `auth_permission` VALUES (52, 'Can view competitions info model', 13, 'view_competitionsinfomodel');
INSERT INTO `auth_permission` VALUES (53, 'Can add 文章', 14, 'add_articlemodel');
INSERT INTO `auth_permission` VALUES (54, 'Can change 文章', 14, 'change_articlemodel');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 文章', 14, 'delete_articlemodel');
INSERT INTO `auth_permission` VALUES (56, 'Can view 文章', 14, 'view_articlemodel');
INSERT INTO `auth_permission` VALUES (57, 'Can add account', 15, 'add_account');
INSERT INTO `auth_permission` VALUES (58, 'Can change account', 15, 'change_account');
INSERT INTO `auth_permission` VALUES (59, 'Can delete account', 15, 'delete_account');
INSERT INTO `auth_permission` VALUES (60, 'Can view account', 15, 'view_account');
INSERT INTO `auth_permission` VALUES (61, 'Can add 赛事名称', 16, 'add_competitionsmodel');
INSERT INTO `auth_permission` VALUES (62, 'Can change 赛事名称', 16, 'change_competitionsmodel');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 赛事名称', 16, 'delete_competitionsmodel');
INSERT INTO `auth_permission` VALUES (64, 'Can view 赛事名称', 16, 'view_competitionsmodel');
INSERT INTO `auth_permission` VALUES (65, 'Can add 标签', 17, 'add_tagmodel');
INSERT INTO `auth_permission` VALUES (66, 'Can change 标签', 17, 'change_tagmodel');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 标签', 17, 'delete_tagmodel');
INSERT INTO `auth_permission` VALUES (68, 'Can view 标签', 17, 'view_tagmodel');
INSERT INTO `auth_permission` VALUES (69, 'Can add 赛事标签', 18, 'add_competitionstagmodel');
INSERT INTO `auth_permission` VALUES (70, 'Can change 赛事标签', 18, 'change_competitionstagmodel');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 赛事标签', 18, 'delete_competitionstagmodel');
INSERT INTO `auth_permission` VALUES (72, 'Can view 赛事标签', 18, 'view_competitionstagmodel');
INSERT INTO `auth_permission` VALUES (73, 'Can add 视频地址', 19, 'add_videomodel');
INSERT INTO `auth_permission` VALUES (74, 'Can change 视频地址', 19, 'change_videomodel');
INSERT INTO `auth_permission` VALUES (75, 'Can delete 视频地址', 19, 'delete_videomodel');
INSERT INTO `auth_permission` VALUES (76, 'Can view 视频地址', 19, 'view_videomodel');
INSERT INTO `auth_permission` VALUES (77, 'Can add videos detail model', 20, 'add_videosdetailmodel');
INSERT INTO `auth_permission` VALUES (78, 'Can change videos detail model', 20, 'change_videosdetailmodel');
INSERT INTO `auth_permission` VALUES (79, 'Can delete videos detail model', 20, 'delete_videosdetailmodel');
INSERT INTO `auth_permission` VALUES (80, 'Can view videos detail model', 20, 'view_videosdetailmodel');
INSERT INTO `auth_permission` VALUES (81, 'Can add brocade model', 21, 'add_brocademodel');
INSERT INTO `auth_permission` VALUES (82, 'Can change brocade model', 21, 'change_brocademodel');
INSERT INTO `auth_permission` VALUES (83, 'Can delete brocade model', 21, 'delete_brocademodel');
INSERT INTO `auth_permission` VALUES (84, 'Can view brocade model', 21, 'view_brocademodel');
INSERT INTO `auth_permission` VALUES (85, 'Can add videos urls title model', 22, 'add_videosurlstitlemodel');
INSERT INTO `auth_permission` VALUES (86, 'Can change videos urls title model', 22, 'change_videosurlstitlemodel');
INSERT INTO `auth_permission` VALUES (87, 'Can delete videos urls title model', 22, 'delete_videosurlstitlemodel');
INSERT INTO `auth_permission` VALUES (88, 'Can view videos urls title model', 22, 'view_videosurlstitlemodel');
INSERT INTO `auth_permission` VALUES (89, 'Can add web desc model', 23, 'add_webdescmodel');
INSERT INTO `auth_permission` VALUES (90, 'Can change web desc model', 23, 'change_webdescmodel');
INSERT INTO `auth_permission` VALUES (91, 'Can delete web desc model', 23, 'delete_webdescmodel');
INSERT INTO `auth_permission` VALUES (92, 'Can view web desc model', 23, 'view_webdescmodel');
INSERT INTO `auth_permission` VALUES (93, 'Can view 标签', 24, 'view_videostagmodel');
INSERT INTO `auth_permission` VALUES (94, 'Can add 标签', 24, 'add_videostagmodel');
INSERT INTO `auth_permission` VALUES (95, 'Can change 标签', 24, 'change_videostagmodel');
INSERT INTO `auth_permission` VALUES (96, 'Can delete 标签', 24, 'delete_videostagmodel');
INSERT INTO `auth_permission` VALUES (97, 'Can add link model', 26, 'add_linkmodel');
INSERT INTO `auth_permission` VALUES (98, 'Can change link model', 26, 'change_linkmodel');
INSERT INTO `auth_permission` VALUES (99, 'Can delete link model', 26, 'delete_linkmodel');
INSERT INTO `auth_permission` VALUES (100, 'Can view link model', 26, 'view_linkmodel');
COMMIT;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
BEGIN;
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$150000$HHhWrpJW0GFT$5mYSnMDRNy1aumvkqST/nNXkogLABPgsUOoGGA75jV8=', '2019-07-16 02:27:47.266809', 1, 'root', '', '', '769839948@qq.com', 1, 1, '2019-06-04 06:18:49.388658');
COMMIT;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (15, 'app', 'account');
INSERT INTO `django_content_type` VALUES (14, 'app', 'articlemodel');
INSERT INTO `django_content_type` VALUES (21, 'app', 'brocademodel');
INSERT INTO `django_content_type` VALUES (13, 'app', 'competitionsinfomodel');
INSERT INTO `django_content_type` VALUES (16, 'app', 'competitionsmodel');
INSERT INTO `django_content_type` VALUES (18, 'app', 'competitionstagmodel');
INSERT INTO `django_content_type` VALUES (26, 'app', 'linkmodel');
INSERT INTO `django_content_type` VALUES (17, 'app', 'tagmodel');
INSERT INTO `django_content_type` VALUES (19, 'app', 'videomodel');
INSERT INTO `django_content_type` VALUES (20, 'app', 'videosdetailmodel');
INSERT INTO `django_content_type` VALUES (24, 'app', 'videostagmodel');
INSERT INTO `django_content_type` VALUES (22, 'app', 'videosurlstitlemodel');
INSERT INTO `django_content_type` VALUES (23, 'app', 'webdescmodel');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (11, 'reversion', 'revision');
INSERT INTO `django_content_type` VALUES (12, 'reversion', 'version');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (10, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (8, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (9, 'xadmin', 'userwidget');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2019-06-04 05:53:45.528903');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2019-06-04 05:53:45.730071');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2019-06-04 05:53:45.956955');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2019-06-04 05:53:46.021858');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2019-06-04 05:53:46.030411');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2019-06-04 05:53:46.091391');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2019-06-04 05:53:46.124531');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2019-06-04 05:53:46.161600');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2019-06-04 05:53:46.171603');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2019-06-04 05:53:46.203846');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2019-06-04 05:53:46.207161');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2019-06-04 05:53:46.218609');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2019-06-04 05:53:46.255352');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2019-06-04 05:53:46.295484');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2019-06-04 05:53:46.326210');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2019-06-04 05:53:46.336614');
INSERT INTO `django_migrations` VALUES (17, 'reversion', '0001_squashed_0004_auto_20160611_1202', '2019-06-04 05:53:46.570521');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2019-06-04 05:53:46.675638');
INSERT INTO `django_migrations` VALUES (19, 'xadmin', '0001_initial', '2019-06-04 05:53:46.773268');
INSERT INTO `django_migrations` VALUES (20, 'xadmin', '0002_log', '2019-06-04 05:53:46.903768');
INSERT INTO `django_migrations` VALUES (21, 'xadmin', '0003_auto_20160715_0100', '2019-06-04 05:53:46.990746');
INSERT INTO `django_migrations` VALUES (26, 'app', '0001_initial', '2019-06-04 09:23:43.725152');
INSERT INTO `django_migrations` VALUES (27, 'app', '0002_auto_20190604_1727', '2019-06-04 09:27:53.107251');
INSERT INTO `django_migrations` VALUES (28, 'app', '0003_auto_20190612_1031', '2019-06-12 02:32:05.373188');
INSERT INTO `django_migrations` VALUES (29, 'app', '0004_auto_20190613_0939', '2019-06-13 01:39:42.231205');
INSERT INTO `django_migrations` VALUES (30, 'app', '0005_tagmodel_sort_id', '2019-06-14 01:09:28.978941');
INSERT INTO `django_migrations` VALUES (31, 'app', '0006_auto_20190614_1455', '2019-06-14 06:55:26.273777');
INSERT INTO `django_migrations` VALUES (32, 'app', '0007_auto_20190614_1518', '2019-06-14 07:18:38.841874');
INSERT INTO `django_migrations` VALUES (33, 'app', '0008_auto_20190621_1051', '2019-06-21 02:51:12.738258');
INSERT INTO `django_migrations` VALUES (34, 'app', '0009_auto_20190628_1459', '2019-06-28 06:59:57.983723');
INSERT INTO `django_migrations` VALUES (35, 'app', '0010_auto_20190628_1601', '2019-06-28 08:02:56.282233');
INSERT INTO `django_migrations` VALUES (36, 'app', '0010_auto_20190702_1423', '2019-07-02 06:25:19.600001');
INSERT INTO `django_migrations` VALUES (37, 'app', '0011_auto_20190705_1056', '2019-07-05 02:58:27.085043');
INSERT INTO `django_migrations` VALUES (38, 'app', '0002_auto_20190708_1741', '2019-07-08 09:45:05.166137');
INSERT INTO `django_migrations` VALUES (39, 'app', '0003_auto_20190710_1039', '2019-07-10 03:04:55.980403');
INSERT INTO `django_migrations` VALUES (40, 'app', '0004_auto_20190710_1053', '2019-07-10 03:04:56.032308');
INSERT INTO `django_migrations` VALUES (41, 'app', '0002_auto_20190715_1042', '2019-07-15 02:42:51.089069');
INSERT INTO `django_migrations` VALUES (42, 'app', '0003_auto_20190716_1128', '2019-07-16 03:28:20.178321');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('38v0z51chadrf3mndyn5vayharr35q0a', 'ZDFkYmFmMzcxOTJhZTg5ZTliZDNhN2Q2MmQxMGU2NzkzMjgzNDZmMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWFlNTI5MjUxNzBmZDlmNzY2NmU4MDI1NjAwN2ZjZWEwNTg2NjQxIiwiTElTVF9RVUVSWSI6W1siYXBwIiwiYXJ0aWNsZW1vZGVsIl0sIiJdfQ==', '2019-07-02 02:36:03.251479');
INSERT INTO `django_session` VALUES ('6apiqx3zae1g23foy9ceva9ackjkkjpp', 'MTUxNmZhZjRjMWUyNWIzYzU1YzA3MDNiMTNjN2VkMzE5MmYyMzQwNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWFlNTI5MjUxNzBmZDlmNzY2NmU4MDI1NjAwN2ZjZWEwNTg2NjQxIiwiTElTVF9RVUVSWSI6W1siYXBwIiwidmlkZW9zdGFnbW9kZWwiXSwiIl19', '2019-07-16 03:30:18.951294');
INSERT INTO `django_session` VALUES ('b7cnvw6g40b270huge85q3lgxf0e0lub', 'YTg0MmFlYzRiNjA3ZjdiYjdhZGNhYTA5M2Q5NmNiY2UwMTQ2NTRkNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWFlNTI5MjUxNzBmZDlmNzY2NmU4MDI1NjAwN2ZjZWEwNTg2NjQxIiwid2l6YXJkX3hhZG1pbnVzZXJ3aWRnZXRfYWRtaW5fd2l6YXJkX2Zvcm1fcGx1Z2luIjp7InN0ZXAiOm51bGwsInN0ZXBfZGF0YSI6e30sInN0ZXBfZmlsZXMiOnt9LCJleHRyYV9kYXRhIjp7fX0sIkxJU1RfUVVFUlkiOltbImFwcCIsImNvbXBldGl0aW9uc3RhZ21vZGVsIl0sIiJdfQ==', '2019-08-02 11:01:37.684590');
INSERT INTO `django_session` VALUES ('buc289nit2dmejxommw5k7lhvl9fati7', 'MzczYzJjMWRmNTkxYTA3OGVlNzYzMjk3M2FiYjdkZmNkMTJhNWMzMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWFlNTI5MjUxNzBmZDlmNzY2NmU4MDI1NjAwN2ZjZWEwNTg2NjQxIiwiTElTVF9RVUVSWSI6W1siYXBwIiwiY29tcGV0aXRpb25zaW5mb21vZGVsIl0sIiJdfQ==', '2019-08-07 13:41:11.057205');
INSERT INTO `django_session` VALUES ('fd4jn0srexxlps88jpkjs7s2j9928oeu', 'YzBhODA4MjRmMzI5NWI4MzgyYjFlNzQ0ZmZjNGExMWI2MTg3NGRlMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWFlNTI5MjUxNzBmZDlmNzY2NmU4MDI1NjAwN2ZjZWEwNTg2NjQxIiwiTElTVF9RVUVSWSI6W1siYXBwIiwidmlkZW9tb2RlbCJdLCIiXX0=', '2019-07-29 08:59:03.381027');
INSERT INTO `django_session` VALUES ('fqawe035qw7kkyz6imfiior0q1f3ftyw', 'ZDFkYmFmMzcxOTJhZTg5ZTliZDNhN2Q2MmQxMGU2NzkzMjgzNDZmMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWFlNTI5MjUxNzBmZDlmNzY2NmU4MDI1NjAwN2ZjZWEwNTg2NjQxIiwiTElTVF9RVUVSWSI6W1siYXBwIiwiYXJ0aWNsZW1vZGVsIl0sIiJdfQ==', '2019-07-16 06:37:51.359800');
INSERT INTO `django_session` VALUES ('hromxdd1fqunbfpd9nvqf4g8b8r71l5s', 'ZDFkYmFmMzcxOTJhZTg5ZTliZDNhN2Q2MmQxMGU2NzkzMjgzNDZmMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWFlNTI5MjUxNzBmZDlmNzY2NmU4MDI1NjAwN2ZjZWEwNTg2NjQxIiwiTElTVF9RVUVSWSI6W1siYXBwIiwiYXJ0aWNsZW1vZGVsIl0sIiJdfQ==', '2019-07-16 08:22:06.287176');
INSERT INTO `django_session` VALUES ('iy19fryap5mc6um0vy42kfnyu1p2rp59', 'MzczYzJjMWRmNTkxYTA3OGVlNzYzMjk3M2FiYjdkZmNkMTJhNWMzMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWFlNTI5MjUxNzBmZDlmNzY2NmU4MDI1NjAwN2ZjZWEwNTg2NjQxIiwiTElTVF9RVUVSWSI6W1siYXBwIiwiY29tcGV0aXRpb25zaW5mb21vZGVsIl0sIiJdfQ==', '2019-07-05 06:47:22.372707');
INSERT INTO `django_session` VALUES ('pi1px6q2rxnhn9hdzdvtrt91abpb9q05', 'YzBhODA4MjRmMzI5NWI4MzgyYjFlNzQ0ZmZjNGExMWI2MTg3NGRlMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWFlNTI5MjUxNzBmZDlmNzY2NmU4MDI1NjAwN2ZjZWEwNTg2NjQxIiwiTElTVF9RVUVSWSI6W1siYXBwIiwidmlkZW9tb2RlbCJdLCIiXX0=', '2019-07-31 01:24:34.149660');
INSERT INTO `django_session` VALUES ('srqlvjkr3olho79kb91x2svy4xuyqt1l', 'NmVjYTBkODRmZTZkZThhMzU4MjViZmZhZDc0ZDVkZTlhYWQ5NWIxNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWFlNTI5MjUxNzBmZDlmNzY2NmU4MDI1NjAwN2ZjZWEwNTg2NjQxIiwiTElTVF9RVUVSWSI6W1siYXBwIiwiY29tcGV0aXRpb25zbW9kZWwiXSwiIl19', '2019-07-19 08:00:34.547765');
INSERT INTO `django_session` VALUES ('x19ekl6gcg517dxwqvw59nybmufm8zx9', 'NmQ0M2U1MWUxYjRiYTlhYjVmYzM3MTRkMThlOWI5ZjUyM2E2OTM0NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWFlNTI5MjUxNzBmZDlmNzY2NmU4MDI1NjAwN2ZjZWEwNTg2NjQxIiwiTElTVF9RVUVSWSI6W1siYXBwIiwidGFnbW9kZWwiXSwiIl19', '2019-07-16 02:08:24.656886');
COMMIT;

-- ----------------------------
-- Table structure for reversion_revision
-- ----------------------------
DROP TABLE IF EXISTS `reversion_revision`;
CREATE TABLE `reversion_revision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) NOT NULL,
  `comment` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reversion_revision_user_id_17095f45_fk_auth_user_id` (`user_id`),
  KEY `reversion_revision_date_created_96f7c20c` (`date_created`),
  CONSTRAINT `reversion_revision_user_id_17095f45_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for reversion_version
-- ----------------------------
DROP TABLE IF EXISTS `reversion_version`;
CREATE TABLE `reversion_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` varchar(191) NOT NULL,
  `format` varchar(255) NOT NULL,
  `serialized_data` longtext NOT NULL,
  `object_repr` longtext NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `revision_id` int(11) NOT NULL,
  `db` varchar(191) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reversion_version_db_content_type_id_objec_b2c54f65_uniq` (`db`,`content_type_id`,`object_id`,`revision_id`),
  KEY `reversion_version_content_type_id_7d0ff25c_fk_django_co` (`content_type_id`),
  KEY `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` (`revision_id`),
  CONSTRAINT `reversion_version_content_type_id_7d0ff25c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` FOREIGN KEY (`revision_id`) REFERENCES `reversion_revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_log` VALUES (1, '2019-06-04 09:28:10.449900', '127.0.0.1', '1', '直播', 'create', '已添加。', 16, 1);
INSERT INTO `xadmin_log` VALUES (2, '2019-06-04 09:28:43.540417', '127.0.0.1', '1', '英超直播', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (3, '2019-06-04 09:28:50.850470', '127.0.0.1', '2', '西甲直播', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (4, '2019-06-04 09:29:06.118009', '127.0.0.1', '3', '德甲直播', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (5, '2019-06-04 09:31:15.019256', '127.0.0.1', '1', '山东鲁能预备队VS广州富力预备队', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (6, '2019-06-04 09:34:13.446293', '127.0.0.1', '1', '英超直播', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (7, '2019-06-04 09:37:46.629527', '127.0.0.1', '1', 'ArticleModel object (1)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (8, '2019-06-12 02:34:25.337169', '127.0.0.1', '1517', '直播', 'change', '修改 status', 16, 1);
INSERT INTO `xadmin_log` VALUES (9, '2019-06-12 02:34:34.247366', '127.0.0.1', '1473', '足球', 'change', '修改 status', 16, 1);
INSERT INTO `xadmin_log` VALUES (10, '2019-06-12 02:34:40.400883', '127.0.0.1', '1487', '篮球', 'change', '修改 status', 16, 1);
INSERT INTO `xadmin_log` VALUES (11, '2019-06-12 02:34:58.360144', '127.0.0.1', '394', '解放者杯', 'change', '修改 status', 18, 1);
INSERT INTO `xadmin_log` VALUES (12, '2019-06-12 02:35:05.194768', '127.0.0.1', '384', '美国女足联赛', 'change', '修改 status', 18, 1);
INSERT INTO `xadmin_log` VALUES (13, '2019-06-12 02:35:16.216258', '127.0.0.1', '324', '巴西杯', 'change', '修改 status', 18, 1);
INSERT INTO `xadmin_log` VALUES (14, '2019-06-13 08:39:28.908418', '127.0.0.1', '868', 'ArticleModel object (868)', 'change', '修改 tag 和 status', 14, 1);
INSERT INTO `xadmin_log` VALUES (15, '2019-06-13 08:39:40.995997', '127.0.0.1', '867', 'ArticleModel object (867)', 'change', '修改 tag', 14, 1);
INSERT INTO `xadmin_log` VALUES (16, '2019-06-13 08:39:48.204268', '127.0.0.1', '867', 'ArticleModel object (867)', 'change', '修改 status', 14, 1);
INSERT INTO `xadmin_log` VALUES (17, '2019-06-13 08:40:12.170094', '127.0.0.1', '864', 'ArticleModel object (864)', 'change', '修改 tag 和 status', 14, 1);
INSERT INTO `xadmin_log` VALUES (18, '2019-06-13 08:41:49.327117', '127.0.0.1', '844', 'ArticleModel object (844)', 'change', '修改 tag 和 status', 14, 1);
INSERT INTO `xadmin_log` VALUES (19, '2019-06-13 08:42:03.786139', '127.0.0.1', '832', 'ArticleModel object (832)', 'change', '修改 tag 和 status', 14, 1);
INSERT INTO `xadmin_log` VALUES (20, '2019-06-13 09:08:00.120264', '127.0.0.1', '866', 'ArticleModel object (866)', 'change', '修改 tag 和 status', 14, 1);
INSERT INTO `xadmin_log` VALUES (21, '2019-06-13 09:08:10.237580', '127.0.0.1', '865', 'ArticleModel object (865)', 'change', '修改 tag 和 status', 14, 1);
INSERT INTO `xadmin_log` VALUES (22, '2019-06-13 09:08:19.493271', '127.0.0.1', '851', 'ArticleModel object (851)', 'change', '修改 tag 和 status', 14, 1);
INSERT INTO `xadmin_log` VALUES (23, '2019-06-13 09:08:28.646404', '127.0.0.1', '848', 'ArticleModel object (848)', 'change', '修改 tag 和 status', 14, 1);
INSERT INTO `xadmin_log` VALUES (24, '2019-06-14 01:05:18.938659', '127.0.0.1', '1', '英超直播', 'change', '没有字段被修改。', 17, 1);
INSERT INTO `xadmin_log` VALUES (25, '2019-06-14 01:05:27.541468', '127.0.0.1', '2', 'NBA', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (26, '2019-06-14 01:05:44.618311', '127.0.0.1', '3', '足球', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (27, '2019-06-14 01:06:26.993641', '127.0.0.1', '4', '广州恒大', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (28, '2019-06-20 01:57:58.267914', '127.0.0.1', '832', 'ArticleModel object (832)', 'change', '修改 tag', 14, 1);
INSERT INTO `xadmin_log` VALUES (29, '2019-06-21 06:58:49.058292', '192.168.0.135', '92', 'VideoModel object (92)', 'change', '修改 tags', 19, 1);
INSERT INTO `xadmin_log` VALUES (30, '2019-06-21 06:59:01.609076', '192.168.0.135', '91', 'VideoModel object (91)', 'change', '修改 title 和 tags', 19, 1);
INSERT INTO `xadmin_log` VALUES (31, '2019-06-28 07:01:04.141885', '127.0.0.1', '92', 'VideoModel object (92)', 'change', '修改 category', 19, 1);
INSERT INTO `xadmin_log` VALUES (32, '2019-06-28 07:17:12.925184', '127.0.0.1', '868', 'ArticleModel object (868)', 'change', '修改 web_title，web_keyword，web_desc，content 和 tag', 14, 1);
INSERT INTO `xadmin_log` VALUES (33, '2019-07-02 06:12:29.169080', '127.0.0.1', '1', 'NBA', 'create', '已添加。', 24, 1);
INSERT INTO `xadmin_log` VALUES (34, '2019-07-02 06:12:45.226192', '127.0.0.1', '2', '足球', 'create', '已添加。', 24, 1);
INSERT INTO `xadmin_log` VALUES (35, '2019-07-02 06:27:34.099423', '127.0.0.1', '92', 'VideoModel object (92)', 'change', '修改 tag', 19, 1);
INSERT INTO `xadmin_log` VALUES (36, '2019-07-02 06:27:44.842171', '127.0.0.1', '80', 'VideoModel object (80)', 'change', '修改 tag', 19, 1);
INSERT INTO `xadmin_log` VALUES (37, '2019-07-02 07:48:14.861569', '127.0.0.1', '868', 'ArticleModel object (868)', 'change', '修改 content', 14, 1);
INSERT INTO `xadmin_log` VALUES (38, '2019-07-02 08:56:00.272862', '127.0.0.1', '868', 'ArticleModel object (868)', 'change', '修改 content', 14, 1);
INSERT INTO `xadmin_log` VALUES (39, '2019-07-04 08:44:13.278647', '127.0.0.1', '1473', '足球直播', 'change', '修改 title', 16, 1);
INSERT INTO `xadmin_log` VALUES (40, '2019-07-04 08:45:41.253340', '192.168.0.135', '1487', '资讯', 'change', '修改 title', 16, 1);
INSERT INTO `xadmin_log` VALUES (41, '2019-07-04 08:46:05.019855', '192.168.0.135', '1517', '录像', 'change', '修改 title', 16, 1);
INSERT INTO `xadmin_log` VALUES (42, '2019-07-04 08:46:13.556206', '192.168.0.135', '1473', '直播', 'change', '修改 title', 16, 1);
INSERT INTO `xadmin_log` VALUES (43, '2019-07-04 08:50:20.733593', '192.168.0.135', '386', '亚冠直播', 'change', '修改 name', 18, 1);
INSERT INTO `xadmin_log` VALUES (44, '2019-07-04 08:50:39.717198', '192.168.0.135', '361', '中超直播', 'change', '修改 name', 18, 1);
INSERT INTO `xadmin_log` VALUES (45, '2019-07-04 08:50:54.958257', '192.168.0.135', '335', 'NBA直播', 'change', '修改 name 和 tag_model', 18, 1);
INSERT INTO `xadmin_log` VALUES (46, '2019-07-04 08:52:23.714398', '192.168.0.135', '396', '英超直播', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (47, '2019-07-04 08:52:37.333120', '192.168.0.135', '397', '西甲直播', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (48, '2019-07-04 08:52:54.736422', '192.168.0.135', '398', '法甲直播', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (49, '2019-07-04 08:54:42.565435', '192.168.0.135', '399', '德甲直播', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (50, '2019-07-04 08:54:56.816799', '192.168.0.135', '400', '意甲直播', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (51, '2019-07-04 08:55:41.905307', '192.168.0.135', '401', '法甲直播', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (52, '2019-07-04 08:56:12.937586', '192.168.0.135', '401', '德甲直播', 'change', '修改 name 和 status', 18, 1);
INSERT INTO `xadmin_log` VALUES (53, '2019-07-04 08:56:32.916176', '192.168.0.135', '401', '欧冠杯直播', 'change', '修改 name', 18, 1);
INSERT INTO `xadmin_log` VALUES (54, '2019-07-04 08:57:08.297537', '192.168.0.135', '402', 'CBA直播', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (55, '2019-07-04 08:57:33.328150', '192.168.0.135', '402', 'CBA直播', 'change', '没有字段被修改。', 18, 1);
INSERT INTO `xadmin_log` VALUES (56, '2019-07-04 09:01:16.703226', '192.168.0.135', '5', '德甲', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (57, '2019-07-04 09:01:58.833185', '192.168.0.135', '6', '亚冠', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (58, '2019-07-04 09:02:08.604290', '192.168.0.135', '1', '英超', 'change', '修改 name', 17, 1);
INSERT INTO `xadmin_log` VALUES (59, '2019-07-04 09:02:17.351624', '192.168.0.135', '7', 'CBA', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (60, '2019-07-04 09:02:52.961740', '192.168.0.135', '868', 'ArticleModel object (868)', 'change', '修改 tag', 14, 1);
INSERT INTO `xadmin_log` VALUES (61, '2019-07-04 09:03:22.298088', '192.168.0.135', '868', 'ArticleModel object (868)', 'change', '修改 origin 和 tag', 14, 1);
INSERT INTO `xadmin_log` VALUES (62, '2019-07-04 09:04:17.348911', '192.168.0.135', '84', '美洲杯 阿根廷vs哥伦比亚高清全场录像', 'change', '修改 title', 21, 1);
INSERT INTO `xadmin_log` VALUES (63, '2019-07-04 09:12:22.625684', '192.168.0.135', '8', '中超,', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (64, '2019-07-04 09:12:39.497648', '192.168.0.135', '9', '河北华夏', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (65, '2019-07-04 09:12:43.949650', '192.168.0.135', '92', 'VideoModel object (92)', 'change', '修改 title，videos_detail，brocade_detail，category 和 tag', 19, 1);
INSERT INTO `xadmin_log` VALUES (66, '2019-07-05 01:18:25.060036', '192.168.0.135', '84', '美洲杯 阿根廷vs哥伦比亚高清全场录像', 'change', '没有字段被修改。', 21, 1);
INSERT INTO `xadmin_log` VALUES (67, '2019-07-05 02:37:21.260262', '192.168.0.135', '403', '全部', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (68, '2019-07-05 06:49:11.355339', '192.168.0.135', '10', '大连一方', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (69, '2019-07-05 06:49:14.265575', '192.168.0.135', '92', 'VideoModel object (92)', 'change', '修改 tag', 19, 1);
INSERT INTO `xadmin_log` VALUES (70, '2019-07-05 06:49:17.366860', '192.168.0.135', '92', 'VideoModel object (92)', 'change', '没有字段被修改。', 19, 1);
INSERT INTO `xadmin_log` VALUES (71, '2019-07-05 06:54:46.844463', '192.168.0.135', '868', 'ArticleModel object (868)', 'change', '修改 web_title，web_keyword，web_desc，content，category 和 tag', 14, 1);
INSERT INTO `xadmin_log` VALUES (72, '2019-07-05 06:58:25.998771', '192.168.0.135', '868', 'ArticleModel object (868)', 'change', '修改 tag', 14, 1);
INSERT INTO `xadmin_log` VALUES (73, '2019-07-05 07:00:25.995614', '192.168.0.135', '832', 'ArticleModel object (832)', 'change', '修改 web_title，web_keyword，web_desc，title，origin 和 content', 14, 1);
INSERT INTO `xadmin_log` VALUES (74, '2019-07-05 07:44:21.882677', '192.168.0.135', '865', 'ArticleModel object (865)', 'change', '修改 web_title，web_keyword，web_desc，title，origin，content 和 tag', 14, 1);
INSERT INTO `xadmin_log` VALUES (75, '2019-07-08 01:49:10.767631', '192.168.0.135', '848', 'ArticleModel object (848)', 'change', '修改 web_title，web_keyword，web_desc，title，content 和 tag', 14, 1);
INSERT INTO `xadmin_log` VALUES (76, '2019-07-08 02:33:09.029044', '127.0.0.1', '868', 'ArticleModel object (868)', 'change', '修改 category 和 tag', 14, 1);
INSERT INTO `xadmin_log` VALUES (77, '2019-07-08 02:37:50.744070', '127.0.0.1', '74', 'VideoModel object (74)', 'change', '修改 tag', 19, 1);
INSERT INTO `xadmin_log` VALUES (78, '2019-07-08 02:37:58.639948', '127.0.0.1', '91', 'VideoModel object (91)', 'change', '修改 tag', 19, 1);
INSERT INTO `xadmin_log` VALUES (79, '2019-07-08 02:38:10.442188', '127.0.0.1', '92', 'VideoModel object (92)', 'change', '修改 tag', 19, 1);
INSERT INTO `xadmin_log` VALUES (80, '2019-07-08 02:39:24.535498', '127.0.0.1', '868', 'ArticleModel object (868)', 'change', '修改 tag', 14, 1);
INSERT INTO `xadmin_log` VALUES (81, '2019-07-08 02:39:42.481229', '127.0.0.1', '90', 'VideoModel object (90)', 'change', '修改 title 和 tag', 19, 1);
INSERT INTO `xadmin_log` VALUES (82, '2019-07-08 02:55:14.730809', '127.0.0.1', '88', 'VideoModel object (88)', 'change', '修改 title 和 tag', 19, 1);
INSERT INTO `xadmin_log` VALUES (83, '2019-07-08 03:24:29.026612', '127.0.0.1', '868', 'ArticleModel object (868)', 'change', '修改 tag', 14, 1);
INSERT INTO `xadmin_log` VALUES (84, '2019-07-08 03:27:00.319257', '127.0.0.1', '868', 'ArticleModel object (868)', 'change', '没有字段被修改。', 14, 1);
INSERT INTO `xadmin_log` VALUES (85, '2019-07-08 03:51:21.695215', '127.0.0.1', '88', 'VideoModel object (88)', 'change', '修改 tag', 19, 1);
INSERT INTO `xadmin_log` VALUES (86, '2019-07-08 07:19:52.928633', '192.168.0.135', '404', '综合', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (87, '2019-07-08 07:53:23.287540', '192.168.0.135', '68', '6月16日 中超 江苏苏宁vs北京人和 全场录像', 'change', '修改 origin', 21, 1);
INSERT INTO `xadmin_log` VALUES (88, '2019-07-08 08:02:03.922393', '192.168.0.135', '11', '天津天海', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (89, '2019-07-08 08:02:25.100158', '192.168.0.135', '869', 'ArticleModel object (869)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (90, '2019-07-08 08:15:56.447411', '192.168.0.135', '870', 'ArticleModel object (870)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (91, '2019-07-08 09:47:22.880455', '127.0.0.1', '1', 'LinkModel object (1)', 'create', '已添加。', 26, 1);
INSERT INTO `xadmin_log` VALUES (92, '2019-07-09 01:18:40.552729', '127.0.0.1', '1', '百度', 'change', '修改 name', 26, 1);
INSERT INTO `xadmin_log` VALUES (93, '2019-07-09 01:56:29.341962', '192.168.0.135', '871', 'ArticleModel object (871)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (94, '2019-07-09 01:58:31.899200', '192.168.0.135', '2', '看球网', 'create', '已添加。', 26, 1);
INSERT INTO `xadmin_log` VALUES (95, '2019-07-09 02:05:02.278321', '192.168.0.135', '872', 'ArticleModel object (872)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (96, '2019-07-09 02:08:56.068776', '192.168.0.135', '873', 'ArticleModel object (873)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (97, '2019-07-09 02:18:32.450023', '192.168.0.135', '12', '欧冠杯', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (98, '2019-07-09 02:18:50.810539', '192.168.0.135', '874', 'ArticleModel object (874)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (99, '2019-07-09 02:36:06.824711', '192.168.0.135', '84', '美洲杯 阿根廷vs哥伦比亚高清全场录像', 'change', '修改 origin', 21, 1);
INSERT INTO `xadmin_log` VALUES (100, '2019-07-09 02:46:12.268160', '192.168.0.135', '62', '6月16日 美洲杯 阿根廷vs哥伦比亚 全场集锦', 'change', '修改 web_title，web_keyword，web_desc，origin 和 videos', 20, 1);
INSERT INTO `xadmin_log` VALUES (101, '2019-07-09 02:49:13.325626', '192.168.0.135', '13', '美洲杯', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (102, '2019-07-09 02:49:31.175897', '192.168.0.135', '14', '阿根廷', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (103, '2019-07-09 02:49:46.372450', '192.168.0.135', '15', '哥伦比亚', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (104, '2019-07-09 02:49:59.362914', '192.168.0.135', '93', 'VideoModel object (93)', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (105, '2019-07-09 06:22:16.637650', '192.168.0.135', '875', 'ArticleModel object (875)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (106, '2019-07-09 06:55:27.943228', '192.168.0.135', '876', 'ArticleModel object (876)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (107, '2019-07-09 06:59:59.830880', '192.168.0.135', '877', 'ArticleModel object (877)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (108, '2019-07-09 07:01:30.607164', '127.0.0.1', '8', '中超', 'change', '修改 name', 17, 1);
INSERT INTO `xadmin_log` VALUES (109, '2019-07-09 07:04:35.058570', '127.0.0.1', '877', 'ArticleModel object (877)', 'change', '修改 category 和 tag', 14, 1);
INSERT INTO `xadmin_log` VALUES (110, '2019-07-09 07:05:42.951742', '127.0.0.1', '72', 'VideoModel object (72)', 'change', '修改 category 和 tag', 19, 1);
INSERT INTO `xadmin_log` VALUES (111, '2019-07-09 07:06:56.441028', '127.0.0.1', '92', 'VideoModel object (92)', 'change', '修改 category 和 tag', 19, 1);
INSERT INTO `xadmin_log` VALUES (112, '2019-07-09 07:26:24.867705', '127.0.0.1', '857', 'ArticleModel object (857)', 'change', '修改 web_title，web_keyword，web_desc，category 和 tag', 14, 1);
INSERT INTO `xadmin_log` VALUES (113, '2019-07-09 07:27:07.584752', '127.0.0.1', '607', 'ArticleModel object (607)', 'change', '修改 web_title，web_keyword，web_desc 和 tag', 14, 1);
INSERT INTO `xadmin_log` VALUES (114, '2019-07-09 07:28:22.276463', '127.0.0.1', '126', 'ArticleModel object (126)', 'change', '修改 web_title，web_keyword，web_desc，category 和 tag', 14, 1);
INSERT INTO `xadmin_log` VALUES (115, '2019-07-09 07:29:51.925833', '127.0.0.1', '857', 'ArticleModel object (857)', 'change', '修改 status', 14, 1);
INSERT INTO `xadmin_log` VALUES (116, '2019-07-09 07:30:01.564351', '127.0.0.1', '126', 'ArticleModel object (126)', 'change', '修改 status', 14, 1);
INSERT INTO `xadmin_log` VALUES (117, '2019-07-09 07:32:39.038195', '192.168.0.135', '878', 'ArticleModel object (878)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (118, '2019-07-10 01:33:55.941788', '192.168.0.135', '16', '非洲杯', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (119, '2019-07-10 01:34:13.861896', '192.168.0.135', '879', 'ArticleModel object (879)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (120, '2019-07-10 02:47:46.727087', '127.0.0.1', '2129', 'W37 VS W44', 'change', '修改 tag_info', 13, 1);
INSERT INTO `xadmin_log` VALUES (121, '2019-07-10 03:45:07.762076', '192.168.0.135', '379', '看球网', 'create', '已添加。', 22, 1);
INSERT INTO `xadmin_log` VALUES (122, '2019-07-10 03:45:32.434704', '192.168.0.135', '380', '看球网2', 'create', '已添加。', 22, 1);
INSERT INTO `xadmin_log` VALUES (123, '2019-07-10 03:45:48.573589', '192.168.0.135', '85', '看球网', 'create', '已添加。', 21, 1);
INSERT INTO `xadmin_log` VALUES (124, '2019-07-10 03:46:22.504864', '192.168.0.135', '17', '西甲', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (125, '2019-07-10 03:46:27.947401', '192.168.0.135', '94', 'VideoModel object (94)', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (126, '2019-07-10 05:49:15.849624', '127.0.0.1', '1', '英超直播吧_英超视频直播_英超免费在线高清直播_英超录像吧-jrs直播吧', 'change', '修改 web_title，web_keyword 和 web_desc', 23, 1);
INSERT INTO `xadmin_log` VALUES (127, '2019-07-10 05:49:22.455995', '127.0.0.1', '1', '英超直播吧_英超视频直播_英超免费在线高清直播_英超录像吧-jrs直播吧', 'change', '没有字段被修改。', 23, 1);
INSERT INTO `xadmin_log` VALUES (128, '2019-07-10 05:50:51.011857', '127.0.0.1', '4', '中超直播吧_中超视频直播_中超免费在线高清直播_中超录像吧-jrs直播吧', 'create', '已添加。', 23, 1);
INSERT INTO `xadmin_log` VALUES (129, '2019-07-10 05:51:21.099925', '127.0.0.1', '5', 'NBA直播吧_NBA视频直播_NBA免费在线高清直播_NBA录像吧-jrs直播吧', 'create', '已添加。', 23, 1);
INSERT INTO `xadmin_log` VALUES (130, '2019-07-10 05:51:58.231319', '127.0.0.1', '6', '亚冠直播吧_亚冠视频直播_亚冠免费在线高清直播_亚冠录像吧-jrs直播吧', 'create', '已添加。', 23, 1);
INSERT INTO `xadmin_log` VALUES (131, '2019-07-10 05:52:24.380458', '127.0.0.1', '7', 'CBA直播吧_CBA视频直播_CBA免费在线高清直播_CBA录像吧-jrs直播吧', 'create', '已添加。', 23, 1);
INSERT INTO `xadmin_log` VALUES (132, '2019-07-10 05:52:47.520093', '127.0.0.1', '8', '欧冠杯直播吧_欧冠杯视频直播_欧冠杯免费在线高清直播_欧冠杯录像吧-jrs直播吧', 'create', '已添加。', 23, 1);
INSERT INTO `xadmin_log` VALUES (133, '2019-07-10 05:53:07.957702', '127.0.0.1', '9', '意甲直播吧_意甲视频直播_意甲免费在线高清直播_意甲录像吧-jrs直播吧', 'create', '已添加。', 23, 1);
INSERT INTO `xadmin_log` VALUES (134, '2019-07-10 05:53:22.116792', '127.0.0.1', '10', '德甲直播吧_德甲视频直播_德甲免费在线高清直播_德甲录像吧-jrs直播吧', 'create', '已添加。', 23, 1);
INSERT INTO `xadmin_log` VALUES (135, '2019-07-10 05:53:39.812968', '127.0.0.1', '11', '法甲直播吧_法甲视频直播_法甲免费在线高清直播_法甲录像吧-jrs直播吧', 'create', '已添加。', 23, 1);
INSERT INTO `xadmin_log` VALUES (136, '2019-07-10 05:53:58.839068', '127.0.0.1', '12', '西甲直播吧_西甲视频直播_西甲免费在线高清直播_西甲录像吧-jrs直播吧', 'create', '已添加。', 23, 1);
INSERT INTO `xadmin_log` VALUES (137, '2019-07-10 05:54:14.459007', '127.0.0.1', '13', '球赛直播吧_球赛视频直播_球赛免费在线高清直播_球赛录像吧-jrs直播吧', 'create', '已添加。', 23, 1);
INSERT INTO `xadmin_log` VALUES (138, '2019-07-10 05:54:52.805549', '127.0.0.1', '5', 'NBA直播吧_NBA视频直播_NBA免费在线高清直播_NBA录像吧-jrs直播吧', 'change', '修改 web_type', 23, 1);
INSERT INTO `xadmin_log` VALUES (139, '2019-07-10 06:10:47.608282', '127.0.0.1', '1', '百度', 'delete', '', 26, 1);
INSERT INTO `xadmin_log` VALUES (140, '2019-07-10 07:33:17.138885', '192.168.0.135', '18', '德甲', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (141, '2019-07-10 07:33:40.029943', '192.168.0.135', '880', 'ArticleModel object (880)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (142, '2019-07-10 07:33:43.800709', '192.168.0.135', '881', 'ArticleModel object (881)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (143, '2019-07-10 07:35:40.000930', '192.168.0.135', '881', 'ArticleModel object (881)', 'change', '修改 web_title，web_keyword，web_desc 和 content', 14, 1);
INSERT INTO `xadmin_log` VALUES (144, '2019-07-10 07:36:12.551179', '192.168.0.135', '881', 'ArticleModel object (881)', 'change', '修改 title', 14, 1);
INSERT INTO `xadmin_log` VALUES (145, '2019-07-10 07:47:07.032034', '192.168.0.135', '882', 'ArticleModel object (882)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (146, '2019-07-10 07:48:56.858909', '192.168.0.135', '883', 'ArticleModel object (883)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (147, '2019-07-10 07:56:57.681596', '192.168.0.135', '884', 'ArticleModel object (884)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (148, '2019-07-10 08:02:14.398947', '192.168.0.135', '19', '阿扎尔', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (149, '2019-07-10 08:03:11.652689', '192.168.0.135', '885', 'ArticleModel object (885)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (150, '2019-07-10 08:16:50.883042', '192.168.0.135', '884', 'ArticleModel object (884)', 'change', '修改 content', 14, 1);
INSERT INTO `xadmin_log` VALUES (151, '2019-07-10 08:18:33.779227', '192.168.0.135', '884', 'ArticleModel object (884)', 'change', '修改 content', 14, 1);
INSERT INTO `xadmin_log` VALUES (152, '2019-07-10 08:19:12.993770', '192.168.0.135', '884', 'ArticleModel object (884)', 'change', '修改 content', 14, 1);
INSERT INTO `xadmin_log` VALUES (153, '2019-07-10 08:29:39.203186', '192.168.0.135', '884', 'ArticleModel object (884)', 'change', '修改 content', 14, 1);
INSERT INTO `xadmin_log` VALUES (154, '2019-07-10 08:36:00.829653', '192.168.0.135', '884', 'ArticleModel object (884)', 'change', '修改 content', 14, 1);
INSERT INTO `xadmin_log` VALUES (155, '2019-07-10 08:44:34.831951', '192.168.0.135', '884', 'ArticleModel object (884)', 'change', '修改 content', 14, 1);
INSERT INTO `xadmin_log` VALUES (156, '2019-07-10 08:46:00.352773', '192.168.0.135', '884', 'ArticleModel object (884)', 'change', '修改 content', 14, 1);
INSERT INTO `xadmin_log` VALUES (157, '2019-07-10 08:47:59.824492', '192.168.0.135', '884', 'ArticleModel object (884)', 'change', '修改 content', 14, 1);
INSERT INTO `xadmin_log` VALUES (158, '2019-07-10 08:48:54.297387', '192.168.0.135', '884', 'ArticleModel object (884)', 'change', '修改 content', 14, 1);
INSERT INTO `xadmin_log` VALUES (159, '2019-07-10 09:10:38.105278', '192.168.0.135', '886', 'ArticleModel object (886)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (160, '2019-07-10 09:30:48.731010', '127.0.0.1', '78', 'VideoModel object (78)', 'change', '修改 tag', 19, 1);
INSERT INTO `xadmin_log` VALUES (161, '2019-07-10 09:31:16.900092', '127.0.0.1', '76', 'VideoModel object (76)', 'change', '修改 tag', 19, 1);
INSERT INTO `xadmin_log` VALUES (162, '2019-07-11 02:00:18.669129', '127.0.0.1', '45', '6月16日 中超 天津天海vs河南建业  全场集锦', 'change', '修改 web_title，web_keyword 和 web_desc', 20, 1);
INSERT INTO `xadmin_log` VALUES (163, '2019-07-11 02:01:41.860510', '192.168.0.135', '20', 'CBA', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (164, '2019-07-11 02:02:07.452755', '192.168.0.135', '887', 'ArticleModel object (887)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (165, '2019-07-11 02:04:37.718210', '192.168.0.135', '888', 'ArticleModel object (888)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (166, '2019-07-11 02:22:58.048151', '192.168.0.135', '21', '意甲', 'create', '已添加。', 17, 1);
INSERT INTO `xadmin_log` VALUES (167, '2019-07-11 02:24:10.673265', '192.168.0.135', '889', 'ArticleModel object (889)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (168, '2019-07-11 02:35:06.051292', '192.168.0.135', '890', 'ArticleModel object (890)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (169, '2019-07-11 03:02:03.362732', '192.168.0.135', '857', 'ArticleModel object (857)', 'change', '修改 category 和 tag', 14, 1);
INSERT INTO `xadmin_log` VALUES (170, '2019-07-11 06:31:18.024195', '192.168.0.135', '891', 'ArticleModel object (891)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (171, '2019-07-11 06:31:28.116741', '192.168.0.135', '891', 'ArticleModel object (891)', 'change', '修改 status', 14, 1);
INSERT INTO `xadmin_log` VALUES (172, '2019-07-11 08:42:32.014542', '127.0.0.1', '84', 'VideoModel object (84)', 'change', '修改 category 和 tag', 19, 1);
INSERT INTO `xadmin_log` VALUES (173, '2019-07-11 08:42:43.463258', '127.0.0.1', '84', 'VideoModel object (84)', 'change', '修改 status', 19, 1);
INSERT INTO `xadmin_log` VALUES (174, '2019-07-11 08:46:02.873974', '127.0.0.1', '890', 'ArticleModel object (890)', 'change', '修改 category', 14, 1);
INSERT INTO `xadmin_log` VALUES (175, '2019-07-11 08:46:25.191571', '127.0.0.1', '890', 'ArticleModel object (890)', 'change', '没有字段被修改。', 14, 1);
INSERT INTO `xadmin_log` VALUES (176, '2019-07-12 01:26:38.412101', '192.168.0.135', '892', 'ArticleModel object (892)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (177, '2019-07-12 01:29:08.007460', '192.168.0.135', '893', 'ArticleModel object (893)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (178, '2019-07-12 01:30:16.403496', '192.168.0.135', '894', 'ArticleModel object (894)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (179, '2019-07-12 01:35:50.481250', '192.168.0.135', '895', 'ArticleModel object (895)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (180, '2019-07-12 02:09:33.077993', '192.168.0.135', '890', 'ArticleModel object (890)', 'change', '修改 category', 14, 1);
INSERT INTO `xadmin_log` VALUES (181, '2019-07-12 02:13:52.272261', '192.168.0.135', '896', 'ArticleModel object (896)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (182, '2019-07-12 02:41:06.329522', '192.168.0.135', '897', 'ArticleModel object (897)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (183, '2019-07-12 02:55:01.343969', '192.168.0.135', '898', 'ArticleModel object (898)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (184, '2019-07-12 03:23:51.189792', '192.168.0.135', '899', 'ArticleModel object (899)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (185, '2019-07-16 01:17:55.465123', '127.0.0.1', '355', '欧锦赛预', 'change', '修改 status', 18, 1);
INSERT INTO `xadmin_log` VALUES (186, '2019-07-16 01:40:45.783545', '127.0.0.1', '355', '欧锦赛预', 'change', '修改 status', 18, 1);
INSERT INTO `xadmin_log` VALUES (187, '2019-07-16 01:41:10.868418', '192.168.0.135', '900', 'ArticleModel object (900)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (188, '2019-07-16 01:56:52.923781', '192.168.0.135', '901', 'ArticleModel object (901)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (189, '2019-07-16 02:06:34.546820', '192.168.0.135', '902', 'ArticleModel object (902)', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (190, '2019-07-16 16:06:31.046773', '192.168.0.135', '405', '资讯全部', 'create', '已添加。', 18, 1);
COMMIT;

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '1', 1);
COMMIT;

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_userwidget` VALUES (1, 'home', 'list', '{\"title\": \"修改列表\", \"model\": \"app.competitionsinfomodel\"}', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
