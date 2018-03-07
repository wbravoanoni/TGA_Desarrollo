/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100113
 Source Host           : localhost
 Source Database       : test

 Target Server Type    : MySQL
 Target Server Version : 100113
 File Encoding         : utf-8

 Date: 03/07/2018 01:23:18 AM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `paises`
-- ----------------------------
DROP TABLE IF EXISTS `paises`;
CREATE TABLE `paises` (
  `idPais` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombrePais` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idPais`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `paises`
-- ----------------------------
BEGIN;
INSERT INTO `paises` VALUES ('1', 'Chile'), ('2', 'Venezuela'), ('3', 'Colombia'), ('4', 'Argentina'), ('5', 'Canada');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
