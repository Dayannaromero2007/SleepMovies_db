-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: sleepmovies
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `idcompras` int NOT NULL,
  `nombre_cliente` varchar(100) NOT NULL,
  `cantidad_boletas` int NOT NULL,
  PRIMARY KEY (`idcompras`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,'Dayanna Romero',2),(2,'Valentina Arango',4),(3,'Lina Camacho',3),(4,'Isaac Ferredico',1);
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras_has_funciones`
--

DROP TABLE IF EXISTS `compras_has_funciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras_has_funciones` (
  `compras_idcompras` int NOT NULL,
  `funciones_idfunciones` int NOT NULL,
  PRIMARY KEY (`compras_idcompras`,`funciones_idfunciones`),
  KEY `fk_compras_has_funciones_funciones1_idx` (`funciones_idfunciones`),
  KEY `fk_compras_has_funciones_compras1_idx` (`compras_idcompras`),
  CONSTRAINT `fk_compras_has_funciones_compras1` FOREIGN KEY (`compras_idcompras`) REFERENCES `compras` (`idcompras`),
  CONSTRAINT `fk_compras_has_funciones_funciones1` FOREIGN KEY (`funciones_idfunciones`) REFERENCES `funciones` (`idfunciones`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras_has_funciones`
--

LOCK TABLES `compras_has_funciones` WRITE;
/*!40000 ALTER TABLE `compras_has_funciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `compras_has_funciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funciones`
--

DROP TABLE IF EXISTS `funciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funciones` (
  `idfunciones` int NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `sala` varchar(45) NOT NULL,
  `precio` double DEFAULT NULL,
  `cupos_disponibles` int NOT NULL,
  PRIMARY KEY (`idfunciones`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funciones`
--

LOCK TABLES `funciones` WRITE;
/*!40000 ALTER TABLE `funciones` DISABLE KEYS */;
INSERT INTO `funciones` VALUES (1,'2026-12-15 09:10:00','Sala 1 - IMAX',12000,80),(2,'2026-12-05 08:00:00','Sala 2 - 3D',18000,40),(3,'2026-10-15 09:30:00','Sala 3 - 3D',18000,50),(4,'2026-09-10 10:00:00','Sala 4 - 3D',18000,60);
/*!40000 ALTER TABLE `funciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculas` (
  `idpeliculas` int NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `genero` varchar(100) DEFAULT NULL,
  `duracion` int NOT NULL,
  `clasificacion` varchar(10) NOT NULL,
  PRIMARY KEY (`idpeliculas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES (1,'Godzilla Minus Zero','Accion, ciencia fisicion, Drama ',125,'PG-13'),(2,'El Gato Con Sombrero','Animacion, aventura , Comedia y Fantasia ',105,'Familiar'),(3,'Como Entrenar a tu Dragon','Fantasía, Acción, Aventuras ',125,'Familiar'),(4,'SuperGirl','Superheroes, Accion, Aventura y Ciencia ficcion ',108,'PG-13');
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas_has_funciones`
--

DROP TABLE IF EXISTS `peliculas_has_funciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculas_has_funciones` (
  `peliculas_idpeliculas` int NOT NULL,
  `funciones_idfunciones` int NOT NULL,
  PRIMARY KEY (`peliculas_idpeliculas`,`funciones_idfunciones`),
  KEY `fk_peliculas_has_funciones_funciones1_idx` (`funciones_idfunciones`),
  KEY `fk_peliculas_has_funciones_peliculas_idx` (`peliculas_idpeliculas`),
  CONSTRAINT `fk_peliculas_has_funciones_funciones1` FOREIGN KEY (`funciones_idfunciones`) REFERENCES `funciones` (`idfunciones`),
  CONSTRAINT `fk_peliculas_has_funciones_peliculas` FOREIGN KEY (`peliculas_idpeliculas`) REFERENCES `peliculas` (`idpeliculas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas_has_funciones`
--

LOCK TABLES `peliculas_has_funciones` WRITE;
/*!40000 ALTER TABLE `peliculas_has_funciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `peliculas_has_funciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-11 20:45:16
