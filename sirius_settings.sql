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

 Date: 02/05/2022 08:34:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sirius_settings
-- ----------------------------
DROP TABLE IF EXISTS `sirius_settings`;
CREATE TABLE `sirius_settings`  (
  `key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `value` varchar(4096) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sirius_settings
-- ----------------------------
INSERT INTO `sirius_settings` VALUES ('sirius.bot.sync.ban', '1');
INSERT INTO `sirius_settings` VALUES ('sirius.bot.sync.username', '1');
INSERT INTO `sirius_settings` VALUES ('sirius.auth.channel.id', '0');
INSERT INTO `sirius_settings` VALUES ('sirius.current.guild.id', '0');
INSERT INTO `sirius_settings` VALUES ('sirius.authenticated.role.id', '0');
INSERT INTO `sirius_settings` VALUES ('sirius.counter.channel.id', '0');
INSERT INTO `sirius_settings` VALUES ('sirius.counter.channel.name', '%users% habbos online now!');
INSERT INTO `sirius_settings` VALUES ('sirius.counter.update.interval', '600');
INSERT INTO `sirius_settings` VALUES ('sirius.bot.log.channel.id', '0');
INSERT INTO `sirius_settings` VALUES ('sirius.event.log.channel.id', '0');
INSERT INTO `sirius_settings` VALUES ('sirius.base.habbo.avatar.image', 'https://127.0.0.1/%look%');
INSERT INTO `sirius_settings` VALUES ('sirius.bot.ltd.icon', 'https://127.0.0.1/swf/dcr/hof_furni/%icon&.png');

-- ----------------------------
-- Table structure for sirius_texts
-- ----------------------------
DROP TABLE IF EXISTS `sirius_texts`;
CREATE TABLE `sirius_texts`  (
  `key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `value` varchar(4096) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sirius_texts
-- ----------------------------
INSERT INTO `sirius_texts` VALUES ('sirius.bot.cmd_onlines.no_users', 'We haven\'t any player connected.');
INSERT INTO `sirius_texts` VALUES ('sirius.bot.cmd_onlines.sucess', 'Now we have \'%players%\' players connected.');
INSERT INTO `sirius_texts` VALUES ('sirius.bot.cmd_rooms.no_rooms', 'We haven\'t any room with users.');
INSERT INTO `sirius_texts` VALUES ('sirius.bot.cmd_userinfo.missing_member', 'You\'re forgetting user mention to do this command.');
INSERT INTO `sirius_texts` VALUES ('sirius.bot.generic.habbo.no_auth', 'I don\'t find this habbo, maybe they aren\'t auth.');
INSERT INTO `sirius_texts` VALUES ('sirius.bot.auth.sucess', 'Sucess! You\'re authenticated now.');
INSERT INTO `sirius_texts` VALUES ('sirius.keys.cmd_discord_auth', 'discord;login_discord');
INSERT INTO `sirius_texts` VALUES ('sirius.description.cmd_discord_auth', 'Authenticate your discord account.');
INSERT INTO `sirius_texts` VALUES ('sirius.cmd_discord_auth.account.exists', 'You already have an discord account authenticated');
INSERT INTO `sirius_texts` VALUES ('sirius.cmd_discord_auth.sucess', 'Sucess! Your authentication token is %token%, join in our discord and use it for verify your account.');

-- ----------------------------
-- Table structure for sirius_users
-- ----------------------------
DROP TABLE IF EXISTS `sirius_users`;
CREATE TABLE `sirius_users`  (
  `habbo_id` int(11) NOT NULL,
  `user_id` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`habbo_id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `Habbo` FOREIGN KEY (`habbo_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
