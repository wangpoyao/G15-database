-- MySQL dump 10.13  Distrib 8.0.13, for macos10.14 (x86_64)
--
-- Host: localhost    Database: g15
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Department`
--

DROP TABLE IF EXISTS `Department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Department` (
  `dId` int(11) NOT NULL,
  `dName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`dId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Department`
--

LOCK TABLES `Department` WRITE;
/*!40000 ALTER TABLE `Department` DISABLE KEYS */;
INSERT INTO `Department` VALUES (1,'英文系'),(2,'資工系'),(3,'中文系'),(4,'航太系'),(5,'資工系'),(6,'歷史系'),(7,'法文系'),(8,'統計系'),(9,'資管系'),(10,'日文系'),(11,'大傳系');
/*!40000 ALTER TABLE `Department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Handling`
--

DROP TABLE IF EXISTS `Handling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Handling` (
  `hNo` int(11) NOT NULL,
  `hDate` int(11) DEFAULT NULL,
  `hPeople` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`hNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Handling`
--

LOCK TABLES `Handling` WRITE;
/*!40000 ALTER TABLE `Handling` DISABLE KEYS */;
INSERT INTO `Handling` VALUES (1,20181106,'王柏堯'),(2,20181112,'曾昱文'),(3,20181117,'陳思樺'),(4,20181128,'王柏堯'),(5,20181205,'曾昱文'),(6,20181225,'陳思樺'),(7,20181231,'王柏堯');
/*!40000 ALTER TABLE `Handling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mulfunction`
--

DROP TABLE IF EXISTS `Mulfunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Mulfunction` (
  `mNo` int(11) NOT NULL,
  `mDate` int(11) DEFAULT NULL,
  `mContent` varchar(225) DEFAULT NULL,
  `mClassroom` varchar(45) DEFAULT NULL,
  `mProblem` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`mNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mulfunction`
--

LOCK TABLES `Mulfunction` WRITE;
/*!40000 ALTER TABLE `Mulfunction` DISABLE KEYS */;
INSERT INTO `Mulfunction` VALUES (1,20181101,'滑鼠','E304','講臺滑鼠故障'),(2,20181103,'電腦','FL403','講桌電腦無法開機'),(3,20181106,'投影機','B403','投影機色彩失真'),(4,20181110,'鍵盤','B702','講臺鍵盤故障'),(5,20181113,'投影機','H113','投影機無法開啟'),(6,20181121,'滑鼠','B513','講桌電腦滑鼠左鍵失靈'),(7,20181201,'麥克風','E514','麥克風無聲音'),(8,20181219,'投影布幕','L203','投影布幕無法升降'),(9,20181227,'麥克風','T318','白板麥克風無聲音'),(10,20181229,'電腦螢幕','T602','電腦螢幕無訊號');
/*!40000 ALTER TABLE `Mulfunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Part`
--

DROP TABLE IF EXISTS `Part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Part` (
  `pNo` int(11) NOT NULL,
  `pName` varchar(45) DEFAULT NULL,
  `pStock` int(11) DEFAULT NULL,
  PRIMARY KEY (`pNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Part`
--

LOCK TABLES `Part` WRITE;
/*!40000 ALTER TABLE `Part` DISABLE KEYS */;
INSERT INTO `Part` VALUES (1,'Asus滑鼠',28),(2,'Acer鍵盤',30),(3,'Benq螢幕',15),(4,'Sony投影機',8),(5,'Panasonic投影布幕',5),(6,'Gigabyte電腦',12);
/*!40000 ALTER TABLE `Part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Student`
--

DROP TABLE IF EXISTS `Student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Student` (
  `sId` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `birthday` int(11) DEFAULT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student`
--

LOCK TABLES `Student` WRITE;
/*!40000 ALTER TABLE `Student` DISABLE KEYS */;
INSERT INTO `Student` VALUES (403110629,'王柏堯',1106),(405417113,'曾昱文',1018),(405418053,'陳思樺',326);
/*!40000 ALTER TABLE `Student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-29 17:48:44
