/*
Navicat MySQL Data Transfer

Source Server         : LLT
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : agriculture

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-08-26 21:58:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` varchar(36) NOT NULL,
  `notice_title` varchar(256) NOT NULL,
  `notice_content` text NOT NULL,
  `department_id` int(11) NOT NULL,
  `notice_level` tinyint(4) DEFAULT '3' COMMENT '重要程度(1-5)',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `read_num` int(11) DEFAULT '0' COMMENT '阅读次数',
  PRIMARY KEY (`notice_id`),
  KEY `notice_fk_01` (`department_id`),
  CONSTRAINT `notice_fk_01` FOREIGN KEY (`department_id`) REFERENCES `gov_department` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
