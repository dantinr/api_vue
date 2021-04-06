/*
 Navicat Premium Data Transfer

 Source Server         : vue
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : vueapi

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 06/04/2021 16:27:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT '用户姓名',
  `user_sex` char(2) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT '1' COMMENT '用户性别 默认1男  ',
  `user_tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT '用户手机',
  `user_idcard` varchar(18) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT '用户身份证号',
  `book_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT '体检内容',
  `book_org` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT '体检机构',
  `book_time` int(11) DEFAULT NULL COMMENT '体检日期',
  `book_num` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT '订单号',
  `book_status` char(2) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT '0' COMMENT '体检状态 默认 0 待支付',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_info
-- ----------------------------
INSERT INTO `book_info` VALUES (1, '凌凌漆', '1', '13333333333', '423118199004031423', 'A套餐', '南医三院', 1617275795, '1023', '0');
INSERT INTO `book_info` VALUES (2, '小王', '女', '16666666666', '423118199004031423', 'A套餐', '1', 1617352904, '1111', '2');
INSERT INTO `book_info` VALUES (3, '1HezVF', '0', '13065598398', '767245790029077282', 'yzK8Og', '1', 1617275795, '9024', '2');
INSERT INTO `book_info` VALUES (4, 'F1xFJs', '0', '15394517414', '556772728970877784', 'hAVwyI', '1', 1617275795, '7676', '3');
INSERT INTO `book_info` VALUES (5, '7VeJnQ', '0', '13753418843', '989308106855949972', 'LBdNPE', '1', 1617275795, '4243', '4');
INSERT INTO `book_info` VALUES (6, 'QyxbU4', '1', '17642656154', '615737836061676049', '3xR5J0', '0', 1617275795, '3909', '5');
INSERT INTO `book_info` VALUES (7, 'yZPMQ7', '1', '19000344909', '879683196265448541', 'J7z1ap', '1', 1617275795, '5651', '6');
INSERT INTO `book_info` VALUES (8, 'NeCT0d', '0', '18417199907', '819348955558569648', 'Xe6mCM', '0', 1617275795, '7740', '1');
INSERT INTO `book_info` VALUES (9, 'f3nhoj', '1', '18970511359', '813210193777978558', 'B8ariv', '1', 1617275795, '7249', '2');
INSERT INTO `book_info` VALUES (10, 'PwMZ7M', '0', '19141318518', '279814014172174404', '3Vgzm7', '0', 1617275795, '9769', '0');
INSERT INTO `book_info` VALUES (11, 'VMJnZ3', '0', '14211636705', '100546303347452796', '8fwvyA', '1', 1617275795, '3192', '4');
INSERT INTO `book_info` VALUES (12, 'p5RBUT', '0', '14157548116', '842916626201741957', '8NrQWK', '1', 1617275795, '1251', '5');
INSERT INTO `book_info` VALUES (13, 'mTObQ1', '0', '13369324001', '162672129314894850', '0Ctsxm', '1', 1617275795, '6752', '6');
INSERT INTO `book_info` VALUES (14, 'i7DWfe', '0', '17097972349', '700513122651578805', 'bqsMhw', '1', 1617275795, '3558', '1');
INSERT INTO `book_info` VALUES (15, '2v6YDw', '1', '16099059523', '276732036145082882', 'oZeR7a', '0', 1617275795, '9485', '2');
INSERT INTO `book_info` VALUES (16, 'i985DM', '1', '18423690602', '698958215172194523', 'YVY9tZ', '0', 1617275795, '5082', '0');
INSERT INTO `book_info` VALUES (17, 'Tz45co', '0', '15782664961', '428069387194215280', 'ilFvfl', '1', 1617275795, '1961', '1');
INSERT INTO `book_info` VALUES (18, 'IDulQk', '0', '13895129706', '429332450531870900', 'BgXfjh', '0', 1617275795, '6955', '3');
INSERT INTO `book_info` VALUES (19, 'Y5HvXy', '0', '15642703039', '420598569866437172', 'SC9Zmh', '0', 1617275795, '5972', '5');
INSERT INTO `book_info` VALUES (20, 'kfMXrm', '0', '18132098217', '918689665503270587', 'kedQil', '1', 1617275795, '7758', '4');
INSERT INTO `book_info` VALUES (21, 'hB5Kwg', '1', '13371860009', '856634455522529200', 'sIgOGd', '0', 1617275795, '5230', '6');
INSERT INTO `book_info` VALUES (22, 'mCuMyO', '1', '18023020417', '247461033893301381', 'AqveaL', '1', 1617275795, '2591', '2');
INSERT INTO `book_info` VALUES (23, '4phinJ', '0', '18476684568', '863706057619863088', 'xnYlSc', '0', 1617275795, '1948', '1');
INSERT INTO `book_info` VALUES (24, 'JtohK6', '0', '13086353205', '974808161502072918', '0Iezh4', '1', 1617275795, '5992', '0');
INSERT INTO `book_info` VALUES (25, 'wKHkUO', '0', '19229748378', '753253935204598320', 'mi7QJr', '0', 1617275795, '1704', '0');
INSERT INTO `book_info` VALUES (26, 'W5Y6pN', '1', '18513128045', '893574514456460129', 'OaPe0B', '0', 1617275795, '1271', '0');
INSERT INTO `book_info` VALUES (27, 'tUdSXG', '0', '16106315219', '458793376406707260', 'DWRfrR', '1', 1617275795, '8976', '0');
INSERT INTO `book_info` VALUES (28, 'rmNsfJ', '1', '13101990832', '367112187372001590', 'WiYWLN', '1', 1617275795, '9426', '0');
INSERT INTO `book_info` VALUES (29, 'r9V37k', '1', '14650362587', '467281076220662679', 'v25C6m', '1', 1617275795, '8981', '0');
INSERT INTO `book_info` VALUES (30, 'VL8s5A', '0', '13341697279', '492513248180724322', 'QQaXtd', '0', 1617275795, '6201', '0');
INSERT INTO `book_info` VALUES (31, 'KB8Uyw', '0', '18003078191', '197827905611569004', 'nnKJjL', '1', 1617275795, '6771', '0');
INSERT INTO `book_info` VALUES (32, 'JzgX4f', '1', '14036057583', '184508078407764983', 'GzJvtX', '0', 1617275795, '1003', '0');

SET FOREIGN_KEY_CHECKS = 1;
