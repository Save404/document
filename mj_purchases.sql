/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : agriculture

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-08-07 17:26:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mj_purchases
-- ----------------------------
DROP TABLE IF EXISTS `mj_purchases`;
CREATE TABLE `mj_purchases` (
  `mj_purchases_id` varchar(24) CHARACTER SET utf8mb4 NOT NULL,
  `mj_basic_id` varchar(32) CHARACTER SET utf8mb4 NOT NULL,
  `title` varchar(32) NOT NULL,
  `content` varchar(32) CHARACTER SET utf8mb4 NOT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `telephone` varchar(255) NOT NULL,
  `level` int(2) DEFAULT '0',
  `statu` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
