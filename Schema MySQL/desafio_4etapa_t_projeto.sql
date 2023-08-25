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
-- Table structure for table `t_projeto`
--

DROP TABLE IF EXISTS `t_projeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_projeto` (
  `ID_PROJETO` int(11) NOT NULL AUTO_INCREMENT,
  `ID_CIENTISTA` int(11) DEFAULT NULL,
  `TIT_PROJETO` varchar(50) DEFAULT NULL,
  `RES_PROJETO` varchar(250) DEFAULT NULL,
  `DTI_PROJETO` date DEFAULT NULL,
  `DTT_PROJETO` date DEFAULT NULL,
  `PUB_PROJETO` varchar(10) NOT NULL,
  PRIMARY KEY (`ID_PROJETO`),
  KEY `FK_PROJETO_CIENTISTA` (`ID_CIENTISTA`),
  CONSTRAINT `FK_PROJETO_CIENTISTA` FOREIGN KEY (`ID_CIENTISTA`) REFERENCES `t_cientista` (`ID_CIENTISTA`),
  CONSTRAINT `CHECK_PUB_PROJETO` CHECK (`PUB_PROJETO` in (1,0))
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_projeto`
--

LOCK TABLES `t_projeto` WRITE;
/*!40000 ALTER TABLE `t_projeto` DISABLE KEYS */;
INSERT INTO `t_projeto` VALUES (1,7,'Título Projeto 1','Descrição Projeto 1','2023-08-14','2023-09-14','publico'),(2,19,'Título Projeto 2','Descrição Projeto 2','2023-11-27','2023-12-28','privado'),(3,4,'Título Projeto 3','Descrição Projeto 3','2023-02-22','2023-05-13','publico'),(4,16,'Título Projeto 4','Descrição Projeto 4','2023-10-27','2023-11-10','privado'),(5,3,'Título Projeto 5','Descrição Projeto 5','2023-03-07','2023-04-05','privado'),(6,8,'Título Projeto 6','Descrição Projeto 6','2023-07-03','2023-08-21','publico'),(7,11,'Título Projeto 7','Descrição Projeto 7','2023-03-12','2023-06-15','publico'),(8,14,'Título Projeto 8','Descrição Projeto 8','2023-05-09','2023-07-21','privado'),(9,20,'Título Projeto 9','Descrição Projeto 9','2023-10-28','2023-12-01','publico'),(10,1,'Título Projeto 10','Descrição Projeto 10','2023-01-24','2023-03-23','privado'),(11,13,'Título Projeto 11','Descrição Projeto 11','2023-04-05','2023-06-11','publico'),(12,2,'Título Projeto 12','Descrição Projeto 12','2023-04-03','2023-06-01','privado'),(13,17,'Título Projeto 13','Descrição Projeto 13','2023-01-15','2023-02-16','publico'),(14,18,'Título Projeto 14','Descrição Projeto 14','2023-07-19','2023-09-08','publico'),(15,9,'Título Projeto 15','Descrição Projeto 15','2023-11-01','2023-12-09','privado'),(16,12,'Título Projeto 16','Descrição Projeto 16','2023-11-01','2023-03-27','privado'),(17,10,'Título Projeto 17','Descrição Projeto 17','2023-08-20','2023-10-10','publico'),(18,6,'Título Projeto 18','Descrição Projeto 18','2023-03-13','2023-05-08','privado'),(19,5,'Título Projeto 19','Descrição Projeto 19','2023-10-19','2023-12-17','publico'),(20,15,'Título Projeto 20','Descrição Projeto 20','2023-06-12','2023-08-19','publico'),(21,7,'Título Projeto 21','Descrição Projeto 21','2023-10-29','2023-12-18','privado'),(22,19,'Título Projeto 22','Descrição Projeto 22','2023-09-15','2023-11-13','publico'),(23,4,'Título Projeto 23','Descrição Projeto 23','2023-03-06','2023-04-04','privado'),(24,16,'Título Projeto 24','Descrição Projeto 24','2023-04-24','2023-06-13','privado'),(25,3,'Título Projeto 25','Descrição Projeto 25','2023-11-12','2023-12-14','privado'),(27,1,'Projeto teste 2','Suco de cevadiss deixa as pessoas mais interessantis. Não sou faixa preta cumpadi, sou preto inteiris, inteiris. Mé faiz elementum girarzis, nisi eros vermeio. Todo mundo vê os porris que eu tomo, mas ningué','2023-08-17','2023-08-24','publico'),(28,1,'Projeto teste 3','Diogo Suco de cevadiss deixa as pessoas mais interessantis. Não sou faixa preta cumpadi, sou preto inteiris, inteiris. Mé faiz elementum girarzis, nisi eros vermeio. Todo mundo vê os porris que eu tomo, mas ningué','2023-08-15','2023-09-01','privado');
/*!40000 ALTER TABLE `t_projeto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-25  9:21:06
