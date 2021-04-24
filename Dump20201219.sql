CREATE DATABASE  IF NOT EXISTS `clinic` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `clinic`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: clinic
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `clientes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `iddocumento` varchar(12) NOT NULL,
  `cliente` varchar(45) NOT NULL,
  `direccion` varchar(80) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `estatus` varchar(10) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `id_idx` (`iddocumento`),
  CONSTRAINT `id` FOREIGN KEY (`iddocumento`) REFERENCES `documentos` (`iddocumentos`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (0,'40222878684','BRIAN RIVERA','El invi','8296167927','maikrivera01@gmail.com','Activo'),(1,'00100978501','DANY MÉNDEZ','Batey sur #14','8097632117','','Activo'),(2,'130244758','ARQUITECTURA AMBIENTAL SRL','Av. Nuñez de caceres #7, edif. marisol, apto. 203, bella vista, Santo Domingo','8098841183','rosamolinamorel@gmail.com','Activo'),(3,'06600135377','VIVERO MARILYN','Carr. Principal, Cruse de las majagua de sanchez, Samana','8297720391','','Activo'),(4,'101175931','ANTHURIANA DOMINICANA SRL','C/ Jacinto Mañon #27, Santo Domingo','8095660880','','Activo'),(5,'119500208','CASA HOLANDA SRL','Carre. Verón, Punta cana #108','8094551065','casaholanda01@hotmail.com','Activo'),(6,'131821774','GARDEN CANA SRL','Buena Vista Norte, La Romana','8099072404','','Activo'),(7,'130586748','VIVERO LA ISABELA SRL','Carr. La Isabela, La Isabela, Santo Domingo','8093330490','','Activo'),(8,'132125843','LITORAL TROPICAL SAS','hangares costa sur, casa de campo, La Romana','8095232169','','Activo');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codigo_productos`
--

DROP TABLE IF EXISTS `codigo_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `codigo_productos` (
  `indexado` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(11) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  PRIMARY KEY (`indexado`),
  UNIQUE KEY `codigo_UNIQUE` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codigo_productos`
--

LOCK TABLES `codigo_productos` WRITE;
/*!40000 ALTER TABLE `codigo_productos` DISABLE KEYS */;
INSERT INTO `codigo_productos` VALUES (1,'A','Anthurium'),(2,'AR','Árbol'),(3,'AT','Arbustos'),(4,'B','Bromelia'),(5,'C','Cayena'),(6,'CB','Cala Blanca'),(7,'CS','Cactu / Suculentas'),(8,'F','Ficus Lyrata'),(9,'G','Grama'),(10,'H','Helecho'),(11,'L','Lucky Bambu'),(12,'OR','Orquidea'),(13,'P','Palma'),(14,'PH','Philodendroum'),(15,'PI','Pino'),(16,'PR','Progreso'),(17,'R','Rosa'),(18,'RD','Rosa del Desierto'),(19,'T','Tierra'),(20,'TA','Tarro'),(21,'Z','Zamio Culca'),(23,'FP','Flor de Pascua');
/*!40000 ALTER TABLE `codigo_productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `A_CODIGO_BU` BEFORE UPDATE ON `codigo_productos` FOR EACH ROW update productos
set codigo = replace(codigo, old.codigo, new.codigo)
where categoria = old.categoria */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comentario` (
  `idComentario` int(11) NOT NULL AUTO_INCREMENT,
  `nofactura` int(11) NOT NULL,
  `Comentario` varchar(75) NOT NULL,
  PRIMARY KEY (`idComentario`),
  KEY `fk_nofactura_idx` (`nofactura`),
  CONSTRAINT `fk_nofactura` FOREIGN KEY (`nofactura`) REFERENCES `factura` (`nofactura`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprobante_consumo`
--

DROP TABLE IF EXISTS `comprobante_consumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comprobante_consumo` (
  `no_comprobante` varchar(11) NOT NULL,
  `no_factura` int(11) NOT NULL,
  PRIMARY KEY (`no_comprobante`),
  KEY `no_factura_idx` (`no_factura`),
  CONSTRAINT `no_factura1` FOREIGN KEY (`no_factura`) REFERENCES `factura` (`nofactura`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprobante_consumo`
--

LOCK TABLES `comprobante_consumo` WRITE;
/*!40000 ALTER TABLE `comprobante_consumo` DISABLE KEYS */;
INSERT INTO `comprobante_consumo` VALUES ('B0200000000',202000000),('B0200000001',202000001),('B0200000002',202000005),('B0200000003',202000019),('B0200000004',202000020),('B0200000005',202000021),('B0200000006',202000022),('B0200000007',202000023),('B0200000008',202000025),('B0200000009',202000026);
/*!40000 ALTER TABLE `comprobante_consumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprobante_credito_fiscal`
--

DROP TABLE IF EXISTS `comprobante_credito_fiscal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comprobante_credito_fiscal` (
  `no_comprobante` varchar(11) NOT NULL,
  `no_factura` int(11) NOT NULL,
  PRIMARY KEY (`no_comprobante`),
  KEY `no_factura_idx` (`no_factura`) /*!80000 INVISIBLE */,
  CONSTRAINT `no_factura2` FOREIGN KEY (`no_factura`) REFERENCES `factura` (`nofactura`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprobante_credito_fiscal`
--

LOCK TABLES `comprobante_credito_fiscal` WRITE;
/*!40000 ALTER TABLE `comprobante_credito_fiscal` DISABLE KEYS */;
INSERT INTO `comprobante_credito_fiscal` VALUES ('B0100000000',202000000),('B0100000001',202000002),('B0100000002',202000003),('B0100000003',202000004),('B0100000004',202000006),('B0100000005',202000007),('B0100000006',202000008),('B0100000007',202000009),('B0100000008',202000010),('B0100000009',202000011),('B0100000010',202000012),('B0100000011',202000013),('B0100000012',202000014),('B0100000013',202000015),('B0100000014',202000017);
/*!40000 ALTER TABLE `comprobante_credito_fiscal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprobante_exportaciones`
--

DROP TABLE IF EXISTS `comprobante_exportaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comprobante_exportaciones` (
  `no_comprobante` varchar(11) NOT NULL,
  `no_factura` int(11) NOT NULL,
  PRIMARY KEY (`no_comprobante`),
  KEY `no_factura6_idx` (`no_factura`),
  CONSTRAINT `no_factura6` FOREIGN KEY (`no_factura`) REFERENCES `factura` (`nofactura`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprobante_exportaciones`
--

LOCK TABLES `comprobante_exportaciones` WRITE;
/*!40000 ALTER TABLE `comprobante_exportaciones` DISABLE KEYS */;
INSERT INTO `comprobante_exportaciones` VALUES ('B1600000000',202000000),('B1600000001',202000018);
/*!40000 ALTER TABLE `comprobante_exportaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprobante_gubernamental`
--

DROP TABLE IF EXISTS `comprobante_gubernamental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comprobante_gubernamental` (
  `no_comprobante` varchar(11) NOT NULL,
  `no_factura` int(11) NOT NULL,
  PRIMARY KEY (`no_comprobante`),
  KEY `no_factura3_idx` (`no_factura`),
  CONSTRAINT `no_factura3` FOREIGN KEY (`no_factura`) REFERENCES `factura` (`nofactura`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprobante_gubernamental`
--

LOCK TABLES `comprobante_gubernamental` WRITE;
/*!40000 ALTER TABLE `comprobante_gubernamental` DISABLE KEYS */;
INSERT INTO `comprobante_gubernamental` VALUES ('B1500000000',202000000);
/*!40000 ALTER TABLE `comprobante_gubernamental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprobante_nota_credito`
--

DROP TABLE IF EXISTS `comprobante_nota_credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comprobante_nota_credito` (
  `no_comprobante` varchar(11) NOT NULL,
  `no_factura` int(11) NOT NULL,
  PRIMARY KEY (`no_comprobante`),
  KEY `no_factura4_idx` (`no_factura`),
  CONSTRAINT `no_factura4` FOREIGN KEY (`no_factura`) REFERENCES `factura` (`nofactura`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprobante_nota_credito`
--

LOCK TABLES `comprobante_nota_credito` WRITE;
/*!40000 ALTER TABLE `comprobante_nota_credito` DISABLE KEYS */;
INSERT INTO `comprobante_nota_credito` VALUES ('B0400000000',202000000);
/*!40000 ALTER TABLE `comprobante_nota_credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprobante_reg_especial`
--

DROP TABLE IF EXISTS `comprobante_reg_especial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comprobante_reg_especial` (
  `no_comprobante` varchar(11) NOT NULL,
  `no_factura` int(11) NOT NULL,
  PRIMARY KEY (`no_comprobante`),
  KEY `no_factura5_idx` (`no_factura`),
  CONSTRAINT `no_factura5` FOREIGN KEY (`no_factura`) REFERENCES `factura` (`nofactura`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprobante_reg_especial`
--

LOCK TABLES `comprobante_reg_especial` WRITE;
/*!40000 ALTER TABLE `comprobante_reg_especial` DISABLE KEYS */;
INSERT INTO `comprobante_reg_especial` VALUES ('B1400000000',202000000);
/*!40000 ALTER TABLE `comprobante_reg_especial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_fact`
--

DROP TABLE IF EXISTS `detalle_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `detalle_fact` (
  `FACTURA_nofactura` int(11) NOT NULL,
  `codigo` varchar(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `cantidad` int(9) NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `descuento` decimal(12,2) NOT NULL,
  `itbis` decimal(12,2) NOT NULL,
  `monto` decimal(12,2) NOT NULL,
  KEY `fk_DETALLE_FACT_FACTURA_idx` (`FACTURA_nofactura`),
  CONSTRAINT `factura` FOREIGN KEY (`FACTURA_nofactura`) REFERENCES `factura` (`nofactura`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_fact`
--

LOCK TABLES `detalle_fact` WRITE;
/*!40000 ALTER TABLE `detalle_fact` DISABLE KEYS */;
INSERT INTO `detalle_fact` VALUES (202000001,'Z01','Guayiga',12,1140.00,0.00,0.00,1140.00),(202000001,'F01','Isla verde',60,3600.00,0.00,0.00,3600.00),(202000001,'PH01','Oreja elefante',4,1380.00,0.00,0.00,1380.00),(202000002,'Z02','Zamio Culca P10',1500,255000.00,0.00,0.00,255000.00),(202000003,'T02','Saco paja de coco',6,2400.00,0.00,0.00,2400.00),(202000004,'AR01','Cañafistula, 8-9 pies',1,10000.00,0.00,0.00,10000.00),(202000004,'P01','Cacheo, 5 pies',2,57000.00,0.00,0.00,57000.00),(202000005,'CS01','Cactus P6',100,19500.00,0.00,0.00,19500.00),(202000005,'H01','Helecho macho P10',25,5250.00,0.00,0.00,5250.00),(202000005,'PR01','Mandevilas P7',1200,150000.00,78993.25,0.00,71006.75),(202000005,'P02','Palmas Rojas P17',5,32500.00,0.00,0.00,32500.00),(202000005,'AT01','Oreganillo plateado P8',18,3060.00,0.00,0.00,3060.00),(202000005,'AT02','Arboricola enanas P6',60,6300.00,0.00,0.00,6300.00),(202000005,'Z02','Zamio Culca P10',23,9085.00,0.00,0.00,9085.00),(202000006,'AT03','Boton de plata P8',15,2550.00,0.00,0.00,2550.00),(202000006,'AT05','Croton petra P6',1720,215000.00,173463.00,0.00,41537.00),(202000006,'AT04','Croton Sunny Star P6',240,30000.00,0.00,0.00,30000.00),(202000006,'AT06','Croton Tirabuzon P6',480,60000.00,0.00,0.00,60000.00),(202000006,'AR03','Ficus Alix P14',23,11385.00,0.00,0.00,11385.00),(202000006,'H01','Helecho macho P10',470,98700.00,0.00,0.00,98700.00),(202000006,'H02','Helecho Macho P4',1700,246500.00,173463.00,0.00,73037.00),(202000006,'P03','Palmas Tallo Rojo P4',20,130000.00,0.00,0.00,130000.00),(202000006,'PH03','Phil. Xanadu P6',100,15000.00,0.00,0.00,15000.00),(202000006,'PH04','Phil. Congo Verde P10',60,18000.00,0.00,0.00,18000.00),(202000006,'PH05','Phil. Lemon P6',100,23500.00,0.00,0.00,23500.00),(202000006,'AR02','Podocarpus P17',24,16680.00,0.00,0.00,16680.00),(202000007,'AR04','Podocarpus P14',5,2475.00,0.00,0.00,2475.00),(202000007,'CS02','Cactus variegado P6',350,68250.00,28290.00,0.00,39960.00),(202000008,'CS02','Cactus variegado P6',10,2000.00,0.00,0.00,2000.00),(202000009,'P3','Palma Tallo Rojo P17',77,269500.00,0.00,0.00,269500.00),(202000009,'P4','Palma Tallo Rojo P14',30,45000.00,0.00,0.00,45000.00),(202000010,'CS2','Cactus variegado P6',200,39000.00,15600.00,0.00,23400.00),(202000011,'CS2','Cactus variegado P6',20,5000.00,0.00,0.00,5000.00),(202000012,'FP1','Flor de Pascua P8',1500,300000.00,120000.00,0.00,180000.00),(202000013,'FP1','Flor de Pascua P8',1386,277200.00,110880.00,0.00,166320.00),(202000014,'T3','Camion de coco reciclado',2,20000.00,0.00,0.00,20000.00),(202000015,'Z3','Zamio Culca P6',8,2800.00,0.00,0.00,2800.00),(202000017,'AR5','Ficus Lyrata p14',1,700.00,0.00,0.00,700.00),(202000018,'AR1','Cañafistula, 8-9 pies',1,1000.00,500.00,0.00,500.00),(202000018,'AR2','Podocarpus P17',1,695.00,347.00,0.00,348.00),(202000019,'AR1','Cañafistula, 8-9 pies',1,1000.00,500.00,0.00,500.00),(202000019,'AR2','Podocarpus P17',1,695.00,95.00,0.00,600.00),(202000020,'AR1','Cañafistula, 8-9 pies',1,1000.00,800.00,0.00,200.00),(202000020,'AR2','Podocarpus P17',1,695.00,295.00,0.00,400.00),(202000021,'AR10','Ficus Lyrata p14',1,700.00,0.00,0.00,700.00),(202000021,'AR3','Ficus Alix P14',1,495.00,0.00,0.00,495.00),(202000022,'PP1','Palo de palma',1,100.00,0.00,0.00,100.00),(202000022,'P4','Palma Tallo Rojo P14',1,1500.00,0.00,0.00,1500.00),(202000022,'Z3','Zamio Culca P6',1,350.00,0.00,0.00,350.00),(202000023,'AR1','Cañafistula, 8-9 pies',1,1000.00,0.00,0.00,1000.00),(202000023,'AR2','Podocarpus P17',1,695.00,0.00,0.00,695.00),(202000024,'AR1','Cañafistula, 8-9 pies',1,1000.00,0.00,0.00,1000.00),(202000025,'AR3','Ficus Alix P14',1,495.00,0.00,0.00,495.00),(202000025,'AR4','Podocarpus P14',1,495.00,0.00,0.00,495.00),(202000026,'AR1','Cañafistula, 8-9 pies',1,1000.00,0.00,0.00,1000.00);
/*!40000 ALTER TABLE `detalle_fact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentos`
--

DROP TABLE IF EXISTS `documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `documentos` (
  `indexado` int(11) NOT NULL AUTO_INCREMENT,
  `iddocumentos` varchar(15) NOT NULL,
  `tipo` varchar(15) NOT NULL,
  PRIMARY KEY (`iddocumentos`),
  UNIQUE KEY `indexado_UNIQUE` (`indexado`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos`
--

LOCK TABLES `documentos` WRITE;
/*!40000 ALTER TABLE `documentos` DISABLE KEYS */;
INSERT INTO `documentos` VALUES (1,'00100978501','Cédula'),(2,'02600351320','Cédula'),(3,'06600135377','Cédula'),(4,'101175931','RNC'),(5,'119500208','RNC'),(6,'130244758','RNC'),(7,'130586748','RNC'),(8,'131821774','RNC'),(11,'132125843','RNC'),(9,'40222878684','Cédula'),(10,'40284568456','Cédula');
/*!40000 ALTER TABLE `documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estatus_comprobantes`
--

DROP TABLE IF EXISTS `estatus_comprobantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `estatus_comprobantes` (
  `idestatus_comprobantes` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_comprobante` varchar(25) NOT NULL,
  `serie` varchar(5) NOT NULL,
  `inicio_rango` int(8) NOT NULL,
  `termina_rango` int(8) NOT NULL,
  `vigencia` date NOT NULL,
  PRIMARY KEY (`idestatus_comprobantes`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estatus_comprobantes`
--

LOCK TABLES `estatus_comprobantes` WRITE;
/*!40000 ALTER TABLE `estatus_comprobantes` DISABLE KEYS */;
INSERT INTO `estatus_comprobantes` VALUES (1,'Crédito fiscal','B01',1,35,'2021-12-31'),(2,'Consumo','B02',1,200,'2021-12-31'),(3,'Notas de Crédito','B04',1,35,'2021-12-31'),(4,'Regímenes Especiales','B14',1,5,'2021-12-31'),(5,'Gubernamental','B15',1,35,'2021-12-31'),(6,'Exportaciones','B16',1,15,'2021-12-31');
/*!40000 ALTER TABLE `estatus_comprobantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `factura` (
  `nofactura` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_cliente` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `venta` varchar(10) NOT NULL,
  `tipopago` varchar(15) NOT NULL,
  `pagado` decimal(12,2) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `cobertura` decimal(12,2) NOT NULL,
  `itbis` decimal(12,2) NOT NULL,
  `descuento` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `usuario` varchar(15) NOT NULL,
  `estatus` varchar(15) NOT NULL,
  `comentario` varchar(60) DEFAULT NULL,
  `preventa` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`nofactura`),
  KEY `cod_clienta_idx` (`codigo_cliente`),
  CONSTRAINT `cod_clienta` FOREIGN KEY (`codigo_cliente`) REFERENCES `clientes` (`codigo`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2020000009 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (202000000,0,'2020-08-05 00:00:00','N/A','N/A',0.00,0.00,0.00,0.00,0.00,0.00,'Brivera','Activo',NULL,NULL),(202000001,1,'2020-08-10 09:56:08','Contado','Efectivo',6120.00,6120.00,0.00,0.00,0.00,6120.00,'MLuciano','ACTIVO','','No'),(202000002,4,'2020-08-20 20:37:35','Contado','Transferencia',255000.00,255000.00,0.00,0.00,0.00,255000.00,'MLuciano','ACTIVO','','Si'),(202000003,5,'2020-08-21 20:03:42','Contado','Transferencia',2400.00,2400.00,0.00,0.00,0.00,2400.00,'MLuciano','ACTIVO','','Si'),(202000004,2,'2020-08-24 19:45:51','Contado','Transferencia',67000.00,67000.00,0.00,0.00,0.00,67000.00,'MLuciano','ACTIVO','','No'),(202000005,3,'2020-08-24 20:03:56','Contado','Transferencia',146701.75,225695.00,78993.25,0.00,0.00,146701.75,'MLuciano','ACTIVO','','Si'),(202000006,4,'2020-08-26 13:53:48','Contado','Transferencia',520389.00,867315.00,346926.00,0.00,0.00,520389.00,'MLuciano','ACTIVO','','Si'),(202000007,4,'2020-08-27 19:15:13','Contado','Transferencia',42435.00,70725.00,28290.00,0.00,0.00,42435.00,'MLuciano','ACTIVO','','Si'),(202000008,6,'2020-08-27 19:22:49','Contado','Transferencia',2000.00,2000.00,0.00,0.00,0.00,2000.00,'MLuciano','ACTIVO','','Si'),(202000009,7,'2020-09-01 20:03:39','Contado','Cheque',314500.00,314500.00,0.00,0.00,0.00,314500.00,'MLuciano','ACTIVO','','Si'),(202000010,4,'2020-09-02 12:38:10','Contado','Transferencia',23400.00,39000.00,15600.00,0.00,0.00,23400.00,'MLuciano','ACTIVO','','Si'),(202000011,5,'2020-09-03 19:56:35','Contado','Transferencia',5000.00,5000.00,0.00,0.00,0.00,5000.00,'MLuciano','ACTIVO','','Si'),(202000012,4,'2020-09-08 19:20:37','Contado','Transferencia',180000.00,300000.00,120000.00,0.00,0.00,180000.00,'MLuciano','ACTIVO','','No'),(202000013,4,'2020-09-10 20:19:06','Contado','Transferencia',166320.00,277200.00,110880.00,0.00,0.00,166320.00,'MLuciano','ACTIVO','','Si'),(202000014,6,'2020-09-11 12:48:28','Contado','Transferencia',20000.00,20000.00,0.00,0.00,0.00,20000.00,'MLuciano','ACTIVO','','Si'),(202000015,6,'2020-10-03 08:28:14','Contado','Transferencia',2800.00,2800.00,0.00,0.00,0.00,2800.00,'MLuciano','ACTIVO','','Si'),(202000017,8,'2020-10-21 03:00:47','Crédito','Cheque',0.00,700.00,0.00,0.00,0.00,700.00,'MLuciano','ACTIVO','','Si'),(202000018,0,'2020-12-14 22:00:16','Contado','Efectivo',448.00,1695.00,847.00,0.00,400.00,448.00,'Brivera','ACTIVO','','Si'),(202000019,0,'2020-12-19 00:41:07','Contado','Efectivo',1000.00,1695.00,595.00,0.00,100.00,1000.00,'Brivera','ACTIVO','','Si'),(202000020,0,'2020-12-19 02:04:14','Contado','Efectivo',600.00,1695.00,1095.00,0.00,0.00,600.00,'Brivera','ACTIVO','','Si'),(202000021,0,'2020-12-19 11:44:19','Contado','Efectivo',1195.00,1195.00,0.00,0.00,0.00,1195.00,'Brivera','ACTIVO','','Si'),(202000022,0,'2020-12-19 12:04:38','Contado','Efectivo',1950.00,1950.00,0.00,0.00,0.00,1950.00,'MLuciano','ACTIVO','','Si'),(202000023,0,'2020-12-19 12:11:39','Crédito','Efectivo',0.00,1695.00,0.00,0.00,0.00,1695.00,'MLuciano','ACTIVO','','Si'),(202000024,0,'2020-12-19 12:11:56','Contado','Efectivo',1000.00,1000.00,0.00,0.00,0.00,1000.00,'Brivera','ACTIVO','','Si'),(202000025,0,'2020-12-19 12:15:17','Contado','Tarjeta',990.00,990.00,0.00,0.00,0.00,990.00,'MLuciano','ACTIVO','','Si'),(202000026,0,'2020-12-19 12:15:38','Crédito','Efectivo',0.00,1000.00,0.00,0.00,0.00,1000.00,'Brivera','ACTIVO','','Si');
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `productos` (
  `codigo` varchar(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `cantidad` int(9) NOT NULL,
  `itbis` varchar(2) NOT NULL,
  `disponibilidad` varchar(2) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES ('A1','N/A',100.00,'Anthurium',1,'No','Si'),('A2','nuevo artículo',30.00,'Anthurium',2000,'Si','Si'),('AR1','Cañafistula, 8-9 pies',1000.00,'Árbol',10,'No','Si'),('AR10','Ficus Lyrata p14',700.00,'Árbol',1,'No','Si'),('AR11','o',25.00,'Árbol',0,'No','Si'),('AR2','Podocarpus P17',695.00,'Árbol',0,'No','Si'),('AR3','Ficus Alix P14',495.00,'Árbol',10,'No','Si'),('AR4','Podocarpus P14',495.00,'Árbol',0,'No','Si'),('AT1','Oreganillo plateado P8',170.00,'Arbustos',0,'No','Si'),('AT2','Arboricola enanas P6',105.00,'Arbustos',0,'No','Si'),('AT3','Boton de plata P8',170.00,'Arbustos',0,'No','Si'),('AT4','Croton Sunny Star P6',125.00,'Arbustos',0,'No','Si'),('AT5','Croton petra P6',125.00,'Arbustos',0,'No','Si'),('AT6','Croton Tirabuzon P6',125.00,'Arbustos',0,'No','Si'),('B1','flor',50.00,'Bromelia',0,'No','Si'),('C1','N/A',40.00,'Cayena',0,'',''),('CB1','N/A',175.00,'Cala Blanca',0,'',''),('CS1','Cactus P6',195.00,'Cactu / Suculentas',0,'No','Si'),('CS2','Cactus variegado P6',250.00,'Cactu / Suculentas',0,'No','Si'),('F1','Isla verde',60.00,'Ficus Lyrata',60,'No','Si'),('FP1','Flor de Pascua P8',200.00,'Flor de Pascua',1500,'No','Si'),('G1','N/A',90.00,'Grama',0,'',''),('H1','Helecho macho P10',210.00,'Helecho',0,'No','Si'),('H2','Helecho Macho P4',145.00,'Helecho',0,'No','Si'),('L1','N/A',25.00,'Lucky Bambu',0,'',''),('OR1','N/A',0.00,'Orquidea',0,'',''),('P1','Cacheo, 5 pies',28500.00,'Palma',8,'',''),('P2','Palma Roja P17',6500.00,'Palma',0,'No','No'),('P3','Palma Tallo Rojo P17',3500.00,'Palma',0,'No','Si'),('P4','Palma Tallo Rojo P14',1500.00,'Palma',0,'No','Si'),('PH1','Oreja elefante',345.00,'philodendroum',5,'',''),('PH2','Alocasia Marrón P12',895.00,'philodendroum',0,'No',''),('PH3','Phil. Xanadu P6',150.00,'Philodendroum',0,'No','Si'),('PH4','Phil. Congo Verde P10',300.00,'Philodendroum',0,'No','Si'),('PH5','Phil. Lemon P6',235.00,'Philodendroum',0,'No','Si'),('PI1','N/A',0.00,'Pino',0,'',''),('PP1','Palo de palma',100.00,'Palo',35,'No','Si'),('PR1','Mandevilas P7',125.00,'Progreso',0,'No','Si'),('R1','N/A',0.00,'Rosa',0,'',''),('RD1','N/A',0.00,'Rosa del Desierto',0,'',''),('T1','N/A',0.00,'Tierra',0,'',''),('T2','Saco paja de coco',400.00,'Tierra',0,'No','Si'),('T3','Camion de coco reciclado',10000.00,'Tierra',0,'No','Si'),('TA1','N/A',100.00,'Tarro',0,'Si','Si'),('Z1','Guayiga',95.00,'Zamio Culca',4,'No','Si'),('Z2','Zamio Culca P10',395.00,'Zamio Culca',0,'No','Si'),('Z3','Zamio Culca P6',350.00,'Zamio Culca',8,'No','Si');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `idUSUARIO` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(20) NOT NULL,
  `contrasena` varchar(45) NOT NULL,
  `puesto` varchar(45) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `rol` varchar(15) NOT NULL,
  PRIMARY KEY (`idUSUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Brivera','iON2BebvZu3WUt/3sf++Dg==','Administrador de sistema','Brian','Rivera','Administrador'),(12,'MLuciano','cuUnE37j7X0=','Gerente','Miguelina','Luciano','Usuario'),(17,'Ncastillo','cuUnE37j7X0=','secretaria','nairoby','Castillo','Administrador');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'clinic'
--

--
-- Dumping routines for database 'clinic'
--
/*!50003 DROP PROCEDURE IF EXISTS `jdAnulacion_ACTUALIZAR_ESTATUS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jdAnulacion_ACTUALIZAR_ESTATUS`(anofactura int(11))
UPDATE factura SET estatus = "INACTIVO" WHERE nofactura = anofactura ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jdAnulacion_INSERTAR_COMENTARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jdAnulacion_INSERTAR_COMENTARIO`(inofactura int(11), icomentario varchar(75))
INSERT INTO comentario (nofactura, comentario) VALUES (inofactura, icomentario) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jdDatosclientes_ACTUALIZAR_CLIENTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jdDatosclientes_ACTUALIZAR_CLIENTE`(acodigo int(11), adocumento varchar(15), aID varchar(15), acliente varchar(45),
					adireccion varchar(80), atelefono varchar(15), aemail varchar(30), aestatus varchar(10), aindexado int(11))
BEGIN
		UPDATE documentos
        SET iddocumentos = aID, tipo = adocumento
        WHERE indexado = aindexado;
        
        UPDATE clientes
        SET iddocumento = aID, cliente = acliente, direccion = adireccion, telefono = atelefono, email = aemail, estatus = aestatus
        WHERE codigo = acodigo;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jdDatosclientes_BUSCAR_CODIGO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jdDatosclientes_BUSCAR_CODIGO`()
BEGIN
		SELECT max(codigo) AS codigo FROM clientes;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jdDatosclientes_BUSCAR_DATOS_CLIENTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jdDatosclientes_BUSCAR_DATOS_CLIENTE`(bcodigo int(11))
BEGIN
		SELECT clientes.codigo, clientes.cliente, documentos.iddocumentos, documentos.tipo, clientes.direccion, clientes.telefono, clientes.email, clientes.estatus, documentos.indexado
        FROM clientes
        INNER JOIN documentos ON documentos.iddocumentos = clientes.iddocumento
        WHERE clientes.codigo = bcodigo;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jdDatosclientes_INSERTAR_CLIENTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jdDatosclientes_INSERTAR_CLIENTE`(icodigo int(11), idocumento varchar(15), iID varchar(15), icliente varchar(45),
					idireccion varchar(80), itelefono varchar(15), iemail varchar(30), iestatus varchar(10))
BEGIN
		INSERT INTO documentos (iddocumentos, tipo)
        VALUES (iID, idocumento);
        INSERT INTO clientes (codigo, iddocumento, cliente, direccion, telefono, email, estatus)
        VALUES (icodigo, iID, icliente, idireccion, itelefono, iemail, iestatus);
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jdDatosproductos_ACTUALIZAR_PRODUCTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jdDatosproductos_ACTUALIZAR_PRODUCTO`(acodigo varchar(11), adescripcion varchar(45),
aprecio decimal (7,2), acategoria varchar(45), acantidad int(9), aitbis varchar(2), adisponibilidad varchar(2))
UPDATE productos
    SET descripcion = adescripcion, precio = aprecio, categoria = acategoria, cantidad = acantidad, itbis = aitbis, disponibilidad = adisponibilidad
    WHERE codigo = acodigo ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jdDatosproductos_BUSCAR_CODIGO_PRODUCTOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jdDatosproductos_BUSCAR_CODIGO_PRODUCTOS`(bcategoria varchar (45))
BEGIN
	DECLARE caracter varchar(11);
    DECLARE num INT;
	SET caracter = (SELECT codigo_productos.codigo FROM codigo_productos WHERE codigo_productos.categoria like bcategoria);
    SET num = (SELECT MAX(N) FROM (SELECT CONVERT(REPLACE(productos.codigo, caracter,''), SIGNED) AS N FROM productos WHERE productos.categoria like bcategoria ORDER BY length(codigo), codigo asc) AS J);
	SELECT codigo_productos.codigo AS serie, MAX(num) AS secuencia
	FROM codigo_productos
	LEFT JOIN productos ON codigo_productos.categoria = productos.categoria
	WHERE codigo_productos.categoria like bcategoria;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jdDatosproductos_INSERTAR_PRODUCTOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jdDatosproductos_INSERTAR_PRODUCTOS`(icodigo varchar(11), idescripcion varchar(45),
iprecio decimal(12,2), icategoria varchar(45), icantidad int(9), iitbis varchar(2), idisponibilidad varchar(2))
INSERT INTO productos (codigo, descripcion, precio, categoria, cantidad, itbis, disponibilidad)
VALUES (icodigo, idescripcion, iprecio, icategoria, icantidad, iitbis, idisponibilidad) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jdDatosusuario_ACTUALIZAR_USUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jdDatosusuario_ACTUALIZAR_USUARIO`(id int(11), anick varchar(20), acontrasena varchar(45), apuesto varchar(45), anombre varchar(20), aapellido varchar(20), arol varchar(15))
UPDATE usuario
    SET nick = anick, contrasena = acontrasena, puesto = apuesto, nombre = anombre, apellido = aapellido, rol = arol
    WHERE idUSUARIO = id ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jdDatosusuario_BUSCAR_USUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jdDatosusuario_BUSCAR_USUARIO`(inick varchar(20))
SELECT * FROM usuario WHERE nick = inick ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jdDatosusuario_ELIMINAR_USUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jdDatosusuario_ELIMINAR_USUARIO`(id int(11))
DELETE FROM usuario
    WHERE idUSUARIO = id
    LIMIT 1 ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jdDatosusuario_INSERTAR_USUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jdDatosusuario_INSERTAR_USUARIO`(inick varchar(20), icontrasena varchar(45), ipuesto varchar(45), inombre varchar(20), iapellido varchar(20), irol varchar(15))
INSERT INTO usuario (nick, contrasena, puesto, nombre, apellido, rol) VALUES (inick, icontrasena, ipuesto, inombre, iapellido, irol) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jdDetalledefactura_ACTUALIZAR_DETALLE_FACT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jdDetalledefactura_ACTUALIZAR_DETALLE_FACT`(anofactura int(11), acodigo varchar(11),
acantidad int(9), aprecio decimal(12,2), adescuento decimal(12,2), aitbis decimal(12,2), amonto decimal(12,2))
BEGIN
		UPDATE detalle_fact
        SET cantidad = acantidad, precio = aprecio, descuento = adescuento, itbis = aitbis, monto = amonto
        WHERE FACTURA_nofactura = anofactura AND codigo = acodigo;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jdDetalledefactura_ACTUALIZAR_FACTURA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jdDetalledefactura_ACTUALIZAR_FACTURA`(anofactura int(11), aventa varchar(10), atipopago varchar(15),
apagado decimal(12,2), asubtotal decimal(12,2), acobertura decimal(12,2), aitbis decimal(12,2), adescuento decimal(12,2), atotal decimal(12,2), acomentario varchar(60))
BEGIN
		UPDATE factura
        SET venta = aventa, tipopago = atipopago, pagado = apagado, subtotal = asubtotal, cobertura = acobertura, itbis = aitbis,
        descuento = adescuento, total = atotal, comentario = acomentario
        WHERE nofactura = anofactura;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jdDetalledefactura_BUSCAR_FACTURAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jdDetalledefactura_BUSCAR_FACTURAS`(bnofactura int(11))
SELECT clientes.codigo, documentos.iddocumentos, documentos.tipo, clientes.cliente, clientes.direccion,
    clientes.telefono, factura.nofactura, 
    (SELECT comprobante_consumo.no_comprobante
    FROM comprobante_consumo
    INNER JOIN factura ON factura.nofactura = comprobante_consumo.no_factura
    WHERE factura.nofactura = bnofactura
    union
    select comprobante_exportaciones.no_comprobante 
    from comprobante_exportaciones
    INNER JOIN factura ON factura.nofactura = comprobante_exportaciones.no_factura
    WHERE factura.nofactura = bnofactura
    union
    select comprobante_credito_fiscal.no_comprobante 
    from comprobante_credito_fiscal
    INNER JOIN factura ON factura.nofactura = comprobante_credito_fiscal.no_factura
    WHERE factura.nofactura = bnofactura
    union
    select comprobante_gubernamental.no_comprobante 
    from comprobante_gubernamental
    INNER JOIN factura ON factura.nofactura = comprobante_gubernamental.no_factura
    WHERE factura.nofactura = bnofactura
    union
    select comprobante_nota_credito.no_comprobante 
    from comprobante_nota_credito
    INNER JOIN factura ON factura.nofactura = comprobante_nota_credito.no_factura
    WHERE factura.nofactura = bnofactura
    union
    select comprobante_reg_especial.no_comprobante 
    from comprobante_reg_especial
    INNER JOIN factura ON factura.nofactura = comprobante_reg_especial.no_factura
    WHERE factura.nofactura = bnofactura) as no_comprobante,
    factura.fecha, factura.venta, factura.tipopago, factura.pagado,
    factura.subtotal, factura.itbis, factura.descuento, factura.total, factura.usuario, factura.estatus,
    factura.comentario, factura.preventa, detalle_fact.codigo, detalle_fact.descripcion, detalle_fact.cantidad, detalle_fact.precio,
    detalle_fact.descuento, detalle_fact.itbis, detalle_fact.monto
    FROM factura 
    INNER JOIN clientes ON factura.codigo_cliente = clientes.codigo
    INNER JOIN documentos ON clientes.iddocumento = documentos.iddocumentos
    INNER JOIN detalle_fact ON factura.nofactura = detalle_fact.FACTURA_nofactura
    WHERE nofactura = bnofactura ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jdProductos_BUSCAR_PRODUCTOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jdProductos_BUSCAR_PRODUCTOS`(b_descripcion varchar (45))
SELECT * FROM productos WHERE descripcion LIKE b_descripcion ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jifFacturar_ACTUALIZAR_CANTIDADPROD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jifFacturar_ACTUALIZAR_CANTIDADPROD`(acodigo varchar(11), acantidad int(9))
BEGIN
		UPDATE productos
        SET cantidad = acantidad
        WHERE codigo = acodigo;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jifFacturar_BUSCAR_ARTICULO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jifFacturar_BUSCAR_ARTICULO`(bcodigo varchar(11))
SELECT codigo, descripcion, precio, itbis, cantidad FROM productos WHERE codigo = bcodigo ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jifFacturar_BUSCAR_CLIENTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jifFacturar_BUSCAR_CLIENTE`(tipo_busqueda varchar(10), criterio varchar(13))
BEGIN
		IF tipo_busqueda = "Código" THEN
			SELECT clientes.codigo, clientes.iddocumento, clientes.cliente, clientes.direccion, clientes.telefono, documentos.tipo
			FROM clientes
			INNER JOIN documentos ON documentos.iddocumentos = clientes.iddocumento
			WHERE clientes.codigo = criterio;
		ELSE
			SELECT clientes.codigo, clientes.iddocumento, clientes.cliente, clientes.direccion, clientes.telefono, documentos.tipo
			FROM clientes
			INNER JOIN documentos ON documentos.iddocumentos = clientes.iddocumento
			WHERE documentos.iddocumentos = criterio;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jifFacturar_BUSCAR_COMPROBANTES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jifFacturar_BUSCAR_COMPROBANTES`(tipo_comprobante varchar(13))
BEGIN
		CASE tipo_comprobante
			WHEN "Valor Fiscal" THEN SELECT MAX(no_comprobante) FROM comprobante_credito_fiscal;
            WHEN "Consumo" THEN SELECT MAX(no_comprobante) FROM comprobante_consumo;
            WHEN "Nota Crédito" THEN SELECT MAX(no_comprobante) FROM comprobante_nota_credito;
            WHEN "Reg. Especial" THEN SELECT MAX(no_comprobante) FROM comprobante_reg_especial;
            WHEN "Gubernamental" THEN SELECT MAX(no_comprobante) FROM comprobante_gubernamental;
            WHEN "Exportaciones" THEN SELECT MAX(no_comprobante) FROM comprobante_exportaciones;
		END CASE;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jifFacturar_BUSCAR_ESTATUS_COMPROBANTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jifFacturar_BUSCAR_ESTATUS_COMPROBANTE`(bserie varchar(3))
SELECT inicio_rango, termina_rango, vigencia
    FROM estatus_comprobantes
    WHERE serie = bserie ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jifFacturar_INSERTAR_COMPROBANTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jifFacturar_INSERTAR_COMPROBANTE`(serie varchar(3), ino_comprobante varchar(11), ino_factura int(11))
BEGIN
		CASE serie
			WHEN "B01" THEN INSERT INTO comprobante_credito_fiscal VALUES (ino_comprobante, ino_factura);
            WHEN "B02" THEN INSERT INTO comprobante_consumo VALUES (ino_comprobante, ino_factura);
            WHEN "B04" THEN INSERT INTO comprobante_nota_credito VALUES (ino_comprobante, ino_factura);
            WHEN "B14" THEN INSERT INTO comprobante_reg_especial VALUES (ino_comprobante, ino_factura);
            WHEN "B15" THEN INSERT INTO comprobante_gubernamental VALUES (ino_comprobante, ino_factura);
            WHEN "B16" THEN INSERT INTO comprobante_exportaciones VALUES (ino_comprobante, ino_factura);
		END CASE;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jifFacturar_INSERTAR_DETALLE_FACTURACION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jifFacturar_INSERTAR_DETALLE_FACTURACION`(inofactura int(11), icodigo varchar(11), idescripcion varchar(45), 
icantidad int(9), iprecio decimal(12,2), idescuento decimal(12,2), iitbis decimal(12,2), imonto decimal(12,2))
INSERT INTO detalle_fact (FACTURA_nofactura, codigo, descripcion, cantidad, precio, descuento, itbis, monto)
VALUES (inofactura, icodigo, idescripcion, icantidad, iprecio, idescuento, iitbis, imonto) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jifFacturar_INSERTAR_FACTURACION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jifFacturar_INSERTAR_FACTURACION`(inofactura int(11), 
incodigo_cliente int(11), ifecha datetime, iventa varchar(10),itipopago varchar(15), ipagado decimal(12,2), 
isubtotal decimal(12,2), icobertura decimal(12,2), iitbis decimal(12,2), idescuento decimal(12,2), 
itotal decimal(12,2), iusuario varchar(15), iestatus varchar(15), icomentario varchar(60), 
ipreventa varchar(2))
INSERT INTO factura (nofactura, codigo_cliente, fecha, venta, tipopago, pagado, subtotal, cobertura, itbis, descuento, total, 
usuario, estatus, comentario, preventa) 
VALUES (inofactura, incodigo_cliente, ifecha, iventa, itipopago, ipagado, isubtotal, icobertura, iitbis, idescuento, itotal, 
iusuario, iestatus, icomentario, ipreventa) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jifFacturar_NUMERO_FACTURA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jifFacturar_NUMERO_FACTURA`()
SELECT MAX(nofactura) FROM factura ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jifMantenimientodeclientes_BUSCAR_CLIENTES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jifMantenimientodeclientes_BUSCAR_CLIENTES`(columna varchar(10), criterio varchar(45))
BEGIN
		IF columna = "Código" THEN
			SELECT clientes.codigo, clientes.cliente, documentos.iddocumentos, documentos.tipo, clientes.telefono, clientes.estatus
			FROM clientes
			INNER JOIN documentos ON documentos.iddocumentos = clientes.iddocumento
			WHERE clientes.codigo LIKE criterio;
       ELSEIF columna = "Cliente" THEN
			SELECT clientes.codigo, clientes.cliente, documentos.iddocumentos, documentos.tipo, clientes.telefono, clientes.estatus
			FROM clientes
			INNER JOIN documentos ON documentos.iddocumentos = clientes.iddocumento
			WHERE clientes.cliente LIKE criterio;
		ELSEIF columna = "ID" THEN
			SELECT clientes.codigo, clientes.cliente, documentos.iddocumentos, documentos.tipo, clientes.telefono, clientes.estatus
			FROM clientes
			INNER JOIN documentos ON documentos.iddocumentos = clientes.iddocumento
			WHERE clientes.iddocumento LIKE criterio;
		ELSEIF columna = "Documento" THEN
			SELECT clientes.codigo, clientes.cliente, documentos.iddocumentos, documentos.tipo, clientes.telefono, clientes.estatus
			FROM clientes
			INNER JOIN documentos ON documentos.iddocumentos = clientes.iddocumento
			WHERE documentos.tipo LIKE criterio;
		ELSEIF columna = "Teléfono" THEN
			SELECT clientes.codigo, clientes.cliente, documentos.iddocumentos, documentos.tipo, clientes.telefono, clientes.estatus
			FROM clientes
			INNER JOIN documentos ON documentos.iddocumentos = clientes.iddocumento
			WHERE clientes.telefono LIKE criterio;
		ELSEIF columna = "Estatus" THEN
			SELECT clientes.codigo, clientes.cliente, documentos.iddocumentos, documentos.tipo, clientes.telefono, clientes.estatus
			FROM clientes
			INNER JOIN documentos ON documentos.iddocumentos = clientes.iddocumento
			WHERE clientes.estatus LIKE criterio;
		END IF;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jifMantenimientodecodigo_ACTUALIZAR_CATEGORIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jifMantenimientodecodigo_ACTUALIZAR_CATEGORIA`(aindex int(11), acodigo varchar(11), acategoria varchar(45))
BEGIN
		UPDATE codigo_productos
        SET codigo = acodigo, categoria = acategoria
        WHERE indexado = aindex;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jifMantenimientodecodigo_BUSCAR_CATEGORIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jifMantenimientodecodigo_BUSCAR_CATEGORIA`()
BEGIN
		SELECT * FROM codigo_productos;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jifMantenimientodecodigo_INSERTAR_CATEGORIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jifMantenimientodecodigo_INSERTAR_CATEGORIA`(icodigo varchar(11), icategoria varchar(45))
BEGIN
		INSERT INTO codigo_productos (codigo, categoria)
        VALUES (icodigo, icategoria);
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jifMantenimientodecomprobantes_ACTUALIZAR_COMPROBANTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jifMantenimientodecomprobantes_ACTUALIZAR_COMPROBANTE`(aid int(3), ainicio_rango int(11), atermina_rango int(11), avigencia date)
UPDATE estatus_comprobantes
    SET inicio_rango = ainicio_rango, termina_rango = atermina_rango, vigencia = avigencia
    WHERE idestatus_comprobantes = aid ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jifMantenimientodecomprobantes_BUSCAR_COMPROBANTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jifMantenimientodecomprobantes_BUSCAR_COMPROBANTE`()
SELECT * FROM estatus_comprobantes ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jifMantenimientodefacturas_BUSCAR_FACTURAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jifMantenimientodefacturas_BUSCAR_FACTURAS`(tipobusqueda varchar(17), busqueda varchar(25))
BEGIN
		IF tipobusqueda = "No. Factura" THEN
			SELECT factura.nofactura, clientes.cliente, factura.fecha, factura.venta, factura.total, factura.estatus FROM factura INNER JOIN clientes ON clientes.codigo = factura.codigo_cliente WHERE factura.nofactura like busqueda;
		ELSEIF tipobusqueda = "Cliente" THEN
			SELECT factura.nofactura, clientes.cliente, factura.fecha, factura.venta, factura.total, factura.estatus FROM factura INNER JOIN clientes ON clientes.codigo = factura.codigo_cliente WHERE clientes.cliente like busqueda;
		ELSE
			SELECT factura.nofactura, clientes.cliente, factura.fecha, factura.venta, factura.total, factura.estatus FROM factura INNER JOIN clientes ON clientes.codigo = factura.codigo_cliente WHERE factura.fecha like busqueda;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jifMantenimientodeproductos_ACTUALIZAR_USUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jifMantenimientodeproductos_ACTUALIZAR_USUARIO`(ausuario varchar(10))
UPDATE actualizacion_productos 
SET usuario = ausuario 
WHERE fecha_actualizacion ORDER BY fecha_actualizacion DESC LIMIT 1 ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jifMantenimientodeproductos_BUSCAR_CATEGORIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jifMantenimientodeproductos_BUSCAR_CATEGORIA`()
BEGIN
		SELECT categoria FROM codigo_productos;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jifMantenimientodeproductos_BUSCAR_PRODUCTOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jifMantenimientodeproductos_BUSCAR_PRODUCTOS`(tipobusqueda varchar(15), busqueda varchar(25))
BEGIN
		IF tipobusqueda = "Código" THEN
			SELECT * FROM productos WHERE codigo like busqueda;
		ELSEIF tipobusqueda = "Descripción" THEN
			SELECT * FROM productos WHERE descripcion like busqueda;
		ELSEIF tipobusqueda = "Categoría" THEN
			SELECT * FROM productos WHERE categoria like busqueda;
		ELSE
			SELECT * FROM productos;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jifMantenimientodeusuarios_BUSCAR_USUARIOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jifMantenimientodeusuarios_BUSCAR_USUARIOS`(tipobusqueda varchar(11), busqueda varchar(45))
IF tipobusqueda = "Usuario" THEN
			SELECT nick, CONCAT(nombre, ' ', apellido) AS propietario, puesto, rol FROM usuario WHERE nick like busqueda;
		ELSEIF tipobusqueda = "Propietario" THEN
			SELECT nick, CONCAT(nombre, ' ', apellido) AS propietario, puesto, rol FROM usuario WHERE nombre like busqueda OR apellido like busqueda;
		ELSE
			SELECT nick, CONCAT(nombre, ' ', apellido) AS propietario, puesto, rol FROM usuario WHERE puesto like busqueda;
		END IF ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jifReporte_BUSCAR_REPORTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jifReporte_BUSCAR_REPORTE`(bdesde varchar(10), bhasta varchar(10), bestatus varchar(8), busuario varchar(10))
BEGIN
		
		IF bestatus = "Todos" THEN
			CASE busuario
				WHEN "Todos" THEN
					SELECT factura.nofactura, clientes.cliente, factura.venta, factura.tipopago, factura.total, factura.pagado, factura.estatus
					FROM factura
                    INNER JOIN clientes ON factura.codigo_cliente = clientes.codigo
                    WHERE DATE(factura.fecha) BETWEEN bdesde AND bhasta;
                ELSE
					SELECT factura.nofactura, clientes.cliente, factura.venta, factura.tipopago, factura.total, factura.pagado, factura.estatus
                    FROM factura
                    INNER JOIN clientes ON factura.codigo_cliente = clientes.codigo
                    WHERE DATE(factura.fecha) BETWEEN bdesde AND bhasta AND factura.usuario = busuario;
			END CASE;
		ELSE 
			CASE busuario
				WHEN "Todos" THEN
					SELECT factura.nofactura, clientes.cliente, factura.venta, factura.tipopago, factura.total, factura.pagado, factura.estatus
                    FROM factura
                    INNER JOIN clientes ON factura.codigo_cliente = clientes.codigo
                    WHERE DATE(factura.fecha) BETWEEN bdesde AND bhasta AND factura.estatus = bestatus;
                ELSE
					SELECT factura.nofactura, clientes.cliente, factura.venta, factura.tipopago, factura.total, factura.pagado, factura.estatus
                    FROM factura
                    INNER JOIN clientes ON factura.codigo_cliente = clientes.codigo
                    WHERE DATE(factura.fecha) BETWEEN bdesde AND bhasta AND factura.estatus = bestatus AND factura.usuario = busuario;
			END CASE;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Validacion_BUSCAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Validacion_BUSCAR`(tabla varchar(20), columna varchar(20), criterio varchar(20))
BEGIN
    IF tabla = "productos" THEN
		CASE columna
			WHEN "codigo" THEN SELECT codigo FROM productos WHERE codigo = criterio;
            WHEN "descripcion" THEN SELECT descripcion FROM productos WHERE descripcion = criterio;
            WHEN "disponibilidad" THEN SELECT disponibilidad FROM productos WHERE codigo = criterio;
		END CASE;
        
	ELSEIF tabla = "usuario" THEN
		CASE columna
			WHEN "idUSUARIO" THEN SELECT idUSUARIO FROM usuario WHERE idUSUARIO = criterio;
            WHEN "nick" THEN SELECT nick FROM usuario WHERE nick = criterio;
            WHEN "validacion" THEN SELECT idUSUARIO, nick, contrasena, puesto, CONCAT (nombre, " ", apellido) AS nombre, rol FROM usuario WHERE nick = criterio;
		END CASE;
        
	ELSEIF tabla = "factura" THEN
		CASE columna
			WHEN "nofactura" THEN SELECT nofactura FROM factura WHERE nofactura = criterio;
            WHEN "estatus" THEN SELECT estatus FROM factura WHERE nofactura = criterio;
		END CASE;
		
        ELSEIF tabla = "codigo_productos" THEN
		CASE columna
			WHEN "codigo" THEN SELECT codigo FROM codigo_productos WHERE codigo = criterio;
            WHEN "categoria" THEN SELECT categoria FROM codigo_productos WHERE categoria = criterio;
            WHEN "index" THEN SELECT codigo, categoria FROM codigo_productos WHERE indexado != criterio;
		END CASE;
        
        ELSEIF tabla = "documentos" THEN
		CASE columna
			WHEN "ID" THEN SELECT iddocumentos, tipo FROM documentos WHERE iddocumentos = criterio;
            WHEN "index" THEN SELECT iddocumentos, tipo FROM documentos WHERE indexado != criterio;
		END CASE;
        
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-19 12:41:51
