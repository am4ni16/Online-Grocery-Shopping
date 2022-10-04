-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinegroceryshopping
-- ------------------------------------------------------
-- Server version	5.6.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `so_cart`
--

DROP TABLE IF EXISTS `so_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `so_cart` (
  `ID` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(225) DEFAULT NULL,
  `productId` bigint(20) DEFAULT NULL,
  `pruductName` varchar(225) DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `finalAmount` double DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `FK_so_cart` (`userId`),
  KEY `productId` (`productId`),
  CONSTRAINT `FK_so_cart` FOREIGN KEY (`userId`) REFERENCES `so_user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `so_cart_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `so_product` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_cart`
--

LOCK TABLES `so_cart` WRITE;
/*!40000 ALTER TABLE `so_cart` DISABLE KEYS */;
INSERT INTO `so_cart` VALUES (1,8,'Irdina Alia',3,'White Squid (Sotong Putih)',1,3.25,NULL,NULL,'2021-02-05 17:20:58','2021-02-05 17:20:58');
/*!40000 ALTER TABLE `so_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_category`
--

DROP TABLE IF EXISTS `so_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `so_category` (
  `ID` bigint(20) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `description` varchar(755) DEFAULT NULL,
  `image` varchar(755) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_category`
--

LOCK TABLES `so_category` WRITE;
/*!40000 ALTER TABLE `so_category` DISABLE KEYS */;
INSERT INTO `so_category` VALUES (1,'Vegetables','Choose your vegetables here','Vegetablessayur.jpg','Admin@gmail.com','Admin@gmail.com','2021-02-03 21:17:44','2021-02-05 15:18:33'),(2,'Fruits','Choose your fruits here!','Fruitsbuah.jpg','Admin@gmail.com','Admin@gmail.com','2021-02-03 21:23:44','2021-02-04 18:53:35'),(3,'Fish And Seafood','Choose your fish and seafood here!','Fish And Seafoodseafood_20180612151833_reuters.jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 00:48:47','2021-02-04 18:08:41'),(4,'Meat And Poultry','Chicken and meat here!','Meat And Poultry1218NP_economicoutlook_img1.jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 19:20:24','2021-02-04 19:20:24'),(5,'Others','Other groceries here!','Otherbasic-food-products-groceries-table-top-view_154972-80.jpg','Admin@gmail.com','Admin@gmail.com','2021-02-05 11:13:06','2021-02-04 19:47:14');
/*!40000 ALTER TABLE `so_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_contect`
--

DROP TABLE IF EXISTS `so_contect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `so_contect` (
  `ID` bigint(20) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `message` varchar(755) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_contect`
--

LOCK TABLES `so_contect` WRITE;
/*!40000 ALTER TABLE `so_contect` DISABLE KEYS */;
INSERT INTO `so_contect` VALUES (1,'alia rosli','aliaroslii@gmail.com','Hi, im interested','root','root','2021-02-05 14:38:54','2021-02-05 14:38:54'),(2,'IRDINA ALIA BINTI MOHAMAD ROSLI','aliapunyeblog@gmail.com','Hi, i had a question','leyyaalia','leyyaalia','2021-02-05 16:16:44','2021-02-05 16:16:44');
/*!40000 ALTER TABLE `so_contect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_invoice`
--

DROP TABLE IF EXISTS `so_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `so_invoice` (
  `ID` bigint(20) NOT NULL,
  `orderId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(225) DEFAULT NULL,
  `productId` bigint(20) DEFAULT NULL,
  `productName` varchar(225) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `mobileNo` varchar(225) DEFAULT NULL,
  `shippingAddress` varchar(755) DEFAULT NULL,
  `billingAddress` varchar(755) DEFAULT NULL,
  `emailId` varchar(225) DEFAULT NULL,
  `productDescription` varchar(755) DEFAULT NULL,
  `productImage` varchar(755) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_invoice`
--

LOCK TABLES `so_invoice` WRITE;
/*!40000 ALTER TABLE `so_invoice` DISABLE KEYS */;
INSERT INTO `so_invoice` VALUES (1,200101,8,'Irdina Alia',1,'Brokoli (Brocolli)','2021-02-04',2.28,'7865439876','No 4, Jalan Penggawa 1/1, Taman Penggawa, 45300 Sungai Besar, Selangor.','No 4, Jalan Penggawa 1/1, Taman Penggawa, 45300 Sungai Besar, Selangor.','aliapunyeblog@gmail.com','Price per each','Brokoli (Brocolli)ShotType1_540x540.jpg',NULL,NULL,'2021-02-03 23:31:21','2021-02-03 23:31:21'),(2,200102,8,'Irdina Alia',5,'Ikan Kembung','2021-02-06',2.62,'0193624406','No 4, Jalan Penggawa 1/1, Taman Penggawa, 45300 Sungai Besar, Selangor.','No 4, Jalan Penggawa 1/1, Taman Penggawa, 45300 Sungai Besar, Selangor.','aliapunyeblog@gmail.com','Price is for 1 fish\r |  RM2.62/each','Ikan KembungShotType1_540x540 (3).jpg',NULL,NULL,'2021-02-05 16:15:16','2021-02-05 16:15:16'),(3,200103,8,'Irdina Alia',1,'Brokoli (Brocolli)','2021-02-06',2.28,'0193624406','No 4, Jalan Penggawa 1/1, Taman Penggawa, 45300 Sungai Besar, Selangor.','No 4, Jalan Penggawa 1/1, Taman Penggawa, 45300 Sungai Besar, Selangor.','aliapunyeblog@gmail.com','Price per each | RM2.28/each','Brokoli (Brocolli)ShotType1_540x540.jpg',NULL,NULL,'2021-02-05 16:15:16','2021-02-05 16:15:16'),(4,200104,8,'Irdina Alia',1,'Brokoli (Brocolli)','2021-02-06',2.28,'0103456789','No 4, Jalan Penggawa 1/1, Taman Penggawa, 45300 Sungai Besar, Selangor.','No 4, Jalan Penggawa 1/1, Taman Penggawa, 45300 Sungai Besar, Selangor.','aliapunyeblog@gmail.com','Price per each | RM2.28/each','Brokoli (Brocolli)ShotType1_540x540.jpg',NULL,NULL,'2021-02-05 17:02:25','2021-02-05 17:02:25');
/*!40000 ALTER TABLE `so_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_product`
--

DROP TABLE IF EXISTS `so_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `so_product` (
  `ID` bigint(20) NOT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `categoryName` varchar(225) DEFAULT NULL,
  `productCode` bigint(20) DEFAULT NULL,
  `name` varchar(225) DEFAULT NULL,
  `description` varchar(755) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `image` varchar(755) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `FK_so_product` (`categoryId`),
  CONSTRAINT `FK_so_product` FOREIGN KEY (`categoryId`) REFERENCES `so_category` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_product`
--

LOCK TABLES `so_product` WRITE;
/*!40000 ALTER TABLE `so_product` DISABLE KEYS */;
INSERT INTO `so_product` VALUES (1,1,'Vegetables',100101,'Brokoli (Brocolli)','Price per each | RM2.28/each',2.28,'Brokoli (Brocolli)ShotType1_540x540.jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 18:08:00','2021-02-04 17:11:22'),(2,3,'Fish And Seafood',100102,'Prawn (Udang)','Medium Size (L) | \r Price is for 1 pieces of prawn',4.32,'PRAWN (UDANG)ShotType1_540x540 (1).jpg','Admin@gmail.com','Admin@gmail.com','2021-02-05 10:51:00','2021-02-04 17:12:04'),(3,3,'Fish And Seafood',100103,'White Squid (Sotong Putih)','Small size\r |  RM3.20/0.1kg',3.25,'WHITE SQUID (SOTONG PUTIH)15c1e4f62de8b6166c2264bfbeebfb849e19a841-original.jpeg','Admin@gmail.com','Admin@gmail.com','2021-02-05 10:51:00','2021-02-04 17:12:29'),(4,3,'Fish And Seafood',100104,'Bawal Emas','Price is for 1 fish | RM4.98/ each',4.98,'Bawal EmasShotType1_540x540 (2).jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 18:08:00','2021-02-04 17:12:47'),(5,3,'Fish And Seafood',100105,'Ikan Kembung','Price is for 1 fish\r |  RM2.62/each',2.62,'Ikan KembungShotType1_540x540 (3).jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 18:08:00','2021-02-04 17:13:07'),(6,3,'Fish And Seafood',100106,'Ikan Selar Kuning','Price is for 1 fish\r |  RM1.65/each',1.65,'Ikan Selar KuningShotType1_540x540 (4).jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 18:08:00','2021-02-04 17:13:28'),(9,1,'Vegetables',100109,'Cabbage','Price is for 1 kilogram | RM3.03/kg',3.03,'CabbageShotType1_225x225.jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 18:12:41','2021-02-04 18:12:41'),(10,1,'Vegetables',100110,'Cucumber (Timun)','Price is for kilogram |  RM2.29/kg',2.29,'Cucumber (Timun)ShotType1_540x540 (8).jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 19:03:00','2021-02-04 18:55:22'),(11,1,'Vegetables',100111,'Siew Pak Choy','Price is for 0.1 kilogram | RM0.95/0.1kg',0.95,'Siew Pak ChoyShotType1_540x540 (9).jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 19:03:00','2021-02-04 18:57:22'),(12,1,'Vegetables',100112,'Cili Padi','Price is for 0.05 kilogram | RM0.74/0.05kg',0.74,'Cili PadiShotType1_540x540 (10).jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 19:03:00','2021-02-04 18:59:22'),(13,1,'Vegetables',100113,'Carrot (Lobak Merah)','Price is for 0.50 kilogram | Rm2.84/0.5kg',2.84,'Carrot (Lobak Merah)ShotType1_540x540 (11).jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 19:03:31','2021-02-04 19:03:31'),(14,3,'Fish And Seafood',100114,'Kerang','Price is for 0.5 kilogram | RM9.36/0.5kg',9.36,'KerangShotType1_540x540 (6).jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 19:06:16','2021-02-04 19:06:16'),(15,2,'Fruits',100115,'Pisang Berangan','Price is for 1 kilogram | RM5.23/kg',5.23,'Pisang BeranganShotType1_540x540 (12).jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 19:08:20','2021-02-04 19:08:20'),(16,2,'Fruits',100116,'Watermelon (Tembikai Merah)','Price is for 1 kilogram | RM2.89/kg',2.89,'Watermelon (Tembikai Merah)watermelon.jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 19:11:24','2021-02-04 19:11:24'),(17,2,'Fruits',100117,'Pear (Pir Emas)','Price is per each | RM3.99/each',3.99,'Pear (Pir Emas)ShotType1_540x540 (14).jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 19:12:57','2021-02-04 19:12:57'),(18,2,'Fruits',100118,'Apple (Epal Merah)','Price is per each | RM1.59/each',1.59,'Apple (Epal Merah)ShotType1_540x540 (15).jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 19:14:06','2021-02-04 19:14:06'),(19,2,'Fruits',100119,'Josepine Pineapple (Nanas)','Price is per each | RM2.99/each',2.99,'Josepine Pineapple (Nanas)ShotType1_540x540 (16).jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 19:17:09','2021-02-04 19:17:09'),(20,2,'Fruits',100120,'Orange (Oren)','Price is per each | RM1.49/each',1.49,'Orange (Oren)ShotType1_540x540 (17).jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 19:18:30','2021-02-04 19:18:30'),(21,4,'Meat And Poultry',100121,'Chicken Drumstick (Peha Ayam)','Price is for 0.5 kilogram | RM6.99/0.5kg',6.99,'Chicken Drumstick (Peha Ayam)raw-chicken-drumsticks-500x500.jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 19:23:37','2021-02-04 19:23:37'),(22,4,'Meat And Poultry',100122,'Whole Chicken (Ayam Daging)','Price is for 1 kilogram | RM5.99/kg',5.99,'Whole Chicken (Ayam)Chicken.jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 19:34:42','2021-02-04 19:25:44'),(23,4,'Meat And Poultry',100123,'Meat (Daging Lembu Segar)','Price is for 0.5 kilogram | RM21.99/0.5kg',21.99,'Meat (Daging Lembu Segar)index.png','Admin@gmail.com','Admin@gmail.com','2021-02-04 19:28:47','2021-02-05 11:37:29'),(24,4,'Meat And Poultry',100124,'Cow Meat (Daging Batang Pinang)','Price is for 0.5 kilogram | RM25.99/0.5kg',25.99,'Cow Meat (Daging Batang Pinang)19131386.webp','Admin@gmail.com','Admin@gmail.com','2021-02-04 19:32:28','2021-02-04 19:32:28'),(25,4,'Meat And Poultry',100125,'Whole Chicken (Ayam Kampung)','Price is per each | RM17.50/each',17.5,'Whole Chicken (Ayam Kampung)20752403.webp','Admin@gmail.com','Admin@gmail.com','2021-02-04 19:35:47','2021-02-04 19:35:47'),(26,4,'Meat And Poultry',100126,'Chicken Tail (Tongkeng Ayam)','Price is for 0.5kg | RM5.99/0.5kg',5.99,'Chicken Tail (Tongkeng Ayam)11495016.webp','Admin@gmail.com','Admin@gmail.com','2021-02-04 19:38:44','2021-02-04 19:38:44'),(27,5,'Other',100127,'Egg (Telur Ayam Gred A)','Price is for 30 pieces | RM12.99/papan',12.99,'Egg (Telur Ayam Gred A)download.webp','Admin@gmail.com','Admin@gmail.com','2021-02-04 19:52:01','2021-02-04 19:52:01'),(28,5,'Other',100128,'Egg Pieces (Telur Ayam Gred A)','Price is per each | RM0.45/each',0.45,'Egg Pieces (Telur Ayam Gred A)41547463127_telur (1).jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 19:54:50','2021-02-04 19:55:15'),(29,5,'Other',100129,'Cendol Hijau','Price is for 0.5 kilogram | RM2.55/0.5kg',2.55,'Cendol Hijau360_F_89216895_C0NiYABPqYxDz70VHaVHDHCnyU9cgnjj.jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 19:58:05','2021-02-04 19:58:05'),(30,5,'Other',100130,'Cincau hitam (Block)','Price is per 0.5 kilogram | RM2.55/0.5kg',2.55,'Cincau hitam (Block)UTB8yRE6OiaMiuJk43PTq6ySmXXam.jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 20:03:13','2021-02-04 20:03:13'),(31,5,'Other',100131,'CF Assorted Dessert (Biji Sago Merah)','Price is per each | RM1.98/each',1.98,'CF Assorted Dessert (Biji Sago Merah)ShotType1_540x540 (19).jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 20:05:35','2021-02-04 20:05:35'),(32,5,'Other',100132,'Flavored Cincau','Mango / Strawberry / Lychee | Price is per each | RM1.89/each',1.89,'Flavored CincauCF-SWEETENED-CINCAU-DESSERT-MANGO-250G.jpg','Admin@gmail.com','Admin@gmail.com','2021-02-04 20:07:28','2021-02-04 20:07:28'),(33,1,'Vegetables',100133,'Tomato','Price is for 0.2 kilogram | RM0.87/0.2kg',0.87,'TomatoShotType1_540x540 (20).jpg','Admin@gmail.com','Admin@gmail.com','2021-02-05 11:18:56','2021-02-05 11:18:56'),(34,2,'Fruits',100134,'Mango (Mangga Susu)','Price is for 0.35 kilogram | RM2.45/0.35kg',2.45,'Mango (Mangga Susu)ShotType1_540x540 (21).jpg','Admin@gmail.com','Admin@gmail.com','2021-02-05 11:30:51','2021-02-05 11:30:51'),(35,3,'Fish And Seafood',100135,'Flower Crab (Ketam Bunga)','Price is for 0.15 kilogram | RM5.51/0.15kg',5.51,'Flower Crab (Ketam Bunga)ShotType1_540x540 (22).jpg','Admin@gmail.com','Admin@gmail.com','2021-02-05 11:33:14','2021-02-05 11:33:14'),(36,4,'Meat And Poultry',100136,'Lamb (Daging Kambing Segar)','Price is for 0.5 kilogram | RM22.55/0.5kg',22.55,'Lamb (Daging Kambing Segar)Fresh1-800x800.jpg','Admin@gmail.com','Admin@gmail.com','2021-02-05 11:43:38','2021-02-05 11:43:38'),(37,5,'Others',100137,'Fish Ball (Bebola Ikan)','Price is for 1 packet (230g) | RM4.25/packet',4.25,'Fish Ball (Bebola Ikan)ShotType1_540x540 (23).jpg','Admin@gmail.com','Admin@gmail.com','2021-02-05 11:48:44','2021-02-05 15:22:46');
/*!40000 ALTER TABLE `so_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_role`
--

DROP TABLE IF EXISTS `so_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `so_role` (
  `ID` bigint(20) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `description` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_role`
--

LOCK TABLES `so_role` WRITE;
/*!40000 ALTER TABLE `so_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `so_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_user`
--

DROP TABLE IF EXISTS `so_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `so_user` (
  `ID` bigint(20) NOT NULL,
  `firstName` varchar(225) DEFAULT NULL,
  `lastName` varchar(225) DEFAULT NULL,
  `login` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `mobileNo` varchar(225) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `shippingAddress` varchar(755) DEFAULT NULL,
  `billingAddress` varchar(755) DEFAULT NULL,
  `emailAddress` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_user`
--

LOCK TABLES `so_user` WRITE;
/*!40000 ALTER TABLE `so_user` DISABLE KEYS */;
INSERT INTO `so_user` VALUES (2,'Admin','Admin','Admin@gmail.com','Admin@321','0123476432',1,NULL,NULL,'Admin@gmail.com','Admin@gmail.com','Admin@gmail.com','2019-07-25 03:35:00','2019-07-24 08:43:15'),(8,'Irdina','Alia','leyyaalia','Alia99','0103456789',2,'No 4, Jalan Penggawa 1/1, Taman Penggawa, 45300 Sungai Besar, Selangor.','No 4, Jalan Penggawa 1/1, Taman Penggawa, 45300 Sungai Besar, Selangor.','aliapunyeblog@gmail.com','root','root','2021-02-03 19:52:25','2021-02-03 19:55:24'),(9,'Irdinaa','Alia','aliaroslii','Allahada99','0198765431',2,'NO 4, JALAN PENGGAWA 1/1\r\nTAMAN PENGGAWA','NO 4, JALAN PENGGAWA 1/1\r\nTAMAN PENGGAWA','aliaroslii@gmail.com','root','root','2021-02-05 14:40:09','2021-02-05 14:40:09'),(10,'Second','Admin','admin2','Admin2','0176543245',1,NULL,NULL,'admin2@gmail.com','Admin@gmail.com','Admin@gmail.com','2021-02-05 15:25:01','2021-02-05 15:25:01');
/*!40000 ALTER TABLE `so_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-06  3:14:27
