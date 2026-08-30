CREATE DATABASE  IF NOT EXISTS `cinesdb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cinesdb`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: cinesdb
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `butacas`
--

DROP TABLE IF EXISTS `butacas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `butacas` (
  `idButaca` varchar(10) NOT NULL,
  `idSala` int NOT NULL,
  `Fila` int NOT NULL,
  `Asiento` int NOT NULL,
  `Estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`idButaca`),
  KEY `fk_butacas_salas` (`idSala`),
  CONSTRAINT `fk_butacas_salas` FOREIGN KEY (`idSala`) REFERENCES `salas` (`idSala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `butacas`
--

LOCK TABLES `butacas` WRITE;
/*!40000 ALTER TABLE `butacas` DISABLE KEYS */;
INSERT INTO `butacas` VALUES ('111',11,1,1,'A'),('1110',11,2,10,'A'),('112',11,1,2,'A'),('113',11,1,3,'A'),('114',11,1,4,'A'),('115',11,1,5,'A'),('116',11,1,6,'A'),('117',11,2,7,'A'),('118',11,2,8,'A'),('119',11,2,9,'A'),('121',12,1,1,'A'),('1210',12,2,10,'A'),('122',12,1,2,'A'),('123',12,1,3,'A'),('124',12,1,4,'A'),('125',12,1,5,'A'),('126',12,2,6,'A'),('127',12,2,7,'A'),('128',12,2,8,'A'),('129',12,2,9,'A'),('131',13,1,1,'A'),('1310',13,2,10,'A'),('132',13,1,2,'A'),('133',13,1,3,'A'),('134',13,1,4,'A'),('135',13,1,5,'A'),('136',13,2,6,'A'),('137',13,2,7,'A'),('138',13,2,8,'A'),('139',13,2,9,'A'),('141',14,1,1,'A'),('1410',14,2,10,'A'),('142',14,1,2,'A'),('143',14,1,3,'A'),('144',14,1,4,'A'),('145',14,1,5,'A'),('146',14,2,6,'A'),('147',14,2,7,'A'),('148',14,2,8,'A'),('149',14,2,9,'A'),('411',41,1,1,'A'),('4110',41,2,10,'A'),('412',41,1,2,'A'),('413',41,1,3,'A'),('414',41,1,4,'A'),('415',41,1,5,'A'),('416',41,2,6,'A'),('417',41,2,7,'A'),('418',41,2,8,'A'),('419',41,2,9,'A');
/*!40000 ALTER TABLE `butacas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clasificacion`
--

DROP TABLE IF EXISTS `clasificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clasificacion` (
  `IDClasificacion` int NOT NULL AUTO_INCREMENT,
  `Clasificacion` varchar(15) NOT NULL,
  PRIMARY KEY (`IDClasificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clasificacion`
--

LOCK TABLES `clasificacion` WRITE;
/*!40000 ALTER TABLE `clasificacion` DISABLE KEYS */;
INSERT INTO `clasificacion` VALUES (1,'ATP'),(2,'+13'),(3,'+18');
/*!40000 ALTER TABLE `clasificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idClientes` int NOT NULL AUTO_INCREMENT,
  `NombreCli` varchar(45) NOT NULL,
  `ApellidoCli` varchar(45) NOT NULL,
  `ClaveCli` varchar(45) DEFAULT NULL,
  `MailCli` varchar(50) DEFAULT NULL,
  `UltTrans` date DEFAULT NULL,
  PRIMARY KEY (`idClientes`),
  KEY `ApeNom` (`NombreCli`,`ApellidoCli`) /*!80000 INVISIBLE */,
  KEY `UltTrans` (`UltTrans`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Andrea','Rodriguez',NULL,'arodriguez@gmail.com','2020-02-19'),(2,'Carlos','Perez',NULL,'carlos_perez23@yahoo.com','2019-12-15'),(3,'Alicia','Lopez',NULL,'alopez@uol.com','2020-03-12'),(4,'Roberto','Carlos',NULL,'robert_charles@hotmail.com','2019-10-08'),(5,'Jose','Rodriguez',NULL,'jrodriguez@gmail.com','2019-08-02'),(6,'Ana','Garcia',NULL,'anita_garcia88@yahoo.com','2020-01-18'),(7,'Maria','Gonzalez',NULL,'mary_gonzalez@gmail.com','2020-01-11'),(8,'Claudio','Martinez',NULL,'cmartinez@yahoo.com','2020-03-03');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complejos`
--

DROP TABLE IF EXISTS `complejos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complejos` (
  `idComplejo` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Calle` varchar(45) DEFAULT NULL,
  `Numero` int DEFAULT NULL,
  `Localidad` varchar(45) DEFAULT NULL,
  `CodPos` varchar(8) DEFAULT NULL,
  `Pcia` varchar(25) DEFAULT NULL,
  `Telefonos` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idComplejo`),
  KEY `Nombre` (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complejos`
--

LOCK TABLES `complejos` WRITE;
/*!40000 ALTER TABLE `complejos` DISABLE KEYS */;
INSERT INTO `complejos` VALUES (1,'Palermo','Berutti',1233,'C.A.B.A.','C1111DFD','C.A.B.A.','1149652233'),(2,'Caballito','Av. Rivadavia',2334,'C.A.B.A.','M1223DAS','C.A.B.A.','1148811122'),(3,'Avellaneda','Av. Mitre',4500,'Avellaneda','S1870EEV','Buenos Aires','1142038866'),(4,'Almagro','Av. Scalabrini Ortiz',1223,'C.A.B.A.','M1230DHS','C.A.B.A.','1147711234'),(5,'Pilar','Aut Panamericana Km 65',1222,'Pilar','P9998FDF','Buenos Aires',NULL),(6,'Recoleta','Berutti',55,'C.A.B.A.','S1426RRT','C.A.B.A.','11 4965-9988');
/*!40000 ALTER TABLE `complejos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creditcard`
--

DROP TABLE IF EXISTS `creditcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creditcard` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `idCcard` varchar(16) NOT NULL,
  `idCliente` int NOT NULL,
  `CCTitular` varchar(45) NOT NULL,
  `Emisor` varchar(45) NOT NULL,
  `CCVenc` varchar(4) NOT NULL,
  `CCCodSeg` varchar(4) NOT NULL,
  `Estado` varchar(1) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `idCcard_U` (`idCcard`),
  KEY `idCliente` (`idCliente`),
  CONSTRAINT `FKidClienteCC` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idClientes`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creditcard`
--

LOCK TABLES `creditcard` WRITE;
/*!40000 ALTER TABLE `creditcard` DISABLE KEYS */;
INSERT INTO `creditcard` VALUES (11,'1111222233334444',1,'ANDREA LUCIA RODRIGUEZ','AMEX','1021','012','A'),(12,'2233121234442345',2,'CARLOS PEREZ','VISA GALICIA','0822','122','A'),(13,'0123345518922000',3,'ALICIA KARINA LOPEZ','VISA','1220','922','A'),(14,'9090234556781255',4,'ROBERTO CARLOS','VISA ICBC','1219','023','I'),(15,'0112122245660890',5,'JOSE LUIS RODRIGUEZ','AMEX','0321','111','A'),(16,'1100220044000022',6,'ANA GARCIA','MASTER CIUDAD','0821','988','A'),(17,'0012230050609900',7,'MARIA GONZALEZ','VISA','1022','796','A'),(18,'0345456022330110',8,'CLAUDIO O MARTINEZ','VISA GALICIA','1220','100','A');
/*!40000 ALTER TABLE `creditcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cupones`
--

DROP TABLE IF EXISTS `cupones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cupones` (
  `idCupon` int NOT NULL AUTO_INCREMENT,
  `Detalle` varchar(40) NOT NULL,
  `DtoPor` int NOT NULL,
  `Vencimiento` date NOT NULL,
  PRIMARY KEY (`idCupon`),
  KEY `Detalle_U` (`Detalle`) /*!80000 INVISIBLE */,
  KEY `Vencimiento` (`Vencimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cupones`
--

LOCK TABLES `cupones` WRITE;
/*!40000 ALTER TABLE `cupones` DISABLE KEYS */;
INSERT INTO `cupones` VALUES (0,'Club La Nación',5,'2030-10-31'),(1,'Cinemania',10,'2031-08-31'),(2,'Sin Cupon',0,'2029-01-01');
/*!40000 ALTER TABLE `cupones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formapago`
--

DROP TABLE IF EXISTS `formapago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formapago` (
  `idFormaPago` int NOT NULL AUTO_INCREMENT,
  `Detalle` varchar(25) NOT NULL,
  `Estado` varchar(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`idFormaPago`),
  KEY `Detalle_fp` (`Detalle`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formapago`
--

LOCK TABLES `formapago` WRITE;
/*!40000 ALTER TABLE `formapago` DISABLE KEYS */;
INSERT INTO `formapago` VALUES (1,'EFECTIVO','A'),(2,'TARJETA DE DEBITO','A'),(3,'TARJETA DE CREDITO','A'),(4,'VOUCHER','A');
/*!40000 ALTER TABLE `formapago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formatos`
--

DROP TABLE IF EXISTS `formatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formatos` (
  `IDFormato` int NOT NULL AUTO_INCREMENT,
  `Formato` varchar(15) NOT NULL,
  PRIMARY KEY (`IDFormato`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formatos`
--

LOCK TABLES `formatos` WRITE;
/*!40000 ALTER TABLE `formatos` DISABLE KEYS */;
INSERT INTO `formatos` VALUES (1,'2D'),(2,'3D');
/*!40000 ALTER TABLE `formatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funciones`
--

DROP TABLE IF EXISTS `funciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funciones` (
  `IdFuncion` int NOT NULL AUTO_INCREMENT,
  `IDComplejo` int DEFAULT NULL,
  `IDSala` int NOT NULL,
  `IDPelicula` int NOT NULL,
  `Fecha` date NOT NULL,
  `Horario` time NOT NULL,
  `Valor` decimal(8,2) NOT NULL,
  PRIMARY KEY (`IdFuncion`),
  KEY `IdPelicula` (`IDPelicula`),
  KEY `IdSala` (`IDSala`),
  CONSTRAINT `IdPelicula` FOREIGN KEY (`IDPelicula`) REFERENCES `peliculas` (`idPelicula`),
  CONSTRAINT `IdSala` FOREIGN KEY (`IDSala`) REFERENCES `salas` (`idSala`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funciones`
--

LOCK TABLES `funciones` WRITE;
/*!40000 ALTER TABLE `funciones` DISABLE KEYS */;
INSERT INTO `funciones` VALUES (1,1,11,1,'2026-08-07','21:00:00',18000.00),(2,1,11,1,'2026-04-26','22:15:00',18000.00),(3,1,12,2,'2026-04-26','20:50:00',18000.00),(4,1,12,2,'2026-04-26','22:05:00',18000.00),(5,1,13,5,'2026-04-27','21:00:00',18000.00),(6,1,13,5,'2026-04-27','22:15:00',18000.00),(7,1,14,11,'2026-04-27','20:30:00',18000.00),(8,1,14,11,'2026-04-28','23:30:00',18000.00),(9,4,41,10,'2026-04-28','19:00:00',23000.00);
/*!40000 ALTER TABLE `funciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
  `idGenero` int NOT NULL AUTO_INCREMENT,
  `Genero` varchar(15) NOT NULL,
  PRIMARY KEY (`idGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Ciencia Ficcion'),(2,'Belica'),(3,'Terror'),(4,'Suspenso'),(5,'Drama'),(6,'Comedia'),(7,'Policial'),(8,'Romantica'),(9,'Musical');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `idTrx` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `Descripcion` varchar(80) NOT NULL,
  PRIMARY KEY (`idTrx`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'2026-08-14','17:20:23','Creación Venta Nro 12'),(2,'2026-08-14','17:45:27','Prueba del procedimiento'),(3,'2026-08-14','17:49:06','Creación Ticket Nro 19');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculas` (
  `idPelicula` int NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(45) NOT NULL,
  `idGenero` int NOT NULL,
  `Duracion` time NOT NULL,
  `IDclasificacion` int NOT NULL,
  `IDFormato` int NOT NULL,
  `Idioma` varchar(20) NOT NULL,
  `Director` varchar(45) NOT NULL,
  PRIMARY KEY (`idPelicula`),
  KEY `IdGene` (`idGenero`),
  KEY `Idforma` (`IDFormato`),
  KEY `IdClasif` (`IDclasificacion`),
  CONSTRAINT `IdClasif` FOREIGN KEY (`IDclasificacion`) REFERENCES `clasificacion` (`IDClasificacion`),
  CONSTRAINT `Idforma` FOREIGN KEY (`IDFormato`) REFERENCES `formatos` (`IDFormato`),
  CONSTRAINT `IdGene` FOREIGN KEY (`idGenero`) REFERENCES `generos` (`idGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES (1,'ALIEN',1,'02:00:00',3,1,'CASTELLANO','Ridley Scott'),(2,'TERMINATOR',1,'01:45:00',2,1,'SUBTITULADA','James Cameron'),(3,'PELOTON',2,'02:10:00',3,1,'SUBTITULADA','Oliver Stone'),(4,'IT',3,'03:00:00',3,1,'SUBTITULADA','Andy Muschietti'),(5,'EL EXORCISTA',3,'02:00:00',3,1,'CASTELLANO','William Friedkin'),(6,'TERMINATOR',1,'01:45:00',2,1,'CASTELLANO','James Cameron'),(7,'STAR WARS EPISODIO IV',1,'01:55:00',1,2,'SUBTITULADA','George Lucas'),(8,'STAR WARS EPISODIO V',1,'01:50:00',1,2,'CASTELLANO','George Lucas'),(9,'STAR WARS EPISODIO VI',1,'02:10:00',1,1,'SUBTITULADA','George Lucas'),(10,'2001 ODISEA DEL ESPACIO',1,'03:10:00',2,1,'SUBTITULADA','Stanley Kubrick'),(11,'TITANIC',5,'02:45:00',2,2,'SUBTITULADA','James Cameron');
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salas`
--

DROP TABLE IF EXISTS `salas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salas` (
  `idSala` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `CantButacas` int NOT NULL,
  `idComplejo` int NOT NULL,
  PRIMARY KEY (`idSala`),
  KEY `idComplejo` (`idComplejo`),
  CONSTRAINT `idComplejo` FOREIGN KEY (`idComplejo`) REFERENCES `complejos` (`idComplejo`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salas`
--

LOCK TABLES `salas` WRITE;
/*!40000 ALTER TABLE `salas` DISABLE KEYS */;
INSERT INTO `salas` VALUES (11,'Sala 1',10,1),(12,'Sala 2',10,1),(13,'Sala 3',10,1),(14,'Sala 4',10,1),(21,'Sala 1',10,2),(22,'Sala 2',10,2),(23,'Sala 3',10,2),(31,'Sala 1',10,3),(32,'Sala 2',10,3),(33,'Sala 3',10,3),(41,'Sala 1',10,4);
/*!40000 ALTER TABLE `salas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `idTicket` int NOT NULL AUTO_INCREMENT,
  `idComprobante` varchar(13) NOT NULL,
  `idFuncion` int NOT NULL,
  `idButaca` varchar(10) NOT NULL,
  `Valor` decimal(8,2) NOT NULL,
  PRIMARY KEY (`idTicket`),
  KEY `idComprobante` (`idComprobante`),
  KEY `idFuncion` (`idFuncion`),
  KEY `FKiButaca_idx` (`idButaca`),
  CONSTRAINT `FKiButaca` FOREIGN KEY (`idButaca`) REFERENCES `butacas` (`idButaca`),
  CONSTRAINT `idComprobante` FOREIGN KEY (`idComprobante`) REFERENCES `ventascab` (`IdComprobante`),
  CONSTRAINT `idFuncion` FOREIGN KEY (`idFuncion`) REFERENCES `funciones` (`IdFuncion`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'1',1,'118',18000.00),(2,'2',2,'115',18000.00),(3,'2',2,'116',18000.00),(4,'3',1,'111',18000.00),(5,'3',1,'112',18000.00),(6,'3',1,'113',18000.00),(7,'4',2,'114',18000.00),(8,'4',2,'115',18000.00),(9,'5',3,'123',18000.00),(10,'5',3,'124',18000.00),(11,'5',3,'125',18000.00),(12,'6',1,'1110',18000.00),(13,'7',4,'121',18000.00),(14,'8',9,'413',23000.00),(15,'8',9,'414',23000.00),(16,'9',9,'418',23000.00),(17,'9',9,'419',23000.00),(18,'10',1,'117',18000.00),(19,'12',1,'119',18000.00);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tickets_AFTER_INSERT` AFTER INSERT ON `tickets` FOR EACH ROW BEGIN

CALL Triggers_IN_A(CONCAT("Creación Ticket Nro ", NEW.idTicket));

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ventascab`
--

DROP TABLE IF EXISTS `ventascab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventascab` (
  `IdComprobante` varchar(13) NOT NULL,
  `IdComplejo` int NOT NULL,
  `IdCliente` int NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `Dto` decimal(8,2) NOT NULL,
  `Total` decimal(8,2) NOT NULL,
  `idFormaPago` int NOT NULL,
  `Subtotal` decimal(7,2) NOT NULL,
  `idCupon` int DEFAULT NULL,
  `idCCard` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`IdComprobante`),
  KEY `idComplejo` (`IdComplejo`) /*!80000 INVISIBLE */,
  KEY `idCliente` (`IdCliente`),
  KEY `idFormaPago` (`idFormaPago`) /*!80000 INVISIBLE */,
  KEY `FKidCupon_idx` (`idCupon`),
  CONSTRAINT `fk_ventascab_complejos` FOREIGN KEY (`IdComplejo`) REFERENCES `complejos` (`idComplejo`),
  CONSTRAINT `FKidCupon` FOREIGN KEY (`idCupon`) REFERENCES `cupones` (`idCupon`),
  CONSTRAINT `FKidFP` FOREIGN KEY (`idFormaPago`) REFERENCES `formapago` (`idFormaPago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventascab`
--

LOCK TABLES `ventascab` WRITE;
/*!40000 ALTER TABLE `ventascab` DISABLE KEYS */;
INSERT INTO `ventascab` VALUES ('1',1,2,'2026-04-26','14:30:00',0.00,18000.00,1,18000.00,0,'2233121234442345'),('10',1,1,'2026-08-07','17:09:04',0.00,18000.00,1,18000.00,NULL,NULL),('11',1,1,'2026-04-28','17:00:00',0.00,46000.00,1,46000.00,0,'0345456022330112'),('12',1,1,'2026-08-14','17:20:23',0.00,18000.00,1,18000.00,NULL,NULL),('2',1,8,'2026-04-26','15:00:00',0.00,36000.00,1,36000.00,0,'0345456022330110'),('3',1,7,'2026-04-26','15:15:00',0.00,54000.00,1,54000.00,0,'0012230050609900'),('4',1,2,'2026-04-26','16:00:00',0.00,36000.00,1,36000.00,0,'2233121234442345'),('5',1,5,'2026-04-26','16:15:00',0.00,54000.00,1,54000.00,0,'0112122245660890'),('6',1,3,'2026-04-26','16:20:00',0.00,18000.00,1,18000.00,0,'0123345518922000'),('7',1,1,'2026-04-26','17:00:00',0.00,18000.00,2,18000.00,0,'1111222233334444'),('8',4,6,'2026-04-28','14:30:00',0.00,46000.00,2,46000.00,0,'1100220044000022'),('9',1,8,'2026-04-28','17:00:00',0.00,46000.00,3,46000.00,0,'0345456022330110');
/*!40000 ALTER TABLE `ventascab` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ventascab_AFTER_INSERT` AFTER INSERT ON `ventascab` FOR EACH ROW BEGIN
insert into logs(fecha, hora, Descripcion)
values(CURDATE(),CURTIME(),CONCAT("Creación Venta Nro ", NEW.IdComprobante));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `vmovie`
--

DROP TABLE IF EXISTS `vmovie`;
/*!50001 DROP VIEW IF EXISTS `vmovie`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vmovie` AS SELECT 
 1 AS `ID`,
 1 AS `Titulo`,
 1 AS `Duracion`,
 1 AS `Idioma`,
 1 AS `Director`,
 1 AS `Genero`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vpagosccard`
--

DROP TABLE IF EXISTS `vpagosccard`;
/*!50001 DROP VIEW IF EXISTS `vpagosccard`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vpagosccard` AS SELECT 
 1 AS `idComprobante`,
 1 AS `idCliente`,
 1 AS `idComplejo`,
 1 AS `Total`,
 1 AS `Emisor`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'cinesdb'
--

--
-- Dumping routines for database 'cinesdb'
--
/*!50003 DROP FUNCTION IF EXISTS `EnFuncion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `EnFuncion`(pidpelicula INT) RETURNS char(1) CHARSET utf8mb3
    DETERMINISTIC
BEGIN
declare FEXISTE char(1);
if exists(select idpelicula from funciones where idpelicula = pidpelicula) then
	set FEXISTE = "S";
else 
	set FEXISTE = "N";
end if;


RETURN FEXISTE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Existe_Peli` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Existe_Peli`(ptitulo varchar(45)) RETURNS char(1) CHARSET utf8mb3
    DETERMINISTIC
BEGIN
DECLARE VEXISTE CHAR(1);
if exists(select titulo from peliculas where upper(titulo) = upper(ptitulo)) then 
	set VEXISTE = "S";
else
	set VEXISTE = "N";
END IF;

RETURN VEXISTE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Butacas_Disponibles_Funcion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Butacas_Disponibles_Funcion`(
    IN pfuncion INT
)
BEGIN

    SELECT
        b.idbutaca,
        b.idsala,
        b.fila,
        b.asiento
    FROM cinesdb.butacas b
    INNER JOIN cinesdb.funciones f
        ON b.idsala = f.idsala
    WHERE f.idfuncion = pfuncion
    AND b.idbutaca NOT IN (
        SELECT t.idbutaca
        FROM cinesdb.tickets t
        WHERE t.idfuncion = pfuncion
    );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Butacas_Funcion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Butacas_Funcion`(IN pfuncion INT)
BEGIN
    SELECT
        f.idsala AS Sala,
        f.idpelicula AS IDPelicula,
        t.idticket AS Ticket,
        t.idbutaca AS Butaca
    FROM cinesdb.funciones f
    INNER JOIN cinesdb.tickets t
    
    ON f.idfuncion = t.idfuncion
    WHERE f.idfuncion=pfuncion;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Consulta_función_Peli` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Consulta_función_Peli`(ptitulo varchar(45))
BEGIN
IF EXISTS (SELECT * FROM cinesdb.peliculas WHERE titulo = ptitulo) THEN
	SELECT 
    f.* ,
    p.*
	  FROM cinesdb.funciones f
	  INNER JOIN cinesdb.peliculas p
		  ON f.idpelicula = p.idpelicula
	  WHERE p.titulo = ptitulo;

ELSE
	SELECT 'NO EXISTE LA PELICULA CONSULTADA' AS Mensaje;

END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Entradas_P_Pelicula` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Entradas_P_Pelicula`(IN ptitulo VARCHAR(45))
BEGIN

    SELECT
        f.idfuncion AS funcion,
        COUNT(t.idfuncion) AS qty,
        p.titulo
    FROM cinesdb.funciones f
    INNER JOIN cinesdb.tickets t
        ON f.idfuncion = t.idfuncion
    INNER JOIN cinesdb.peliculas p
        ON f.idpelicula = p.idpelicula
    
    WHERE p.titulo = ptitulo
    GROUP BY f.idfuncion, p.titulo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Triggers_IN_A` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Triggers_IN_A`(IN pDescripcion VARCHAR(80))
BEGIN
INSERT INTO Logs(fecha, hora, Descripcion)
VALUES(CURDATE(),CURTIME(),pDescripcion);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Venta_Ticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Venta_Ticket`(IN p_idCliente INT, IN p_idFuncion INT, IN p_idButaca VARCHAR(10))
BEGIN
   DECLARE VCOMP INT;

   IF NOT EXISTS (SELECT * FROM clientes WHERE idClientes = p_idCliente) THEN
       SELECT 'No existe el Cliente ingresado' AS '';
   ELSEIF NOT EXISTS (SELECT * FROM funciones WHERE idfuncion = p_idFuncion AND Fecha >= CURDATE()) THEN
       SELECT 'La Funcion no existe o ya se realizo' AS '';
   ELSEIF EXISTS (SELECT * FROM tickets WHERE idfuncion = p_idFuncion AND idbutaca = p_idButaca) THEN
       SELECT 'La Butaca no esta disponible. Butacas disponibles:' AS '';
       CALL Butacas_Disponibles_Funcion(p_idFuncion);
   ELSE
       SELECT IFNULL(MAX(CAST(idComprobante AS UNSIGNED)),0) + 1 INTO VCOMP FROM ventascab;

INSERT INTO ventascab
SELECT VCOMP, IDComplejo, p_idCliente, CURDATE(), CURTIME(), 0, valor, 1, valor, NULL, NULL
FROM funciones WHERE idfuncion = p_idFuncion;

       INSERT INTO tickets (idcomprobante, idfuncion, idbutaca, valor)
       SELECT VCOMP, idFuncion, p_idButaca, valor
       FROM funciones WHERE idfuncion = p_idFuncion;

       SELECT 'Venta generada correctamente' AS '';
   END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vmovie`
--

/*!50001 DROP VIEW IF EXISTS `vmovie`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vmovie` AS select `a`.`idPelicula` AS `ID`,`a`.`Titulo` AS `Titulo`,`a`.`Duracion` AS `Duracion`,`a`.`Idioma` AS `Idioma`,`a`.`Director` AS `Director`,`b`.`Genero` AS `Genero` from (`peliculas` `a` join `generos` `b`) where (`a`.`idGenero` = `b`.`idGenero`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vpagosccard`
--

/*!50001 DROP VIEW IF EXISTS `vpagosccard`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vpagosccard` AS select `ventascab`.`IdComprobante` AS `idComprobante`,`ventascab`.`IdCliente` AS `idCliente`,`ventascab`.`IdComplejo` AS `idComplejo`,`ventascab`.`Total` AS `Total`,`ventascab`.`idCCard` AS `Emisor` from `ventascab` where (`ventascab`.`idCCard` is not null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-14 17:50:36
