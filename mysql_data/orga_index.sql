/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : vueapi

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-04-08 17:49:14
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
  `is_comparison` tinyint(4) DEFAULT '0' COMMENT '是否比对 0未比对 1 比对',
  `orga_unit` char(16) DEFAULT NULL COMMENT '指标单位',
  `upper_limit` int(10) DEFAULT NULL COMMENT '参考上限',
  `lower_limit` int(10) DEFAULT NULL COMMENT '参考下限',
  `normal_message` varchar(1024) DEFAULT NULL COMMENT '正常提示',
  `high_message` varchar(1024) DEFAULT NULL COMMENT '偏高提示',
  `low_message` varchar(1024) DEFAULT NULL COMMENT '偏低提示',
  `belongs_orga` int(10) DEFAULT NULL COMMENT '所属机构',
  `exam_id` char(16) DEFAULT '0' COMMENT '对应指标标准',
  `is_match` tinyint(4) unsigned zerofill DEFAULT '0000' COMMENT '指标映射状态 0 未匹配 1 已匹配',
  `orga_add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `is_delete` tinyint(4) DEFAULT '0' COMMENT '删除 0 未删除 1 已删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orga_index
-- ----------------------------
INSERT INTO `orga_index` VALUES ('1', 'JGZB00001', 'g0dM9X4e', '0', 'L', '282', '3299', 'ASkpU64NSu', 'ib7ubP46i7', '4nX9SZTFHm', '3', '5', '0000', '1617875329', '0');
INSERT INTO `orga_index` VALUES ('2', 'JGZB00002', '5EjUIWTP', '0', 'L', '281', '2337', 'B2XEeneMih', 'iz8EG5IprW', 'Evte41VyFU', '1', '2', '0000', '1617875329', '0');
INSERT INTO `orga_index` VALUES ('3', 'JGZB00003', 'DgZ3olXL', '0', 'L', '745', '950', '6h7nkMj3JC', 'ss4KnDKjmD', 'iUUGsDAcSP', '2', '3', '0000', '1617875329', '0');
INSERT INTO `orga_index` VALUES ('4', 'JGZB00004', 'X0HD4Tql', '0', 'L', '573', '938', 'kcv9n4FOHd', 'ctPeCUrGgo', 'yfp0cdwX8D', '1', '3', '0000', '1617875329', '0');
INSERT INTO `orga_index` VALUES ('5', 'JGZB00005', 'zZP7NUlm', '0', 'L', '530', '3683', 'kAYChSot9H', 'QUMFCrqqGr', 'fkTcwYmFaE', '1', '2', '0000', '1617875329', '0');
INSERT INTO `orga_index` VALUES ('6', 'JGZB00006', 'sQaernX9', '0', 'L', '452', '2514', 'UYh6Xb5Ut3', 'KTfpmfqthm', 'T973fcesIP', '2', '4', '0000', '1617875329', '0');
INSERT INTO `orga_index` VALUES ('7', 'JGZB00007', 'GgLVCqiz', '0', 'L', '647', '2829', 'pMAL652a15', 'xFEWOQa6Wq', 'JjkF2jQtVr', '5', '3', '0000', '1617875329', '0');
INSERT INTO `orga_index` VALUES ('8', 'JGZB00008', 'GJk5Zx3s', '0', 'L', '548', '2640', '4EGS922SkO', 'Dq7B15jhFp', 'ukVV6Koytw', '6', '4', '0000', '1617875329', '0');
INSERT INTO `orga_index` VALUES ('9', 'JGZB00009', '1dMjCyUo', '0', 'L', '416', '1383', 'XaCEfMGka7', 'vUyhYbWYcx', '8Ke2dhM0CN', '3', '5', '0000', '1617875329', '0');
INSERT INTO `orga_index` VALUES ('10', 'JGZB00010', 'uAPc4Btb', '0', 'L', '332', '1652', 'lFLO51xfso', 'trw1NiJ4J9', 'dBR8yzdyLP', '5', '3', '0000', '1617875329', '0');
INSERT INTO `orga_index` VALUES ('11', 'JGZB00011', 'WRicIdDQ', '0', 'L', '173', '3798', 'dEa2Uu5TEk', 'srEPeeMKUr', 'Jc8UALE8rc', '1', '3', '0000', '1617875329', '0');
INSERT INTO `orga_index` VALUES ('12', 'JGZB00012', '7OGnEynN', '0', 'L', '272', '1999', 'Diazupg2Og', 'MnVvnwtbNr', 'BlHWzJQjaw', '2', '1', '0000', '1617875329', '0');
INSERT INTO `orga_index` VALUES ('13', 'JGZB00013', 'uzGI2BEh', '0', 'L', '239', '1083', 'CpUWuenilx', 'YUOMWlmQjj', 'tPhB48jHTl', '6', '1', '0000', '1617875329', '0');
INSERT INTO `orga_index` VALUES ('14', 'JGZB00014', 'rwRjyz9p', '0', 'L', '520', '3233', 'kqALyDZMnG', 'QnFudoRaWc', 'Fuc7dsZ602', '4', '4', '0000', '1617875329', '0');
INSERT INTO `orga_index` VALUES ('15', 'JGZB00015', '8BB4b3Ah', '0', 'L', '307', '1835', 'L2kzSvSPd6', '0INlQDUoca', 'R4Bc4C7W3n', '5', '3', '0000', '1617875329', '0');
INSERT INTO `orga_index` VALUES ('16', 'JGZB00016', 'D7KusUkE', '0', 'L', '771', '1090', 'eDRBxQ45KA', 'gxzVOdsUTI', 'VsKE22LPmD', '1', '1', '0000', '1617875329', '0');
INSERT INTO `orga_index` VALUES ('17', 'JGZB00017', 'THqBA68E', '0', 'L', '380', '3438', 'SS2eWak4Nv', 'y3x4ablrJn', 'kyKy5YmbIE', '1', '4', '0000', '1617875329', '0');
INSERT INTO `orga_index` VALUES ('18', 'JGZB00018', 'cXFHPSGA', '0', 'L', '175', '1727', 'Gi4TDACzfw', 'BLUIIgETfA', '39nFFte8By', '1', '2', '0000', '1617875329', '0');
INSERT INTO `orga_index` VALUES ('19', 'JGZB00019', 'XjhCkHtF', '0', 'L', '506', '3821', 'i87c6Ma8k0', 'f7novGIh29', 'kHWf7DFdQ0', '4', '5', '0000', '1617875329', '0');
INSERT INTO `orga_index` VALUES ('20', 'JGZB00020', 'KDeIH83U', '0', 'L', '358', '2213', 'g97u2KErSu', 'rjZv4UGnTS', 'PJKzfqvCsx', '2', '4', '0000', '1617875329', '0');
INSERT INTO `orga_index` VALUES ('21', 'JGZB00021', 'uciKPGhL', '0', 'L', '379', '1887', 'CkbbO0u9C8', 'eouO2A8oVh', '3DNC0chc9I', '5', '5', '0000', '1617875331', '0');
INSERT INTO `orga_index` VALUES ('22', 'JGZB00022', 'h28AUfVB', '0', 'L', '35', '1292', 'iKxymcrpht', 'SbmwuPbfsi', 'ZurkhYz3aB', '3', '3', '0000', '1617875331', '0');
INSERT INTO `orga_index` VALUES ('23', 'JGZB00023', '2chVz4o6', '0', 'L', '657', '1870', '2oZsatuqKI', 'KszQub2Swi', 'SA7pEXSfZv', '4', '1', '0000', '1617875331', '0');
INSERT INTO `orga_index` VALUES ('24', 'JGZB00024', 'XAlk3MIl', '0', 'L', '398', '1201', 'LvLuaIIo5m', 'jNvupvieKe', '2NVLU1yowr', '4', '4', '0000', '1617875331', '0');
INSERT INTO `orga_index` VALUES ('25', 'JGZB00025', 'm4qBu4dB', '0', 'L', '472', '1427', 'qsb2UNdj3C', 'MJhNjnRlsH', 'KIrRWckc43', '6', '3', '0000', '1617875331', '0');
INSERT INTO `orga_index` VALUES ('26', 'JGZB00026', 'TWOjsGeL', '0', 'L', '110', '1658', '8Kj6vcmeWn', '5lBAt3IE2B', 'JGSdr3QVXh', '4', '5', '0000', '1617875331', '0');
INSERT INTO `orga_index` VALUES ('27', 'JGZB00027', 'mA3HklWr', '0', 'L', '528', '1030', '7Vy05NO6uU', 'GFdjOl9X2A', 'DCXpRG99Qh', '2', '1', '0000', '1617875331', '0');
INSERT INTO `orga_index` VALUES ('28', 'JGZB00028', 'KQhq6yYM', '0', 'L', '211', '3782', 'Qnw3CtLpTj', 'jtFjtNFxLe', 'I2NaBiNd5C', '5', '1', '0000', '1617875331', '0');
INSERT INTO `orga_index` VALUES ('29', 'JGZB00029', 'gfbAbhEw', '0', 'L', '493', '3592', 'Rzr3qHbxeF', 'A7ltl9b7lp', 'CGISPNK1Go', '6', '4', '0000', '1617875331', '0');
INSERT INTO `orga_index` VALUES ('30', 'JGZB00030', '8MDDUXrS', '0', 'L', '317', '2157', 'mqWAhKDb5k', 'gHPZj6uyPf', 'Rka6Z9y6q5', '3', '4', '0000', '1617875331', '0');
INSERT INTO `orga_index` VALUES ('31', 'JGZB00031', 'YZ9x6yta', '0', 'L', '743', '2409', 'nKOEEc9kbx', 'D80pCCNbqg', 'YX36B9P0zz', '3', '4', '0000', '1617875331', '0');
INSERT INTO `orga_index` VALUES ('32', 'JGZB00032', 'Ua1JAuEh', '0', 'L', '250', '2052', 'cR4lq52TaW', '7oNz1kDJuy', 'B5EEErosks', '5', '4', '0000', '1617875331', '0');
INSERT INTO `orga_index` VALUES ('33', 'JGZB00033', 'cMMe7yhC', '0', 'L', '104', '1589', 's17n4aShNd', 'zZHeIWqVz5', 'DkSPmnkpEo', '2', '4', '0000', '1617875331', '0');
INSERT INTO `orga_index` VALUES ('34', 'JGZB00034', 't6g9M3tf', '0', 'L', '429', '1638', 'MzeXu0jJLX', 'QmQu7HpWK9', 'r7AKfI5Moq', '6', '3', '0000', '1617875331', '0');
INSERT INTO `orga_index` VALUES ('35', 'JGZB00035', 'UbaA4PL5', '0', 'L', '555', '1197', 'etWyfKoSyQ', 'S2KL4nGZQC', 'k8iZbkylvq', '5', '2', '0000', '1617875331', '0');
INSERT INTO `orga_index` VALUES ('36', 'JGZB00036', 'qjikkPl2', '0', 'L', '424', '928', 'mN2yADTDEu', '8KPWBrXfHl', '8bXtyO5XUb', '2', '2', '0000', '1617875331', '0');
INSERT INTO `orga_index` VALUES ('37', 'JGZB00037', 'IN3g0mCw', '0', 'L', '125', '1583', 'utgfRVx5Jx', 'xrxuE4mxYy', 'zMeAqyvaoU', '4', '2', '0000', '1617875331', '0');
INSERT INTO `orga_index` VALUES ('38', 'JGZB00038', 'L3gmjdfu', '0', 'L', '315', '1829', 'NzfIxMIO0t', 'AwMGlOpduG', '2Ae4GtrOd3', '4', '4', '0000', '1617875331', '0');
INSERT INTO `orga_index` VALUES ('39', 'JGZB00039', 'JWXbv4bv', '0', 'L', '264', '3524', 'Yr41eDB4xa', '8KGgIGHu05', 'Tea9fSYZfm', '4', '1', '0000', '1617875331', '0');
INSERT INTO `orga_index` VALUES ('40', 'JGZB00040', 'zj27ipId', '0', 'L', '472', '1966', 't92ULZCCIH', 'tX72e6PE6X', 'Nn0HOqx6To', '5', '1', '0000', '1617875331', '0');
INSERT INTO `orga_index` VALUES ('41', 'JGZB00041', 'HIDx4iT5', '0', 'L', '767', '3030', 'TTltAP4Jve', 'xLrwTrATbp', '8EXrbN7Klr', '1', '4', '0000', '1617875332', '0');
INSERT INTO `orga_index` VALUES ('42', 'JGZB00042', 'RmfnbrXy', '0', 'L', '388', '976', 'Dhl0bbQfWY', 'DZvCubsbKV', 'v6XTEgSYvT', '3', '2', '0000', '1617875332', '0');
INSERT INTO `orga_index` VALUES ('43', 'JGZB00043', '8HjvCru2', '0', 'L', '307', '2245', 'myxUMvjysX', 'QVOHG4MOR8', 'oWsZECHQS8', '4', '4', '0000', '1617875332', '0');
INSERT INTO `orga_index` VALUES ('44', 'JGZB00044', 'wic76Fqn', '0', 'L', '568', '1288', '021iOh7F0h', 'iI34qKiGT5', 'Ks3sVnjYtB', '5', '5', '0000', '1617875332', '0');
INSERT INTO `orga_index` VALUES ('45', 'JGZB00045', 'eYeJm6Ws', '0', 'L', '345', '2804', 'zT5Dgu0gWA', 'otvRGL0Ehg', 'SdfqHv4LAG', '2', '1', '0000', '1617875332', '0');
INSERT INTO `orga_index` VALUES ('46', 'JGZB00046', 'TrCj3ctp', '0', 'L', '73', '3735', 'lmqc8Z4vYi', 'WGpQ2jdmUd', 'ujnKjbr9gA', '1', '2', '0000', '1617875332', '0');
INSERT INTO `orga_index` VALUES ('47', 'JGZB00047', 'KDaXzUsD', '0', 'L', '562', '3449', 'dF9kbnVjHH', 'FCfOgmJUYj', 'BRqxspOrRv', '6', '2', '0000', '1617875332', '0');
INSERT INTO `orga_index` VALUES ('48', 'JGZB00048', 'OllS6JhI', '0', 'L', '766', '3508', 'oRHB4pq2Wq', 'AN7rfGS7NA', '66rmDRiDzN', '1', '3', '0000', '1617875332', '0');
INSERT INTO `orga_index` VALUES ('49', 'JGZB00049', 'nTt6QhBO', '0', 'L', '776', '3034', 'xhZJ78hjWI', 'saL3ozvsvl', 'HOcL58vMmc', '3', '2', '0000', '1617875332', '0');
INSERT INTO `orga_index` VALUES ('50', 'JGZB00050', 'LTjudJt6', '0', 'L', '121', '1076', '8b3lJy5Jt8', 'S3cLHDmliK', 'n2lzNlUTLk', '6', '4', '0000', '1617875332', '0');
INSERT INTO `orga_index` VALUES ('51', 'JGZB00051', 'JpCglOnl', '0', 'L', '30', '3362', 'c0T4GtiQ9E', 'rvfus31dSS', '7huJEaFkEW', '4', '2', '0000', '1617875332', '0');
INSERT INTO `orga_index` VALUES ('52', 'JGZB00052', 'y9xRCwjV', '0', 'L', '507', '1327', 'QKrxaUWTE3', 'VY1L2TzcFC', 'IbWA0H8fiM', '3', '4', '0000', '1617875332', '0');
INSERT INTO `orga_index` VALUES ('53', 'JGZB00053', '9Z69emUC', '0', 'L', '699', '3828', '9hauAcxzOi', 'WwrjkJQGhv', 'EKxaCslZWl', '1', '3', '0000', '1617875332', '0');
INSERT INTO `orga_index` VALUES ('54', 'JGZB00054', 'WNPt4Z1l', '0', 'L', '633', '2029', 'L1WTY1MAlm', 'QP6xSBSr9u', 'UtgrKVTIuh', '3', '2', '0000', '1617875332', '0');
INSERT INTO `orga_index` VALUES ('55', 'JGZB00055', 'eAsMe9FD', '0', 'L', '19', '2828', 'ZX9grmXV94', 'y4E6KzsYtW', 'Xt12slNG65', '1', '2', '0000', '1617875332', '0');
INSERT INTO `orga_index` VALUES ('56', 'JGZB00056', 'LAsuCLiN', '0', 'L', '791', '1241', 'JLIVUeraAw', 'hbIUTTTdmD', '5CF5Edb0PS', '6', '2', '0000', '1617875332', '0');
INSERT INTO `orga_index` VALUES ('57', 'JGZB00057', '9PBJUpLv', '0', 'L', '406', '2709', 'DNOtyXSyuF', 'LGaE9JDWK3', 'hTOCL5agnT', '6', '5', '0000', '1617875332', '0');
INSERT INTO `orga_index` VALUES ('58', 'JGZB00058', 'rjiZZnBE', '0', 'L', '661', '3664', 'Fvwij6T47Y', 'siFpqcFNFI', '76b1ciyoym', '5', '2', '0000', '1617875332', '0');
INSERT INTO `orga_index` VALUES ('59', 'JGZB00059', '8zx5jIr7', '0', 'L', '373', '3671', 'ZXvBurvjXA', 'NzUOJXuSuE', 'CFlfQ68AaX', '6', '3', '0000', '1617875332', '0');
INSERT INTO `orga_index` VALUES ('60', 'JGZB00060', 'wlGljNqC', '0', 'L', '506', '909', 'nq6U02kf0A', '5nuAthwcWE', 'FinIwMKgta', '6', '2', '0000', '1617875332', '0');
INSERT INTO `orga_index` VALUES ('61', 'JGZB00061', '1eRJmK76', '0', 'L', '589', '3771', '1k5CPTLNt2', 'qxqmAROFyj', 'pFhJQ4XODR', '5', '1', '0000', '1617875333', '0');
INSERT INTO `orga_index` VALUES ('62', 'JGZB00062', '9ntg4YI0', '0', 'L', '488', '1614', 'a7wt8w7zcl', 'LOxCvZJboa', 'kR1oqEQYLY', '5', '4', '0000', '1617875333', '0');
INSERT INTO `orga_index` VALUES ('63', 'JGZB00063', 'O4TN9eaV', '0', 'L', '625', '3555', 'n1PNzsysGN', 'k2jbU8dagy', 'fC4kssLH4Z', '3', '3', '0000', '1617875333', '0');
INSERT INTO `orga_index` VALUES ('64', 'JGZB00064', 'Xvc9ECMt', '0', 'L', '223', '3403', '0wKaGbS9wj', 'cAbneE1mMK', 'mOIi2bXGsw', '1', '1', '0000', '1617875333', '0');
INSERT INTO `orga_index` VALUES ('65', 'JGZB00065', '8aPdvPU5', '0', 'L', '173', '3561', 'K8XOOI727N', 'WiDoC1sCWa', 'pgawHjn099', '1', '3', '0000', '1617875333', '0');
INSERT INTO `orga_index` VALUES ('66', 'JGZB00066', 'ud8z3hXc', '0', 'L', '363', '2203', 'y5F4Ua8Oc3', 'gLmnf6r1Ny', '4rqNpMZTrv', '5', '1', '0000', '1617875333', '0');
INSERT INTO `orga_index` VALUES ('67', 'JGZB00067', 'SPyVb16v', '0', 'L', '271', '1669', 'ubUBMeqYjP', 'zp4XaSJF9q', 'jS9jotkCrN', '4', '2', '0000', '1617875333', '0');
INSERT INTO `orga_index` VALUES ('68', 'JGZB00068', 'eVZmcYHY', '0', 'L', '495', '1829', 'FpmfNEWuuA', 'IahWM1ITQV', 'FrpAAWp1dV', '4', '5', '0000', '1617875333', '0');
INSERT INTO `orga_index` VALUES ('69', 'JGZB00069', '788GUiAe', '0', 'L', '700', '1417', '4linQjHMUI', 'rRjIrVbp0y', '35trRU0d32', '2', '4', '0000', '1617875333', '0');
INSERT INTO `orga_index` VALUES ('70', 'JGZB00070', 'GiOXJT7g', '0', 'L', '752', '1728', 'fzyvXZihVF', 'X3HNFkaecz', 'bBGXTU2nkz', '3', '1', '0000', '1617875333', '0');
INSERT INTO `orga_index` VALUES ('71', 'JGZB00071', '0PCQRbH3', '0', 'L', '158', '2313', '5gpVVrOkO3', 'vSA3Gl7azk', 'QR8UjwxkCE', '1', '4', '0000', '1617875333', '0');
INSERT INTO `orga_index` VALUES ('72', 'JGZB00072', '6gH2r9Td', '0', 'L', '309', '1106', 'rbhR5bJ161', '09HT0LZfKu', 'JROOkIFEKH', '5', '1', '0000', '1617875333', '0');
INSERT INTO `orga_index` VALUES ('73', 'JGZB00073', '3kudYvml', '0', 'L', '324', '1091', 'WDGlbC2Lup', 'bNesQpcbeF', 'j8fVzOvrFU', '2', '2', '0000', '1617875333', '0');
INSERT INTO `orga_index` VALUES ('74', 'JGZB00074', 'g1iRQbrO', '0', 'L', '623', '3072', 'oX1Fcr56y5', 'mxUtLWgn8X', 'qWXsHsIyR8', '3', '1', '0000', '1617875333', '0');
INSERT INTO `orga_index` VALUES ('75', 'JGZB00075', 'XKeuV5Zy', '0', 'L', '668', '1646', 'Gh3QN6h3cW', 'CDjJ8KrsPv', 'dEYIpAUlLt', '5', '5', '0000', '1617875333', '0');
INSERT INTO `orga_index` VALUES ('76', 'JGZB00076', 'p3aAQfio', '0', 'L', '419', '3676', 'NyPbk1Hiie', 'oSQpsnpfHx', 'N2tr9dzxZH', '2', '2', '0000', '1617875333', '0');
INSERT INTO `orga_index` VALUES ('77', 'JGZB00077', '31JTEGxz', '0', 'L', '676', '1197', 'W3ciONafsy', 'djfDESuyaX', 'FhQv151X0y', '1', '4', '0000', '1617875333', '0');
INSERT INTO `orga_index` VALUES ('78', 'JGZB00078', '1Raheu5j', '0', 'L', '83', '2321', 'Zi6PTS0311', 'AcTLg60zow', 'BSfe1onv0g', '1', '5', '0000', '1617875333', '0');
INSERT INTO `orga_index` VALUES ('79', 'JGZB00079', 'JMeI6kzu', '0', 'L', '86', '3009', 'HdG3DcC83d', 'FoHu2C1Veh', 'GH8Q6zKwAJ', '4', '3', '0000', '1617875333', '0');
INSERT INTO `orga_index` VALUES ('80', 'JGZB00080', 'ZcnXXKil', '0', 'L', '291', '1640', 'rL6BQC5thG', 'ndnw698rOB', '1NPNtjYo2U', '1', '2', '0000', '1617875333', '0');
INSERT INTO `orga_index` VALUES ('81', 'JGZB00081', '9NDJugqH', '0', 'L', '608', '1712', 'thNg1BjspO', 'E9Y5ZLmd85', 'mracuiVweJ', '4', '5', '0000', '1617875334', '0');
INSERT INTO `orga_index` VALUES ('82', 'JGZB00082', 'pMQ4qtpX', '0', 'L', '115', '2462', 's1sjX2qtLL', 'wGGYK1Ihg7', 'X379U8hJij', '4', '4', '0000', '1617875334', '0');
INSERT INTO `orga_index` VALUES ('83', 'JGZB00083', 'eKBhkRkD', '0', 'L', '178', '3814', 'xAr9DAjGOj', 'kMp3yUvDxu', '9LVQ9kLqmg', '3', '1', '0000', '1617875334', '0');
INSERT INTO `orga_index` VALUES ('84', 'JGZB00084', '4brPZJur', '0', 'L', '21', '3220', 'FZv4JSTU9W', 'onjD9WnrKa', 'aCoQJDeWxG', '5', '5', '0000', '1617875334', '0');
INSERT INTO `orga_index` VALUES ('85', 'JGZB00085', 'S969DkWo', '0', 'L', '417', '3630', 'QViq1wdEXB', 'FvG6ufVFno', 'bqe40ClPEk', '5', '1', '0000', '1617875334', '0');
INSERT INTO `orga_index` VALUES ('86', 'JGZB00086', 'DGS4QtbO', '0', 'L', '578', '2261', '5fHAwWK3eQ', 'BpHuzThzsD', '7mMbniTNFL', '3', '1', '0000', '1617875334', '0');
INSERT INTO `orga_index` VALUES ('87', 'JGZB00087', 'nK8Bmyjx', '0', 'L', '256', '3628', 'e5wUhCAwFi', 'viQGsbekZG', 'gcUraUFmfD', '5', '1', '0000', '1617875334', '0');
INSERT INTO `orga_index` VALUES ('88', 'JGZB00088', 'xbU8SQ7T', '0', 'L', '195', '2145', 'OZatCL5V60', '2C6lZSiuTm', 'v64GTBRStA', '6', '5', '0000', '1617875334', '0');
INSERT INTO `orga_index` VALUES ('89', 'JGZB00089', 'GwHR50Qv', '0', 'L', '317', '1193', 'RL93SxSQke', '5JyiFTgMqw', 'WasA62mAkX', '5', '3', '0000', '1617875334', '0');
INSERT INTO `orga_index` VALUES ('90', 'JGZB00090', 'SBHY3Rme', '0', 'L', '551', '3719', 'n2FFm1oag3', 'vQuXmSXROy', 'zAceR4PIrR', '6', '1', '0000', '1617875334', '0');
INSERT INTO `orga_index` VALUES ('91', 'JGZB00091', 'hExhXkKK', '0', 'L', '609', '3131', 'TQuOEedGhO', 'ObIOG414Nw', 'YN0An4XKiS', '6', '1', '0000', '1617875334', '0');
INSERT INTO `orga_index` VALUES ('92', 'JGZB00092', '0Rh8p5mM', '0', 'L', '383', '3254', 'RBNuz60Q34', 'UqBspTzUe4', 'Xzg12a8R5x', '6', '1', '0000', '1617875334', '0');
INSERT INTO `orga_index` VALUES ('93', 'JGZB00093', 'JcDfVyD5', '0', 'L', '646', '1751', 'qb1rtB3FlD', '0WURnYMb09', '9ucahmUTfJ', '3', '2', '0000', '1617875334', '0');
INSERT INTO `orga_index` VALUES ('94', 'JGZB00094', 'Lz7ugMsl', '0', 'L', '760', '1498', 'CnjaA1W8Wn', '1UEYSELdA4', 'FLYlGb7oqp', '4', '1', '0000', '1617875334', '0');
INSERT INTO `orga_index` VALUES ('95', 'JGZB00095', 'FpkYximh', '0', 'L', '718', '2725', '4BpdF0HrNB', 'sXAxlAHM1y', 'kw07wbTHNb', '4', '4', '0000', '1617875334', '0');
INSERT INTO `orga_index` VALUES ('96', 'JGZB00096', 'iSMRZdUT', '0', 'L', '258', '3154', 'BS0vtyNpLB', 'AST8xSMl0m', 'rIQFJeivmb', '6', '4', '0000', '1617875334', '0');
INSERT INTO `orga_index` VALUES ('97', 'JGZB00097', 'OXJj72FN', '0', 'L', '438', '2008', 'f65mEooV7y', 'uLDozwyh98', 'z6sQfaa9u8', '6', '2', '0000', '1617875334', '0');
INSERT INTO `orga_index` VALUES ('98', 'JGZB00098', 'qL85V5sW', '0', 'L', '318', '3554', 'JgNjOjnpmx', 'WTVDUIVUD1', 'R5aHeQ6Cg2', '1', '4', '0000', '1617875334', '0');
INSERT INTO `orga_index` VALUES ('99', 'JGZB00099', 'VQqfessK', '0', 'L', '56', '1513', 'WjxET7INSK', 'f8XeD8tGrH', 'UpJpUtZVOz', '3', '5', '0000', '1617875334', '0');
INSERT INTO `orga_index` VALUES ('100', 'JGZB00100', 'uGh55sTj', '0', 'L', '729', '3336', 'HSQ365N4G9', '8M0zSdjEkV', 'NRvmF2jwXQ', '3', '3', '0000', '1617875334', '0');
