/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : k-test-db

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 03/04/2022 12:46:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_user_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_info`;
CREATE TABLE `tb_user_info`  (
  `user_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `login_account` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登录账号',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登录密码',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户姓名',
  `dept_id` int NOT NULL COMMENT '部门编号',
  `data_status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '状态 0无效1有效',
  `create_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'SYSTEM' COMMENT '创建人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'SYSTEM' COMMENT '更新人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `record_version` int NOT NULL DEFAULT 0 COMMENT '版本号',
  `update_count` int NOT NULL DEFAULT 0 COMMENT '更新次数',
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `idx_data_status`(`data_status`) USING BTREE,
  INDEX `idx_dept_id`(`dept_id`) USING BTREE COMMENT '部门普通索引'
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表 ' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_user_info
-- ----------------------------
INSERT INTO `tb_user_info` VALUES (1, 'abc123', '730e37b354ac67d6d1c52ed2122fc1b71b3d20cd7817684bc3bd91c834e3f45f', '超级管理员xx', 0, '1', 'SYSTEM', '2021-09-12 17:07:49', 'SYSTEM', '2021-11-03 21:15:53', 0, 0);
INSERT INTO `tb_user_info` VALUES (7, '400B', '730e37b354ac67d6d1c52ed2122fc1b71b3d20cd7817684bc3bd91c834e3f45f', '客户角色xx', 4, '1', 'SYSTEM', '2021-09-30 21:40:24', 'SYSTEM', '2021-09-30 21:40:24', 0, 0);
INSERT INTO `tb_user_info` VALUES (8, '400C', '730e37b354ac67d6d1c52ed2122fc1b71b3d20cd7817684bc3bd91c834e3f45f', '客服部门总监xx', 1, '1', 'SYSTEM', '2021-09-30 21:40:24', 'SYSTEM', '2021-09-30 21:40:24', 0, 0);
INSERT INTO `tb_user_info` VALUES (12, 'admin01', '730e37b354ac67d6d1c52ed2122fc1b71b3d20cd7817684bc3bd91c834e3f45f', '销售部门总监xx', 3, '1', 'SYSTEM', '2021-11-20 20:44:04', 'SYSTEM', '2021-11-20 20:44:04', 0, 0);
INSERT INTO `tb_user_info` VALUES (15, 'aaa112', '730e37b354ac67d6d1c52ed2122fc1b71b3d20cd7817684bc3bd91c834e3f45f', '财务部门总监xx', 2, '1', 'SYSTEM', '2021-11-24 16:34:24', 'SYSTEM', '2021-12-13 13:51:05', 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
