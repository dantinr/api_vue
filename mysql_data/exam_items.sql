/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : vueapi

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 08/04/2021 16:20:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for exam_items
-- ----------------------------
DROP TABLE IF EXISTS `exam_items`;
CREATE TABLE `exam_items`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '项目名称',
  `item_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '项目id',
  `is_avaliable` tinyint(3) DEFAULT 0 COMMENT '是否启用 0未启用1启用',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '适用标签',
  `price` int(10) UNSIGNED DEFAULT NULL COMMENT '原价',
  `price_now` int(10) UNSIGNED DEFAULT NULL COMMENT '售价',
  `location` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '适用城市',
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '适用区',
  `organization` int(11) DEFAULT NULL COMMENT '适用机构',
  `embranchment` int(11) DEFAULT NULL COMMENT '分支机构',
  `scope` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '检查范围',
  `significance` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '检查意义',
  `attention` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '注意事项',
  `is_delete` tinyint(3) UNSIGNED DEFAULT 0 COMMENT '删除 0未删除1删除',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_items
-- ----------------------------
INSERT INTO `exam_items` VALUES (1, '老年人体检套餐尊贵版123', 'TJXMltnSRs', 0, '男性项目', 120000, 88000, '北京', NULL, 2, 1, 'aaaa', '教师', '撒大声地', 0, 1617271814);
INSERT INTO `exam_items` VALUES (2, '老年人体检套餐尊贵版（女）', 'TJXM7idy6l', 0, '男性项目', 180000, 88000, '北京', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (3, '老年人体检套餐尊贵版（女）', 'TJXMzm949h', 0, '男性项目', 120000, 88000, '上海,广州', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (4, '12131', 'TJXMjXuIo5', 1, 'adasad', 132, 12321, 'faddfgfdas', NULL, 12, 123, '1312312', '1231223', '123123', 0, 1617272059);
INSERT INTO `exam_items` VALUES (5, '老年人体检套餐尊贵版（女）', 'TJXM5HXQGS', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (6, '老年人体检套餐尊贵版（女）', 'TJXMHeTjLC', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (7, '老年人体检套餐尊贵版（女）', 'TJXM8rEuxe', 0, '男性项目', 120000, 88000, '北京', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (8, '老年人体检套餐尊贵版（女）', 'TJXMUnVm6o', 0, '男性项目', 120000, 88000, '北京', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (9, '老年人体检套餐尊贵版（女）', 'TJXMWErZsC', 0, '男性项目', 120000, 88000, '上海,广州', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (10, '老年人体检套餐尊贵版（女）', 'TJXMGbcqH3', 0, '男性项目', 120000, 88000, '上海,广州', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (11, '老年人体检套餐尊贵版（女）', 'TJXMHeP8wF', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (12, '老年人体检套餐尊贵版（女）', 'TJXMlFB1DQ', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (13, '老年人体检套餐尊贵版（女）', 'TJXM6W6sxJ', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (14, '老年人体检套餐尊贵版（女）', 'TJXMllqshe', 0, '男性项目', 120000, 88000, '上海,广州', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (15, '老年人体检套餐尊贵版（女）', 'TJXMhT0me4', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (16, '老年人体检套餐尊贵版（女）', 'TJXMwKUd5S', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (17, '老年人体检套餐尊贵版（女）', 'TJXMdE7dL8', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (18, '老年人体检套餐尊贵版（女）', 'TJXMqMwoTf', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (19, '老年人体检套餐尊贵版（女）', 'TJXMsYPmlM', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (20, '老年人体检套餐尊贵版（女）', 'TJXMtmi2VL', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (21, '老年人体检套餐尊贵版（女）', 'TJXMnyDQnr', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (22, '老年人体检套餐尊贵版（女）', 'TJXMQKSnOy', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (23, '老年人体检套餐尊贵版（女）', 'TJXM1Rw8Gj', 0, '男性项目', 120000, 88000, '上海,广州', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (24, '老年人体检套餐尊贵版（女）', 'TJXMv8gRWq', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (25, '老年人体检套餐尊贵版（女）', 'TJXMp8F24l', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (26, '老年人体检套餐尊贵版（女）', 'TJXMpgYc8D', 0, '男性项目', 120000, 88000, '上海,广州', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (27, '老年人体检套餐尊贵版（女）', 'TJXMucU3Qi', 0, '男性项目', 120000, 88000, '上海,广州', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (28, '老年人体检套餐尊贵版（女）', 'TJXMKnY8ov', 0, '男性项目', 120000, 88000, '上海,广州', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (29, '老年人体检套餐尊贵版（女）', 'TJXM9P1yTz', 0, '男性项目', 120000, 88000, '上海,广州', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (30, '老年人体检套餐尊贵版（女）', 'TJXMc9pQOA', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (31, '老年人体检套餐尊贵版（女）', 'TJXMc8Lch6', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (32, '老年人体检套餐尊贵版（女）', 'TJXMQaVWuJ', 0, '男性项目', 120000, 88000, '上海,广州', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (33, '老年人体检套餐尊贵版（女）', 'TJXMLIANjS', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (34, '老年人体检套餐尊贵版（女）', 'TJXMKthSEP', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (35, '老年人体检套餐尊贵版（女）', 'TJXMKc1x7X', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (36, '老年人体检套餐尊贵版（女）', 'TJXMSErul3', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (37, '老年人体检套餐尊贵版（女）', 'TJXMOcAq2L', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (38, '老年人体检套餐尊贵版（女）', 'TJXMNqVOLl', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (39, '老年人体检套餐尊贵版（女）', 'TJXMz5bWRC', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (40, '老年人体检套餐尊贵版（女）', 'TJXMwe9GVK', 0, '男性项目', 120000, 88000, '上海,广州', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (41, '老年人体检套餐尊贵版（女）', 'TJXMCNxfz9', 0, '男性项目', 120000, 88000, '上海,广州', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (42, '老年人体检套餐尊贵版（女）', 'TJXMocTS6f', 0, '男性项目', 120000, 88000, '北京', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (43, '老年人体检套餐尊贵版（女）', 'TJXMEzyuWr', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (44, '老年人体检套餐尊贵版（女）', 'TJXM7YzAIr', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (45, '老年人体检套餐尊贵版（女）', 'TJXMdOd6YK', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (46, '老年人体检套餐尊贵版（女）', 'TJXMjiPIcm', 0, '男性项目', 120000, 88000, '上海,广州', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (47, '老年人体检套餐尊贵版（女）', 'TJXMkx2TT8', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (48, '老年人体检套餐尊贵版（女）', 'TJXMyK9z1X', 0, '男性项目', 120000, 88000, '北京', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (49, '老年人体检套餐尊贵版（女）', 'TJXM8NBkwX', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (50, '老年人体检套餐尊贵版（女）', 'TJXMNkbhaQ', 0, '男性项目', 120000, 88000, '上海,广州', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (51, '老年人体检套餐尊贵版（女）', 'TJXMl2hCda', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (52, '老年人体检套餐尊贵版（女）', 'TJXMovPVBH', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (53, '老年人体检套餐尊贵版（女）', 'TJXMWdOsRC', 0, '男性项目', 120000, 88000, '北京', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (54, '老年人体检套餐尊贵版（女）', 'TJXMe75ThQ', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (55, '老年人体检套餐尊贵版（女）', 'TJXM8ejaQc', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (56, '老年人体检套餐尊贵版（女）', 'TJXMoB4XNK', 0, '男性项目', 120000, 88000, '深圳', NULL, 2, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (57, '老年人体检套餐尊贵版（女）', 'TJXMLTfUFI', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (58, '老年人体检套餐尊贵版（女）', 'TJXMagY8LT', 0, '男性项目', 120000, 88000, '北京', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (59, '老年人体检套餐尊贵版（女）', 'TJXMbIGFeF', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (60, '老年人体检套餐尊贵版（女）', 'TJXMBcvEI1', 0, '男性项目', 120000, 88000, '北京', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (61, '老年人体检套餐尊贵版（女）', 'TJXMEdbDNe', 0, '男性项目', 120000, 88000, '北京', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (62, '老年人体检套餐尊贵版（女）', 'TJXM8LBoL2', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (63, '老年人体检套餐尊贵版（女）', 'TJXMLt6IRS', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (64, '老年人体检套餐尊贵版（女）', 'TJXM4cHjsV', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (65, '老年人体检套餐尊贵版（女）', 'TJXMCQS8xt', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (66, '老年人体检套餐尊贵版（女）', 'TJXMYAGEHI', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (67, '老年人体检套餐尊贵版（女）', 'TJXMXvpjLT', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (68, '老年人体检套餐尊贵版（女）', 'TJXMdNtRxY', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (69, '老年人体检套餐尊贵版（女）', 'TJXMEa5wIN', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (70, '老年人体检套餐尊贵版（女）', 'TJXMNcrWrw', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (71, '老年人体检套餐尊贵版（女）', 'TJXMrKnpmm', 0, '男性项目', 120000, 88000, '上海,广州', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (72, '老年人体检套餐尊贵版（女）', 'TJXMHILnM8', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (73, '老年人体检套餐尊贵版（女）', 'TJXMvOliL2', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (74, '老年人体检套餐尊贵版（女）', 'TJXMdIiPOY', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (75, '老年人体检套餐尊贵版（女）', 'TJXMtSGFut', 0, '男性项目', 120000, 88000, '北京', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (76, '老年人体检套餐尊贵版（女）', 'TJXMXfubHO', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (77, '老年人体检套餐尊贵版（女）', 'TJXMqcAsyg', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (78, '老年人体检套餐尊贵版（女）', 'TJXMF7itXT', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (79, '老年人体检套餐尊贵版（女）', 'TJXMC9xbFJ', 0, '男性项目', 120000, 88000, '上海,广州', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (80, '老年人体检套餐尊贵版（女）', 'TJXMrJSNsL', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (81, '老年人体检套餐尊贵版（女）', 'TJXMisczv9', 0, '男性项目', 120000, 88000, '北京', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (82, '老年人体检套餐尊贵版（女）', 'TJXMcMwrJr', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (83, '老年人体检套餐尊贵版（女）', 'TJXMTgRXIW', 0, '男性项目', 120000, 88000, '上海,广州', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (84, '老年人体检套餐尊贵版（女）', 'TJXMlkhQqe', 0, '男性项目', 120000, 88000, '上海,广州', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (85, '老年人体检套餐尊贵版（女）', 'TJXMQY4R70', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (86, '老年人体检套餐尊贵版（女）', 'TJXMzcQ9XD', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (87, '老年人体检套餐尊贵版（女）', 'TJXMLtHoIv', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (88, '老年人体检套餐尊贵版（女）', 'TJXM61L3Ow', 0, '男性项目', 120000, 88000, '上海,广州', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (89, '老年人体检套餐尊贵版（女）', 'TJXMTMB0YL', 0, '男性项目', 120000, 88000, '北京', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (90, '老年人体检套餐尊贵版（女）', 'TJXMQ8XqZY', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (91, '老年人体检套餐尊贵版（女）', 'TJXM7heAzc', 0, '男性项目', 120000, 88000, '上海,广州', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (92, '老年人体检套餐尊贵版（女）', 'TJXMjMrtUf', 0, '男性项目', 120000, 88000, '上海,广州', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (93, '老年人体检套餐尊贵版（女）', 'TJXMECNSZf', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (94, '老年人体检套餐尊贵版（女）', 'TJXMUYXTmP', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (95, '老年人体检套餐尊贵版（女）', 'TJXMDSAuNN', 0, '男性项目', 120000, 88000, '深圳', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (96, '老年人体检套餐尊贵版（女）', 'TJXMoKnP2T', 0, '男性项目', 120000, 88000, '上海,广州', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (97, '老年人体检套餐尊贵版（女）', 'TJXMrpLYy0', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (98, '老年人体检套餐尊贵版（女）', 'TJXMyMN0IH', 0, '男性项目', 120000, 88000, '天津', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (99, '老年人体检套餐尊贵版（女）', 'TJXMmt2vHY', 0, '男性项目', 120000, 88000, '北京', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (100, '老年人体检套餐尊贵版（女）', 'TJXMFpAXbD', 0, '男性项目', 120000, 88000, '北京', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);
INSERT INTO `exam_items` VALUES (101, '老年人体检套餐尊贵版（女）', 'TJXM2OO5mT', 0, '男性项目', 120000, 88000, '北京', NULL, 1, 1, 'aaaa', '教师', '撒大声地', 0, 1617272059);

SET FOREIGN_KEY_CHECKS = 1;
