-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: final_project
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `cat_id` int NOT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (0,NULL,'this is the category one','all products'),(5,NULL,'bed','beds'),(9,NULL,'imported products','chair and tables'),(10,NULL,'imported category products','pure metal chairs');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `bod` date DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `walletbalance` double DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'1992-02-05','delhi','2022-04-01 19:41:48.000000','Nishant ','jaipur','singh','nishant@gmail.com','nishant@123','9883273282','429201','delhi',102000),(2,'1991-02-03','sangli','2022-04-01 19:41:48.000000','sandesh','sangli','mote','sandesh@gmail.com','sandesh@123','9808989889','416416','sangli',46000),(3,'1991-02-03','pune','2022-09-01 19:41:48.000000','anjali','pune','pawar','anjali@gmail.com','anjali@123','9096989889','413411','pune',400000),(4,'1991-02-03','mumbai','2022-12-01 19:41:48.000000','kiran','mumbai','sargar','kiran@gmail.com','kiran@123','9988989889','413411','mumbai',800000);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customised_product`
--

DROP TABLE IF EXISTS `customised_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customised_product` (
  `pid` int NOT NULL,
  `budget` double NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `c_id` int DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FKtaa6arxaviplvgvmti0yqe9jf` (`c_id`),
  CONSTRAINT `FKtaa6arxaviplvgvmti0yqe9jf` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customised_product`
--

LOCK TABLES `customised_product` WRITE;
/*!40000 ALTER TABLE `customised_product` DISABLE KEYS */;
INSERT INTO `customised_product` VALUES (0,10000,'xyz',0,'1c265cc843424cd9abca96f1991cbb39',1);
/*!40000 ALTER TABLE `customised_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (33);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `o_id` int NOT NULL,
  `c_id` int DEFAULT NULL,
  `d_date` date DEFAULT NULL,
  `o_date` date DEFAULT NULL,
  `paymentmode` varchar(255) DEFAULT NULL,
  `p_qty` int DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `p_id` int DEFAULT NULL,
  PRIMARY KEY (`o_id`),
  KEY `FKjvhi15wga0mdm89xm7kgcjbhq` (`p_id`),
  CONSTRAINT `FKjvhi15wga0mdm89xm7kgcjbhq` FOREIGN KEY (`p_id`) REFERENCES `products` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (0,1,'2022-04-11','2022-04-11','Cash on Dilevery',1,0,'yet to be delivered',4),(14,1,'2022-04-16','2022-04-16','Cash on Dilevery',1,4,'packed',11),(25,4,'2022-04-18','2022-04-18','Cash on Dilevery',1,8,'yet to be delivered',23),(26,3,'2022-04-18','2022-04-18','Cash on Dilevery',1,9,'yet to be delivered',22),(31,2,'2022-04-20','2022-04-20','Cash on Dilevery',1,8,'yet to be delivered',19);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `p_id` int NOT NULL,
  `cat_id` int DEFAULT NULL,
  `created_timestamp` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `qty` int NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (4,0,NULL,'l shaped stainless steel imported product from us','Sofa set',120000,0,'7e35381994fe49e2a3290c223db5e0cc'),(6,5,NULL,'steel fabricated powder coated bed','bed',30000,1,'297ffe2762c94916b22acda6ded4e3c2'),(8,5,NULL,'pure metal fabricated','bed',24000,2,'0011a2ec2409458c97fb349f285e3d8f'),(11,10,NULL,'pure metal fabricated','chairs and table',20000,2,'29f4bf744050451e986e3ef808ca77a2'),(19,9,NULL,'imported from uk ','gold plated chair',22000,11,'0290e4f90a384f988e74777a7c30b5c3'),(20,9,NULL,'smooth finished product','chair cum sofa',80000,2,'6f4571fc89c94d46b2b827fe55e9a7a0'),(21,9,NULL,'stainless steel, hardened product , smooth finished','relax chair',10000,3,'ca5c2d53765a480dbc67b6485d94206a'),(22,9,NULL,'this is in one product you can get all set of table and chairs','chair and table set ',300000,1,'ab8af8a27f16424aacc51d448bff4ce9'),(23,10,NULL,'this is austenite hardened pure metal chair imported product','austenite hardened pure metal chair',20000,3,'79e514d1b004437dbd234df601555eb3');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `r_id` int NOT NULL,
  `c_id` int DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `p_id` int DEFAULT NULL,
  `star` int NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (0,1,'very nice sofa',0,3),(12,1,'nice',11,4),(24,4,'very nice',23,4);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'2022-04-01 00:00:00.000000','amol','mote','amol@gmail.com','amol@123','9096713191','admin'),(2,'2022-04-01 00:00:00.000000','priyanka','gosavi','priyanka@gmail.com','priyanka@123','9096713878','manager'),(4,NULL,'santosh ','khandekar','sk@gmail.com','sk@123','8180093438','employee'),(6,NULL,'suyog','c','suyog@gmail.com','suyog@123','9898398398','employee'),(7,NULL,'sagar','patil','sagar@gmail.com','sagar@123','989898989','admin'),(8,NULL,'supriya','sargar','supriya@gmail.com','supriya@123','9989989809','employee'),(11,NULL,'sagar','yamgar','sagar12@gmail.com','sagarr12@123','98989889899','employee'),(32,NULL,'adesh','mote','adesh@gmail.com','amol@123','9097626262','zzzzzz');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-02 16:07:21
