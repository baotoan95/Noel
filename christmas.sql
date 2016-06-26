/*
Navicat MySQL Data Transfer

Source Server         : MySQL56
Source Server Version : 50626
Source Host           : 127.0.0.1:3306
Source Database       : christmas

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-02-07 16:50:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for db
-- ----------------------------
DROP TABLE IF EXISTS `db`;
CREATE TABLE `db` (
  `id` varchar(25) NOT NULL,
  `fb_id` varchar(255) DEFAULT NULL,
  `content` text,
  `ms_link` text,
  `font_size` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db
-- ----------------------------
INSERT INTO `db` VALUES ('21IoEgMkhO3FB6e5U1kWS', '827140127432462', 'Nguyễn Quốc Trung', '', null);
INSERT INTO `db` VALUES ('@DLEaBGbm1@F5BBp@ao7o', '517638318396413', 'Ngô Bảo Toàn', '', null);
INSERT INTO `db` VALUES ('d8nIT5jMpTSjJRmG2K3SM', '', 'Ngô Bảo Toàn 423=87765', '', '10');
INSERT INTO `db` VALUES ('Hf9VQSNPgM7867U@Ui3Md', '492389564254622', 'Ngô Bảo Toàn', '', null);
INSERT INTO `db` VALUES ('OcaU@mCYmPFjbgMQFaa2p', '', 'Thằng cờ hó', '', null);
INSERT INTO `db` VALUES ('pagO2OpG1eAAL@IAgQOhm', '', 'Ngô Bảo Toàn 423=87765', '', '6');
INSERT INTO `db` VALUES ('Re4cgdU5lL0oe5@PL4JOQ', '517638318396413', 'Ngô Bảo Toàn ăn toàn đpẹ ', '', null);
