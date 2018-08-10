/*
Navicat MySQL Data Transfer

Source Server         : LLT
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : agriculture

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-08-10 15:09:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gov_pmsn
-- ----------------------------
DROP TABLE IF EXISTS `gov_pmsn`;
CREATE TABLE `gov_pmsn` (
  `gov_id` varchar(36) NOT NULL,
  `pmsn_id` int(11) NOT NULL,
  PRIMARY KEY (`gov_id`,`pmsn_id`),
  KEY `gov_pmsn_fk_2` (`pmsn_id`),
  CONSTRAINT `gov_pmsn_fk_1` FOREIGN KEY (`gov_id`) REFERENCES `gov` (`gov_id`),
  CONSTRAINT `gov_pmsn_fk_2` FOREIGN KEY (`pmsn_id`) REFERENCES `permission` (`pmsn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
