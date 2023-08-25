-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: desafio_4etapa
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

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
-- Table structure for table `t_area_atuacao_cientista`
--

DROP TABLE IF EXISTS `t_area_atuacao_cientista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_area_atuacao_cientista` (
  `ID_CIENTISTA` int(11) NOT NULL,
  `ID_AREA_ATUACAO` int(11) NOT NULL,
  PRIMARY KEY (`ID_CIENTISTA`,`ID_AREA_ATUACAO`),
  KEY `FK_AREAATUACAO_IDAREA` (`ID_AREA_ATUACAO`),
  CONSTRAINT `FK_AREAATUACAO_IDAREA` FOREIGN KEY (`ID_AREA_ATUACAO`) REFERENCES `t_area_atuacao` (`ID_AREA_ATUACAO`),
  CONSTRAINT `FK_AREAATUACAO_IDCIENTISTA` FOREIGN KEY (`ID_CIENTISTA`) REFERENCES `t_cientista` (`ID_CIENTISTA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_area_atuacao_cientista`
--

LOCK TABLES `t_area_atuacao_cientista` WRITE;
/*!40000 ALTER TABLE `t_area_atuacao_cientista` DISABLE KEYS */;
INSERT INTO `t_area_atuacao_cientista` VALUES (1,3),(1,5),(1,9),(2,2),(2,3),(3,1),(3,8),(4,1),(4,7),(5,5),(5,7),(6,5),(6,10),(7,6),(7,10),(8,4),(8,6),(9,4),(9,9),(10,2),(10,3),(11,1),(11,8),(12,2),(12,7),(13,1),(13,5),(14,7),(14,10),(15,5),(15,6),(16,4),(16,10),(17,6),(17,9),(18,3),(18,4),(19,8),(19,9),(20,1),(20,2);
/*!40000 ALTER TABLE `t_area_atuacao_cientista` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-25  9:21:05
