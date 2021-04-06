/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : vueapi

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-04-06 16:34:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for orga_index
-- ----------------------------
DROP TABLE IF EXISTS `orga_index`;
CREATE TABLE `orga_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orga_id` char(16) DEFAULT NULL COMMENT '机构指标ID',
  `orga_name` varchar(128) DEFAULT NULL COMMENT '机构指标名称',
  `is_comparison` tinyint(4) DEFAULT '0' COMMENT '是否比对 0比对 1 不比对',
  `orga_unit` char(16) DEFAULT NULL COMMENT '指标单位',
  `upper_limit` int(10) DEFAULT NULL COMMENT '参考上限',
  `lower_limit` int(10) DEFAULT NULL COMMENT '参考下限',
  `normal_message` varchar(1024) DEFAULT NULL COMMENT '正常提示',
  `high_message` varchar(1024) DEFAULT NULL COMMENT '偏高提示',
  `low_message` varchar(1024) DEFAULT NULL COMMENT '偏低提示',
  `belongs_orga` varchar(16) DEFAULT NULL COMMENT '所属机构',
  `exam_id` char(16) DEFAULT NULL COMMENT '对应指标标准',
  `is_match` tinyint(4) unsigned zerofill DEFAULT '0000' COMMENT '指标映射状态 0 未匹配 1 已匹配',
  `orga_add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `is_delete` tinyint(4) DEFAULT '0' COMMENT '删除 0 未删除 1 已删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orga_index
-- ----------------------------
INSERT INTO `orga_index` VALUES ('1', 'JGZB00001', 'WTQH0gwf', '0', 'L', '616', '3080', 'W0E9Cwloqd', 'S5hERszK9G', '36lZNNvHj0', 'GubRNk', '2', '0001', '1617262199', '1');
INSERT INTO `orga_index` VALUES ('2', 'JGZB00002', 'YbkF2Y9w', '0', 'L', '718', '1122', 'CUW73Uls7a', '2EEmoweLa4', 'cZXwNReLjE', '3W6Kjo', '3', '0000', '1617262199', '0');
INSERT INTO `orga_index` VALUES ('3', 'JGZB00003', 'uzzyQpZd', '0', 'L', '608', '3932', 'wvHlxsORse', 'jcqMIBCsKr', 'QhdNJx2DJW', 'kNdXXH', '3', '0000', '1617262199', '0');
INSERT INTO `orga_index` VALUES ('4', 'JGZB00004', '7Mo91HYE', '0', 'L', '487', '2333', 'hOrT9ceZtC', '43QNa7l78l', 'SYG7By3Uyw', 'fVGvSX', '5', '0000', '1617262199', '0');
INSERT INTO `orga_index` VALUES ('5', 'JGZB00005', 'QsUyUvfo', '0', 'L', '753', '3480', 'K2qH3BDakV', 'zrvJNSerm1', 'rB7MuXyTWi', 'oVfe7n', '2', '0000', '1617262199', '0');
INSERT INTO `orga_index` VALUES ('6', 'JGZB00006', 'wk3ZG2Rn', '0', 'L', '272', '2610', 'pAE1WGeF7I', 'c3BKo2nLez', 'hpY13XibOk', 'HTFxAr', '5', '0000', '1617262199', '0');
INSERT INTO `orga_index` VALUES ('7', 'JGZB00007', 'qfdHIubH', '0', 'L', '124', '1833', 'flJPGSQqj6', 'CJub6IbbZ9', 'Wv6rt6txda', 'GqYsJS', '4', '0000', '1617262199', '0');
INSERT INTO `orga_index` VALUES ('8', 'JGZB00008', 'XKbC1fhC', '0', 'L', '665', '2600', 'jICaS6e8Uy', 'GliV2lJBuH', 'uwJcDH1CT0', 'GKIl07', '4', '0000', '1617262199', '0');
INSERT INTO `orga_index` VALUES ('9', 'JGZB00009', 'AOdg3Nmy', '0', 'L', '706', '2241', 'z3JietmIeL', '8CNq7eBlqe', 'FBhpnA6pmL', 'giLJZz', '5', '0000', '1617262199', '0');
INSERT INTO `orga_index` VALUES ('10', 'JGZB00010', '白细胞', '0', 'L', '270', '2130', '4LGzjAcrDv', '93wUTrwN30', 'uywrjqePQF', '西祠', '4', '0001', '1617262199', '0');
INSERT INTO `orga_index` VALUES ('11', 'JGZB00011', 'HpjRiw6v', '0', 'L', '38', '1007', 'z4u3hopl1X', 'PrLh0KosL6', 'djDd4T6I82', 'pVplSH', '4', '0000', '1617262199', '0');
INSERT INTO `orga_index` VALUES ('12', 'JGZB00012', 'dhFmOTWM', '0', 'L', '489', '3915', 'z87ytbmewq', 'DkLjr7HOnX', 'hFign70JLa', 'rP5eBa', '5', '0000', '1617262199', '0');
INSERT INTO `orga_index` VALUES ('13', 'JGZB00013', 'ZY2LuRp7', '0', 'L', '315', '3338', '32T6cTAgyj', 'PkYL8q5HEn', 'js4g3R4Kzb', 'ldYyvc', '1', '0000', '1617262199', '0');
INSERT INTO `orga_index` VALUES ('14', 'JGZB00014', 'gq96KV54', '0', 'L', '165', '3046', 'vzA3XgXLcy', '9nmymYETCO', 'Ov6uwCXLPQ', 'dnuZ8H', '4', '0000', '1617262199', '0');
INSERT INTO `orga_index` VALUES ('15', 'JGZB00015', 'w9e9XLLT', '0', 'L', '17', '1075', 'MiS4fRjQ9z', 'PyHFopFQfQ', 'fJxAOOdeyx', 'v0P1jN', '2', '0000', '1617262199', '0');
INSERT INTO `orga_index` VALUES ('16', 'JGZB00016', '3QHPOjlq', '0', 'L', '557', '2343', 'Py3BfPdiJW', 'UORLhI5jHl', 'u82wqdNAmu', 'l9T70W', '4', '0000', '1617262199', '0');
INSERT INTO `orga_index` VALUES ('17', 'JGZB00017', '1N2MB2Ed', '0', 'L', '586', '1128', '8hfqlNH9XS', 'D4GdSuXoes', 'odHDLC4wwt', 'PrjYAH', '5', '0000', '1617262199', '0');
INSERT INTO `orga_index` VALUES ('18', 'JGZB00018', 'mGfffhuh', '0', 'L', '94', '3970', 'Nijytk2KvI', 'MUwjncWyKo', 'WrWCFpUBv1', 'SzYC7C', '5', '0000', '1617262199', '0');
INSERT INTO `orga_index` VALUES ('19', 'JGZB00019', 'MZ24g9qf', '0', 'L', '311', '2322', '703trAVkmX', 'CyVFcLHxp6', 'Gd8JpDMvVs', 'ySob7a', '1', '0000', '1617262199', '1');
INSERT INTO `orga_index` VALUES ('20', 'JGZB00020', '55xrOpgg', '0', 'L', '50', '1641', 'H8Xf2x9OVO', 'jYINXjk4HV', 'Uu628LJYnO', 'BKNN74', '4', '0000', '1617262199', '0');
INSERT INTO `orga_index` VALUES ('21', 'JGZB00021', 'DPdLZEPI', '0', 'L', '385', '2208', '2T1vIUMFJe', 'VBlhQ06fIa', '0jJdcAcIzB', 'BAKnPv', '3', '0001', '1617345163', '0');
