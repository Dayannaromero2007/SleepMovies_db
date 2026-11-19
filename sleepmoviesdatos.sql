-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: sleepmovies
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,'Dayanna Romero',2,1,50000,'2026-11-16 13:54:16'),(2,'Carlos Mendoza',4,1,100000,'2026-11-16 13:54:16'),(5,'Valentina Arango',2,4,37000,'2026-11-19 01:51:23'),(7,'Geiffer Ardila',2,7,37000,'2026-11-19 16:28:58');
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `funciones`
--

LOCK TABLES `funciones` WRITE;
/*!40000 ALTER TABLE `funciones` DISABLE KEYS */;
INSERT INTO `funciones` VALUES (1,'2026-11-21 18:30:00','Sala 1 - IMAX',15000,76,1),(4,'2026-11-21 01:31:00','Sala 2 - 3D',18500,47,2),(5,'2026-11-25 00:30:00','Sala 3 - IMAX',15000,80,4),(6,'2026-11-23 01:00:00','Sala 4 - IMAX',15000,80,6),(7,'2026-11-27 23:30:00','Sala 5 - 3D',18500,48,7),(8,'2026-11-26 00:30:00','Sala 6 - 3D',18500,50,8);
/*!40000 ALTER TABLE `funciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES (1,'Godzilla Minus Zero','Accion/ciencia ficcion/Drama',135,'+13','posters/Godzilla-Minus-Zero.jpg'),(2,'Duna: Parte Dos','Ciencia ficcion/Aventura',166,'+13','posters/Duna-Parte-dos.jpg'),(4,'El Padrino','Crimen/Crimen',175,'18+','posters/El-Padrino.jpg'),(6,'LUCY','Acción/Ciencia ficción',90,'+15','posters/Lucy.jpg'),(7,'La Odisea','Acción/Fantasía',172,'+14','posters/La-Odisea.jpg'),(8,'Interestelar','Ciencia ficción/Aventura',169,'+13','posters/Interestelar.jpg');
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-19 11:35:32
