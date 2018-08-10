/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : agriculture

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-08-08 14:18:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for contract
-- ----------------------------
DROP TABLE IF EXISTS `contract`;
CREATE TABLE `contract` (
  `contract_id` varchar(24) CHARACTER SET utf8mb4 NOT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `nh_basic_id` varchar(32) CHARACTER SET utf8mb4 NOT NULL,
  `mj_basic_id` varchar(32) CHARACTER SET utf8mb4 NOT NULL,
  `ncp_basic_id` varchar(32) CHARACTER SET utf8mb4 NOT NULL,
  `purchaser_name` varchar(16) CHARACTER SET utf8mb4 NOT NULL COMMENT '求购方姓名',
  `sales_name` varchar(16) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '销售方姓名',
  `alipay_account` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL,
  `purchase_quantity` decimal(8,2) NOT NULL COMMENT '购买数量',
  `purchase_unit` varchar(4) CHARACTER SET utf8mb4 NOT NULL COMMENT '单位',
  `purchase_price` decimal(10,2) DEFAULT NULL COMMENT '总价',
  `sales_liquidated_damages` decimal(8,2) NOT NULL COMMENT '销售方违约金',
  `purchases_liquidated_damages` decimal(8,2) DEFAULT NULL COMMENT '购买方违约金',
  `statu` tinyint(2) DEFAULT '0' COMMENT '合同状态(0:初始化 1:同意销售 2.取消订单 3:等待收货 4:订单完成)',
  `receiving_address` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '收货地址',
  `pre_payment` decimal(8,2) DEFAULT NULL COMMENT '预支付',
  `pay_statu` tinyint(2) DEFAULT '0' COMMENT '支付状态(0:待支付 1:已支付)',
  `title` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `mj_telephone` varchar(13) CHARACTER SET utf8mb4 DEFAULT NULL,
  `nh_telephone` varchar(13) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`contract_id`),
  KEY `nh_basic_id` (`nh_basic_id`),
  KEY `mj_basic_id` (`mj_basic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
