-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `No` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `total_order` int(11) NOT NULL,
  PRIMARY KEY (`No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Muthuraj','9833970019','8 kanchanban rabodi',20),(2,'aditya','9765348901','12 shivshushti rabodi',15),(3,'pankaj','7834592215','19 shivshushti rabodi',6),(4,'maau','8251648259','f03 rustomji majivada',38),(5,'swaroop','9820421568','25 prajakta rabodi',13),(6,'vaishu','9855884321','b15 highland dhokali',41),(7,'nidhi','9565852911','34 tulip flower valley',3),(8,'hitesh','9920031586','a10 akashganag rabodi',18),(9,'amit','8654396432','b41 rutupark majidada',2),(10,'sweety','9960033367','16 sunflower manpada',32),(11,'swapnil','8234750848','c07 atlas flower valley',14),(12,'deepak','8574703248','d30 lodha majivada',10),(13,'sophia','9924008031','e28 rustomji majiwada',19),(14,'deepika','8898721345','41 saket saket road',27),(15,'anurag','9879683213','17 antiler majivada',7);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `menu_no` int(11) NOT NULL,
  `flavour` varchar(30) NOT NULL,
  `spicy_level` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`menu_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'classic','medium','roll',90.00),(2,'classic','medium','longer',110.00),(3,'classic','medium','burger',80.00),(4,'classic','medium','sandwich',90.00),(5,'classic','medium','plate',220.00),(6,'bhut jolokia','spicy','roll',100.00),(7,'bhut jolokia','spicy','longer',120.00),(8,'bhut jolokia','spicy','burger',80.00),(9,'bhut jolokia','spicy','sandwich',100.00),(10,'bhut jolokia','spicy','plate',240.00),(11,'peri-peri','spicy','roll',110.00),(12,'peri-peri','spicy','longer',135.00),(13,'peri-peri','spicy','burger',100.00),(14,'peri-peri','spicy','sandwich',110.00),(15,'peri-peri','spicy','plate',260.00),(16,'bbq','sweet','roll',90.00),(17,'bbq','sweet','longer',110.00),(18,'bbq','sweet','burger',80.00),(19,'bbq','sweet','sandwich',90.00),(20,'bbq','sweet','plate',240.00),(21,'mexican','medium','roll',105.00),(22,'mexican','medium','longer',135.00),(23,'mexican','medium','burger',95.00),(24,'mexican','medium','sandwich',105.00),(25,'mexican','medium','plate',275.00),(26,'smokey','spicy','roll',115.00),(27,'smokey','spicy','longer',145.00),(28,'smokey','spicy','burger',105.00),(29,'smokey','spicy','sandwich',115.00),(30,'smokey','spicy','plate',285.00),(31,'sweet chilli','sweet','roll',90.00),(32,'sweet chilli','sweet','longer',110.00),(33,'sweet chilli','sweet','burger',80.00),(34,'sweet chilli','sweet','sandwich',90.00),(35,'sweet chilli','sweet','plate',240.00),(36,'fiery','extreme','roll',115.00),(37,'fiery','extreme','longer',145.00),(38,'fiery','extreme','burger',105.00),(39,'fiery','extreme','sandwich',115.00),(40,'fiery','extreme','plate',285.00);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!50001 DROP VIEW IF EXISTS `order_details`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `order_details` (
  `orderid` tinyint NOT NULL,
  `item_Id` tinyint NOT NULL,
  `customerid` tinyint NOT NULL,
  `Cname` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `having_takeaway` tinyint NOT NULL,
  `No` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `phone_no` tinyint NOT NULL,
  `address` tinyint NOT NULL,
  `total_order` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `item_Id` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `Cname` varchar(30) DEFAULT NULL,
  `type` varchar(30) NOT NULL,
  `having_takeaway` varchar(30) NOT NULL,
  PRIMARY KEY (`orderid`),
  KEY `item_Id` (`item_Id`),
  KEY `customerid` (`customerid`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`item_Id`) REFERENCES `menu` (`menu_no`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`customerid`) REFERENCES `customers` (`No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1001,21,1,'muthuraj','online','takeaway'),(1002,40,12,'deepak','offline','having'),(1003,33,9,'amit','offline','takeaway'),(1004,13,15,'anurag','online','takeaway'),(1005,5,3,'pankaj','offline','having'),(1006,11,13,'sophia','offline','having'),(1007,16,10,'sweety','offline','takeaway'),(1008,26,2,'aditya','online','takeaway'),(1009,6,14,'deepika','online','takeaway'),(1010,12,1,'muthuraj','offline','having'),(1011,31,11,'swapnil','offline','having'),(1012,36,5,'swaroop','online','takeaway'),(1013,38,7,'nidhi','offline','having'),(1014,20,8,'hitesh','offline','takeaway'),(1015,30,9,'amit','offline','having'),(1016,1,14,'deepika','online','takeaway'),(1017,25,4,'maau','online','takeaway'),(1018,8,5,'swaroop','offline','having'),(1019,4,13,'sophia','offline','having'),(1020,30,9,'amit','offline','having'),(1021,26,4,'maau','online','takeaway'),(1022,27,1,'muthuraj','offline','takeaway'),(1023,8,6,'vaishu','offline','having'),(1024,19,15,'anurag','offline','takeaway'),(1025,32,10,'sweety','offline','having'),(1026,39,11,'swapnil','online','takeaway'),(1027,29,4,'maau','offline','having'),(1028,4,12,'deepak','offline','takeaway'),(1029,21,5,'swaroop','online','takeaway'),(1030,32,14,'deepika','offline','having'),(1031,10,2,'aditya','online','takeaway'),(1032,18,6,'vaishu','offline','takeaway'),(1033,18,9,'amit','offline','takeaway'),(1034,34,14,'deepika','offline','having'),(1035,11,4,'maau','offline','having'),(1036,21,15,'anurag','offline','takeaway'),(1037,40,12,'deepak','online','takeaway'),(1038,36,7,'nidhi','online','takeaway'),(1039,3,3,'pankaj','offline','takeaway'),(1040,19,14,'deepika','offline','having');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `order_details`
--

/*!50001 DROP TABLE IF EXISTS `order_details`*/;
/*!50001 DROP VIEW IF EXISTS `order_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_details` AS (select `orders`.`orderid` AS `orderid`,`orders`.`item_Id` AS `item_Id`,`orders`.`customerid` AS `customerid`,`orders`.`Cname` AS `Cname`,`orders`.`type` AS `type`,`orders`.`having_takeaway` AS `having_takeaway`,`customers`.`No` AS `No`,`customers`.`name` AS `name`,`customers`.`phone_no` AS `phone_no`,`customers`.`address` AS `address`,`customers`.`total_order` AS `total_order` from (`orders` join `customers` on(`orders`.`customerid` = `customers`.`No`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-21 12:56:56
