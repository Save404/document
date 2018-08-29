/*
Navicat MySQL Data Transfer

Source Server         : LLT
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : agriculture

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-08-26 21:58:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gov_department
-- ----------------------------
DROP TABLE IF EXISTS `gov_department`;
CREATE TABLE `gov_department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_code` char(6) DEFAULT NULL COMMENT '政府部门管理地区的编码(管理部门分为国省市县，国家编码为000000，省市县编码和数据表一致)',
  `department_name` varchar(256) DEFAULT NULL COMMENT '政府部门名称',
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of gov_department
-- ----------------------------
INSERT INTO `gov_department` VALUES ('1', '000000', '中国农业部');
