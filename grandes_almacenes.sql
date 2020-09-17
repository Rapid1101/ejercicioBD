/*
 Navicat Premium Data Transfer

 Source Server         : root_connection
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : grandes_almacenes

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 17/09/2020 12:28:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cajero
-- ----------------------------
DROP TABLE IF EXISTS `cajero`;
CREATE TABLE `cajero`  (
  `cajero` int(10) NOT NULL AUTO_INCREMENT,
  `nomApels` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`cajero`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cajero
-- ----------------------------
INSERT INTO `cajero` VALUES (1, 'Miguel Hidalgo');
INSERT INTO `cajero` VALUES (2, 'Ignacio Allende');
INSERT INTO `cajero` VALUES (3, 'Josefa Ortiz');
INSERT INTO `cajero` VALUES (4, 'Jose Maria Morelos');
INSERT INTO `cajero` VALUES (5, 'Vicente Guerrero');
INSERT INTO `cajero` VALUES (6, 'Miguel Perez');
INSERT INTO `cajero` VALUES (7, 'Agustin de Iturbide');
INSERT INTO `cajero` VALUES (8, 'Guadalupe Victoria');
INSERT INTO `cajero` VALUES (9, 'Juan Aldama');
INSERT INTO `cajero` VALUES (10, 'Pedro Perez');
INSERT INTO `cajero` VALUES (11, 'Juan Hernandez');

-- ----------------------------
-- Table structure for maquina_registradora
-- ----------------------------
DROP TABLE IF EXISTS `maquina_registradora`;
CREATE TABLE `maquina_registradora`  (
  `maquina` int(10) NOT NULL AUTO_INCREMENT,
  `piso` int(10) NOT NULL,
  PRIMARY KEY (`maquina`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of maquina_registradora
-- ----------------------------
INSERT INTO `maquina_registradora` VALUES (11475, 1);
INSERT INTO `maquina_registradora` VALUES (18766, 4);
INSERT INTO `maquina_registradora` VALUES (19523, 1);
INSERT INTO `maquina_registradora` VALUES (23622, 5);
INSERT INTO `maquina_registradora` VALUES (35152, 5);
INSERT INTO `maquina_registradora` VALUES (45514, 3);
INSERT INTO `maquina_registradora` VALUES (48023, 2);
INSERT INTO `maquina_registradora` VALUES (57126, 4);
INSERT INTO `maquina_registradora` VALUES (71836, 2);
INSERT INTO `maquina_registradora` VALUES (84429, 1);

-- ----------------------------
-- Table structure for producto
-- ----------------------------
DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto`  (
  `producto` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `precio` decimal(10, 4) NOT NULL,
  PRIMARY KEY (`producto`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of producto
-- ----------------------------
INSERT INTO `producto` VALUES (10001, 'PEN	Pen Red', 1.2500);
INSERT INTO `producto` VALUES (10002, 'PEN	Pen Blue', 1.2500);
INSERT INTO `producto` VALUES (10003, 'PEN	Pen Black', 1.2500);
INSERT INTO `producto` VALUES (10004, 'PEC	Pencil 2B', 0.4800);
INSERT INTO `producto` VALUES (10005, 'PEC	Pencil 2H', 0.4900);
INSERT INTO `producto` VALUES (20001, 'Aniseed Syru', 12.0000);
INSERT INTO `producto` VALUES (20002, 'Chef Anton Cajun Seasoning', 10.0000);
INSERT INTO `producto` VALUES (20003, 'Chef Anton Gumbo Mix', 22.0000);
INSERT INTO `producto` VALUES (20004, 'Boysenberry Spread', 22.5000);
INSERT INTO `producto` VALUES (20005, 'Uncle Bob Organic Dried Pears', 25.0000);
INSERT INTO `producto` VALUES (20006, 'Northwoods Cranberry Sauce', 30.0000);
INSERT INTO `producto` VALUES (20007, 'Mishi Kobe Niku', 40.0000);
INSERT INTO `producto` VALUES (20008, 'Ikura', 97.0000);
INSERT INTO `producto` VALUES (20009, 'Queso Cabrales', 31.0000);
INSERT INTO `producto` VALUES (20010, 'Queso Manchego La Pastora', 21.0000);
INSERT INTO `producto` VALUES (20011, 'Konbu', 6.0000);
INSERT INTO `producto` VALUES (20012, 'Tofu', 23.2500);
INSERT INTO `producto` VALUES (20013, 'Genen Shouyu', 15.5000);
INSERT INTO `producto` VALUES (50000, 'Trek 820', 379.9900);
INSERT INTO `producto` VALUES (50001, 'Ritchey Timberwolf Frameset', 749.9900);
INSERT INTO `producto` VALUES (50002, 'Surly Wednesday Frameset - 2016', 999.9900);
INSERT INTO `producto` VALUES (50003, 'Trek Fuel EX', 2899.9900);
INSERT INTO `producto` VALUES (50004, 'Heller Shagamaw Frame', 1320.9900);
INSERT INTO `producto` VALUES (50005, 'Surly Ice Cream Truck Frameset - 2016', 469.9900);
INSERT INTO `producto` VALUES (50006, 'Trek Slash 8 27.5 - 2016', 3999.9900);
INSERT INTO `producto` VALUES (50007, 'Trek Remedy 29 Carbon Frameset - 2016', 1799.9900);
INSERT INTO `producto` VALUES (50008, 'Trek Conduit+ - 2016', 2999.9900);
INSERT INTO `producto` VALUES (50009, 'Surly Straggler - 2016', 1549.0000);
INSERT INTO `producto` VALUES (50010, 'Surly Straggler 650b - 2016', 1680.9900);
INSERT INTO `producto` VALUES (50011, 'Electra Townie Original 21D - 2016', 549.9900);
INSERT INTO `producto` VALUES (50012, 'Electra Cruiser 1 (24-Inch) - 2016', 269.9900);
INSERT INTO `producto` VALUES (50013, 'Electra Girl\'s Hawaii 1 (16-inch) - 2015/2016', 269.9900);
INSERT INTO `producto` VALUES (50014, 'Electra Moto 1 - 2016', 529.9900);
INSERT INTO `producto` VALUES (50015, 'Electra Townie Original 7D EQ - 2016', 599.9900);
INSERT INTO `producto` VALUES (50016, 'Pure Cycles Vine 8-Speed - 2016', 429.0000);
INSERT INTO `producto` VALUES (50017, 'Pure Cycles Western 3-Speed - Women', 449.0000);
INSERT INTO `producto` VALUES (50018, 'Pure Cycles William 3-Speed - 2016', 449.0000);
INSERT INTO `producto` VALUES (101678, '1969 Harley Davidson Ultimate Chopper', 95.7000);
INSERT INTO `producto` VALUES (101949, '1952 Alpine Renault 1300', 214.3000);
INSERT INTO `producto` VALUES (102016, '1996 Moto Guzzi 1100i', 118.9400);
INSERT INTO `producto` VALUES (104698, '2003 Harley-Davidson Eagle Drag Bike', 193.6600);
INSERT INTO `producto` VALUES (104757, '1972 Alfa Romeo GTA', 136.0000);
INSERT INTO `producto` VALUES (104962, '1962 LanciaA Delta 16V', 147.7400);
INSERT INTO `producto` VALUES (121099, '1968 Ford Mustang', 194.5700);
INSERT INTO `producto` VALUES (121108, '2001 Ferrari Enzo', 207.8000);
INSERT INTO `producto` VALUES (121666, '1958 Setra Bus', 136.6700);
INSERT INTO `producto` VALUES (122823, '2002 Suzuki XREO', 150.6200);
INSERT INTO `producto` VALUES (123148, '1969 Corvair Monza', 151.0800);
INSERT INTO `producto` VALUES (123380, '1968 Dodge Charger', 117.4400);
INSERT INTO `producto` VALUES (123891, '1969 Ford Falcon', 173.0200);
INSERT INTO `producto` VALUES (123990, '1970 Plymouth Hemi Cuda', 79.8000);
INSERT INTO `producto` VALUES (124473, '1957 Chevy Pickup', 118.5000);
INSERT INTO `producto` VALUES (124675, '1969 Dodge Charger', 115.1600);
INSERT INTO `producto` VALUES (181097, '1940 Ford Pickup Truck', 116.6700);
INSERT INTO `producto` VALUES (181129, '1993 Mazda RX-7', 141.5400);
INSERT INTO `producto` VALUES (181342, '1937 Lincoln Berline', 102.7400);
INSERT INTO `producto` VALUES (181367, '1936 Mercedes-Benz 500K Special Roadster', 53.9100);
INSERT INTO `producto` VALUES (181589, '1965 Aston Martin DB5', 124.4400);
INSERT INTO `producto` VALUES (181662, '1980s Black Hawk Helicopter', 157.6900);
INSERT INTO `producto` VALUES (181749, '1917 Grand Touring Sedan', 170.0000);
INSERT INTO `producto` VALUES (181889, '1948 Porsche 356-A Roadster', 77.0000);
INSERT INTO `producto` VALUES (181984, '1995 Honda Civic', 142.2500);
INSERT INTO `producto` VALUES (182238, '1998 Chrysler Plymouth Prowler', 163.7300);
INSERT INTO `producto` VALUES (182248, '1911 Ford Town Car', 60.5400);
INSERT INTO `producto` VALUES (182319, '1964 Mercedes Tour Bus', 122.7300);
INSERT INTO `producto` VALUES (182325, '1932 Model A Ford J-Coupe', 127.1300);
INSERT INTO `producto` VALUES (182432, '1926 Ford Fire Engine', 60.7700);
INSERT INTO `producto` VALUES (182581, 'P-51-D Mustang', 84.4800);
INSERT INTO `producto` VALUES (182625, '1936 Harley Davidson El Knucklehead', 60.5700);

-- ----------------------------
-- Table structure for venta
-- ----------------------------
DROP TABLE IF EXISTS `venta`;
CREATE TABLE `venta`  (
  `cajero` int(10) NULL DEFAULT NULL,
  `maquina` int(10) NULL DEFAULT NULL,
  `producto` int(10) NULL DEFAULT NULL,
  INDEX `cajero`(`cajero`) USING BTREE,
  INDEX `maquina`(`maquina`) USING BTREE,
  INDEX `producto`(`producto`) USING BTREE,
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`cajero`) REFERENCES `cajero` (`cajero`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`maquina`) REFERENCES `maquina_registradora` (`maquina`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`producto`) REFERENCES `producto` (`producto`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of venta
-- ----------------------------
INSERT INTO `venta` VALUES (1, 11475, 10001);
INSERT INTO `venta` VALUES (1, 11475, 10002);
INSERT INTO `venta` VALUES (2, 23622, 20001);
INSERT INTO `venta` VALUES (1, 35152, 10005);
INSERT INTO `venta` VALUES (5, 48023, 50001);
INSERT INTO `venta` VALUES (4, 84429, 20012);
INSERT INTO `venta` VALUES (3, 48023, 121108);
INSERT INTO `venta` VALUES (6, 23622, 20009);
INSERT INTO `venta` VALUES (3, 18766, 10002);
INSERT INTO `venta` VALUES (8, 18766, 182625);
INSERT INTO `venta` VALUES (7, 45514, 50014);
INSERT INTO `venta` VALUES (7, 19523, 101678);
INSERT INTO `venta` VALUES (7, 19523, 101678);
INSERT INTO `venta` VALUES (2, 23622, 182319);
INSERT INTO `venta` VALUES (4, 48023, 123148);
INSERT INTO `venta` VALUES (3, 45514, 104962);
INSERT INTO `venta` VALUES (6, 35152, 104757);
INSERT INTO `venta` VALUES (5, 71836, 20002);
INSERT INTO `venta` VALUES (9, 84429, 182625);
INSERT INTO `venta` VALUES (3, 19523, 182625);
INSERT INTO `venta` VALUES (4, 11475, 50013);
INSERT INTO `venta` VALUES (5, 45514, 10002);
INSERT INTO `venta` VALUES (10, 84429, 50017);
INSERT INTO `venta` VALUES (9, 45514, 181662);
INSERT INTO `venta` VALUES (7, 18766, 20002);
INSERT INTO `venta` VALUES (4, 48023, 50012);
INSERT INTO `venta` VALUES (8, 71836, 50008);
INSERT INTO `venta` VALUES (7, 35152, 10003);
INSERT INTO `venta` VALUES (9, 11475, 20001);
INSERT INTO `venta` VALUES (10, 57126, 50006);
INSERT INTO `venta` VALUES (1, 84429, 123990);
INSERT INTO `venta` VALUES (3, 84429, 182625);
INSERT INTO `venta` VALUES (4, 57126, 20004);
INSERT INTO `venta` VALUES (6, 45514, 10001);
INSERT INTO `venta` VALUES (1, 48023, 50006);
INSERT INTO `venta` VALUES (11, 48023, 50006);

SET FOREIGN_KEY_CHECKS = 1;
