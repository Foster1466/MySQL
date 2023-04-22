-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: example
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Current Database: `example`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `example` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `example`;

--
-- Table structure for table `bike`
--

DROP TABLE IF EXISTS `bike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bike` (
  `id` int unsigned DEFAULT NULL,
  `model_name` varchar(20) DEFAULT NULL,
  `color` enum('red','blue','black','white') DEFAULT 'black',
  `options` set('light','helmet','lock') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bike`
--

LOCK TABLES `bike` WRITE;
/*!40000 ALTER TABLE `bike` DISABLE KEYS */;
/*!40000 ALTER TABLE `bike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `bid` int NOT NULL,
  `bname` varchar(50) DEFAULT NULL,
  `bprice` decimal(10,2) DEFAULT NULL,
  `bcategory` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (10,'java certification',480.15,'comps'),(20,'android',373.45,'comps');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ca`
--

DROP TABLE IF EXISTS `ca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ca` (
  `ano` int NOT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ano`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca`
--

LOCK TABLES `ca` WRITE;
/*!40000 ALTER TABLE `ca` DISABLE KEYS */;
INSERT INTO `ca` VALUES (1,1000.00);
/*!40000 ALTER TABLE `ca` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `bi_ca` BEFORE INSERT ON `ca` FOR EACH ROW begin
if (new.balance <1000) then
	signal sqlstate '11111' set message_text= 'balance shud not be <1000';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `bu_ca` BEFORE UPDATE ON `ca` FOR EACH ROW begin
if (new.balance<1000) then
	signal sqlstate '11111' set message_text= 'balance shud not be <1000';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `did` int unsigned NOT NULL,
  `dname` varchar(20) NOT NULL,
  `dhod` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (10,'comps','vijay'),(20,'it','seema'),(30,'extc','raj');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept` (
  `did` int unsigned NOT NULL,
  `dname` varchar(20) NOT NULL,
  `dhod` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES (10,'comps','vijay'),(20,'it','seema'),(30,'extc','raj');
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp` (
  `employee_id` int NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (1,'amit','shah',5000.00,'2013-01-01','Banking'),(2,'john','d\'souza',4000.00,'2013-01-01','Insurance'),(3,'nikhil','roy',6000.00,'2013-02-01','Banking'),(4,'raj','sharma',4500.00,'2013-01-01','Insurance');
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp1`
--

DROP TABLE IF EXISTS `emp1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp1` (
  `employee_id` int NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp1`
--

LOCK TABLES `emp1` WRITE;
/*!40000 ALTER TABLE `emp1` DISABLE KEYS */;
INSERT INTO `emp1` VALUES (1,'amit','shah',5000.00,'2013-01-01','Banking'),(2,'john','d\'souza',4000.00,'2013-01-01','Insurance'),(3,'nikhil','roy',6000.00,'2013-02-01','Banking'),(5,'raj','sharma',4500.00,'2013-02-01','Insurance');
/*!40000 ALTER TABLE `emp1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp2`
--

DROP TABLE IF EXISTS `emp2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp2` (
  `employee_id` int NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp2`
--

LOCK TABLES `emp2` WRITE;
/*!40000 ALTER TABLE `emp2` DISABLE KEYS */;
INSERT INTO `emp2` VALUES (1,'amit','shah',5000.00,'2013-01-01','Banking'),(2,'john','d\'souza',4000.00,'2013-01-01','Insurance'),(3,'nikhil','roy',6000.00,'2013-02-01','Banking'),(5,'raj','sharma',4500.00,'2013-02-01','Insurance');
/*!40000 ALTER TABLE `emp2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `eid` int NOT NULL,
  `ename` varchar(20) DEFAULT NULL,
  `esalary` decimal(10,2) DEFAULT NULL,
  `ephone` int DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'jasmeet',8000.00,81923);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t2` BEFORE INSERT ON `employee` FOR EACH ROW begin
	if new.eid <= 0 then
		signal sqlstate '11111' set message_text= 'eid shud be >=1';
	end if;
	if length(new.ename) <2 or new.ename is null then
		signal sqlstate '22222' set message_text= 'Invalid name';
	end if;
	if new.esalary < 8000 then
		signal sqlstate '33333' set message_text= 'Wrong salary';
	end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `java`
--

DROP TABLE IF EXISTS `java`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `java` (
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `java`
--

LOCK TABLES `java` WRITE;
/*!40000 ALTER TABLE `java` DISABLE KEYS */;
INSERT INTO `java` VALUES ('amit'),('pooja'),('vishal'),('rinky');
/*!40000 ALTER TABLE `java` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kc_students`
--

DROP TABLE IF EXISTS `kc_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kc_students` (
  `rno` int unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `marks` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kc_students`
--

LOCK TABLES `kc_students` WRITE;
/*!40000 ALTER TABLE `kc_students` DISABLE KEYS */;
INSERT INTO `kc_students` VALUES (1,'jasmeet',34),(2,'sneha',35),(3,'jay',54);
/*!40000 ALTER TABLE `kc_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kc_students_bkup`
--

DROP TABLE IF EXISTS `kc_students_bkup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kc_students_bkup` (
  `rno` int unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `marks` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kc_students_bkup`
--

LOCK TABLES `kc_students_bkup` WRITE;
/*!40000 ALTER TABLE `kc_students_bkup` DISABLE KEYS */;
INSERT INTO `kc_students_bkup` VALUES (1,'jasmeet',34),(2,'sneha',35),(3,'jay',54);
/*!40000 ALTER TABLE `kc_students_bkup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kc_thane`
--

DROP TABLE IF EXISTS `kc_thane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kc_thane` (
  `rno` int NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `marks` int DEFAULT NULL,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kc_thane`
--

LOCK TABLES `kc_thane` WRITE;
/*!40000 ALTER TABLE `kc_thane` DISABLE KEYS */;
INSERT INTO `kc_thane` VALUES (10,'amit',345,99),(11,'seema',567,92),(12,'jumit',342,58),(13,'pooja',242,32);
/*!40000 ALTER TABLE `kc_thane` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `python`
--

DROP TABLE IF EXISTS `python`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `python` (
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `python`
--

LOCK TABLES `python` WRITE;
/*!40000 ALTER TABLE `python` DISABLE KEYS */;
INSERT INTO `python` VALUES ('amit'),('pooja'),('vineet'),('sanket'),('ganesh');
/*!40000 ALTER TABLE `python` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa`
--

DROP TABLE IF EXISTS `sa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sa` (
  `ano` int NOT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ano`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa`
--

LOCK TABLES `sa` WRITE;
/*!40000 ALTER TABLE `sa` DISABLE KEYS */;
INSERT INTO `sa` VALUES (1,10000.00);
/*!40000 ALTER TABLE `sa` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `bi_sa` BEFORE INSERT ON `sa` FOR EACH ROW begin
if (new.balance <1000) then
	signal sqlstate '11111' set message_text= 'balance shud not be < 1000';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `bu_sa` BEFORE UPDATE ON `sa` FOR EACH ROW begin
if (new.balance <1000) then
	signal sqlstate '11111' set message_text= 'balance shud not be <1000';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `st1`
--

DROP TABLE IF EXISTS `st1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st1` (
  `rno` int unsigned DEFAULT NULL,
  UNIQUE KEY `rno` (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st1`
--

LOCK TABLES `st1` WRITE;
/*!40000 ALTER TABLE `st1` DISABLE KEYS */;
INSERT INTO `st1` VALUES (10),(20),(30);
/*!40000 ALTER TABLE `st1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st2`
--

DROP TABLE IF EXISTS `st2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st2` (
  `rno` int unsigned DEFAULT NULL,
  UNIQUE KEY `rno` (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st2`
--

LOCK TABLES `st2` WRITE;
/*!40000 ALTER TABLE `st2` DISABLE KEYS */;
INSERT INTO `st2` VALUES (10),(20);
/*!40000 ALTER TABLE `st2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st3`
--

DROP TABLE IF EXISTS `st3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st3` (
  `rno` int unsigned DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  UNIQUE KEY `rno` (`rno`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st3`
--

LOCK TABLES `st3` WRITE;
/*!40000 ALTER TABLE `st3` DISABLE KEYS */;
INSERT INTO `st3` VALUES (10,'amit'),(20,'sumit');
/*!40000 ALTER TABLE `st3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st4`
--

DROP TABLE IF EXISTS `st4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st4` (
  `rno` int DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  UNIQUE KEY `rno` (`rno`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st4`
--

LOCK TABLES `st4` WRITE;
/*!40000 ALTER TABLE `st4` DISABLE KEYS */;
INSERT INTO `st4` VALUES (10,'amit'),(10,'sumit'),(20,'amit');
/*!40000 ALTER TABLE `st4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st5`
--

DROP TABLE IF EXISTS `st5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st5` (
  `rno` int DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  UNIQUE KEY `rno` (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st5`
--

LOCK TABLES `st5` WRITE;
/*!40000 ALTER TABLE `st5` DISABLE KEYS */;
/*!40000 ALTER TABLE `st5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu`
--

DROP TABLE IF EXISTS `stu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stu` (
  `rno` int unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` enum('m','f') DEFAULT NULL,
  `location` varchar(20) DEFAULT 'mumbai',
  `eyear` enum('fe','se','te','be') DEFAULT NULL,
  `did` int unsigned DEFAULT NULL,
  `marks` tinyint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu`
--

LOCK TABLES `stu` WRITE;
/*!40000 ALTER TABLE `stu` DISABLE KEYS */;
INSERT INTO `stu` VALUES (101,'amit','m','mumbai','fe',10,89),(102,'tina','f','thane','se',20,98),(103,'rina','f','mumbai','fe',30,34),(104,'sumit','m','mumbai','fe',10,56),(105,'sunny','m','thane','se',20,NULL),(106,'bunny','m','thane','fe',30,88),(107,'vijay','m','mumbai','se',10,65),(108,'jayshree','f','mumbai','fe',10,NULL),(109,'anushka','f','thane','se',20,88),(110,'smita','f','mumbai','se',20,99);
/*!40000 ALTER TABLE `stu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stud`
--

DROP TABLE IF EXISTS `stud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stud` (
  `rno` int NOT NULL AUTO_INCREMENT,
  `lno` int DEFAULT NULL,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stud`
--

LOCK TABLES `stud` WRITE;
/*!40000 ALTER TABLE `stud` DISABLE KEYS */;
INSERT INTO `stud` VALUES (1,110),(2,120),(10,146),(51,130),(52,130),(53,146),(54,146);
/*!40000 ALTER TABLE `stud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stud1`
--

DROP TABLE IF EXISTS `stud1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stud1` (
  `rno` int NOT NULL AUTO_INCREMENT,
  `lno` int DEFAULT NULL,
  UNIQUE KEY `rno` (`rno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stud1`
--

LOCK TABLES `stud1` WRITE;
/*!40000 ALTER TABLE `stud1` DISABLE KEYS */;
INSERT INTO `stud1` VALUES (1,110),(2,120);
/*!40000 ALTER TABLE `stud1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stud2`
--

DROP TABLE IF EXISTS `stud2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stud2` (
  `rno` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stud2`
--

LOCK TABLES `stud2` WRITE;
/*!40000 ALTER TABLE `stud2` DISABLE KEYS */;
INSERT INTO `stud2` VALUES (101),(106),(111);
/*!40000 ALTER TABLE `stud2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stud3`
--

DROP TABLE IF EXISTS `stud3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stud3` (
  `rno` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stud3`
--

LOCK TABLES `stud3` WRITE;
/*!40000 ALTER TABLE `stud3` DISABLE KEYS */;
INSERT INTO `stud3` VALUES (100,'Jasmeet'),(101,'sumeet'),(106,'manmeet'),(111,'gurmeet');
/*!40000 ALTER TABLE `stud3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `rno` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `marks` tinyint unsigned DEFAULT NULL,
  `location` varchar(20) DEFAULT 'mumbai',
  `gender` enum('m','f') DEFAULT NULL,
  `prog_lang` set('java','android','python','django','golang') DEFAULT NULL,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'amit',90,'mumbai','m','java'),(2,'seema',40,'thane','f','java'),(3,'raj',60,'mumbai','m','java'),(4,'reema',70,'thane','f','python'),(5,'vijay',78,'mumbai','m','golang'),(6,'deepika',92,'thane','f',''),(7,'jai',83,'mumbai','m','java'),(23,'jasmeet',34,'mumbai','m','java'),(24,'og',34,'mumbai','m','java');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t1` BEFORE INSERT ON `student` FOR EACH ROW begin
	if new.rno<= 0 then
		signal sqlstate '12345' set message_text= 'rno shud be >= 1';
	end if;
	if length(new.name)<2 or new.name is null or (not new.name regexp '[A-Za-z]+$')then
		signal sqlstate '23456' set message_text= 'invalid name';
	end if;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `t1`
--

DROP TABLE IF EXISTS `t1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t1` (
  `a` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t1`
--

LOCK TABLES `t1` WRITE;
/*!40000 ALTER TABLE `t1` DISABLE KEYS */;
INSERT INTO `t1` VALUES (NULL),(NULL),(-10),(10),(123),(124);
/*!40000 ALTER TABLE `t1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t2`
--

DROP TABLE IF EXISTS `t2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t2` (
  `b` tinyint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t2`
--

LOCK TABLES `t2` WRITE;
/*!40000 ALTER TABLE `t2` DISABLE KEYS */;
INSERT INTO `t2` VALUES (NULL),(NULL),(10),(110),(210),(255);
/*!40000 ALTER TABLE `t2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t3`
--

DROP TABLE IF EXISTS `t3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t3` (
  `a` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t3`
--

LOCK TABLES `t3` WRITE;
/*!40000 ALTER TABLE `t3` DISABLE KEYS */;
INSERT INTO `t3` VALUES (10),(-10);
/*!40000 ALTER TABLE `t3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t4`
--

DROP TABLE IF EXISTS `t4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t4` (
  `c` tinyint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t4`
--

LOCK TABLES `t4` WRITE;
/*!40000 ALTER TABLE `t4` DISABLE KEYS */;
INSERT INTO `t4` VALUES (10),(250);
/*!40000 ALTER TABLE `t4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t5`
--

DROP TABLE IF EXISTS `t5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t5` (
  `c` tinyint unsigned NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t5`
--

LOCK TABLES `t5` WRITE;
/*!40000 ALTER TABLE `t5` DISABLE KEYS */;
INSERT INTO `t5` VALUES (10),(10),(100),(10),(120),(10);
/*!40000 ALTER TABLE `t5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t6`
--

DROP TABLE IF EXISTS `t6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t6` (
  `a` tinyint(10) unsigned zerofill DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t6`
--

LOCK TABLES `t6` WRITE;
/*!40000 ALTER TABLE `t6` DISABLE KEYS */;
INSERT INTO `t6` VALUES (NULL),(0000000001),(0000000012),(0000000123),(0000000255);
/*!40000 ALTER TABLE `t6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t7`
--

DROP TABLE IF EXISTS `t7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t7` (
  `a` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t7`
--

LOCK TABLES `t7` WRITE;
/*!40000 ALTER TABLE `t7` DISABLE KEYS */;
INSERT INTO `t7` VALUES (10),(10.2345),(-34.2345);
/*!40000 ALTER TABLE `t7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t8`
--

DROP TABLE IF EXISTS `t8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t8` (
  `a` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t8`
--

LOCK TABLES `t8` WRITE;
/*!40000 ALTER TABLE `t8` DISABLE KEYS */;
INSERT INTO `t8` VALUES (10),(1234567890);
/*!40000 ALTER TABLE `t8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t9`
--

DROP TABLE IF EXISTS `t9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t9` (
  `a` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t9`
--

LOCK TABLES `t9` WRITE;
/*!40000 ALTER TABLE `t9` DISABLE KEYS */;
INSERT INTO `t9` VALUES (1234567890.00),(12345678902345345.52);
/*!40000 ALTER TABLE `t9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `id` int unsigned DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `priority` enum('low','medium','high') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (10,'cold food','medium'),(20,'les qty','low');
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v1`
--

DROP TABLE IF EXISTS `v1`;
/*!50001 DROP VIEW IF EXISTS `v1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v1` AS SELECT 
 1 AS `ename`,
 1 AS `esalary`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v2`
--

DROP TABLE IF EXISTS `v2`;
/*!50001 DROP VIEW IF EXISTS `v2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v2` AS SELECT 
 1 AS `name`,
 1 AS `salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v4`
--

DROP TABLE IF EXISTS `v4`;
