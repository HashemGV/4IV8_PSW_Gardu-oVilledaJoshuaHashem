-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: reporteequipos
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `casignatura`
--

DROP TABLE IF EXISTS `casignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casignatura` (
  `id_asignatura` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id_asignatura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casignatura`
--

LOCK TABLES `casignatura` WRITE;
/*!40000 ALTER TABLE `casignatura` DISABLE KEYS */;
/*!40000 ALTER TABLE `casignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cestadomaquina`
--

DROP TABLE IF EXISTS `cestadomaquina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cestadomaquina` (
  `id_edomaquina` int NOT NULL AUTO_INCREMENT,
  `tipo_edo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_edomaquina`),
  KEY `tipo_edo` (`tipo_edo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cestadomaquina`
--

LOCK TABLES `cestadomaquina` WRITE;
/*!40000 ALTER TABLE `cestadomaquina` DISABLE KEYS */;
/*!40000 ALTER TABLE `cestadomaquina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cestadoreporte`
--

DROP TABLE IF EXISTS `cestadoreporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cestadoreporte` (
  `id_cer` int NOT NULL,
  `tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_cer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cestadoreporte`
--

LOCK TABLES `cestadoreporte` WRITE;
/*!40000 ALTER TABLE `cestadoreporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `cestadoreporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cgrupo`
--

DROP TABLE IF EXISTS `cgrupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cgrupo` (
  `id_grupo` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) NOT NULL,
  PRIMARY KEY (`id_grupo`),
  KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cgrupo`
--

LOCK TABLES `cgrupo` WRITE;
/*!40000 ALTER TABLE `cgrupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cgrupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `claboratorio`
--

DROP TABLE IF EXISTS `claboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `claboratorio` (
  `id_lab` int NOT NULL AUTO_INCREMENT,
  `tipo_lab` varchar(50) NOT NULL,
  PRIMARY KEY (`id_lab`),
  KEY `tipo_lab` (`tipo_lab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claboratorio`
--

LOCK TABLES `claboratorio` WRITE;
/*!40000 ALTER TABLE `claboratorio` DISABLE KEYS */;
/*!40000 ALTER TABLE `claboratorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmarca`
--

DROP TABLE IF EXISTS `cmarca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cmarca` (
  `id_marca` int NOT NULL AUTO_INCREMENT,
  `tipo_marca` varchar(100) NOT NULL,
  PRIMARY KEY (`id_marca`),
  KEY `tipo_marca` (`tipo_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmarca`
--

LOCK TABLES `cmarca` WRITE;
/*!40000 ALTER TABLE `cmarca` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmarca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cprioridad`
--

DROP TABLE IF EXISTS `cprioridad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cprioridad` (
  `id_prioridad` int NOT NULL AUTO_INCREMENT,
  `tipo_prioridad` varchar(45) NOT NULL,
  PRIMARY KEY (`id_prioridad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cprioridad`
--

LOCK TABLES `cprioridad` WRITE;
/*!40000 ALTER TABLE `cprioridad` DISABLE KEYS */;
/*!40000 ALTER TABLE `cprioridad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cprivilegio`
--

DROP TABLE IF EXISTS `cprivilegio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cprivilegio` (
  `id_privilegio` int NOT NULL AUTO_INCREMENT,
  `tipo_privilegio` varchar(50) NOT NULL,
  PRIMARY KEY (`id_privilegio`),
  KEY `tipo_privilegio` (`tipo_privilegio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cprivilegio`
--

LOCK TABLES `cprivilegio` WRITE;
/*!40000 ALTER TABLE `cprivilegio` DISABLE KEYS */;
/*!40000 ALTER TABLE `cprivilegio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cusuariorol`
--

DROP TABLE IF EXISTS `cusuariorol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cusuariorol` (
  `id_rol` int NOT NULL AUTO_INCREMENT,
  `tipo_rol` varchar(50) NOT NULL,
  PRIMARY KEY (`id_rol`),
  KEY `tipo_rol` (`tipo_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cusuariorol`
--

LOCK TABLES `cusuariorol` WRITE;
/*!40000 ALTER TABLE `cusuariorol` DISABLE KEYS */;
/*!40000 ALTER TABLE `cusuariorol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dreporte`
--

DROP TABLE IF EXISTS `dreporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dreporte` (
  `id_dreporte` int NOT NULL AUTO_INCREMENT,
  `id_cer` int NOT NULL,
  `id_asignatura` int NOT NULL,
  `id_reportesequipo` int NOT NULL,
  `id_reportemaquinapersona` int NOT NULL,
  `id_prioridad` int NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_reporte` int NOT NULL,
  PRIMARY KEY (`id_dreporte`),
  KEY `id_asignatura_idx` (`id_asignatura`),
  KEY `id_reportesequipos_idx` (`id_reportesequipo`),
  KEY `id_reportemaquinapersona_idx` (`id_reportemaquinapersona`),
  KEY `id_prioridad_idx` (`id_prioridad`),
  KEY `id_reporte_idx` (`id_reporte`),
  CONSTRAINT `id_asignatura` FOREIGN KEY (`id_asignatura`) REFERENCES `casignatura` (`id_asignatura`),
  CONSTRAINT `id_cer` FOREIGN KEY (`id_dreporte`) REFERENCES `cestadoreporte` (`id_cer`),
  CONSTRAINT `id_prioridad` FOREIGN KEY (`id_prioridad`) REFERENCES `cprioridad` (`id_prioridad`),
  CONSTRAINT `id_reporte` FOREIGN KEY (`id_reporte`) REFERENCES `mreporte` (`id_reporte`),
  CONSTRAINT `id_reportemaquinapersona` FOREIGN KEY (`id_reportemaquinapersona`) REFERENCES `ereportemaquina` (`id_ereportemaquinapersona`),
  CONSTRAINT `id_reportesequipos` FOREIGN KEY (`id_reportesequipo`) REFERENCES `ereportesequipo` (`id_reportesequipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dreporte`
--

LOCK TABLES `dreporte` WRITE;
/*!40000 ALTER TABLE `dreporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `dreporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ereportemaquina`
--

DROP TABLE IF EXISTS `ereportemaquina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ereportemaquina` (
  `id_ereportemaquinapersona` int NOT NULL AUTO_INCREMENT,
  `id_persona` int NOT NULL,
  PRIMARY KEY (`id_ereportemaquinapersona`),
  KEY `id_persona_idx` (`id_persona`),
  CONSTRAINT `id_persona` FOREIGN KEY (`id_persona`) REFERENCES `mpersona` (`id_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ereportemaquina`
--

LOCK TABLES `ereportemaquina` WRITE;
/*!40000 ALTER TABLE `ereportemaquina` DISABLE KEYS */;
/*!40000 ALTER TABLE `ereportemaquina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ereportesequipo`
--

DROP TABLE IF EXISTS `ereportesequipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ereportesequipo` (
  `id_reportesequipo` int NOT NULL AUTO_INCREMENT,
  `id_equipo` varchar(10) NOT NULL,
  PRIMARY KEY (`id_reportesequipo`),
  KEY `id_equipo_idx` (`id_equipo`),
  CONSTRAINT `id_equipo` FOREIGN KEY (`id_equipo`) REFERENCES `mequipo` (`id_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ereportesequipo`
--

LOCK TABLES `ereportesequipo` WRITE;
/*!40000 ALTER TABLE `ereportesequipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ereportesequipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maccesorios`
--

DROP TABLE IF EXISTS `maccesorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maccesorios` (
  `id_accesorios` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_accesorios`),
  KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maccesorios`
--

LOCK TABLES `maccesorios` WRITE;
/*!40000 ALTER TABLE `maccesorios` DISABLE KEYS */;
/*!40000 ALTER TABLE `maccesorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mconfiguracion`
--

DROP TABLE IF EXISTS `mconfiguracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mconfiguracion` (
  `id_configuracion` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) NOT NULL,
  PRIMARY KEY (`id_configuracion`),
  KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mconfiguracion`
--

LOCK TABLES `mconfiguracion` WRITE;
/*!40000 ALTER TABLE `mconfiguracion` DISABLE KEYS */;
/*!40000 ALTER TABLE `mconfiguracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcpu`
--

DROP TABLE IF EXISTS `mcpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mcpu` (
  `id_maquina` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) NOT NULL,
  PRIMARY KEY (`id_maquina`),
  KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcpu`
--

LOCK TABLES `mcpu` WRITE;
/*!40000 ALTER TABLE `mcpu` DISABLE KEYS */;
/*!40000 ALTER TABLE `mcpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mequipo`
--

DROP TABLE IF EXISTS `mequipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mequipo` (
  `id_equipo` varchar(10) NOT NULL,
  `id_maquina` int NOT NULL,
  `id_monitor` int NOT NULL,
  `id_accesorio` int NOT NULL,
  `id_configuracion` int NOT NULL,
  `id_lab` int NOT NULL,
  `problema` varchar(200) NOT NULL,
  `id_edomaquina` int NOT NULL,
  PRIMARY KEY (`id_equipo`),
  KEY `id_maquina` (`id_maquina`),
  KEY `id_monitor` (`id_monitor`),
  KEY `id_accesorio` (`id_accesorio`),
  KEY `id_configuracion` (`id_configuracion`),
  KEY `id_lab` (`id_lab`),
  KEY `problema` (`problema`),
  KEY `id_edomaquina` (`id_edomaquina`),
  CONSTRAINT `mequipo_ibfk_1` FOREIGN KEY (`id_maquina`) REFERENCES `mcpu` (`id_maquina`),
  CONSTRAINT `mequipo_ibfk_2` FOREIGN KEY (`id_monitor`) REFERENCES `mmonitor` (`id_monitor`),
  CONSTRAINT `mequipo_ibfk_3` FOREIGN KEY (`id_accesorio`) REFERENCES `maccesorios` (`id_accesorios`),
  CONSTRAINT `mequipo_ibfk_4` FOREIGN KEY (`id_configuracion`) REFERENCES `mconfiguracion` (`id_configuracion`),
  CONSTRAINT `mequipo_ibfk_5` FOREIGN KEY (`id_lab`) REFERENCES `claboratorio` (`id_lab`),
  CONSTRAINT `mequipo_ibfk_6` FOREIGN KEY (`id_edomaquina`) REFERENCES `cestadomaquina` (`id_edomaquina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mequipo`
--

LOCK TABLES `mequipo` WRITE;
/*!40000 ALTER TABLE `mequipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `mequipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mmonitor`
--

DROP TABLE IF EXISTS `mmonitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mmonitor` (
  `id_monitor` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) NOT NULL,
  PRIMARY KEY (`id_monitor`),
  KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mmonitor`
--

LOCK TABLES `mmonitor` WRITE;
/*!40000 ALTER TABLE `mmonitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `mmonitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mpersona`
--

DROP TABLE IF EXISTS `mpersona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mpersona` (
  `id_persona` int NOT NULL AUTO_INCREMENT,
  `numero_empleado` int DEFAULT NULL,
  `boleta` int DEFAULT NULL,
  `nombre` text NOT NULL,
  `appat` text NOT NULL,
  `apmat` text NOT NULL,
  `sexo` text NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `user` text NOT NULL,
  `pass` text NOT NULL,
  `img` blob,
  `id_rol` int NOT NULL,
  `id_privilegio` int NOT NULL,
  PRIMARY KEY (`id_persona`),
  KEY `id_rol_idx` (`id_rol`),
  KEY `id_privilegio_idx` (`id_privilegio`),
  CONSTRAINT `id_privilegio` FOREIGN KEY (`id_privilegio`) REFERENCES `cprivilegio` (`id_privilegio`),
  CONSTRAINT `id_rol` FOREIGN KEY (`id_rol`) REFERENCES `cusuariorol` (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mpersona`
--

LOCK TABLES `mpersona` WRITE;
/*!40000 ALTER TABLE `mpersona` DISABLE KEYS */;
/*!40000 ALTER TABLE `mpersona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mreporte`
--

DROP TABLE IF EXISTS `mreporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mreporte` (
  `id_reporte` int NOT NULL AUTO_INCREMENT,
  `cantidad_repeticiones` int NOT NULL,
  PRIMARY KEY (`id_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mreporte`
--

LOCK TABLES `mreporte` WRITE;
/*!40000 ALTER TABLE `mreporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `mreporte` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-19 22:33:48
