/*
 Navicat Premium Data Transfer

 Source Server         : MYSQL
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : ecartv1

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 20/02/2023 12:19:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for brand_info
-- ----------------------------
DROP TABLE IF EXISTS `brand_info`;
CREATE TABLE `brand_info` (
  `brand_id` int NOT NULL,
  `product_id` int NOT NULL,
  UNIQUE KEY `UK_t7avrnmqfb83nnwak099r2460` (`product_id`),
  KEY `FK8o240b0u0u3v16cmhm2nb3vmk` (`brand_id`),
  CONSTRAINT `FK5gdclhow9ixbh5nm6v2s67um9` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FK8o240b0u0u3v16cmhm2nb3vmk` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of brand_info
-- ----------------------------
BEGIN;
INSERT INTO `brand_info` (`brand_id`, `product_id`) VALUES (44, 43);
INSERT INTO `brand_info` (`brand_id`, `product_id`) VALUES (44, 56);
INSERT INTO `brand_info` (`brand_id`, `product_id`) VALUES (44, 63);
INSERT INTO `brand_info` (`brand_id`, `product_id`) VALUES (44, 66);
INSERT INTO `brand_info` (`brand_id`, `product_id`) VALUES (44, 69);
INSERT INTO `brand_info` (`brand_id`, `product_id`) VALUES (49, 102);
INSERT INTO `brand_info` (`brand_id`, `product_id`) VALUES (49, 452);
INSERT INTO `brand_info` (`brand_id`, `product_id`) VALUES (49, 703);
INSERT INTO `brand_info` (`brand_id`, `product_id`) VALUES (49, 705);
INSERT INTO `brand_info` (`brand_id`, `product_id`) VALUES (49, 752);
INSERT INTO `brand_info` (`brand_id`, `product_id`) VALUES (60, 202);
INSERT INTO `brand_info` (`brand_id`, `product_id`) VALUES (60, 252);
INSERT INTO `brand_info` (`brand_id`, `product_id`) VALUES (73, 72);
INSERT INTO `brand_info` (`brand_id`, `product_id`) VALUES (77, 76);
INSERT INTO `brand_info` (`brand_id`, `product_id`) VALUES (81, 1);
INSERT INTO `brand_info` (`brand_id`, `product_id`) VALUES (81, 80);
INSERT INTO `brand_info` (`brand_id`, `product_id`) VALUES (86, 85);
INSERT INTO `brand_info` (`brand_id`, `product_id`) VALUES (90, 89);
INSERT INTO `brand_info` (`brand_id`, `product_id`) VALUES (94, 93);
INSERT INTO `brand_info` (`brand_id`, `product_id`) VALUES (98, 97);
INSERT INTO `brand_info` (`brand_id`, `product_id`) VALUES (130, 602);
INSERT INTO `brand_info` (`brand_id`, `product_id`) VALUES (186, 652);
COMMIT;

-- ----------------------------
-- Table structure for brands
-- ----------------------------
DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands` (
  `brand_id` int NOT NULL,
  `brand_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of brands
-- ----------------------------
BEGIN;
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (44, 'Dell');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (49, 'Apple');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (60, 'Samsung');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (73, 'Hp');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (77, 'Lenovo');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (81, 'Sony');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (86, 'One Plus');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (90, 'Real Me');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (94, 'Mi');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (98, 'Vivo');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (102, 'Bose');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (106, 'LP');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (110, 'Levis');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (114, 'W for Women');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (118, 'Zara');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (122, 'Gap');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (126, 'Biba');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (130, 'Boss');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (134, 'Calvin Klein');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (138, 'Reebok');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (142, 'Tommy Hilfiger');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (146, 'Redmi');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (150, 'Oppo');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (154, 'iQOO');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (158, 'Nokia');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (162, 'Xiaomi');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (164, 'Lava');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (168, 'Motorola');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (172, 'Google');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (174, 'Micromax');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (178, 'POCO');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (182, 'LG');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (186, 'Fastrack');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (190, 'Casio');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (194, 'TIMEX');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (198, 'Titan');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (202, 'Fossil');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (206, 'LOUIS DEVIN');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (300, 'TIMEWEAR');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (304, 'Sonata');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (308, 'Tommy Hilfiger');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (312, 'NAVIFORCE');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (316, 'Citizen');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (320, 'ASUS');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (324, 'Acer');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (328, 'MSI');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (332, 'Microsoft');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (336, 'ZEBRONICS');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (340, 'boAt');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (344, 'Marshall');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (348, 'Infinity');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (352, 'Yamaha');
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES (356, 'Logitech');
COMMIT;

-- ----------------------------
-- Table structure for brands_seq
-- ----------------------------
DROP TABLE IF EXISTS `brands_seq`;
CREATE TABLE `brands_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of brands_seq
-- ----------------------------
BEGIN;
INSERT INTO `brands_seq` (`next_val`) VALUES (1);
COMMIT;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `qty` double NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of cart
-- ----------------------------
BEGIN;
INSERT INTO `cart` (`cart_id`, `product_id`, `qty`, `user_id`) VALUES (1, 1, 3, 1);
INSERT INTO `cart` (`cart_id`, `product_id`, `qty`, `user_id`) VALUES (2, 6, 1, 1);
INSERT INTO `cart` (`cart_id`, `product_id`, `qty`, `user_id`) VALUES (3, 10, 10, 2);
INSERT INTO `cart` (`cart_id`, `product_id`, `qty`, `user_id`) VALUES (4, 14, 6, 3);
INSERT INTO `cart` (`cart_id`, `product_id`, `qty`, `user_id`) VALUES (5, 27, 2, 4);
INSERT INTO `cart` (`cart_id`, `product_id`, `qty`, `user_id`) VALUES (6, 30, 1, 5);
COMMIT;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `category_id` int NOT NULL,
  `category_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
BEGIN;
INSERT INTO `categories` (`category_id`, `category_title`) VALUES (1, 'Speakers');
INSERT INTO `categories` (`category_id`, `category_title`) VALUES (45, 'Laptops');
INSERT INTO `categories` (`category_id`, `category_title`) VALUES (53, 'Mobiles');
INSERT INTO `categories` (`category_id`, `category_title`) VALUES (82, 'Televisions');
INSERT INTO `categories` (`category_id`, `category_title`) VALUES (86, 'Watches');
INSERT INTO `categories` (`category_id`, `category_title`) VALUES (90, 'Cloths');
COMMIT;

-- ----------------------------
-- Table structure for categories_seq
-- ----------------------------
DROP TABLE IF EXISTS `categories_seq`;
CREATE TABLE `categories_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of categories_seq
-- ----------------------------
BEGIN;
INSERT INTO `categories_seq` (`next_val`) VALUES (51);
COMMIT;

-- ----------------------------
-- Table structure for category_brands
-- ----------------------------
DROP TABLE IF EXISTS `category_brands`;
CREATE TABLE `category_brands` (
  `category_id` int NOT NULL,
  `brand_id` int NOT NULL,
  KEY `FKp4lugeihfafmlwemfs2rkey88` (`brand_id`),
  KEY `FK1unukst53ykwjwo52uh5ovi09` (`category_id`),
  CONSTRAINT `FK1unukst53ykwjwo52uh5ovi09` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  CONSTRAINT `FKp4lugeihfafmlwemfs2rkey88` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of category_brands
-- ----------------------------
BEGIN;
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (45, 44);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (45, 49);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (45, 60);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (45, 73);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (45, 77);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (45, 81);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (45, 320);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (45, 324);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (45, 328);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (45, 332);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (53, 44);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (53, 49);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (53, 60);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (53, 81);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (53, 86);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (53, 90);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (53, 94);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (53, 98);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (53, 146);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (53, 150);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (53, 154);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (53, 158);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (53, 162);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (53, 164);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (53, 168);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (53, 172);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (53, 174);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (53, 178);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (53, 182);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (82, 49);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (82, 60);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (82, 81);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (82, 86);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (82, 146);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (82, 174);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (82, 182);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (82, 324);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (1, 81);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (1, 102);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (1, 336);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (1, 340);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (1, 344);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (1, 348);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (1, 352);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (1, 356);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (86, 186);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (86, 190);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (86, 194);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (86, 198);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (86, 202);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (86, 206);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (86, 300);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (86, 304);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (86, 308);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (86, 312);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (86, 316);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (90, 106);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (90, 110);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (90, 114);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (90, 118);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (90, 122);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (90, 126);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (90, 130);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (90, 134);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (90, 138);
INSERT INTO `category_brands` (`category_id`, `brand_id`) VALUES (90, 142);
COMMIT;

-- ----------------------------
-- Table structure for category_info
-- ----------------------------
DROP TABLE IF EXISTS `category_info`;
CREATE TABLE `category_info` (
  `category_id` int NOT NULL,
  `product_id` int NOT NULL,
  UNIQUE KEY `UK_7ppfxfbw0eiyeeg5eqs7bwsu7` (`product_id`),
  KEY `FK3oslh9xj712unumeq69ckcg0w` (`category_id`),
  CONSTRAINT `FK3oslh9xj712unumeq69ckcg0w` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK5ed77ma1s5cnkjv7jpnpbwl97` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of category_info
-- ----------------------------
BEGIN;
INSERT INTO `category_info` (`category_id`, `product_id`) VALUES (1, 1);
INSERT INTO `category_info` (`category_id`, `product_id`) VALUES (45, 43);
INSERT INTO `category_info` (`category_id`, `product_id`) VALUES (45, 48);
INSERT INTO `category_info` (`category_id`, `product_id`) VALUES (45, 72);
INSERT INTO `category_info` (`category_id`, `product_id`) VALUES (45, 76);
INSERT INTO `category_info` (`category_id`, `product_id`) VALUES (53, 52);
INSERT INTO `category_info` (`category_id`, `product_id`) VALUES (53, 56);
INSERT INTO `category_info` (`category_id`, `product_id`) VALUES (53, 59);
INSERT INTO `category_info` (`category_id`, `product_id`) VALUES (53, 63);
INSERT INTO `category_info` (`category_id`, `product_id`) VALUES (53, 66);
INSERT INTO `category_info` (`category_id`, `product_id`) VALUES (53, 69);
INSERT INTO `category_info` (`category_id`, `product_id`) VALUES (53, 85);
INSERT INTO `category_info` (`category_id`, `product_id`) VALUES (53, 89);
INSERT INTO `category_info` (`category_id`, `product_id`) VALUES (53, 97);
INSERT INTO `category_info` (`category_id`, `product_id`) VALUES (53, 164);
INSERT INTO `category_info` (`category_id`, `product_id`) VALUES (53, 167);
INSERT INTO `category_info` (`category_id`, `product_id`) VALUES (53, 702);
INSERT INTO `category_info` (`category_id`, `product_id`) VALUES (82, 80);
INSERT INTO `category_info` (`category_id`, `product_id`) VALUES (82, 93);
INSERT INTO `category_info` (`category_id`, `product_id`) VALUES (86, 704);
INSERT INTO `category_info` (`category_id`, `product_id`) VALUES (86, 752);
COMMIT;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
BEGIN;
INSERT INTO `hibernate_sequence` (`next_val`) VALUES (170);
COMMIT;

-- ----------------------------
-- Table structure for hibernate_sequences
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequences`;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) NOT NULL,
  `next_val` bigint DEFAULT NULL,
  PRIMARY KEY (`sequence_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of hibernate_sequences
-- ----------------------------
BEGIN;
INSERT INTO `hibernate_sequences` (`sequence_name`, `next_val`) VALUES ('default', 15);
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` bigint NOT NULL,
  `order_date` datetime(6) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `product_id` int NOT NULL,
  `qty` int NOT NULL,
  `total` double NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
INSERT INTO `orders` (`order_id`, `order_date`, `payment_status`, `product_id`, `qty`, `total`, `transaction_id`, `user_id`) VALUES (1667797468598, '2022-11-07 10:34:28.600383', 'Success', 93, 1, 67000, '7253096393731294234', 3);
INSERT INTO `orders` (`order_id`, `order_date`, `payment_status`, `product_id`, `qty`, `total`, `transaction_id`, `user_id`) VALUES (1667797597028, '2022-11-07 10:36:37.028091', 'Success', 93, 5, 335000, '8473376462411532994', 3);
INSERT INTO `orders` (`order_id`, `order_date`, `payment_status`, `product_id`, `qty`, `total`, `transaction_id`, `user_id`) VALUES (1668046539956, '2022-11-08 01:43:02.052179', 'Success', 93, 1, 67000, '1080883573868954081', 3);
INSERT INTO `orders` (`order_id`, `order_date`, `payment_status`, `product_id`, `qty`, `total`, `transaction_id`, `user_id`) VALUES (52213923074520236, '2022-11-19 06:25:28.929596', 'Success', 48, 1, 235000, '4562867857561067394', 1);
INSERT INTO `orders` (`order_id`, `order_date`, `payment_status`, `product_id`, `qty`, `total`, `transaction_id`, `user_id`) VALUES (151175848894530228, '2022-11-08 10:45:30.629813', 'Success', 56, 2, 270000, '7674505651240077054', 1);
INSERT INTO `orders` (`order_id`, `order_date`, `payment_status`, `product_id`, `qty`, `total`, `transaction_id`, `user_id`) VALUES (247176380558452947, '2022-11-19 04:16:20.518133', 'Success', 43, 1, 45000, '8040865087750210724', 1);
INSERT INTO `orders` (`order_id`, `order_date`, `payment_status`, `product_id`, `qty`, `total`, `transaction_id`, `user_id`) VALUES (529494597859439321, '2022-11-19 04:21:23.953030', 'Success', 43, 1, 45000, '685463903228121558', 1);
INSERT INTO `orders` (`order_id`, `order_date`, `payment_status`, `product_id`, `qty`, `total`, `transaction_id`, `user_id`) VALUES (2165207037516979764, '2022-11-19 03:43:39.281826', 'Success', 43, 1, 45000, '5044433845304565694', 1);
INSERT INTO `orders` (`order_id`, `order_date`, `payment_status`, `product_id`, `qty`, `total`, `transaction_id`, `user_id`) VALUES (2361916092943257330, '2022-11-19 04:20:52.896269', 'Success', 43, 1, 45000, '8749164845678107226', 1);
INSERT INTO `orders` (`order_id`, `order_date`, `payment_status`, `product_id`, `qty`, `total`, `transaction_id`, `user_id`) VALUES (2472018340206398077, '2022-11-19 04:19:01.293376', 'Success', 43, 1, 45000, '8460603103794183911', 1);
INSERT INTO `orders` (`order_id`, `order_date`, `payment_status`, `product_id`, `qty`, `total`, `transaction_id`, `user_id`) VALUES (3631019244027099247, '2022-11-10 10:24:22.974234', 'Success', 72, 1, 267000, '6452688935913918622', 1);
INSERT INTO `orders` (`order_id`, `order_date`, `payment_status`, `product_id`, `qty`, `total`, `transaction_id`, `user_id`) VALUES (4707129874509581812, '2022-11-19 05:09:03.133791', 'Success', 48, 1, 235000, '6592042926980167406', 1);
INSERT INTO `orders` (`order_id`, `order_date`, `payment_status`, `product_id`, `qty`, `total`, `transaction_id`, `user_id`) VALUES (4930841122682515064, '2022-11-19 06:27:07.844320', 'Success', 48, 1, 235000, '6748838592140561519', 1);
INSERT INTO `orders` (`order_id`, `order_date`, `payment_status`, `product_id`, `qty`, `total`, `transaction_id`, `user_id`) VALUES (5076054754607071954, '2022-11-10 10:14:12.744932', 'Success', 72, 1, 267000, '2856880488539473', 1);
INSERT INTO `orders` (`order_id`, `order_date`, `payment_status`, `product_id`, `qty`, `total`, `transaction_id`, `user_id`) VALUES (5387982536363098187, '2022-11-08 01:19:37.547831', 'Success', 93, 1, 67000, '3798637535030909741', 3);
INSERT INTO `orders` (`order_id`, `order_date`, `payment_status`, `product_id`, `qty`, `total`, `transaction_id`, `user_id`) VALUES (6166559944478995008, '2022-11-19 05:04:34.076311', 'Success', 48, 1, 235000, '2285204588582167232', 1);
INSERT INTO `orders` (`order_id`, `order_date`, `payment_status`, `product_id`, `qty`, `total`, `transaction_id`, `user_id`) VALUES (6771978852670581203, '2022-11-10 10:28:17.536076', 'Success', 72, 1, 267000, '8705716828587124922', 1);
INSERT INTO `orders` (`order_id`, `order_date`, `payment_status`, `product_id`, `qty`, `total`, `transaction_id`, `user_id`) VALUES (6829537742254459755, '2022-11-19 06:10:01.996134', 'Success', 48, 1, 235000, '7929172312271361675', 1);
INSERT INTO `orders` (`order_id`, `order_date`, `payment_status`, `product_id`, `qty`, `total`, `transaction_id`, `user_id`) VALUES (7981270063580048143, '2022-11-19 05:08:23.760620', 'Success', 48, 1, 235000, '7470362431375703641', 1);
INSERT INTO `orders` (`order_id`, `order_date`, `payment_status`, `product_id`, `qty`, `total`, `transaction_id`, `user_id`) VALUES (8068444583605789967, '2022-11-19 04:55:17.989135', 'Success', 43, 1, 45000, '3760369112228368149', 1);
INSERT INTO `orders` (`order_id`, `order_date`, `payment_status`, `product_id`, `qty`, `total`, `transaction_id`, `user_id`) VALUES (8600878370996568692, '2022-11-19 05:02:22.843849', 'Success', 48, 1, 235000, '2112572871208807550', 1);
COMMIT;

-- ----------------------------
-- Table structure for price_info
-- ----------------------------
DROP TABLE IF EXISTS `price_info`;
CREATE TABLE `price_info` (
  `price_id` int NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of price_info
-- ----------------------------
BEGIN;
INSERT INTO `price_info` (`price_id`, `price`) VALUES (1, 95000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (4, 45000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (8, 235000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (12, 97000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (15, 135000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (19, 125000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (22, 122000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (25, 98000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (28, 125000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (32, 267000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (36, 55000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (46, 45000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (50, 235000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (54, 97000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (57, 135000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (61, 125000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (64, 122000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (67, 98000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (70, 125000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (74, 267000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (78, 55000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (83, 245000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (87, 65000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (91, 56000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (95, 67000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (99, 34000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (102, 120000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (152, 145000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (165, 23000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (168, 38000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (202, 156000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (252, 116000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (302, 145000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (352, 145000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (353, 156000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (402, 156000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (403, 1000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (452, 156000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (602, 356000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (652, 15600);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (702, 450000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (703, 450000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (704, 450000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (705, 450000);
INSERT INTO `price_info` (`price_id`, `price`) VALUES (752, 450000);
COMMIT;

-- ----------------------------
-- Table structure for price_info_seq
-- ----------------------------
DROP TABLE IF EXISTS `price_info_seq`;
CREATE TABLE `price_info_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of price_info_seq
-- ----------------------------
BEGIN;
INSERT INTO `price_info_seq` (`next_val`) VALUES (851);
COMMIT;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `rating` double NOT NULL,
  `price_id` int DEFAULT NULL,
  `stock_id` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FK9ilqpy62n1ruig6vxau5xet4c` (`price_id`),
  KEY `FK521o6mmi4qi3ht9ubiq23d1fx` (`stock_id`),
  CONSTRAINT `FK521o6mmi4qi3ht9ubiq23d1fx` FOREIGN KEY (`stock_id`) REFERENCES `stock_info` (`stock_id`),
  CONSTRAINT `FK9ilqpy62n1ruig6vxau5xet4c` FOREIGN KEY (`price_id`) REFERENCES `price_info` (`price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (1, 'SONY Dolby 7.1 Sound bar', '5.1,Sound Bar,Bar,Sound,Sound System, Sony Sound,Speakers', 'Sony Sound Bar', 0, 1, 1);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (43, 'I5 Gen12 16GB RAM 2 TB SSD', 'Dell,I5', 'Dell Laptop', 0, 46, 47);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (48, 'Apple M2 chip 16 GB 2 TB SSD', 'Apple,Mac Book,Mac Book Pro,M2', 'Apple Macbook Pro', 0, 50, 51);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (52, '256 GB Purple', 'Phone,Iphone,Iphone14', 'Iphone14', 0, 54, 55);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (56, '512 GB Deep Blue', 'Phone,Iphone,Iphone14 Pro', 'Iphone 14 Pro', 0, 57, 58);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (59, '256 GB Green', 'Phone,Iphone,Iphone14 Pro', 'Iphone 14 Pro', 0, 61, 62);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (63, '512 Black', 'Samsung,S22', 'Samsung S22', 0, 64, 65);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (66, '256 Blue', 'Samsung,S22', 'Samsung S22', 0, 67, 68);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (69, '512 Red', 'Samsung,S22', 'Samsung S22', 0, 70, 71);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (72, 'I9 Gen12 32GB RAM 2 TB SSD', 'HP,Laptop', 'HP Laptop', 0, 74, 75);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (76, 'I5 Gen12 16GB RAM 2 TB SSD', 'Lenovo,I5', 'Lenovo Laptop', 0, 78, 79);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (80, '65 inch OLED', 'Sony,Bravio,OLED,65 inch', 'Sony Bravio', 0, 83, 84);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (85, '512 GB Blue', 'One Plus,10R', 'One Plus 10R', 0, 87, 88);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (89, '256 GB Green Glass', 'Real Me,GT,GT Pro', 'Real Me GT Pro', 0, 91, 92);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (93, '65 inch OLED', 'MI,MI OLED,OLED,65 inch', 'MI OLED TV', 0, 95, 96);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (97, '256 GB Blue', 'Vivo', 'Vivo 5.7 OLED ', 0, 99, 100);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (102, 'Desc1', 'K1,K2,K3', 'Iphone 13 Blue-v1', 0, 102, 102);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (152, '256 GB', 'Apple,Ipad,pro', 'Ipad Pro 11 Gen', 0, 152, 152);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (164, 'Iphone12 512 GB Gold Color', 'Apple,Iphone12,Iphone', 'Iphone12 Gold', 0, 165, 166);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (167, 'Iphone 10 4.7 inches screen ', 'Iphone,Apple,Iphone10', 'Iphone 10', 0, 168, 169);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (202, '512 GB', 'Samung, Ultra, S23', 'Samsung S23 Ultra', 0, 202, 202);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (252, '256 GB', 'Sam,Samung, Ultra, S23', 'Samsung S22 Ultra', 0, 252, 252);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (452, '256 GB, Blue', 'Iphone,Pro,max,Iphone Pro max', 'Iphone 14 Pro Max', 0, 452, 452);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (602, 'Bose 7.1 wireless sound bar with tweeters', 'Bose,Sound bar,7.1', 'Bose 7.1 Sound bar', 0, 602, 602);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (652, 'Digital Fast track world clock', 'Watch,Fasttrack,world clock', 'Fasttrack Watch', 0, 652, 652);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (702, 'Apple Wireless watch', 'Watch,Apple, Smart watch', 'Apple Watch', 0, 702, 702);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (703, 'Apple Wireless watch', 'Watch,Apple, Smart watch', 'Apple Watch', 0, 703, 703);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (704, 'Apple Wireless watch', 'Watch,Apple, Smart watch', 'Apple Watch', 0, 704, 704);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (705, 'Apple Wireless watch', 'Watch,Apple, Smart watch', 'Apple Watch', 0, 705, 705);
INSERT INTO `products` (`product_id`, `description`, `keywords`, `product_title`, `rating`, `price_id`, `stock_id`) VALUES (752, 'Apple Wireless watch', 'Watch,Apple, Smart watch', 'Apple Watch', 0, 752, 752);
COMMIT;

-- ----------------------------
-- Table structure for products_seq
-- ----------------------------
DROP TABLE IF EXISTS `products_seq`;
CREATE TABLE `products_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of products_seq
-- ----------------------------
BEGIN;
INSERT INTO `products_seq` (`next_val`) VALUES (851);
COMMIT;

-- ----------------------------
-- Table structure for stock_info
-- ----------------------------
DROP TABLE IF EXISTS `stock_info`;
CREATE TABLE `stock_info` (
  `stock_id` int NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of stock_info
-- ----------------------------
BEGIN;
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (1, 30);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (5, 6);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (9, 10);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (13, 13);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (16, 2);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (20, 30);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (23, 6);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (26, 6);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (29, 6);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (33, 3);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (37, 8);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (47, 0);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (51, 3);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (55, 13);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (58, 0);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (62, 30);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (65, 6);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (68, 6);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (71, 6);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (75, 0);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (79, 4);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (84, 14);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (88, 20);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (92, 16);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (96, 0);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (100, 13);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (102, 65);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (152, 12);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (166, 12);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (169, 18);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (202, 35);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (252, 11);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (302, 46);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (352, 46);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (353, 23);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (402, 23);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (403, 65);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (452, 87);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (602, 45);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (652, 60);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (702, 12);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (703, 12);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (704, 12);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (705, 12);
INSERT INTO `stock_info` (`stock_id`, `stock`) VALUES (752, 12);
COMMIT;

-- ----------------------------
-- Table structure for stock_info_seq
-- ----------------------------
DROP TABLE IF EXISTS `stock_info_seq`;
CREATE TABLE `stock_info_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of stock_info_seq
-- ----------------------------
BEGIN;
INSERT INTO `stock_info_seq` (`next_val`) VALUES (851);
COMMIT;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `user_id` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile` bigint NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK_nd4xxe4sfscx08oods9gi8y2v` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user_info
-- ----------------------------
BEGIN;
INSERT INTO `user_info` (`user_id`, `address`, `dob`, `email`, `first_name`, `last_name`, `mobile`, `password`, `user_name`) VALUES (1, 'Hyderabad', '1983-08-21', 'praveen@abc.com', 'Praveen', 'Reddy', 8787878787, '$2a$10$6swlvXed/Wi2c2aK2u/a/utKpl9Oxoe48l/ZoQyQyiagMFeoThR/y', 'praveen');
INSERT INTO `user_info` (`user_id`, `address`, `dob`, `email`, `first_name`, `last_name`, `mobile`, `password`, `user_name`) VALUES (2, 'Chennai', '1981-02-22', 'david@abc.com', 'David', 'Rodson', 9749876545, '$2a$10$oBpO96UYvsPkbSTJbIKhIO6c1yK8wB0AlzgPd5Tuu2jUZifuzIGtu', 'user2');
INSERT INTO `user_info` (`user_id`, `address`, `dob`, `email`, `first_name`, `last_name`, `mobile`, `password`, `user_name`) VALUES (3, 'USA', '1980-02-12', 'james@abc.com', 'James', 'Goedic', 9854643234, '$2a$10$qjMjjhtCAc1RV92BDj4ixO/Rw/y5R/WNrWGedB4cn7gBdulbyQk22', 'james');
INSERT INTO `user_info` (`user_id`, `address`, `dob`, `email`, `first_name`, `last_name`, `mobile`, `password`, `user_name`) VALUES (4, 'Kolkatha', '1991-09-18', 'bucky@abc.com', 'Bucky', 'Wall', 7898098765, '$2a$10$sxlaHfl8ALZWs41sdONnF.IdQ94QhGCb3WCpgzSwFf3snpCUukQ8u', 'user4');
INSERT INTO `user_info` (`user_id`, `address`, `dob`, `email`, `first_name`, `last_name`, `mobile`, `password`, `user_name`) VALUES (5, 'Delhi', '1978-05-29', 'prashanth@abc.com', 'Prashath', 'Kumar', 6578989987, '$2a$10$gSQJJZmNwG.jOHj6LUrPQuiVWrvZzVjqyMdD3y9uaA83ls9yJ/3Iu', 'user5');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
