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
-- Table structure for table `t_cientista`
--

DROP TABLE IF EXISTS `t_cientista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_cientista` (
  `ID_CIENTISTA` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_CIENTISTA` varchar(50) NOT NULL,
  `CPF_CIENTISTA` varchar(11) NOT NULL,
  `DTN_CIENTISTA` date DEFAULT NULL,
  `EMAIL_CIENTISTA` varchar(50) NOT NULL,
  `EMAIL2_CIENTISTA` varchar(35) DEFAULT NULL,
  `LATTES_CIENTISTA` varchar(50) NOT NULL,
  `SENHA_CIENTISTA` varchar(10) NOT NULL,
  `ID_CIDADE` int(2) NOT NULL,
  `DARK_MODE` int(11) NOT NULL,
  PRIMARY KEY (`ID_CIENTISTA`),
  UNIQUE KEY `CPF_CIENTISTA` (`CPF_CIENTISTA`),
  KEY `FK_CIDADE_CIENTISTA` (`ID_CIDADE`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cientista`
--

LOCK TABLES `t_cientista` WRITE;
/*!40000 ALTER TABLE `t_cientista` DISABLE KEYS */;
INSERT INTO `t_cientista` VALUES (1,'Diogo','11111111111','2023-08-08','diogo.leme@example.com',NULL,'http://lattes.example.com/diogoleme','e7d80ffeef',1,1),(2,'Alice Silva Santos','98765432101','1985-08-23','alice.santos@example.com',NULL,'http://lattes.example.com/alicesantos','13430887a7',3,0),(3,'Bruno Oliveira Lima','45678912301','1992-03-02','bruno.lima@example.com','bruno.alt@example.com','http://lattes.example.com/brunolima','1e54b686e5',5,1),(4,'Carla Rodrigues Costa','78901234501','1988-11-10','carla.costa@example.com',NULL,'http://lattes.example.com/carlacosta','e1f5c8337e',2,0),(5,'Daniel Almeida Souza','23456789012','1991-06-18','daniel.souza@example.com','daniel.alt@example.com','http://lattes.example.com/danielsouza','f4d3be7d98',3,1),(6,'Eduarda Pereira Santos','56789012301','1987-02-25','eduarda.santos@example.com',NULL,'http://lattes.example.com/eduardasantos','aac14de9db',8,1),(7,'Fernando Gomes Oliveira','89012345601','1994-09-14','fernando.oliveira@example.com','fernando.alt@example.com','http://lattes.example.com/fernandooliveira','b89517e51d',9,1),(8,'Gabriela Barbosa Fernandes','23456789023','1989-04-05','gabriela.fernandes@example.com','gabriela.alt@example.com','http://lattes.example.com/gabrielafernandes','5e00468a82',10,0),(9,'Hugo Castro Almeida','67890123401','1993-01-30','hugo.almeida@example.com',NULL,'http://lattes.example.com/hugoalmeida','65ec41d4e9',10,0),(10,'Isabela Nunes Costa','12345678902','1990-07-22','isabela.costa@example.com','isabela.alt@example.com','http://lattes.example.com/isabelacosta','a77315b84c',6,1),(11,'João Pereira Lima','34567890123','1986-12-12','joao.lima@example.com',NULL,'http://lattes.example.com/joaolima','5e00468a82',8,1),(12,'Karla Santos Alves','56789012345','1992-10-09','karla.alves@example.com','karla.alt@example.com','http://lattes.example.com/karlaalves','1614b81f43',4,0),(13,'Leonardo Silva Souza','78901234567','1988-03-28','leonardo.souza@example.com',NULL,'http://lattes.example.com/leonardosouza','a77315b84c',8,0),(14,'Mariana Oliveira Gomes','23456789034','1991-08-17','mariana.gomes@example.com','mariana.alt@example.com','http://lattes.example.com/marianagomes','5e00468a82',9,1),(15,'Nícolas Barbosa Santos','45678901256','1987-05-07','nicolas.santos@example.com',NULL,'http://lattes.example.com/nicolassantos','65ec41d4e9',3,0),(16,'Olívia Almeida Castro','67890123456','1994-02-28','olivia.castro@example.com','olivia.alt@example.com','http://lattes.example.com/oliviacastro','6dcd888d92',2,0),(17,'Paulo Lima Nunes','12345678903','1989-11-20','paulo.nunes@example.com',NULL,'http://lattes.example.com/paulonunes','13430887a7',5,1),(18,'Queila Costa Alves','34567890145','1993-06-14','queila.alves@example.com','queila.alt@example.com','http://lattes.example.com/queilaalves','1e54b686e5',1,0),(19,'Rafael Gomes Barbosa','56789012367','1990-01-10','rafael.barbosa@example.com',NULL,'http://lattes.example.com/rafaelbarbosa','e1f5c8337e',7,1),(20,'Sônia Santos Lima','78901234578','1986-04-25','sonia.lima@example.com','sonia.alt@example.com','http://lattes.example.com/sonialima','f4d3be7d98',8,0),(21,'Thiago Alves Gomes','23456789045','1992-09-18','thiago.gomes@example.com',NULL,'http://lattes.example.com/thiagogomes','aac14de9db',5,0);
/*!40000 ALTER TABLE `t_cientista` ENABLE KEYS */;
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
