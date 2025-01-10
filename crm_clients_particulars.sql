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
-- Table structure for table `clients_particulars`
--

DROP TABLE IF EXISTS `clients_particulars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients_particulars` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `cognoms` varchar(50) NOT NULL,
  `dni` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefon` varchar(15) DEFAULT NULL,
  `direccio` varchar(100) DEFAULT NULL,
  `data_registre` date NOT NULL,
  `actiu` tinyint(1) DEFAULT '1',
  `comentaris` text,
  PRIMARY KEY (`id_client`),
  UNIQUE KEY `dni` (`dni`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients_particulars`
--

LOCK TABLES `clients_particulars` WRITE;
/*!40000 ALTER TABLE `clients_particulars` DISABLE KEYS */;
INSERT INTO `clients_particulars` VALUES (1,'Joan','Martínez López','12345678A','joan.martinez@example.com','+34612345678','Carrer Major 1, Barcelona','2023-01-15',1,'Client fidel.'),(2,'Maria','Fernández Ruiz','23456789B','maria.fernandez@example.com','+34698765432','Avinguda Diagonal 23, Girona','2023-02-20',1,'Interessada en promocions.'),(3,'Pere','González Pérez','34567890C','pere.gonzalez@example.com','+34623456789','Carrer Nou 45, Tarragona','2023-03-10',1,'Interessat en productes ecològics.'),(4,'Anna','Ribas Soler','45678901D','anna.ribas@example.com','+34678901234','Carrer Sant Jordi 12, Lleida','2023-04-05',1,'Vol més informació.'),(5,'Carlos','Ruiz García','56789012E','carlos.ruiz@example.com','+34689012345','Carrer Llibertat 89, Palma','2023-05-15',1,'Sense comentaris.'),(6,'Laura','Sánchez Gómez','67890123F','laura.sanchez@example.com','+34690123456','Carrer Primavera 34, València','2023-06-25',1,'Interessada en plans anuals.'),(7,'Sergi','Pérez Moreno','78901234G','sergi.perez@example.com','+34601234567','Carrer Estiu 78, Girona','2023-07-30',1,'Client amb bon historial.'),(8,'Núria','Torres López','89012345H','nuria.torres@example.com','+34612345678','Carrer Tardor 99, Barcelona','2023-08-15',1,'Prefereix atenció personalitzada.'),(9,'David','García Fernández','90123456J','david.garcia@example.com','+34623456789','Carrer Hivern 12, Tarragona','2023-09-05',1,'Client prioritari.'),(10,'Marta','López Ruiz','01234567K','marta.lopez@example.com','+34634567890','Carrer Muntanya 23, Lleida','2023-10-10',1,'Interessada en productes nous.'),(11,'Oscar','Castillo Vega','12345678L','oscar.castillo@example.com','+34645678901','Carrer Platja 34, Alacant','2023-11-20',1,'Amic un altre client.'),(12,'Clara','Martínez Puig','23456789M','clara.martinez@example.com','+34656789012','Carrer Bosc 45, Castelló','2023-12-01',1,'Prefereix comunicació per email.'),(13,'Jordi','Ferrer Roca','34567890N','jordi.ferrer@example.com','+34667890123','Carrer Mercè 56, València','2024-01-15',1,'Interessat en plans premium.'),(14,'Elena','Romero Sanz','45678901P','elena.romero@example.com','+34678901234','Carrer Ebre 67, Saragossa','2024-02-25',1,'Client actiu des de fa anys.'),(15,'Miguel','Moreno Paredes','56789012Q','miguel.moreno@example.com','+34689012345','Carrer Segre 78, Màlaga','2024-03-10',1,'Sol·licitant més informació.'),(16,'Paula','Vila Camps','67890123R','paula.vila@example.com','+34690123456','Carrer Riu 89, Madrid','2024-04-20',1,'Interessada en nous descomptes.'),(17,'Adrià','Soler Torres','78901234S','adria.soler@example.com','+34601234567','Carrer Alt 100, Sevilla','2024-05-05',1,'Client puntual.'),(18,'Carla','Riera Matas','89012345T','carla.riera@example.com','+34612345678','Carrer Baix 101, Girona','2024-06-15',1,'Interessada en novetats.'),(19,'Marc','Díaz Pujol','90123456U','marc.diaz@example.com','+34623456789','Carrer Mitjà 102, Palma','2024-07-25',1,'Vol serveis personalitzats.'),(20,'Cristina','Navarro Valls','01234567V','cristina.navarro@example.com','+34634567890','Carrer Llarg 103, Barcelona','2024-08-30',1,'Interessada en plans destalvi.'),(21,'Alex','Sánchez Prat','12345678W','alex.sanchez@example.com','+34645678901','Carrer Curt 104, Alacant','2024-09-10',1,'Prefereix consultes en línia.'),(22,'Irene','Gil Fort','23456789X','irene.gil@example.com','+34656789012','Carrer Obert 105, Lleida','2024-10-15',1,'Interessada en serveis de luxe.'),(23,'Raül','Ortega Martí','34567890Y','raul.ortega@example.com','+34667890123','Carrer Estret 106, València','2024-11-20',1,'Client satisfet.'),(24,'Lucía','Martí Puig','45678901Z','lucia.marti@example.com','+34678901234','Carrer Profund 107, Tarragona','2024-12-05',1,'Vol més promocions.'),(25,'Toni','Font Cerdà','56789012A','toni.font@example.com','+34689012345','Carrer Superfície 108, Saragossa','2025-01-01',1,'Interessat en nous serveis.');
/*!40000 ALTER TABLE `clients_particulars` ENABLE KEYS */;
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
