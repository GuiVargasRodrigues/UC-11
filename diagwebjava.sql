CREATE DATABASE  IF NOT EXISTS `diagweb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `diagweb`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: diagweb
-- ------------------------------------------------------
-- Server version	8.0.36

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



DROP TABLE IF EXISTS `doencas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doencas` (
  `id_doencas` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `descricao` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_doencas`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;



LOCK TABLES `doencas` WRITE;
/*!40000 ALTER TABLE `doencas` DISABLE KEYS */;
INSERT INTO `doencas` VALUES (1,'Enxaqueca','A enxaqueca é um distúrbio neurológico caracterizado por dores de cabeça intensas e recorrentes. Essas dores geralmente são pulsantes e ocorrem em um lado da cabeça. Além da dor, a enxaqueca pode ser acompanhada por náuseas, vômitos e sensibilidade extrema à luz e ao som');
/*!40000 ALTER TABLE `doencas` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `doencassintomas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doencassintomas` (
  `id_doencasSintomas` int NOT NULL AUTO_INCREMENT,
  `id_sintomas` int DEFAULT NULL,
  `id_doencas` int DEFAULT NULL,
  PRIMARY KEY (`id_doencasSintomas`),
  KEY `id_sintomas` (`id_sintomas`),
  KEY `id_doencas` (`id_doencas`),
  CONSTRAINT `doencassintomas_ibfk_1` FOREIGN KEY (`id_sintomas`) REFERENCES `sintomas` (`id_sintomas`),
  CONSTRAINT `doencassintomas_ibfk_2` FOREIGN KEY (`id_doencas`) REFERENCES `doencas` (`id_doencas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;



LOCK TABLES `doencassintomas` WRITE;
/*!40000 ALTER TABLE `doencassintomas` DISABLE KEYS */;
/*!40000 ALTER TABLE `doencassintomas` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `sintomas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sintomas` (
  `id_sintomas` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `descricao` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_sintomas`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;



LOCK TABLES `sintomas` WRITE;
/*!40000 ALTER TABLE `sintomas` DISABLE KEYS */;
INSERT INTO `sintomas` VALUES (1,'Dor de cabeça','A dor de cabeça é uma sensação de dor ou desconforto na região da cabeça ou do pescoço. Pode variar em intensidade, localização e duração. Existem diferentes tipos de dor de cabeça, como a enxaqueca, a cefaleia tensional e a cefaleia em salvas');
/*!40000 ALTER TABLE `sintomas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Inserindo doenças na tabela `doencas`
INSERT INTO `doencas` (`nome`, `descricao`) VALUES
('Enxaqueca', 'A enxaqueca é um distúrbio neurológico caracterizado por dores de cabeça intensas e recorrentes. Essas dores geralmente são pulsantes e ocorrem em um lado da cabeça. Além da dor, a enxaqueca pode ser acompanhada por náuseas, vômitos e sensibilidade extrema à luz e ao som'),
('Cefaleia Tensional', 'A cefaleia tensional é uma dor de cabeça que ocorre geralmente em ambos os lados da cabeça, descrita como uma sensação de pressão ou aperto. É frequentemente associada a estresse ou tensão muscular no pescoço e ombros'),
('Cefaleia em Salvas', 'A cefaleia em salvas é uma dor de cabeça extremamente dolorosa e unilateral, que ocorre em episódios ou "salvas". A dor é intensa e frequentemente acompanhada por sintomas autonômicos, como lacrimejamento e congestão nasal');

-- Inserindo sintomas na tabela `sintomas`
INSERT INTO `sintomas` (`nome`, `descricao`) VALUES
('Dor de cabeça', 'A dor de cabeça é uma sensação de dor ou desconforto na região da cabeça ou do pescoço. Pode variar em intensidade, localização e duração. Existem diferentes tipos de dor de cabeça, como a enxaqueca, a cefaleia tensional e a cefaleia em salvas'),
('Náusea', 'A náusea é uma sensação desagradável no estômago que pode levar ao vômito. É frequentemente associada a distúrbios gastrointestinais, enxaquecas e outras condições médicas'),
('Vômito', 'O vômito é a expulsão forçada do conteúdo do estômago pela boca. Pode ser causado por diversas condições, incluindo infecções, intoxicações e distúrbios digestivos'),
('Sensibilidade à luz', 'A sensibilidade à luz, ou fotofobia, é uma condição onde a exposição à luz pode causar desconforto ou dor. É comum em pessoas com enxaqueca e outras condições oculares ou neurológicas');

-- Inserindo relacionamentos na tabela `doencassintomas`
INSERT INTO `doencassintomas` (`id_sintomas`, `id_doencas`) VALUES
(1, 1),  -- Dor de cabeça associada à Enxaqueca
(2, 1),  -- Náusea associada à Enxaqueca
(3, 1),  -- Vômito associado à Enxaqueca
(4, 1),  -- Sensibilidade à luz associada à Enxaqueca
(1, 2),  -- Dor de cabeça associada à Cefaleia Tensional
(2, 2),  -- Náusea associada à Cefaleia Tensional
(3, 2);  -- Vômito associado à Cefaleia Tensional
