-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ESCOLAR
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.7-MariaDB-1:10.4.7+maria~bionic

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

--
-- Table structure for table `Aluno`
--

DROP TABLE IF EXISTS `Aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Aluno` (
  `nmaluno` char(10) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `area` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Aluno`
--

LOCK TABLES `Aluno` WRITE;
/*!40000 ALTER TABLE `Aluno` DISABLE KEYS */;
INSERT INTO `Aluno` VALUES ('Paulo',18,'COMP'),('Maria',15,'MAT'),('Carlos',10,'COMP'),('Jose',4,'ENG'),('Maria',20,'MAT');
/*!40000 ALTER TABLE `Aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Disciplina`
--

DROP TABLE IF EXISTS `Disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Disciplina` (
  `nmdisciplina` char(5) DEFAULT NULL,
  `codigo` char(8) DEFAULT NULL,
  `creditos` int(11) DEFAULT NULL,
  `dept` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Disciplina`
--

LOCK TABLES `Disciplina` WRITE;
/*!40000 ALTER TABLE `Disciplina` DISABLE KEYS */;
INSERT INTO `Disciplina` VALUES ('AEDI','COMP1010',2,'COMP'),('AEDII','COMP9999',3,'COMP'),('BD','COMP1020',4,'COMP'),('MD','MAT2020',3,'MAT'),('CDI','MAT2021',5,'MAT'),('CE','ENG0001',5,'ENG'),('M','ENG0002',3,'ENG'),('CE','MAT4040',5,'MAT');
/*!40000 ALTER TABLE `Disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Historico_Escolar`
--

DROP TABLE IF EXISTS `Historico_Escolar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Historico_Escolar` (
  `naluno` int(11) DEFAULT NULL,
  `coddisciplina` char(8) DEFAULT NULL,
  `grau` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Historico_Escolar`
--

LOCK TABLES `Historico_Escolar` WRITE;
/*!40000 ALTER TABLE `Historico_Escolar` DISABLE KEYS */;
INSERT INTO `Historico_Escolar` VALUES (18,'COMP1010','B'),(18,'COMP2020','C'),(10,'COMP1020','A'),(10,'MAT2020','A'),(15,'MAT2020','B'),(4,'ENG0001','B'),(20,'MAT2021','C'),(20,'MAT2020','A');
/*!40000 ALTER TABLE `Historico_Escolar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pre_Requisito`
--

DROP TABLE IF EXISTS `Pre_Requisito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pre_Requisito` (
  `base` char(8) DEFAULT NULL,
  `prereq` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pre_Requisito`
--

LOCK TABLES `Pre_Requisito` WRITE;
/*!40000 ALTER TABLE `Pre_Requisito` DISABLE KEYS */;
INSERT INTO `Pre_Requisito` VALUES ('COMP2020','COMP1010'),('COMP1020','COMP2020'),('ENG0002','ENG0001'),('COMP2020','MAT2020'),('MAT2021','MAT2020');
/*!40000 ALTER TABLE `Pre_Requisito` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-19 18:47:35
