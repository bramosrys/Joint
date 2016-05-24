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
-- Table structure for table `calificacion`
--

DROP TABLE IF EXISTS `calificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calificacion` (
  `idcalificacion` int(11) NOT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `valor` varchar(45) DEFAULT NULL,
  `comentario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcalificacion`),
  KEY `calicaciontipo_idx` (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificacion`
--

LOCK TABLES `calificacion` WRITE;
/*!40000 ALTER TABLE `calificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `calificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargo` (
  `idcargo` int(11) NOT NULL AUTO_INCREMENT,
  `cargo` varchar(20) NOT NULL,
  PRIMARY KEY (`idcargo`)
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
INSERT INTO `color` VALUES (1,'Verde Suave','99b433'),(2,'Verde','00a300'),(3,'Verde Fuerte','1e7145'),(4,'Magenta','ff0097'),(5,'Purpura','9f00a7'),(6,'Morado','7e3878'),(7,'Uva','603cba'),(8,'Gris Fuerte','1d1d1d'),(9,'Aqua','00aba9'),(10,'Azul claro','eff4ff'),(11,'Azul','2d89ef'),(12,'Azul Fuerte','2b5797'),(13,'Amarillo','ffc40d'),(14,'Moztaza','e3a21a'),(15,'Naranja','da532c'),(16,'Rojo','ee1111'),(17,'Rojizo','b91d47'),(18,'Gris Claro','647687'),(19,'Cafe','63362f'),(20,'Rojo Suave','ce352c'),(21,'Rojo Atenuado','cd5d5c');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuraciontrabajador`
--

DROP TABLE IF EXISTS `configuraciontrabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuraciontrabajador` (
  `idTrabajador` int(11) NOT NULL,
  `idcolor` int(11) NOT NULL DEFAULT '1',
  `configuracionInicial` varchar(45) DEFAULT 'false',
  PRIMARY KEY (`idTrabajador`),
  KEY `colorconfig_idx` (`idcolor`),
  CONSTRAINT `colorconfig` FOREIGN KEY (`idcolor`) REFERENCES `color` (`idcolor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `configTrabajador` FOREIGN KEY (`idTrabajador`) REFERENCES `trabajador` (`idtrabajador`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuraciontrabajador`
--

LOCK TABLES `configuraciontrabajador` WRITE;
/*!40000 ALTER TABLE `configuraciontrabajador` DISABLE KEYS */;
INSERT INTO `configuraciontrabajador` VALUES (1,9,'true'),(2,21,'true'),(3,4,'false'),(4,9,'true'),(6,12,'true');
/*!40000 ALTER TABLE `configuraciontrabajador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion`
--

DROP TABLE IF EXISTS `direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direccion` (
  `iddireccion` int(11) NOT NULL,
  `calle` varchar(45) DEFAULT NULL,
  `numero` varchar(20) DEFAULT NULL,
  `colonia` varchar(45) DEFAULT NULL,
  `delegacion` varchar(30) DEFAULT NULL,
  `cp` int(11) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddireccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefonotrabajador`
--

DROP TABLE IF EXISTS `telefonotrabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefonotrabajador` (
  `idtrabajador` int(11) NOT NULL,
  `tipo` varchar(15) NOT NULL,
  PRIMARY KEY (`idtrabajador`,`tipo`),
  CONSTRAINT `telefonotrabajador` FOREIGN KEY (`idtrabajador`) REFERENCES `trabajador` (`idtrabajador`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefonotrabajador`
--

LOCK TABLES `telefonotrabajador` WRITE;
/*!40000 ALTER TABLE `telefonotrabajador` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefonotrabajador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocalificacion`
--

DROP TABLE IF EXISTS `tipocalificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocalificacion` (
  `idtipocalificacion` int(11) NOT NULL AUTO_INCREMENT,
  `idcargo` int(11) NOT NULL,
  `tipocalificacion` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipocalificacion`),
  KEY `cargo_idx` (`idcargo`),
  KEY `tipo_idx` (`tipocalificacion`),
  CONSTRAINT `cargo` FOREIGN KEY (`idcargo`) REFERENCES `cargo` (`idcargo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tipo` FOREIGN KEY (`tipocalificacion`) REFERENCES `calificacion` (`tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  `activo` varchar(10) DEFAULT 'true',
  PRIMARY KEY (`idtrabajador`,`noEmpleado`),
  KEY `cargoTrabajador_idx` (`idcargo`),
  CONSTRAINT `cargoTrabajador` FOREIGN KEY (`idcargo`) REFERENCES `cargo` (`idcargo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajador`
--

LOCK TABLES `trabajador` WRITE;
/*!40000 ALTER TABLE `trabajador` DISABLE KEYS */;
INSERT INTO `trabajador` VALUES (1,2015630114,'true','\'sistema/imagenesUsuario/2015630114.png\'','Julio Diaz Rodriguez','1995-06-14',20,'jdiazrdgz@gmail.com','123456',4,'1998-02-10','true'),(2,2015630113,'true','\'sistema/imagenesUsuario/userImage.png\'','Jesus Altamirano Lara','1995-02-01',21,'chuy@gmail.com','123456',3,'1998-02-10','true'),(3,2015630112,'true','imagenesUsuario/userImage.png','Brayan Ramos Reyes','1996-08-26',19,'brayanramosreyes@gmail.com','123456',2,'1998-02-10','true'),(4,2015630111,'true','imagenesUsuario/userImage.png','Gran Señor Imaginario','1995-06-14',20,'setrules@gmail.com','123456',1,'1998-02-10','true'),(5,2015630110,'true','imagenesUsuario/userImage.png','Señor Prueba s','1995-08-26',18,'pruebas@gmail.com','123456',1,'1998-02-10','true'),(6,2015630109,'true','imagenesUsuario/userImage.png','Dae Oh Young','1990-06-11',26,'coreano@gmail.com','123456',4,NULL,'true'),(7,2015630108,'false','imagenesUsuario/userImage.png',NULL,NULL,NULL,NULL,NULL,3,NULL,'true'),(8,2015630107,'false','imagenesUsuario/userImage.png',NULL,NULL,NULL,NULL,NULL,1,NULL,'false');
/*!40000 ALTER TABLE `trabajador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajadorviajecalificacion`
--

DROP TABLE IF EXISTS `trabajadorviajecalificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trabajadorviajecalificacion` (
  `idtrabajador` int(11) NOT NULL,
  `idcalificacion` int(11) NOT NULL,
  `idviaje` int(11) NOT NULL,
  PRIMARY KEY (`idtrabajador`,`idcalificacion`,`idviaje`),
  KEY `vtc_idx` (`idviaje`),
  KEY `ctv_idx` (`idcalificacion`),
  CONSTRAINT `ctv` FOREIGN KEY (`idcalificacion`) REFERENCES `calificacion` (`idcalificacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tvc` FOREIGN KEY (`idtrabajador`) REFERENCES `trabajador` (`idtrabajador`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vtc` FOREIGN KEY (`idviaje`) REFERENCES `viaje` (`idviaje`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajadorviajecalificacion`
--

LOCK TABLES `trabajadorviajecalificacion` WRITE;
/*!40000 ALTER TABLE `trabajadorviajecalificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `trabajadorviajecalificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viaje`
--

DROP TABLE IF EXISTS `viaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viaje` (
  `idviaje` int(11) NOT NULL,
  `iddestino` int(11) NOT NULL,
  `fechasalida` varchar(45) NOT NULL,
  `fechallegada` varchar(45) DEFAULT NULL,
  `kilometraje` varchar(45) DEFAULT NULL,
  `horasalida` varchar(45) NOT NULL,
  `horaentrada` varchar(45) DEFAULT NULL,
  `idchofer` int(11) NOT NULL,
  `idlogistica` int(11) NOT NULL,
  `idcalificacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`idviaje`,`fechasalida`,`horasalida`,`idchofer`,`idlogistica`,`iddestino`),
  KEY `trabajadorchofer_idx` (`idchofer`),
  KEY `trabajadorlogistica_idx` (`idlogistica`),
  KEY `viajecalificacion_idx` (`idcalificacion`),
  KEY `viajedestino_idx` (`iddestino`),
  CONSTRAINT `trabajadorchofer` FOREIGN KEY (`idchofer`) REFERENCES `trabajador` (`idtrabajador`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `trabajadorlogistica` FOREIGN KEY (`idlogistica`) REFERENCES `trabajador` (`idtrabajador`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `viajecalificacion` FOREIGN KEY (`idcalificacion`) REFERENCES `calificacion` (`idcalificacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `viajedestino` FOREIGN KEY (`iddestino`) REFERENCES `direccion` (`iddireccion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viaje`
--

LOCK TABLES `viaje` WRITE;
/*!40000 ALTER TABLE `viaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `viaje` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-24 14:59:28
