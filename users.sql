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

 Date: 03/07/2018 01:23:07 AM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `edad` varchar(255) DEFAULT NULL,
  `idPais` int(11) DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `users`
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('0', 'Winston', 'Bravo', 'wbravo@tga.cl', '26', null, '2018-03-07'), ('1', 'Juan', 'Perez', 'jperez@gmail.com', '22', '1', '2018-03-06'), ('2', 'Felipe', 'Carcamo', 'fcarcamo@gmail.com', '40', '2', '2017-11-08'), ('3', 'Adrian', 'Fica', 'afica@hotmail.com', '49', '3', '2017-11-09'), ('4', 'Francisco', 'Fernandez', 'ffernandez@hotmail.com', '32', '2', '2018-03-20'), ('5', 'Carlos', 'Pinto', 'cpin@gmail.com', '26', '3', '2018-03-01'), ('6', 'Hugo', 'Gonzalez', 'hugo92@gmail.com', '35', '1', '2018-03-05'), ('7', 'Karina', 'Diaz', 'dias123@gmail.com', '56', '1', '2018-03-27'), ('8', 'Ricardo', 'Soto', 'elarto@gmail.com', '34', '2', '2018-03-07'), ('9', 'Julio', 'Rojas', 'rojasjul@tga.cl', '28', '3', '2018-03-06'), ('10', 'Pedro', 'Zapata', 'pzag@gmail.com', '30', '3', '2018-03-12');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
