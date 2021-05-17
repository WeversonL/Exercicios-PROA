-- MySQL dump 10.17  Distrib 10.3.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Biblioteca
-- ------------------------------------------------------
-- Server version	10.3.25-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autores` (
  `autorID` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `endereco` varchar(250) DEFAULT NULL,
  `origem` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`autorID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'J.K. Rowling','1965-07-31','Fairmont Avenue, 3227','Inglaterra'),(2,'Gillian Flynn','1971-02-24','Randall Drive, 2103','Estados Unidos'),(3,'Veríssimo','1936-09-26','Rocky Mount, 27801','Brasil'),(4,'Neil Gaiman','1960-11-10','Cut And Shoot, 77301','Inglaterra'),(5,'Clive Barker','1952-10-05','Rose Avenue, 2496','Estados Unidos'),(6,'Rodrigo Polesso','2001-02-17','Wetzel Lane, 3788','Brasil'),(7,'Ruy Ohtake','1938-01-27','Bobcat Drive, 2710','Brasil');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editora`
--

DROP TABLE IF EXISTS `editora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editora` (
  `editoraID` int(10) NOT NULL AUTO_INCREMENT,
  `editora` varchar(150) NOT NULL,
  `telefone_editora` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`editoraID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editora`
--

LOCK TABLES `editora` WRITE;
/*!40000 ALTER TABLE `editora` DISABLE KEYS */;
INSERT INTO `editora` VALUES (1,'Rocco','202-555-0171'),(2,'Intriseca','202-555-0187'),(3,'Lero-lero','202-555-0154'),(4,'Editora Dark Sense','202-555-0185'),(5,'Editora Gente','202-555-0110'),(6,'Instituto Tommie Ohtake','202-555-0134');
/*!40000 ALTER TABLE `editora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generos` (
  `generoID` int(10) NOT NULL AUTO_INCREMENT,
  `genero` varchar(50) NOT NULL,
  PRIMARY KEY (`generoID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Fantasia'),(2,'Suspense'),(3,'Comédia'),(4,'Auto-Ajuda'),(5,'Ficção Cíentifica');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livros`
--

DROP TABLE IF EXISTS `livros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livros` (
  `livrosID` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) NOT NULL,
  `generos` int(10) NOT NULL,
  `data_compra` date DEFAULT NULL,
  `quantia_paginas` int(10) DEFAULT NULL,
  `valor` float NOT NULL,
  `comprado` bit(1) NOT NULL,
  `autores` int(10) NOT NULL,
  `editora` int(10) NOT NULL,
  `data_publicacao` date NOT NULL,
  `rating` int(10) DEFAULT NULL,
  PRIMARY KEY (`livrosID`),
  KEY `generos` (`generos`),
  KEY `autores` (`autores`),
  KEY `editora` (`editora`),
  KEY `rating` (`rating`),
  CONSTRAINT `livros_ibfk_1` FOREIGN KEY (`generos`) REFERENCES `generos` (`generoID`),
  CONSTRAINT `livros_ibfk_2` FOREIGN KEY (`autores`) REFERENCES `autores` (`autorID`),
  CONSTRAINT `livros_ibfk_3` FOREIGN KEY (`editora`) REFERENCES `editora` (`editoraID`),
  CONSTRAINT `livros_ibfk_4` FOREIGN KEY (`rating`) REFERENCES `rating` (`ratingID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livros`
--

LOCK TABLES `livros` WRITE;
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` VALUES (1,'Harry Potter e a Pedra Filosofal',1,'2005-02-03',368,20.9,'',1,1,'2007-02-03',5),(2,'Harry Potter e o Prisioneiro de Azkaban',1,'2005-02-03',598,18.79,'',1,1,'2012-02-04',4),(3,'Harry Potter e a Ordem da Fênix',1,NULL,798,50.36,'\0',1,1,'2005-08-20',6),(4,'Harry Potter e a Câmara Secreta',1,NULL,328,15.21,'\0',1,1,'2019-01-25',3),(5,'Garota Exemplar',2,NULL,128,60.23,'\0',2,2,'2009-10-12',3),(6,'Diálogos Impossíveis',3,NULL,208,10,'\0',3,3,'2005-10-11',4),(7,'Arafat ',2,'2004-02-03',158,17.16,'',5,4,'2020-02-03',4),(8,'Este não é mais um livro de dieta',4,'2019-01-25',988,9.81,'',6,5,'2012-02-04',6),(9,'Atenção Plena: Mindfulness',5,'2022-12-04',122,20.55,'',7,6,'2005-08-20',3);
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rating` (
  `ratingID` int(10) NOT NULL AUTO_INCREMENT,
  `rating` varchar(100) NOT NULL,
  PRIMARY KEY (`ratingID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,'Péssimo'),(2,'Muito Ruim'),(3,'Ruim'),(4,'Bom'),(5,'Muito bom'),(6,'Incrível');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-03 12:08:27
