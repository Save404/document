/*
Navicat MySQL Data Transfer

Source Server         : LLT
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : agriculture

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-08-10 15:10:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gov
-- ----------------------------
DROP TABLE IF EXISTS `gov`;
CREATE TABLE `gov` (
  `gov_id` varchar(36) NOT NULL,
  `gov_account` char(12) NOT NULL COMMENT '登录账号（6位地区编码+6位数字）',
  `gov_password` varchar(255) NOT NULL COMMENT 'MD5(MD5(pass明文 + 固定salt) + salt)',
  `gov_name` varchar(32) NOT NULL COMMENT '真实姓名',
  `gov_department` varchar(32) NOT NULL COMMENT '政府单位名称',
  `gov_area_code` char(6) NOT NULL COMMENT '管理地区的编码(地区从大到小分为国，省，市，县。省市县的编码直接参考数据库，国的编码为000000)',
  `gov_salt` varchar(64) NOT NULL,
  `gov_register_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `gov_last_login_date` datetime DEFAULT NULL,
  `gov_login_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`gov_id`),
  UNIQUE KEY `gov_key_1` (`gov_account`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
