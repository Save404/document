/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : agriculture

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-08-01 18:05:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for nh_purchases
-- ----------------------------
DROP TABLE IF EXISTS `nh_purchases`;
CREATE TABLE `nh_purchases` (
  `nh_purchases_id` varchar(24) CHARACTER SET utf8mb4 NOT NULL,
  `nh_basic_id` varchar(32) CHARACTER SET utf8mb4 NOT NULL,
  `title` varchar(32) CHARACTER SET utf8mb4 NOT NULL COMMENT '标题',
  `content` varchar(32) CHARACTER SET utf8mb4 NOT NULL COMMENT '内容',
  `telephone` varchar(13) CHARACTER SET utf8mb4 NOT NULL COMMENT '联系电话',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '发布时间',
  `level` int(4) DEFAULT '0' COMMENT '重要级别',
  `statu` tinyint(4) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`nh_purchases_id`),
  KEY `nh_basic_id` (`nh_basic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
