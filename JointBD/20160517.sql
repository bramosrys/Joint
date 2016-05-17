-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: joint
-- ------------------------------------------------------
-- Server version	5.7.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargo` (
  `idcargo` int(11) NOT NULL AUTO_INCREMENT,
  `cargo` varchar(20) NOT NULL,
  PRIMARY KEY (`idcargo`,`cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Administrador'),(2,'Gerente'),(3,'Despachador'),(4,'Operador');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `color` (
  `idcolor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `color` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idcolor`,`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'Verde Suave','#99b433'),(2,'Verde','#00a300'),(3,'Verde Fuerte','#1e7145'),(4,'Magenta','#ff0097'),(5,'Purpura','#9f00a7'),(6,'Morado','#7e3878'),(7,'Uva','#603cba'),(8,'Gris Fuerte','#1d1d1d'),(9,'Aqua','#00aba9'),(10,'Azul claro','#eff4ff'),(11,'Azul','#2d89ef'),(12,'Azul Fuerte','#2b5797'),(13,'Amarillo','#ffc40d'),(14,'Moztaza','#e3a21a'),(15,'Naranja','#da532c'),(16,'Rojo','#ee1111'),(17,'Rojizo','#b91d47'),(18,'Gris Claro','#647687'),(19,'Cafe','#63362f'),(20,'Rojo Suave','#ce352c'),(21,'Rojo Atenuado','#c66068');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuraciontrabajador`
--

DROP TABLE IF EXISTS `configuraciontrabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuraciontrabajador` (
  `idtrabajador` int(11) NOT NULL,
  `idcolor` int(11) NOT NULL DEFAULT '1',
  `configuracionInicial` varchar(10) DEFAULT 'false',
  PRIMARY KEY (`idtrabajador`),
  KEY `colorconfig_idx` (`idcolor`),
  CONSTRAINT `colorconfig` FOREIGN KEY (`idcolor`) REFERENCES `color` (`idcolor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `configTrabajador` FOREIGN KEY (`idtrabajador`) REFERENCES `trabajador` (`idtrabajador`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuraciontrabajador`
--

LOCK TABLES `configuraciontrabajador` WRITE;
/*!40000 ALTER TABLE `configuraciontrabajador` DISABLE KEYS */;
INSERT INTO `configuraciontrabajador` VALUES (1,5,'true'),(2,1,'false'),(3,1,'false');
/*!40000 ALTER TABLE `configuraciontrabajador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefono`
--

DROP TABLE IF EXISTS `telefono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefono` (
  `idTrabajador` int(11) NOT NULL,
  `fijo` varchar(30) DEFAULT 'Aun no especificado',
  `celular` varchar(30) DEFAULT 'Aun no especificado',
  `extension` varchar(30) DEFAULT 'Aun no especificado',
  PRIMARY KEY (`idTrabajador`),
  CONSTRAINT `trabajadortelefono` FOREIGN KEY (`idTrabajador`) REFERENCES `trabajador` (`idtrabajador`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefono`
--

LOCK TABLES `telefono` WRITE;
/*!40000 ALTER TABLE `telefono` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocalificacion`
--

DROP TABLE IF EXISTS `tipocalificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocalificacion` (
  `idcargo` int(11) NOT NULL,
  `tipocalificacion` varchar(45) NOT NULL,
  PRIMARY KEY (`idcargo`,`tipocalificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocalificacion`
--

LOCK TABLES `tipocalificacion` WRITE;
/*!40000 ALTER TABLE `tipocalificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipocalificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajador`
--

DROP TABLE IF EXISTS `trabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trabajador` (
  `idtrabajador` int(11) NOT NULL AUTO_INCREMENT,
  `noEmpleado` int(11) NOT NULL,
  `registro` varchar(8) DEFAULT 'false',
  `urlImagen` varchar(120) DEFAULT 'imagenesUsuario/userImage.png',
  `nombre` varchar(45) DEFAULT NULL,
  `fechaNacimiento` varchar(12) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `contrasenia` varchar(45) DEFAULT NULL,
  `idcargo` int(11) NOT NULL,
  `fechaContratacion` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`idtrabajador`,`noEmpleado`),
  KEY `cargoTrabajador_idx` (`idcargo`),
  CONSTRAINT `cargoTrabajador` FOREIGN KEY (`idcargo`) REFERENCES `cargo` (`idcargo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajador`
--

LOCK TABLES `trabajador` WRITE;
/*!40000 ALTER TABLE `trabajador` DISABLE KEYS */;
INSERT INTO `trabajador` VALUES (1,2015630114,'true','\'sistema/imagenesUsuario/2015630114.png\'',' Julio Diaz Rodriguez','14-06-1995',20,'jdiazrdgz@gmail.com','123456',4,'11/05/2016'),(2,2015630113,'true','\'sistema/imagenesUsuario/userImage.png\'','Jesus Altamirano Lara','1995-02-01',21,'chuy@gmail.com','123456',3,'13/05/2016'),(3,2015630112,'true','sistema/imagenesUsuario/userImage.png','Brayan Ramos Reyes','1996-08-26',19,'brayanramosreyes@gmail.com','123456',2,'15/05/2016');
/*!40000 ALTER TABLE `trabajador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-17 11:02:35
