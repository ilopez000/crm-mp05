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
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal` (
  `id_personal` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `dni` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `fecha_contratacion` date NOT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `departamento` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `comentarios` text,
  `foto` longblob,
  PRIMARY KEY (`id_personal`),
  UNIQUE KEY `dni` (`dni`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES (1,'Andrea','Ortiz López','217984356','andrea.ortiz@example.com','+34687654123','Ronda de la Ciudad 43, Sevilla','2021-09-15','Product manager',59000.00,'Màrqueting','1995-07-12',1,'Mollitia animi id est laborum.',_binary '<BLOB_DATA>'),(2,'Luis','Martín Sánchez','568493215','luis.martin@example.com','+34634567891','Calle del Río 12, Valladolid','2023-02-10','Systems analyst',72000.00,'IT','1987-04-19',1,'Deserunt mollit anim id est.',_binary '<BLOB_DATA>'),(3,'Alba','Reyes Fernández','123459876','alba.reyes@example.com','+34651234789','Camino de la Rosa 78, Córdoba','2022-10-05','Marketing manager',65000.00,'Màrqueting','1985-02-14',1,'Lorem ipsum dolor sit amet.',_binary '<BLOB_DATA>'),(4,'Jorge','Navarro Pérez','764235198','jorge.navarro@example.com','+34674582139','Paseo del Prado 45, Madrid','2021-07-18','Database administrator',54000.00,'IT','1990-05-05',1,'Sed ut perspiciatis unde.',_binary '<BLOB_DATA>'),(5,'Carmen','Ruiz López','932847615','carmen.ruiz@example.com','+34612345678','Calle Mayor 23, Murcia','2020-11-25','Human resources',43000.00,'RRHH','1988-06-17',1,'Excepteur sint occaecat cupidatat.',_binary '<BLOB_DATA>'),(6,'Raquel','Santos García','549823176','raquel.santos@example.com','+34623456789','Avenida del Sol 45, Sevilla','2019-09-02','Sales representative',51000.00,'Vendes','1992-10-29',1,'Sunt in culpa qui officia deserunt.',_binary '<BLOB_DATA>'),(7,'Pedro','Gómez Ramírez','829356741','pedro.gomez@example.com','+34639876412','Calle de la Luna 32, Zaragoza','2024-01-30','Finance manager',64000.00,'Administració','1989-12-11',1,'At vero eos et accusamus.',_binary '<BLOB_DATA>'),(8,'Lucía','Herrero Pérez','230498715','lucia.herrero@example.com','+34675432198','Calle Jardines 78, Málaga','2022-03-25','Legal advisor',58000.00,'Administració','1985-01-03',1,'Ut labore et dolore magna aliqua.',_binary '<BLOB_DATA>'),(9,'Ignacio','Cano Ríos','098765432','ignacio.cano@example.com','+34631245978','Ronda de Granada 12, Alicante','2023-04-20','Operations manager',71000.00,'RRHH','1986-08-14',1,'Temporibus autem quibusdam.',_binary '<BLOB_DATA>'),(10,'Manuela','Molina Gutiérrez','129856743','manuela.molina@example.com','+34634987156','Avenida de Andalucía 89, Huelva','2021-06-10','Product designer',67000.00,'Màrqueting','1993-07-25',1,'Omnis iste natus error sit.',_binary '<BLOB_DATA>'),(11,'Pablo','Benítez Sánchez','347892164','pablo.benitez@example.com','+34678123498','Camino de los Pinos 45, Cádiz','2019-08-22','IT consultant',64000.00,'IT','1980-11-18',1,'Minima veniam, quis nostrum.',_binary '<BLOB_DATA>'),(12,'María','Luna Díaz','498123675','maria.luna@example.com','+34612347890','Calle de la Ciencia 21, Salamanca','2023-01-14','Quality analyst',53000.00,'Administració','1983-05-13',1,'Maxime placeat facere possimus.',_binary '<BLOB_DATA>'),(13,'Esteban','Ortiz García','719284365','esteban.ortiz@example.com','+34698412376','Calle de la Paz 12, Barcelona','2024-04-09','Sales lead',59000.00,'Vendes','1988-07-10',1,'Atque corrupti quos dolores.',_binary '<BLOB_DATA>'),(14,'Alicia','Romero Moreno','841273659','alicia.romero@example.com','+34635478921','Calle Larga 10, Valladolid','2022-07-03','HR coordinator',52000.00,'RRHH','1992-03-09',1,'Beatae vitae dicta sunt explicabo.',''),(15,'Fernando','Sánchez Ruiz','329874615','fernando.sanchez@example.com','+34671239876','Avenida del Prado 56, Madrid','2020-10-16','Financial controller',68000.00,'Administració','1984-10-30',1,'Dolores eos qui ratione.',_binary '<BLOB_DATA>'),(16,'Lourdes','Navarro Martínez','958236147','lourdes.navarro@example.com','+34623456132','Calle Ancha 65, Zaragoza','2019-04-01','Product analyst',60000.00,'Màrqueting','1993-08-23',1,'Magnam aliquam quaerat.',_binary '<BLOB_DATA>'),(17,'Victor','Pérez Gómez','234765891','victor.perez@example.com','+34645789231','Ronda de las Flores 34, Valencia','2023-10-10','Data engineer',73000.00,'IT','1989-12-27',1,'Autem vel eum iure reprehenderit.',_binary '<BLOB_DATA>'),(18,'Adela','Torres Sánchez','879126534','adela.torres@example.com','+34676891234','Calle de las Palmas 45, Bilbao','2021-08-22','UX researcher',62000.00,'Màrqueting','1994-01-15',1,'Quis autem vel eum.',_binary '<BLOB_DATA>'),(19,'Lucas','Castillo Fernández','569823471','lucas.castillo@example.com','+34614567892','Camino de las Rosas 78, Sevilla','2024-02-14','IT director',85000.00,'IT','1979-09-17',1,'Exercitationem ullam corporis suscipit.',_binary '<BLOB_DATA>'),(20,'Silvia','Ríos Castro','267981345','silvia.rios@example.com','+34675436981','Paseo del Mar 56, Palma','2023-12-19','Digital marketing',69000.00,'Màrqueting','1991-03-19',1,'Aliquid ex ea commodi consequatur.',_binary '<BLOB_DATA>');
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
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
