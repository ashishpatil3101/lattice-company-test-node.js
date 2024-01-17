-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: lattice
-- ------------------------------------------------------
-- Server version	8.0.32

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

-- Create the 'lattice' database
CREATE DATABASE IF NOT EXISTS `lattice`;

-- Switch to the 'lattice' database
USE `lattice`;



--
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitals` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hospitals` VALUES (1,'Apollo Hospitals'),(2,'Jawaharlal Nehru Medical College and Hospital'),(3,'Indira Gandhi Institute of Medical Sciences (IGIMS)'),(4,'AIIMS - All India Institute Of Medical Science');
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo_url` varchar(255) NOT NULL,
  `psychiatrist_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `psychiatrist_id` (`psychiatrist_id`),
  CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`psychiatrist_id`) REFERENCES `psychiatrists` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Patient 1','Address 1','patient1@example.com','1234567890','password1','photo_url_1.jpg',1),(2,'Patient 2','Address 2','patient2@example.com','2345678901','password2','photo_url_2.jpg',2),(3,'Patient 3','Address 3','patient3@example.com','3456789012','password3','photo_url_3.jpg',3),(4,'Patient 4','Address 4','patient4@example.com','4567890123','password4','photo_url_4.jpg',1),(5,'Patient 5','Address 5','patient5@example.com','5678901234','password5','photo_url_5.jpg',2),(6,'Patient 6','Address 6','patient6@example.com','6789012345','password6','photo_url_6.jpg',3),(7,'Patient 7','Address 7','patient7@example.com','7890123456','password7','photo_url_7.jpg',1),(8,'Patient 8','Address 8','patient8@example.com','8901234567','password8','photo_url_8.jpg',2),(9,'Patient 9','Address 9','patient9@example.com','9012345678','password9','photo_url_9.jpg',3),(10,'Patient 10','Address 10','patient10@example.com','0123456789','password10','photo_url_10.jpg',1),(11,'Patient 11','Address 11','patient11@example.com','1111111111','password11','photo_url_11.jpg',6),(12,'Patient 12','Address 12','patient12@example.com','2222222222','password12','photo_url_12.jpg',7),(13,'Patient 13','Address 13','patient13@example.com','3333333333','password13','photo_url_13.jpg',8),(14,'Patient 14','Address 14','patient14@example.com','4444444444','password14','photo_url_14.jpg',9),(15,'Patient 15','Address 15','patient15@example.com','5555555555','password15','photo_url_15.jpg',10),(16,'Patient 16','Address 16','patient16@example.com','6666666666','password16','photo_url_16.jpg',11),(17,'Patient 17','Address 17','patient17@example.com','7777777777','password17','photo_url_17.jpg',12),(18,'Patient 18','Address 18','patient18@example.com','8888888888','password18','photo_url_18.jpg',13),(19,'Patient 19','Address 19','patient19@example.com','9999999999','password19','photo_url_19.jpg',14),(20,'Patient 20','Address 20','patient20@example.com','0000000000','password20','photo_url_20.jpg',15),(21,'Patient 21','Address 21','patient21@example.com','1111111111','password21','photo_url_21.jpg',16),(22,'Patient 22','Address 22','patient22@example.com','2222222222','password22','photo_url_22.jpg',17),(23,'Patient 23','Address 23','patient23@example.com','3333333333','password23','photo_url_23.jpg',18),(24,'Patient 24','Address 24','patient24@example.com','4444444444','password24','photo_url_24.jpg',19),(25,'Patient 25','Address 25','patient25@example.com','5555555555','password25','photo_url_25.jpg',20),(26,'Patient 49','Address 49','patient49@example.com','9999999999','password49','photo_url_49.jpg',19),(27,'Patient 50','Address 50','patient50@example.com','0000000000','password50','photo_url_50.jpg',20),(28,'Patient 26','Address 26','patient26@example.com','1111111111','password26','photo_url_26.jpg',11),(29,'Patient 27','Address 27','patient27@example.com','2222222222','password27','photo_url_27.jpg',12),(30,'Patient 28','Address 28','patient28@example.com','3333333333','password28','photo_url_28.jpg',13),(31,'Patient 29','Address 29','patient29@example.com','4444444444','password29','photo_url_29.jpg',14),(32,'Patient 30','Address 30','patient30@example.com','5555555555','password30','photo_url_30.jpg',15),(33,'Patient 31','Address 31','patient31@example.com','6666666666','password31','photo_url_31.jpg',16),(34,'Patient 32','Address 32','patient32@example.com','7777777777','password32','photo_url_32.jpg',17),(35,'Patient 33','Address 33','patient33@example.com','8888888888','password33','photo_url_33.jpg',18),(36,'Patient 34','Address 34','patient34@example.com','9999999999','password34','photo_url_34.jpg',19),(37,'Patient 35','Address 35','patient35@example.com','0000000000','password35','photo_url_35.jpg',20),(38,'vaibhav','vsvsvsvsvsvsvsvsvsvsvsv','ashpatil@gmail.com','+23456789000','Password1ssds','ciusbcsvnc.jpg',NULL),(39,'vaibhav','vsvsvsvsvsvsvsvsvsvsvsv','ashpatil@gmail.com','+23456789000','Password1ssds','ciusbcsvnc.jpg',NULL),(40,'vaibhav','vsvsvsvsvsvsvsvsvsvsvsv','ashpatil@gmail.com','+23456789000','Password1ssds','ciusbcsvnc.jpg',NULL);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psychiatrists`
--

DROP TABLE IF EXISTS `psychiatrists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `psychiatrists` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `hospital_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hospital_id` (`hospital_id`),
  CONSTRAINT `psychiatrists_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psychiatrists`
--

LOCK TABLES `psychiatrists` WRITE;
/*!40000 ALTER TABLE `psychiatrists` DISABLE KEYS */;
INSERT INTO `psychiatrists` VALUES (1,'Dr. Smith',1),(2,'Dr. Johnson',1),(3,'Dr. Wilson',1),(4,'Dr. Davis',1),(5,'Dr. Brown',1),(6,'Dr. Taylor',2),(7,'Dr. Evans',2),(8,'Dr. Harris',2),(9,'Dr. Rodriguez',2),(10,'Dr. Martin',2),(11,'Dr. White',3),(12,'Dr. Martinez',3),(13,'Dr. Robinson',3),(14,'Dr. Clark',3),(15,'Dr. Lewis',3),(16,'Dr. Walker',4),(17,'Dr. Hall',4),(18,'Dr. Young',4),(19,'Dr. Turner',4),(20,'Dr. Hernandez',4);
/*!40000 ALTER TABLE `psychiatrists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-17 20:53:09
