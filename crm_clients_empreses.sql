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
-- Table structure for table `clients_empreses`
--

DROP TABLE IF EXISTS `clients_empreses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients_empreses` (
  `id_empresa` int NOT NULL AUTO_INCREMENT,
  `nom_empresa` varchar(100) NOT NULL,
  `cif` varchar(15) NOT NULL,
  `email_empresa` varchar(100) NOT NULL,
  `telefon_empresa` varchar(15) DEFAULT NULL,
  `direccio_empresa` varchar(100) DEFAULT NULL,
  `data_registre` date NOT NULL,
  `actiu` tinyint(1) DEFAULT '1',
  `comentaris` text,
  PRIMARY KEY (`id_empresa`),
  UNIQUE KEY `cif` (`cif`),
  UNIQUE KEY `email_empresa` (`email_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients_empreses`
--

LOCK TABLES `clients_empreses` WRITE;
/*!40000 ALTER TABLE `clients_empreses` DISABLE KEYS */;
INSERT INTO `clients_empreses` VALUES (1,'Tech Solutions S.L.','B12345678','contact@techsolutions.com','+34910000001','Carrer Tecnologia 1, Barcelona','2023-01-10',1,'Empresa tecnològica líder.'),(2,'EcoFriendly Co.','B23456789','info@ecofriendly.com','+34920000002','Carrer Verd 45, València','2023-02-15',1,'Promou productes ecològics.'),(3,'Innovatech Corp.','B34567890','support@innovatech.com','+34930000003','Carrer Inovació 8, Madrid','2023-03-20',1,'Startup innovadora.'),(4,'MarketPro S.A.','B45678901','sales@marketpro.com','+34940000004','Avinguda Comercial 12, Sevilla','2023-04-25',1,'Consultoria de màrqueting.'),(5,'BuildIt Construccions','B56789012','contact@buildit.com','+34950000005','Carrer Obres 34, Tarragona','2023-05-30',1,'Especialistes en construccions.'),(6,'Global Traders S.L.','B67890123','trade@globaltraders.com','+34960000006','Avinguda Internacional 56, Girona','2023-06-05',1,'Importadors i exportadors.'),(7,'HealthyLife Inc.','B78901234','info@healthylife.com','+34970000007','Carrer Salut 77, Palma','2023-07-10',1,'Productes de vida saludable.'),(8,'AgroFarms S.A.','B89012345','contact@agrofarms.com','+34980000008','Carrer Rural 99, Lleida','2023-08-15',1,'Empresa agrícola sostenible.'),(9,'Digitalize Me','B90123456','info@digitalizeme.com','+34990000009','Carrer Digital 100, Bilbao','2023-09-20',1,'Transformació digital.'),(10,'CleanAir Solutions','B01234567','support@cleanair.com','+34900000010','Carrer O2 101, Alacant','2023-10-25',1,'Tecnologia per a aire net.'),(11,'Tech Innovators','B12340001','team@techinnovators.com','+34911111111','Avinguda Innovació 23, Màlaga','2023-11-01',1,'Innovació en tecnologia.'),(12,'SolarEnergy S.L.','B23450002','sales@solarenergy.com','+34912222222','Carrer Sol 12, Las Palmas','2023-12-05',1,'Energia solar per a tothom.'),(13,'EduSmart Co.','B34560003','hello@edusmart.com','+34913333333','Avinguda Educació 55, Oviedo','2024-01-10',1,'Plataformes educatives digitals.'),(14,'AutoDrive S.A.','B45670004','info@autodrive.com','+34914444444','Carrer Motor 88, Saragossa','2024-02-15',1,'Solucions per a mobilitat automàtica.'),(15,'Foodie Inc.','B56780005','contact@foodie.com','+34915555555','Avinguda Gust 42, Sant Sebastià','2024-03-20',1,'Plataforma per a amants del menjar.'),(16,'AquaPure Systems','B67890006','help@aquapure.com','+34916666666','Carrer Aigua 30, Còrdova','2024-04-25',1,'Sistemes de purificació aigua.'),(17,'GreenLand Farming','B78900007','team@greenland.com','+34917777777','Carrer Terra 89, Logronyo','2024-05-30',1,'Agricultura ecològica.'),(18,'TravelEasy','B89000008','support@traveleasy.com','+34918888888','Avinguda Viatges 12, Granada','2024-06-05',1,'Solucions per a viatges fàcils.'),(19,'MedCare Plus','B90100009','info@medcare.com','+34919999999','Carrer Salut 44, Pamplona','2024-07-10',1,'Tecnologia mèdica avançada.'),(20,'EcoTech Supplies','B01230010','contact@ecotech.com','+34920000000','Avinguda Tecnologia 66, Valladolid','2024-08-15',1,'Subministraments tecnològics verds.'),(21,'Prime Logistics','B12340011','info@primelogistics.com','+34921111111','Carrer Logística 101, Almeria','2024-09-20',1,'Especialistes en logística.'),(22,'NextGen AI','B23450012','ai@nextgen.com','+34922222222','Avinguda Intel·ligència 23, Gijón','2024-10-25',1,'Intel·ligència artificial avançada.'),(23,'Future Homes','B34560013','sales@futurehomes.com','+34923333333','Carrer Habitatge 77, Huelva','2024-11-01',1,'Cases intel·ligents per al futur.'),(24,'CodeWorks S.L.','B45670014','team@codeworks.com','+34924444444','Avinguda Programació 15, Castelló','2024-12-05',1,'Desenvolupament de programari.'),(25,'EnergySaver','B56780015','help@energysaver.com','+34925555555','Carrer Eficiència 9, Ceuta','2025-01-10',1,'Solucions per a estalvi energètic.');
/*!40000 ALTER TABLE `clients_empreses` ENABLE KEYS */;
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
