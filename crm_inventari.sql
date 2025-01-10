CREATE DATABASE  IF NOT EXISTS `crm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `crm`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: crm
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `inventari`
--

DROP TABLE IF EXISTS `inventari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventari` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_producte` varchar(255) NOT NULL,
  `descripcio` text,
  `categoria` varchar(100) DEFAULT NULL,
  `preu` decimal(10,2) NOT NULL,
  `quantitat` int NOT NULL,
  `estoc_minim` int DEFAULT '0',
  `data_afegit` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `data_actualitzat` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventari`
--

LOCK TABLES `inventari` WRITE;
/*!40000 ALTER TABLE `inventari` DISABLE KEYS */;
INSERT INTO `inventari` VALUES (1,'Portàtil Lenovo ThinkPad','Portàtil de 15 polzades amb processador i5','Electrònica',750.00,10,2,'2024-12-17 13:01:34','2024-12-17 13:01:34'),(2,'Monitor Samsung 24\"','Monitor Full HD de 24 polzades','Electrònica',150.00,20,5,'2024-12-17 13:01:34','2024-12-17 13:01:34'),(3,'Ratolí Logitech','Ratolí inalàmbric amb sensor òptic','Accessoris',25.50,50,10,'2024-12-17 13:01:34','2024-12-17 13:01:34'),(4,'Tablet Lenovo','Magni laborum ipsa possimus.','Electrònica',422.13,15,8,'2024-01-17 23:00:00','2024-11-05 23:00:00'),(5,'Microones LG','Vitae expedita quod hic in veritatis.','Electrodomèstics',455.56,48,7,'2024-02-01 23:00:00','2024-04-03 22:00:00'),(6,'Llet sencera','Placeat est ullam expedita.','Alimentació',633.37,50,8,'2024-01-06 23:00:00','2024-08-28 22:00:00'),(7,'Oliva verge extra','Quae amet quis.','Alimentació',1007.61,45,20,'2024-02-14 23:00:00','2024-09-02 22:00:00'),(8,'Llet sencera','Temporibus eaque officia.','Alimentació',488.80,45,6,'2024-10-15 22:00:00','2024-02-02 23:00:00'),(9,'Paquet de cafè','Cum libero rerum numquam culpa corrupti.','Alimentació',1315.44,7,6,'2024-01-02 23:00:00','2024-10-09 22:00:00'),(10,'Gorra Adidas','Voluptates non iste voluptatum.','Moda',557.82,45,10,'2024-06-29 22:00:00','2024-06-23 22:00:00'),(11,'Oliva verge extra','Assumenda eligendi tempore autem.','Alimentació',1033.42,25,6,'2024-10-19 22:00:00','2024-06-25 22:00:00'),(12,'Rentadora Bosch','Cumque sequi eligendi rem repellendus minus voluptas.','Electrodomèstics',423.12,10,8,'2024-03-31 22:00:00','2023-12-19 23:00:00'),(13,'Llet sencera','Nihil unde dicta recusandae impedit ab.','Alimentació',1117.64,17,10,'2023-01-29 23:00:00','2024-08-15 22:00:00'),(14,'Pack bolígrafs BIC','Eos debitis vel neque nihil reiciendis alias.','Oficina',985.05,16,13,'2024-02-24 23:00:00','2024-12-14 23:00:00'),(15,'Paper A4','Tenetur et sequi eveniet beatae veritatis beatae.','Oficina',1161.44,22,9,'2023-08-27 22:00:00','2024-05-26 22:00:00'),(16,'Pantalons vaquers','Tenetur exercitationem odit possimus magnam illum.','Moda',944.27,27,20,'2023-12-13 23:00:00','2024-11-25 23:00:00'),(17,'Tablet Lenovo','Earum recusandae quia sequi.','Electrònica',903.96,32,12,'2024-05-30 22:00:00','2024-06-17 22:00:00'),(18,'Auriculars Sony','Reiciendis quam non dolorum repudiandae asperiores.','Electrònica',1376.96,13,6,'2023-06-29 22:00:00','2023-12-28 23:00:00'),(19,'Cadira ergonòmica','Minus minima est voluptatem dolorum sit at.','Oficina',230.86,6,17,'2024-07-26 22:00:00','2023-12-24 23:00:00'),(20,'Aspiradora Dyson','Dignissimos facere velit ullam velit culpa iste.','Electrodomèstics',745.86,4,6,'2024-02-15 23:00:00','2024-06-04 22:00:00'),(21,'Paper A4','Commodi rem perspiciatis quasi expedita sint pariatur.','Oficina',1407.75,24,14,'2024-10-28 23:00:00','2024-07-18 22:00:00'),(22,'Galetes Maria','In blanditiis magni sint.','Alimentació',819.80,40,6,'2023-08-28 22:00:00','2024-06-26 22:00:00'),(23,'Forn Balay','Est nihil perferendis voluptatibus sit placeat rerum.','Electrodomèstics',370.09,37,9,'2023-08-04 22:00:00','2024-03-31 22:00:00'),(24,'Jaqueta d\'hivern','Dolores asperiores molestiae.','Moda',942.28,44,20,'2024-08-30 22:00:00','2024-02-13 23:00:00'),(25,'Cadira ergonòmica','Architecto pariatur tempora tempora totam.','Oficina',613.35,33,9,'2024-03-21 23:00:00','2023-12-27 23:00:00'),(26,'Paquet d\'arròs','Alias illo unde voluptas id minus cupiditate hic.','Alimentació',132.03,26,11,'2024-01-29 23:00:00','2024-03-26 23:00:00'),(27,'Rentadora Bosch','Quas animi voluptas saepe maiores reprehenderit est.','Electrodomèstics',1477.38,48,8,'2024-03-30 23:00:00','2024-03-16 23:00:00'),(28,'Sabatilles Nike','Neque maiores dolorum error asperiores ad vitae.','Moda',1286.45,9,11,'2023-08-03 22:00:00','2024-01-10 23:00:00');
/*!40000 ALTER TABLE `inventari` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-10 16:20:14
