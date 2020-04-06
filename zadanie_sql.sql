-- MySQL dump 10.16  Distrib 10.1.44-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: office
-- ------------------------------------------------------
-- Server version	10.1.44-MariaDB-0ubuntu0.18.04.1

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `person` int(11) DEFAULT NULL,
  `designation` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `person` (`person`),
  KEY `designation` (`designation`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`person`) REFERENCES `person` (`id`) ON DELETE CASCADE,
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`designation`) REFERENCES `workplace` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'2020-04-06 08:00:00','2020-04-06 16:00:00',1,1),(3,'2020-04-06 17:00:00','2020-04-06 19:00:00',2,1),(4,'2020-04-06 19:00:00','2020-04-06 21:00:00',5,1),(5,'2020-04-07 05:00:00','2020-04-07 07:00:00',1,3);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `model` varchar(255) NOT NULL,
  `designation` int(11) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `worth` float(7,2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `des_id` (`designation`),
  CONSTRAINT `equipment_ibfk_1` FOREIGN KEY (`designation`) REFERENCES `workplace` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,'Drukarka','Xerox WorkCentre 3345',3,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(2,'Drukarka','Xerox WorkCentre 3345',5,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(3,'Drukarka','Xerox WorkCentre 3345',7,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(4,'Drukarka','Xerox WorkCentre 3345',9,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(5,'Drukarka','Xerox WorkCentre 3345',11,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(6,'Drukarka','Xerox WorkCentre 3345',13,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(7,'Drukarka','Xerox WorkCentre 3345',15,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(8,'Drukarka','Xerox WorkCentre 3345',17,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(9,'Drukarka','Xerox WorkCentre 3345',19,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(10,'Drukarka','Xerox WorkCentre 3345',21,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(11,'Drukarka','Xerox WorkCentre 3345',23,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(12,'Drukarka','Xerox WorkCentre 3345',25,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(13,'Drukarka','Xerox WorkCentre 3345',27,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(14,'Drukarka','Xerox WorkCentre 3345',29,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(15,'Drukarka','Xerox WorkCentre 3345',31,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(16,'Drukarka','Xerox WorkCentre 3345',33,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(17,'Drukarka','Xerox WorkCentre 3345',35,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(18,'Drukarka','Xerox WorkCentre 3345',37,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(19,'Drukarka','Xerox WorkCentre 3345',39,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(20,'Drukarka','Xerox WorkCentre 3345',41,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(21,'Drukarka','Xerox WorkCentre 3345',43,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(22,'Drukarka','Xerox WorkCentre 3345',45,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(23,'Drukarka','Xerox WorkCentre 3345',47,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(24,'Drukarka','Xerox WorkCentre 3345',49,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(25,'Drukarka','Xerox WorkCentre 3345',51,2016,1481.00,'Drukarka Xerox WorkCentre 3345'),(26,'Drukarka','HP Color Laser MFP 179 fnw',2,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(27,'Drukarka','HP Color Laser MFP 179 fnw',4,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(28,'Drukarka','HP Color Laser MFP 179 fnw',6,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(29,'Drukarka','HP Color Laser MFP 179 fnw',8,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(30,'Drukarka','HP Color Laser MFP 179 fnw',10,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(31,'Drukarka','HP Color Laser MFP 179 fnw',12,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(32,'Drukarka','HP Color Laser MFP 179 fnw',14,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(33,'Drukarka','HP Color Laser MFP 179 fnw',16,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(34,'Drukarka','HP Color Laser MFP 179 fnw',18,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(35,'Drukarka','HP Color Laser MFP 179 fnw',20,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(36,'Drukarka','HP Color Laser MFP 179 fnw',22,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(37,'Drukarka','HP Color Laser MFP 179 fnw',24,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(38,'Drukarka','HP Color Laser MFP 179 fnw',26,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(39,'Drukarka','HP Color Laser MFP 179 fnw',28,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(40,'Drukarka','HP Color Laser MFP 179 fnw',30,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(41,'Drukarka','HP Color Laser MFP 179 fnw',32,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(42,'Drukarka','HP Color Laser MFP 179 fnw',34,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(43,'Drukarka','HP Color Laser MFP 179 fnw',36,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(44,'Drukarka','HP Color Laser MFP 179 fnw',38,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(45,'Drukarka','HP Color Laser MFP 179 fnw',40,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(46,'Drukarka','HP Color Laser MFP 179 fnw',42,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(47,'Drukarka','HP Color Laser MFP 179 fnw',44,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(48,'Drukarka','HP Color Laser MFP 179 fnw',46,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(49,'Drukarka','HP Color Laser MFP 179 fnw',48,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(50,'Drukarka','HP Color Laser MFP 179 fnw',50,2015,1049.00,'Drukarka HP Color Laser MFP 179 fnw'),(51,'Komputer','Dell Vostro 3471',5,2016,2720.00,'Komputer Dell Vostro 3471'),(52,'Komputer','Dell Vostro 3471',10,2016,2720.00,'Komputer Dell Vostro 3471'),(53,'Komputer','Dell Vostro 3471',15,2016,2720.00,'Komputer Dell Vostro 3471'),(54,'Komputer','Dell Vostro 3471',20,2016,2720.00,'Komputer Dell Vostro 3471'),(55,'Komputer','Dell Vostro 3471',25,2016,2720.00,'Komputer Dell Vostro 3471'),(56,'Komputer','Dell Vostro 3471',30,2016,2720.00,'Komputer Dell Vostro 3471'),(57,'Komputer','Dell Vostro 3471',35,2016,2720.00,'Komputer Dell Vostro 3471'),(58,'Komputer','Dell Vostro 3471',40,2016,2720.00,'Komputer Dell Vostro 3471'),(59,'Komputer','Dell Vostro 3471',45,2016,2720.00,'Komputer Dell Vostro 3471'),(60,'Komputer','Dell Vostro 3471',50,2016,2720.00,'Komputer Dell Vostro 3471'),(61,'Komputer','Dell Optiplex 9020M',6,2015,1029.00,'Komputer Dell Optiplex 9020M'),(62,'Komputer','Dell Optiplex 9020M',11,2015,1029.00,'Komputer Dell Optiplex 9020M'),(63,'Komputer','Dell Optiplex 9020M',16,2015,1029.00,'Komputer Dell Optiplex 9020M'),(64,'Komputer','Dell Optiplex 9020M',21,2015,1029.00,'Komputer Dell Optiplex 9020M'),(65,'Komputer','Dell Optiplex 9020M',26,2015,1029.00,'Komputer Dell Optiplex 9020M'),(66,'Komputer','Dell Optiplex 9020M',31,2015,1029.00,'Komputer Dell Optiplex 9020M'),(67,'Komputer','Dell Optiplex 9020M',36,2015,1029.55,'Komputer Dell Optiplex 9020M'),(68,'Komputer','Dell Optiplex 9020M',41,2015,1029.00,'Komputer Dell Optiplex 9020M'),(69,'Komputer','Dell Optiplex 9020M',46,2015,1029.00,'Komputer Dell Optiplex 9020M'),(70,'Komputer','Dell Optiplex 9020M',51,2015,1029.00,'Komputer Dell Optiplex 9020M'),(71,'Telefon','Panasonic KX-HDV230',2,2015,459.00,'Telefon Panasonic KX-HDV230'),(72,'Telefon','Panasonic KX-HDV230',1,2015,459.00,'Telefon Panasonic KX-HDV230'),(73,'Telefon','Panasonic KX-HDV230',3,2015,459.00,'Telefon Panasonic KX-HDV230'),(74,'Telefon','Panasonic KX-HDV230',4,2015,459.00,'Telefon Panasonic KX-HDV230'),(75,'Telefon','Panasonic KX-HDV230',5,2015,459.00,'Telefon Panasonic KX-HDV230'),(76,'Telefon','Panasonic KX-HDV230',6,2015,459.00,'Telefon Panasonic KX-HDV230'),(77,'Telefon','Panasonic KX-HDV230',7,2015,459.00,'Telefon Panasonic KX-HDV230'),(78,'Telefon','Panasonic KX-HDV230',8,2015,459.00,'Telefon Panasonic KX-HDV230'),(79,'Telefon','Panasonic KX-HDV230',9,2015,459.00,'Telefon Panasonic KX-HDV230'),(80,'Telefon','Panasonic KX-HDV230',10,2015,459.00,'Telefon Panasonic KX-HDV230'),(81,'Telefon','Panasonic KX-HDV230',11,2015,459.00,'Telefon Panasonic KX-HDV230'),(82,'Telefon','Panasonic KX-HDV230',12,2015,459.00,'Telefon Panasonic KX-HDV230'),(83,'Telefon','Panasonic KX-HDV230',13,2015,459.00,'Telefon Panasonic KX-HDV230'),(84,'Telefon','Panasonic KX-HDV230',14,2015,459.00,'Telefon Panasonic KX-HDV230'),(85,'Telefon','Panasonic KX-HDV230',15,2015,459.00,'Telefon Panasonic KX-HDV230'),(86,'Telefon','Panasonic KX-HDV230',16,2015,459.00,'Telefon Panasonic KX-HDV230'),(87,'Telefon','Panasonic KX-HDV230',17,2015,459.00,'Telefon Panasonic KX-HDV230'),(88,'Telefon','Panasonic KX-HDV230',18,2015,459.00,'Telefon Panasonic KX-HDV230'),(89,'Telefon','Panasonic KX-HDV230',19,2015,459.00,'Telefon Panasonic KX-HDV230'),(90,'Telefon','Panasonic KX-HDV230',20,2015,459.00,'Telefon Panasonic KX-HDV230'),(91,'Telefon','Panasonic KX-HDV230',21,2015,459.00,'Telefon Panasonic KX-HDV230'),(92,'Telefon','Panasonic KX-HDV230',22,2015,459.00,'Telefon Panasonic KX-HDV230'),(93,'Telefon','Panasonic KX-HDV230',23,2015,459.00,'Telefon Panasonic KX-HDV230'),(94,'Telefon','Panasonic KX-HDV230',24,2015,459.00,'Telefon Panasonic KX-HDV230'),(95,'Telefon','Panasonic KX-HDV230',25,2015,459.00,'Telefon Panasonic KX-HDV230'),(96,'Telefon','Panasonic KX-HDV230',26,2015,459.00,'Telefon Panasonic KX-HDV230'),(97,'Telefon','Panasonic KX-HDV230',27,2015,459.00,'Telefon Panasonic KX-HDV230'),(98,'Telefon','Panasonic KX-HDV230',28,2015,459.00,'Telefon Panasonic KX-HDV230'),(99,'Telefon','Panasonic KX-HDV230',29,2015,459.00,'Telefon Panasonic KX-HDV230'),(100,'Telefon','Panasonic KX-HDV230',30,2015,459.00,'Telefon Panasonic KX-HDV230'),(101,'Telefon','Panasonic KX-HDV230',31,2015,459.00,'Telefon Panasonic KX-HDV230'),(102,'Telefon','Panasonic KX-HDV230',32,2015,459.00,'Telefon Panasonic KX-HDV230'),(103,'Telefon','Panasonic KX-HDV230',33,2015,459.00,'Telefon Panasonic KX-HDV230'),(104,'Telefon','Panasonic KX-HDV230',34,2015,459.00,'Telefon Panasonic KX-HDV230'),(105,'Telefon','Panasonic KX-HDV230',35,2015,459.00,'Telefon Panasonic KX-HDV230'),(106,'Telefon','Panasonic KX-HDV230',36,2015,459.00,'Telefon Panasonic KX-HDV230'),(107,'Telefon','Panasonic KX-HDV230',37,2015,459.00,'Telefon Panasonic KX-HDV230'),(108,'Telefon','Panasonic KX-HDV230',38,2015,459.00,'Telefon Panasonic KX-HDV230'),(109,'Telefon','Panasonic KX-HDV230',39,2015,459.00,'Telefon Panasonic KX-HDV230'),(110,'Telefon','Panasonic KX-HDV230',40,2015,459.00,'Telefon Panasonic KX-HDV230'),(111,'Telefon','Panasonic KX-HDV230',41,2015,459.00,'Telefon Panasonic KX-HDV230'),(112,'Telefon','Panasonic KX-HDV230',42,2015,459.00,'Telefon Panasonic KX-HDV230'),(113,'Telefon','Panasonic KX-HDV230',43,2015,459.00,'Telefon Panasonic KX-HDV230'),(114,'Telefon','Panasonic KX-HDV230',44,2015,459.00,'Telefon Panasonic KX-HDV230'),(115,'Telefon','Panasonic KX-HDV230',45,2015,459.00,'Telefon Panasonic KX-HDV230'),(116,'Telefon','Panasonic KX-HDV230',46,2015,459.00,'Telefon Panasonic KX-HDV230'),(117,'Telefon','Panasonic KX-HDV230',47,2015,459.00,'Telefon Panasonic KX-HDV230'),(118,'Telefon','Panasonic KX-HDV230',48,2015,459.00,'Telefon Panasonic KX-HDV230'),(119,'Telefon','Panasonic KX-HDV230',49,2015,459.00,'Telefon Panasonic KX-HDV230'),(120,'Telefon','Panasonic KX-HDV230',50,2015,459.00,'Telefon Panasonic KX-HDV230'),(121,'Telefon','Panasonic KX-HDV230',51,2015,459.00,'Telefon Panasonic KX-HDV230'),(122,'Niszczarka','Fellowes 12C',3,2015,447.00,'Niszczarka Fellowes 12C'),(123,'Niszczarka','Fellowes 12C',6,2015,447.00,'Niszczarka Fellowes 12C'),(124,'Niszczarka','Fellowes 12C',9,2015,447.00,'Niszczarka Fellowes 12C'),(125,'Niszczarka','Fellowes 12C',12,2015,447.00,'Niszczarka Fellowes 12C'),(126,'Niszczarka','Fellowes 12C',15,2015,447.00,'Niszczarka Fellowes 12C'),(127,'Niszczarka','Fellowes 12C',18,2015,447.00,'Niszczarka Fellowes 12C'),(128,'Niszczarka','Fellowes 12C',21,2015,447.00,'Niszczarka Fellowes 12C'),(129,'Niszczarka','Fellowes 12C',24,2015,447.00,'Niszczarka Fellowes 12C'),(130,'Niszczarka','Fellowes 12C',27,2015,447.00,'Niszczarka Fellowes 12C'),(131,'Niszczarka','Fellowes 12C',30,2015,447.00,'Niszczarka Fellowes 12C'),(132,'Niszczarka','Fellowes 12C',33,2015,447.00,'Niszczarka Fellowes 12C'),(133,'Niszczarka','Fellowes 12C',36,2015,447.00,'Niszczarka Fellowes 12C'),(134,'Niszczarka','Fellowes 12C',39,2015,447.00,'Niszczarka Fellowes 12C'),(135,'Niszczarka','Fellowes 12C',42,2015,447.00,'Niszczarka Fellowes 12C'),(136,'Niszczarka','Fellowes 12C',45,2015,447.00,'Niszczarka Fellowes 12C'),(137,'Niszczarka','Fellowes 12C',48,2015,447.00,'Niszczarka Fellowes 12C'),(138,'Niszczarka','Fellowes 12C',51,2015,447.00,'Niszczarka Fellowes 12C'),(139,'Komputer','Dell Optiplex 790 SFF',2,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(140,'Komputer','Dell Optiplex 790 SFF',1,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(141,'Komputer','Dell Optiplex 790 SFF',3,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(142,'Komputer','Dell Optiplex 790 SFF',4,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(143,'Komputer','Dell Optiplex 790 SFF',7,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(144,'Komputer','Dell Optiplex 790 SFF',8,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(145,'Komputer','Dell Optiplex 790 SFF',9,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(146,'Komputer','Dell Optiplex 790 SFF',12,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(147,'Komputer','Dell Optiplex 790 SFF',13,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(148,'Komputer','Dell Optiplex 790 SFF',14,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(149,'Komputer','Dell Optiplex 790 SFF',17,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(150,'Komputer','Dell Optiplex 790 SFF',18,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(151,'Komputer','Dell Optiplex 790 SFF',19,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(152,'Komputer','Dell Optiplex 790 SFF',22,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(153,'Komputer','Dell Optiplex 790 SFF',23,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(154,'Komputer','Dell Optiplex 790 SFF',24,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(155,'Komputer','Dell Optiplex 790 SFF',27,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(156,'Komputer','Dell Optiplex 790 SFF',28,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(157,'Komputer','Dell Optiplex 790 SFF',29,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(158,'Komputer','Dell Optiplex 790 SFF',32,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(159,'Komputer','Dell Optiplex 790 SFF',33,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(160,'Komputer','Dell Optiplex 790 SFF',34,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(161,'Komputer','Dell Optiplex 790 SFF',37,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(162,'Komputer','Dell Optiplex 790 SFF',38,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(163,'Komputer','Dell Optiplex 790 SFF',39,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(164,'Komputer','Dell Optiplex 790 SFF',42,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(165,'Komputer','Dell Optiplex 790 SFF',43,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(166,'Komputer','Dell Optiplex 790 SFF',44,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(167,'Komputer','Dell Optiplex 790 SFF',47,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(168,'Komputer','Dell Optiplex 790 SFF',48,2017,449.00,'Komputer Dell Optiplex 790 SFF'),(169,'Komputer','Dell Optiplex 790 SFF',49,2017,449.00,'Komputer Dell Optiplex 790 SFF');
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Oskar','Witkowski','504202800','Oskar0@office.pl','opis'),(2,'Jan','Szczepański','504202801','Jan1@office.pl','opis'),(3,'Ludwik','Zakrzewska','504202802','Ludwik2@office.pl','opis'),(4,'Kuba','Laskowska','504202803','Kuba3@office.pl','opis'),(5,'Czesław','Szczepański','504202804','Czesław4@office.pl','opis'),(6,'Filip','Ziółkowska','504202805','Filip5@office.pl','opis'),(7,'Przemysław','Błaszczyk','504202806','Przemysław6@office.pl','opis'),(8,'Jerzy','Bąk','504202807','Jerzy7@office.pl','opis'),(9,'Jerzy','Cieślak','504202808','Jerzy8@office.pl','opis'),(10,'Eustachy','Brzeziński','504202809','Eustachy9@office.pl','opis'),(11,'Allan','Laskowska','504202810','Allan10@office.pl','opis'),(12,'Krzysztof','Duda','504202811','Krzysztof11@office.pl','opis'),(13,'Anatol','Kozłowski','504202812','Anatol12@office.pl','opis'),(14,'Mariusz','Sikora','504202813','Mariusz13@office.pl','opis'),(15,'Fabian','Mazur','504202814','Fabian14@office.pl','opis'),(16,'Denis','Ziółkowska','504202815','Denis15@office.pl','opis'),(17,'Robert','Jasiński','504202816','Robert16@office.pl','opis'),(18,'Florian','Szymczak','504202817','Florian17@office.pl','opis'),(19,'Marcin','Pawlak','504202818','Marcin18@office.pl','opis'),(20,'Dobromił','Czarnecki','504202819','Dobromił19@office.pl','opis'),(21,'Gniewomir','Głowacka','504202820','Gniewomir20@office.pl','opis'),(22,'Allan','Kozłowski','504202821','Allan21@office.pl','opis'),(23,'Adam','Bąk','504202822','Adam22@office.pl','opis'),(24,'Olaf','Jankowski','504202823','Olaf23@office.pl','opis'),(25,'Allan','Sobczak','504202824','Allan24@office.pl','opis'),(26,'Norbert','Pawlak','504202825','Norbert25@office.pl','opis'),(27,'Oskar','Kowalski','504202826','Oskar26@office.pl','opis'),(28,'Jarosław','Gajewska','504202827','Jarosław27@office.pl','opis'),(29,'Kordian','Marciniak','504202828','Kordian28@office.pl','opis'),(30,'Franciszek','Szczepański','504202829','Franciszek29@office.pl','opis'),(31,'Gabriel','Witkowski','504202830','Gabriel30@office.pl','opis'),(32,'Mateusz','Kołodziej','504202831','Mateusz31@office.pl','opis'),(33,'Kazimierz','Wojciechowski','504202832','Kazimierz32@office.pl','opis'),(34,'Mariusz','Mazurek','504202833','Mariusz33@office.pl','opis'),(35,'Kewin','Kalinowski','504202834','Kewin34@office.pl','opis'),(36,'Jacek','Michalak','504202835','Jacek35@office.pl','opis'),(37,'Marian','Ziółkowska','504202836','Marian36@office.pl','opis'),(38,'Łukasz','Kowalczyk','504202837','Łukasz37@office.pl','opis'),(39,'Łukasz','Czerwiński','504202838','Łukasz38@office.pl','opis'),(40,'Aleksy','Makowski','504202839','Aleksy39@office.pl','opis'),(41,'Maurycy','Laskowska','504202840','Maurycy40@office.pl','opis'),(42,'Miron','Wójcik','504202841','Miron41@office.pl','opis'),(43,'Fryderyk','Kwiatkowski','504202842','Fryderyk42@office.pl','opis'),(44,'Czesław','Ostrowski','504202843','Czesław43@office.pl','opis'),(45,'Juliusz','Kwiatkowski','504202844','Juliusz44@office.pl','opis'),(46,'Remigiusz','Jasiński','504202845','Remigiusz45@office.pl','opis'),(47,'Krystian','Ostrowski','504202846','Krystian46@office.pl','opis'),(48,'Albert','Wysocki','504202847','Albert47@office.pl','opis'),(49,'Artur','Kucharski','504202848','Artur48@office.pl','opis'),(50,'Mariusz','Tomaszewski','504202849','Mariusz49@office.pl','opis'),(51,'Amadeusz','Baran','504202850','Amadeusz50@office.pl','opis');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workplace`
--

DROP TABLE IF EXISTS `workplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workplace` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(5) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workplace`
--

LOCK TABLES `workplace` WRITE;
/*!40000 ALTER TABLE `workplace` DISABLE KEYS */;
INSERT INTO `workplace` VALUES (1,'A1','0;A1'),(2,'A2','1;A2'),(3,'A3','2;A3'),(4,'A4','3;A4'),(5,'A5','4;A5'),(6,'B1','5;B1'),(7,'B2','6;B2'),(8,'B3','7;B3'),(9,'B4','8;B4'),(10,'B5','9;B5'),(11,'B6','10;B6'),(12,'B7','11;B7'),(13,'B8','12;B8'),(14,'B9','13;B9'),(15,'B10','14;B10'),(16,'C1','15;C1'),(17,'C2','16;C2'),(18,'C3','17;C3'),(19,'C4','18;C4'),(20,'C5','19;C5'),(21,'C6','20;C6'),(22,'C7','21;C7'),(23,'C8','22;C8'),(24,'C9','23;C9'),(25,'C10','24;C10'),(26,'C11','25;C11'),(27,'C12','26;C12'),(28,'C13','27;C13'),(29,'C14','28;C14'),(30,'C15','29;C15'),(31,'C16','30;C16'),(32,'C17','31;C17'),(33,'C18','32;C18'),(34,'C19','33;C19'),(35,'C20','34;C20'),(36,'C21','35;C21'),(37,'C22','36;C22'),(38,'C23','37;C23'),(39,'C24','38;C24'),(40,'C25','39;C25'),(41,'C26','40;C26'),(42,'C27','41;C27'),(43,'C28','42;C28'),(44,'C29','43;C29'),(45,'C30','44;C30'),(46,'C31','45;C31'),(47,'C32','46;C32'),(48,'C33','47;C33'),(49,'C34','48;C34'),(50,'C35','49;C35'),(51,'C36','50;C36');
/*!40000 ALTER TABLE `workplace` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-06 13:42:21
