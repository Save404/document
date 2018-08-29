/*
Navicat MySQL Data Transfer

Source Server         : LLT
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : agriculture

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-08-26 21:58:23
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
  `gov_department_id` int(11) NOT NULL COMMENT '政府单位名称',
  `gov_salt` varchar(64) NOT NULL,
  `gov_register_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `gov_last_login_date` datetime DEFAULT NULL,
  `gov_login_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`gov_id`),
  UNIQUE KEY `gov_key_1` (`gov_account`) USING HASH,
  KEY `gov_fk_01` (`gov_department_id`),
  CONSTRAINT `gov_fk_01` FOREIGN KEY (`gov_department_id`) REFERENCES `gov_department` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of gov
-- ----------------------------
INSERT INTO `gov` VALUES ('1', 'admin', 'admin', 'admin', '1', '1', '2018-08-26 20:45:29', null, null);
