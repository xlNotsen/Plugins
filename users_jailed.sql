/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MariaDB
 Source Server Version : 100607
 Source Host           : localhost:3306
 Source Schema         : nitromarketplace

 Target Server Type    : MariaDB
 Target Server Version : 100607
 File Encoding         : 65001

 Date: 02/05/2022 08:37:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users_jailed
-- ----------------------------
DROP TABLE IF EXISTS `users_jailed`;
CREATE TABLE `users_jailed`  (
  `user_id` int(11) NOT NULL,
  `jailed_until` int(11) NULL DEFAULT 0,
  `bail_cost` int(11) NULL DEFAULT 0,
  `jailed_by` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
