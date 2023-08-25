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
-- Table structure for table `t_redes_sociais`
--

DROP TABLE IF EXISTS `t_redes_sociais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_redes_sociais` (
  `ID_REDE_SOCIAL` int(11) NOT NULL AUTO_INCREMENT,
  `ID_CIENTISTA` int(11) DEFAULT NULL,
  `END_REDE_SOCIAL` varchar(50) DEFAULT NULL,
  `TIP_REDE_SOCIAL` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID_REDE_SOCIAL`),
  KEY `FK_REDESOCIAL_CIENTISTA` (`ID_CIENTISTA`),
  CONSTRAINT `FK_REDESOCIAL_CIENTISTA` FOREIGN KEY (`ID_CIENTISTA`) REFERENCES `t_cientista` (`ID_CIENTISTA`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_redes_sociais`
--

LOCK TABLES `t_redes_sociais` WRITE;
/*!40000 ALTER TABLE `t_redes_sociais` DISABLE KEYS */;
INSERT INTO `t_redes_sociais` VALUES (1,3,'bruno.instagram','i'),(2,3,'bruno.linkedin','l'),(4,1,'diogo.facebook','f'),(5,1,'diogo.linkedin','l'),(6,1,'diogo.youtube','y'),(7,1,'diogo.tiktok','t'),(8,2,'alice.instagram','i'),(9,2,'alice.facebook','f'),(10,2,'alice.linkedin','l'),(13,4,'carla.instagram','i'),(14,4,'carla.facebook','f'),(15,4,'carla.linkedin','l'),(16,4,'carla.youtube','y'),(17,5,'daniel.instagram','i'),(18,5,'daniel.linkedin','l'),(19,5,'daniel.youtube','y'),(20,6,'eduarda.instagram','i'),(21,6,'eduarda.tiktok','t'),(22,7,'fernando.instagram','i'),(23,7,'fernando.facebook','f'),(24,7,'fernando.linkedin','l'),(25,7,'fernando.youtube','y'),(26,7,'fernando.tiktok','t');
/*!40000 ALTER TABLE `t_redes_sociais` ENABLE KEYS */;
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
