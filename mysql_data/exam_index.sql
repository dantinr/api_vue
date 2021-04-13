/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : vueapi

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 10/04/2021 16:55:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for exam_index
-- ----------------------------
DROP TABLE IF EXISTS `exam_index`;
CREATE TABLE `exam_index`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `exam_id` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '套餐id',
  `exam_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '标准指示名称',
  `exam_unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '指标单位',
  `exam_cap` int(255) DEFAULT NULL COMMENT '参考上限',
  `exam_floor` int(255) DEFAULT NULL COMMENT '参考下限',
  `exam_normal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '正常提示',
  `exam_piangao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '偏高提示',
  `exam_flat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '偏低提示',
  `exam_whether` tinyint(255) DEFAULT 0 COMMENT '0否 1是',
  `exam_delete` tinyint(255) DEFAULT 0 COMMENT '0 显示  1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_index
-- ----------------------------
INSERT INTO `exam_index` VALUES (3, 'BZZBmjF1hb', 'yOkjedKq', 'L', 1350, 950, '正常', '偏高', '偏低', 0, 1);
INSERT INTO `exam_index` VALUES (4, 'BZZBrBu2or', 'yOkjedKq', 'L', 1355, 955, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (5, 'BZZBHMO4fE', '6ngGHxaB', 'L', 1309, 909, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (6, 'BZZBNpeUC7', 'tINw9hLw', 'L', 1259, 859, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (7, 'BZZBB0LxM0', 'f1F8Fv0x', 'L', 1208, 808, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (8, 'BZZBLZNSBp', 'HXQ56f37', 'L', 1332, 932, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (9, 'BZZBEBECl4', '49zcaihn', 'L', 1290, 890, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (10, 'BZZBUgMSDw', '0EPohbNj', 'L', 1357, 957, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (11, 'BZZBqQC2gP', 'c1C0Kyq2', 'L', 1262, 862, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (12, 'BZZBlsfa3r', 'TXnnuwRL', 'L', 1259, 859, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (13, 'BZZBpnXWfM', 'nCsJHoT8', 'L', 1395, 995, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (14, 'BZZBf0ISTu', 'HTPepm99', 'L', 1312, 912, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (15, 'BZZB12pAW9', 'PhcYS9RU', 'L', 1297, 897, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (16, 'BZZBABSp0U', 'nabKcJvS', 'L', 1271, 871, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (17, 'BZZBfFz8bn', 'Z8942ZcQ', 'L', 1287, 887, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (18, 'BZZBrnnqJQ', 'djX6TTZE', 'L', 1332, 932, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (19, 'BZZBqgp3o6', 'i7wDyJVR', 'L', 1384, 984, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (20, 'BZZB6ikTta', 'NZNVTQYF', 'L', 1343, 943, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (21, 'BZZBYdai3O', 'z7eclwxK', 'L', 1289, 889, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (22, 'BZZB39XD3M', 'OkQSjG8h', 'L', 1363, 963, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (23, 'BZZBvlj0en', 'RJ66UHGW', 'L', 1242, 842, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (24, 'BZZB2jP56G', 'loa3VEGx', 'L', 1219, 819, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (25, 'BZZBgCIZ32', 'ATUWwPe3', 'L', 1260, 860, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (26, 'BZZBxORRZH', 'TOz02TM9', 'L', 1285, 885, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (27, 'BZZBXBLb9y', 'iDeR63NB', 'L', 1248, 848, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (28, 'BZZBa8uKTu', 'cWC3kvEr', 'L', 1231, 831, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (29, 'BZZByEPSjh', '2xpGNuNE', 'L', 1388, 988, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (30, 'BZZBvgoFRh', '38zUbdBr', 'L', 1231, 831, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (31, 'BZZBqV7f6A', 'iCV2IsHt', 'L', 1229, 829, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (32, 'BZZBjHkWkn', '3Mn6TgHi', 'L', 1225, 825, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (33, 'BZZB0Oeb7h', 'lparBbaP', 'L', 1279, 879, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (34, 'BZZBHwXokb', 'vmvG8psg', 'L', 1223, 823, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (35, 'BZZBZtmnRw', 'ZJB1Ttlm', 'L', 1289, 889, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (36, 'BZZBPnvako', 'sD9rmXA6', 'L', 1374, 974, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (37, 'BZZBw2gMKU', 'sardSELR', 'L', 1251, 851, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (38, 'BZZBPZ0G8z', 'rJumwW3U', 'L', 1394, 994, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (39, 'BZZBrKD8f9', 'ZYkJziud', 'L', 1377, 977, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (40, 'BZZBg55TCE', 'jPGQp0yB', 'L', 1282, 882, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (41, 'BZZBJBl8Rs', 'iYBmsusf', 'L', 1324, 924, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (42, 'BZZBPuq9Qm', 'ZDYJF0A3', 'L', 1379, 979, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (43, 'BZZBeVBUGW', 'vSqk2yaP', 'L', 1382, 982, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (44, 'BZZBXG3Bvp', '9ljfPbVe', 'L', 1350, 950, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (45, 'BZZBCH3813', 'NMEap4Oi', 'L', 1225, 825, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (46, 'BZZBX2O6mA', '3Mhq0uSk', 'L', 1308, 908, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (47, 'BZZBzcvpEw', '4F15vdh6', 'L', 1390, 990, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (48, 'BZZB4DNHbH', 'ahLAnK8V', 'L', 1305, 905, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (49, 'BZZBht8pD4', 'iHc9rZM4', 'L', 1348, 948, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (50, 'BZZBt3zbsS', 'zbnpYHQA', 'L', 1235, 835, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (51, 'BZZBQUjoTK', 'MRfHARci', 'L', 1218, 818, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (52, 'BZZBdUKgWI', '2YaddxiH', 'L', 1335, 935, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (53, 'BZZBIw0GFE', 'KM7HcDnM', 'L', 1305, 905, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (54, 'BZZBSye2N3', 'iv9FWpHb', 'L', 1261, 861, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (55, 'BZZBhtX4mF', 'IzwbnW8A', 'L', 1240, 840, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (56, 'BZZBiKMdD9', '5dkjPA2R', 'L', 1350, 950, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (57, 'BZZBup7hyf', '5C0K2S6t', 'L', 1358, 958, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (58, 'BZZBgwx272', 'qKzWPiYe', 'L', 1361, 961, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (59, 'BZZBM0lRl6', 'zuHRIDWO', 'L', 1354, 954, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (60, 'BZZByLqhD9', 'tpMQiqDE', 'L', 1326, 926, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (61, 'BZZBrq6wBG', 'vEdw9ZAK', 'L', 1295, 895, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (62, 'BZZBwiJCCM', 'OsNZDWRV', 'L', 1333, 933, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (63, 'BZZBFN7zv9', '1Cqt9Cqd', 'L', 1231, 831, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (64, 'BZZB9BYLFS', '6ssTEK9g', 'L', 1354, 954, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (65, 'BZZBTTaT7r', '2kYXzaD5', 'L', 1388, 988, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (66, 'BZZB4wOls3', 'Ovom5HxI', 'L', 1300, 900, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (67, 'BZZBe3F0kj', 'YkiqoaZK', 'L', 1205, 805, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (68, 'BZZBx0URpk', 'rS24SXiu', 'L', 1395, 995, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (69, 'BZZBAUsTFD', 'XQ5uDlDf', 'L', 1253, 853, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (70, 'BZZBd4OZRd', '5kH8Uc75', 'L', 1219, 819, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (71, 'BZZBxeVqRw', 'lUm8ZLso', 'L', 1393, 993, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (72, 'BZZBsTIBk5', 'in0DMej1', 'L', 1337, 937, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (73, 'BZZBjgFxhO', '2VETRgtJ', 'L', 1387, 987, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (74, 'BZZBWYn3pO', 'ts6sCalT', 'L', 1366, 966, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (75, 'BZZB1N3ncO', 'DDcwFJsZ', 'L', 1225, 825, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (76, 'BZZBYc8RpK', '4v7YlEqp', 'L', 1279, 879, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (77, 'BZZBiHtcWf', 'CWEYeuoP', 'L', 1396, 996, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (78, 'BZZBTC1bR8', 'BE2yLhn0', 'L', 1393, 993, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (79, 'BZZBlTNeVK', 'SQqyhneS', 'L', 1396, 996, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (80, 'BZZBYrDZTn', 'mntWZ7nx', 'L', 1400, 1000, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (81, 'BZZBcktrXI', 'kr1tCpyk', 'L', 1395, 995, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (82, 'BZZBYOOvuB', 'CoXLiWy1', 'L', 1282, 882, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (83, 'BZZBNLddlN', 'LZ0GJSTt', 'L', 1278, 878, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (84, 'BZZBok77t3', '89FFSWWL', 'L', 1237, 837, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (85, 'BZZBq4AbvP', '4mkOUwJo', 'L', 1393, 993, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (86, 'BZZBsWxXyL', 'iimgqFnz', 'L', 1350, 950, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (87, 'BZZBXaBHG6', 'UveyOPvL', 'L', 1206, 806, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (88, 'BZZBnIwXeW', 'tKPQrthi', 'L', 1357, 957, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (89, 'BZZBGLNOLi', 'N8XBKin5', 'L', 1224, 824, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (90, 'BZZBYAqWm2', 'j0La8nDM', 'L', 1372, 972, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (91, 'BZZBlKOmJN', 'sok3TwYv', 'L', 1381, 981, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (92, 'BZZBpwNgfV', 'dAMNLsyK', 'L', 1317, 917, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (93, 'BZZBkZCHFs', 'oNvIQKPH', 'L', 1278, 878, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (94, 'BZZBpSQhxO', 'gIF14hXB', 'L', 1302, 902, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (95, 'BZZBKvAB5c', '5XSV8qzG', 'L', 1339, 939, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (96, 'BZZBKeraKX', 'M4pTV01M', 'L', 1273, 873, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (97, 'BZZBEH4pmh', 'l05e7FHK', 'L', 1390, 990, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (98, 'BZZB60FCt3', 'YgQ2hslt', 'L', 1230, 830, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (99, 'BZZBLsztqg', 'SPKNLXYG', 'L', 1276, 876, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (100, 'BZZBQL6m2k', '1gEQqtQa', 'L', 1348, 948, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (101, 'BZZBMpAbEL', '0t7X35y0', 'L', 1236, 836, '正常', '偏高', '偏低', 1, 0);
INSERT INTO `exam_index` VALUES (102, 'BZZB59Qvz4', 'mQI0SZov', 'L', 1366, 966, '正常', '偏高', '偏低', 1, 0);

SET FOREIGN_KEY_CHECKS = 1;
