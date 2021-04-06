/*
 Navicat MySQL Data Transfer

 Source Server         : 李建博
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 127.0.0.1:3306
 Source Schema         : vueapi

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 06/04/2021 16:31:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for exam_orga
-- ----------------------------
DROP TABLE IF EXISTS `exam_orga`;
CREATE TABLE `exam_orga`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `exam_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '机构id',
  `exam_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '机构名称',
  `exam_branch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '分支机构',
  `exam_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '所在城市',
  `exam_genre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '机构类型',
  `exam_tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '电话',
  `exam_start` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否启用',
  `exam_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '图片',
  `exam_property` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '机构属性',
  `exam_coord1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '坐标北纬',
  `exam_coord2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '坐标东经',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 108 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_orga
-- ----------------------------
INSERT INTO `exam_orga` VALUES (3, '284562', '284562', '深圳店', '深圳', '深圳体验机构', '284562', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (2, '2', '456456', '520分店', '邯郸市', '专业体检机构2', '12312312315', '0', NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (4, '806735', '806735', '深圳店', '北京', '天津体验机构', '806735', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (5, '434277', '434277', '天津店', '北京', '深圳体验机构', '434277', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (6, '615793', '615793', '北京店', '北京', '天津体验机构', '615793', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (7, '682211', '682211', '天津店', '北京', '天津体验机构', '682211', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (8, '290239', '290239', '北京店', '北京', '天津体验机构', '290239', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (9, '643956', '643956', '深圳店', '天津', '上海,广州体验机构', '643956', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (10, '820651', '820651', '上海,广州店', '天津', '天津体验机构', '820651', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (11, '564472', '564472', '北京店', '北京', '深圳体验机构', '564472', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (12, '843087', '843087', '北京店', '天津', '天津体验机构', '843087', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (13, '643582', '643582', '北京店', '天津', '上海,广州体验机构', '643582', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (14, '314339', '314339', '北京店', '深圳', '北京体验机构', '314339', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (15, '416177', '416177', '北京店', '深圳', '北京体验机构', '416177', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (16, '150354', '150354', '深圳店', '北京', '天津体验机构', '150354', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (17, '740520', '740520', '天津店', '天津', '天津体验机构', '740520', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (18, '734721', '734721', '天津店', '北京', '北京体验机构', '734721', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (19, '730776', '730776', '北京店', '上海,广州', '上海,广州体验机构', '730776', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (20, '805100', '805100', '深圳店', '上海,广州', '上海,广州体验机构', '805100', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (21, '750337', '750337', '深圳店', '上海,广州', '天津体验机构', '750337', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (22, '653295', '653295', '天津店', '北京', '深圳体验机构', '653295', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (23, '252979', '252979', '天津店', '天津', '上海,广州体验机构', '252979', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (24, '736065', '736065', '天津店', '上海,广州', '北京体验机构', '736065', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (25, '960569', '960569', '北京店', '深圳', '深圳体验机构', '960569', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (26, '401704', '401704', '上海,广州店', '天津', '天津体验机构', '401704', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (27, '652591', '652591', '天津店', '天津', '北京体验机构', '652591', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (28, '552076', '552076', '上海,广州店', '上海,广州', '天津体验机构', '552076', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (29, '386189', '386189', '上海,广州店', '北京', '天津体验机构', '386189', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (30, '409628', '409628', '深圳店', '北京', '北京体验机构', '409628', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (31, '235619', '235619', '深圳店', '深圳', '天津体验机构', '235619', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (32, '652786', '652786', '天津店', '北京', '上海,广州体验机构', '652786', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (33, '582148', '582148', '天津店', '深圳', '北京体验机构', '582148', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (34, '722216', '722216', '天津店', '上海,广州', '深圳体验机构', '722216', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (35, '500237', '500237', '上海,广州店', '北京', '天津体验机构', '500237', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (36, '960758', '960758', '天津店', '天津', '北京体验机构', '960758', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (37, '587907', '587907', '北京店', '上海,广州', '上海,广州体验机构', '587907', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (38, '838240', '838240', '北京店', '北京', '深圳体验机构', '838240', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (39, '942307', '942307', '上海,广州店', '深圳', '北京体验机构', '942307', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (40, '410528', '410528', '深圳店', '北京', '北京体验机构', '410528', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (41, '200337', '200337', '北京店', '深圳', '北京体验机构', '200337', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (42, '302839', '302839', '深圳店', '北京', '天津体验机构', '302839', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (43, '594188', '594188', '上海,广州店', '上海,广州', '深圳体验机构', '594188', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (44, '827428', '827428', '北京店', '深圳', '上海,广州体验机构', '827428', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (45, '361702', '361702', '天津店', '天津', '北京体验机构', '361702', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (46, '740460', '740460', '深圳店', '上海,广州', '天津体验机构', '740460', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (47, '816603', '816603', '天津店', '天津', '北京体验机构', '816603', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (48, '158731', '158731', '上海,广州店', '北京', '北京体验机构', '158731', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (49, '386296', '386296', '深圳店', '北京', '天津体验机构', '386296', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (50, '284314', '284314', '上海,广州店', '上海,广州', '上海,广州体验机构', '284314', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (51, '898925', '898925', '天津店', '深圳', '深圳体验机构', '898925', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (52, '196674', '196674', '上海,广州店', '北京', '深圳体验机构', '196674', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (53, '100354', '100354', '天津店', '深圳', '天津体验机构', '100354', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (54, '197045', '197045', '上海,广州店', '天津', '深圳体验机构', '197045', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (55, '361800', '361800', '深圳店', '天津', '天津体验机构', '361800', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (56, '193015', '193015', '深圳店', '北京', '深圳体验机构', '193015', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (57, '231288', '231288', '上海,广州店', '天津', '深圳体验机构', '231288', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (58, '629508', '629508', '上海,广州店', '上海,广州', '天津体验机构', '629508', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (59, '296011', '296011', '天津店', '北京', '天津体验机构', '296011', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (60, '578599', '578599', '上海,广州店', '北京', '北京体验机构', '578599', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (61, '388011', '388011', '北京店', '深圳', '北京体验机构', '388011', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (62, '376856', '376856', '北京店', '深圳', '上海,广州体验机构', '376856', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (63, '524387', '524387', '北京店', '上海,广州', '深圳体验机构', '524387', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (64, '723902', '723902', '深圳店', '深圳', '上海,广州体验机构', '723902', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (65, '294038', '294038', '上海,广州店', '上海,广州', '上海,广州体验机构', '294038', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (66, '779181', '779181', '上海,广州店', '天津', '北京体验机构', '779181', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (67, '911119', '911119', '深圳店', '深圳', '北京体验机构', '911119', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (68, '286855', '286855', '天津店', '深圳', '北京体验机构', '286855', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (69, '274093', '274093', '北京店', '天津', '上海,广州体验机构', '274093', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (70, '450896', '450896', '深圳店', '天津', '天津体验机构', '450896', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (71, '242236', '242236', '上海,广州店', '天津', '天津体验机构', '242236', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (72, '660591', '660591', '深圳店', '深圳', '深圳体验机构', '660591', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (73, '905224', '905224', '深圳店', '深圳', '深圳体验机构', '905224', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (74, '717174', '717174', '天津店', '深圳', '上海,广州体验机构', '717174', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (75, '353135', '353135', '天津店', '北京', '天津体验机构', '353135', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (76, '318029', '318029', '天津店', '深圳', '上海,广州体验机构', '318029', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (77, '173265', '173265', '深圳店', '天津', '北京体验机构', '173265', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (78, '251788', '251788', '天津店', '北京', '天津体验机构', '251788', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (79, '905381', '905381', '上海,广州店', '天津', '天津体验机构', '905381', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (80, '330523', '330523', '天津店', '深圳', '深圳体验机构', '330523', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (81, '516868', '516868', '天津店', '天津', '深圳体验机构', '516868', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (82, '407031', '407031', '北京店', '上海,广州', '深圳体验机构', '407031', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (83, '612513', '612513', '上海,广州店', '天津', '深圳体验机构', '612513', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (84, '686674', '686674', '上海,广州店', '上海,广州', '深圳体验机构', '686674', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (85, '858572', '858572', '天津店', '深圳', '上海,广州体验机构', '858572', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (86, '664755', '664755', '上海,广州店', '上海,广州', '深圳体验机构', '664755', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (87, '102749', '102749', '深圳店', '天津', '上海,广州体验机构', '102749', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (88, '984004', '984004', '深圳店', '深圳', '北京体验机构', '984004', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (89, '969281', '969281', '天津店', '上海,广州', '天津体验机构', '969281', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (90, '192628', '192628', '上海,广州店', '天津', '深圳体验机构', '192628', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (91, '705101', '705101', '北京店', '天津', '天津体验机构', '705101', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (92, '678790', '678790', '深圳店', '天津', '深圳体验机构', '678790', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (93, '719912', '719912', '天津店', '天津', '上海,广州体验机构', '719912', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (94, '471832', '471832', '深圳店', '深圳', '上海,广州体验机构', '471832', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (95, '270561', '270561', '上海,广州店', '北京', '天津体验机构', '270561', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (96, '853044', '853044', '深圳店', '深圳', '上海,广州体验机构', '853044', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (97, '800353', '800353', '深圳店', '上海,广州', '深圳体验机构', '800353', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (98, '488010', '488010', '上海,广州店', '天津', '北京体验机构', '488010', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (99, '790575', '790575', '深圳店', '北京', '上海,广州体验机构', '790575', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (100, '727819', '727819', '上海,广州店', '深圳', '深圳体验机构', '727819', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (101, '875570', '875570', '深圳店', '深圳', '北京体验机构', '875570', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (102, '341241', '341241', '北京店', '上海,广州', '上海,广州体验机构', '341241', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (103, 'TJ-TEqnpRfI', 'aaa', 'bbb', 'cccc', NULL, 'dddd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (104, 'K9cjzVAF', 'aaa', 'bbb', 'cccc', NULL, 'dddd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (105, 'TEHTYTlM', 'aaa', 'bbb', 'cccc', NULL, 'dddd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (106, '00002', '试试看', '520分店', '邯郸市', '专业体检机构2', '12312312315', '0', NULL, NULL, NULL, NULL);
INSERT INTO `exam_orga` VALUES (107, '00002', '试试看', '520分店', '邯郸市', '专业体检机构2', '12312312315', '0', 'https://img0.baidu.com/it/u=2151136234,3513236673&fm=26&fmt=auto&gp=0.jpg', '1', '15', '15');

SET FOREIGN_KEY_CHECKS = 1;
