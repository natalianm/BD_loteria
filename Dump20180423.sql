-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: loteria
-- ------------------------------------------------------
-- Server version	8.0.11

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
-- Table structure for table `abandono_partida`
--

DROP TABLE IF EXISTS `abandono_partida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `abandono_partida` (
  `idPartida` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idPartida`,`idUsuario`),
  KEY `abandonousuario_idx` (`idUsuario`),
  CONSTRAINT `fkAbandonoPartida` FOREIGN KEY (`idPartida`) REFERENCES `partida` (`idpartida`),
  CONSTRAINT `fkAbandonoUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abandono_partida`
--

LOCK TABLES `abandono_partida` WRITE;
/*!40000 ALTER TABLE `abandono_partida` DISABLE KEYS */;
/*!40000 ALTER TABLE `abandono_partida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baraja`
--

DROP TABLE IF EXISTS `baraja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `baraja` (
  `idBaraja` int(11) NOT NULL,
  `imagen` varchar(45) NOT NULL,
  PRIMARY KEY (`idBaraja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baraja`
--

LOCK TABLES `baraja` WRITE;
/*!40000 ALTER TABLE `baraja` DISABLE KEYS */;
/*!40000 ALTER TABLE `baraja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carta`
--

DROP TABLE IF EXISTS `carta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `carta` (
  `idcarta` int(11) NOT NULL,
  `1` int(11) NOT NULL,
  `2` int(11) NOT NULL,
  `3` int(11) NOT NULL,
  `4` int(11) NOT NULL,
  `5` int(11) NOT NULL,
  `6` int(11) NOT NULL,
  `7` int(11) NOT NULL,
  `8` int(11) NOT NULL,
  `9` int(11) NOT NULL,
  `10` int(11) NOT NULL,
  `11` int(11) NOT NULL,
  `12` int(11) NOT NULL,
  `13` int(11) NOT NULL,
  `14` int(11) NOT NULL,
  `15` int(11) NOT NULL,
  `16` int(11) NOT NULL,
  PRIMARY KEY (`idcarta`),
  KEY `fk1_idx` (`1`),
  KEY `fkCartaBaraja2_idx` (`2`),
  KEY `fkCartaBaraja3_idx` (`3`),
  KEY `fkCartaBaraja4_idx` (`4`),
  KEY `fkCartaBaraja5_idx` (`5`),
  KEY `fkCartaBaraja6_idx` (`6`),
  KEY `fkCartaBaraja7_idx` (`7`),
  KEY `fkCartaBaraja8_idx` (`8`),
  KEY `fkCartaBaraja9_idx` (`9`),
  KEY `fkCartaBaraja10_idx` (`10`),
  KEY `fkCartaBaraja11_idx` (`11`),
  KEY `fkCartaBaraja12_idx` (`12`),
  KEY `fkCartaBaraja13_idx` (`13`),
  KEY `fkCartaBaraja14_idx` (`14`),
  KEY `fkCartaBaraja15_idx` (`15`),
  KEY `fkCartaBaraja16_idx` (`16`),
  CONSTRAINT `fkCartaBaraja1` FOREIGN KEY (`1`) REFERENCES `baraja` (`idbaraja`),
  CONSTRAINT `fkCartaBaraja10` FOREIGN KEY (`10`) REFERENCES `baraja` (`idbaraja`),
  CONSTRAINT `fkCartaBaraja11` FOREIGN KEY (`11`) REFERENCES `baraja` (`idbaraja`),
  CONSTRAINT `fkCartaBaraja12` FOREIGN KEY (`12`) REFERENCES `baraja` (`idbaraja`),
  CONSTRAINT `fkCartaBaraja13` FOREIGN KEY (`13`) REFERENCES `baraja` (`idbaraja`),
  CONSTRAINT `fkCartaBaraja14` FOREIGN KEY (`14`) REFERENCES `baraja` (`idbaraja`),
  CONSTRAINT `fkCartaBaraja15` FOREIGN KEY (`15`) REFERENCES `baraja` (`idbaraja`),
  CONSTRAINT `fkCartaBaraja16` FOREIGN KEY (`16`) REFERENCES `baraja` (`idbaraja`),
  CONSTRAINT `fkCartaBaraja2` FOREIGN KEY (`2`) REFERENCES `baraja` (`idbaraja`),
  CONSTRAINT `fkCartaBaraja3` FOREIGN KEY (`3`) REFERENCES `baraja` (`idbaraja`),
  CONSTRAINT `fkCartaBaraja4` FOREIGN KEY (`4`) REFERENCES `baraja` (`idbaraja`),
  CONSTRAINT `fkCartaBaraja5` FOREIGN KEY (`5`) REFERENCES `baraja` (`idbaraja`),
  CONSTRAINT `fkCartaBaraja6` FOREIGN KEY (`6`) REFERENCES `baraja` (`idbaraja`),
  CONSTRAINT `fkCartaBaraja7` FOREIGN KEY (`7`) REFERENCES `baraja` (`idbaraja`),
  CONSTRAINT `fkCartaBaraja8` FOREIGN KEY (`8`) REFERENCES `baraja` (`idbaraja`),
  CONSTRAINT `fkCartaBaraja9` FOREIGN KEY (`9`) REFERENCES `baraja` (`idbaraja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carta`
--

LOCK TABLES `carta` WRITE;
/*!40000 ALTER TABLE `carta` DISABLE KEYS */;
/*!40000 ALTER TABLE `carta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartausuario`
--

DROP TABLE IF EXISTS `cartausuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cartausuario` (
  `idPartida` int(11) NOT NULL,
  `idCarta` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idPartida`,`idCarta`,`idUsuario`),
  KEY `fkCartaUsuarioCarta_idx` (`idCarta`),
  KEY `fkCartaUsuarioUsuario_idx` (`idUsuario`),
  CONSTRAINT `fkCartaUsuarioCarta` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idcarta`),
  CONSTRAINT `fkCartaUsuarioPartida` FOREIGN KEY (`idPartida`) REFERENCES `partida` (`idpartida`),
  CONSTRAINT `fkCartaUsuarioUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartausuario`
--

LOCK TABLES `cartausuario` WRITE;
/*!40000 ALTER TABLE `cartausuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `cartausuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ganadores`
--

DROP TABLE IF EXISTS `ganadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ganadores` (
  `idUsuario` int(11) NOT NULL,
  `idPartida` int(11) NOT NULL,
  `idPremio` int(11) NOT NULL,
  `idCarta` int(11) NOT NULL,
  `idBarja` int(11) NOT NULL,
  `monto` double NOT NULL,
  PRIMARY KEY (`idUsuario`,`idPartida`,`idPremio`),
  KEY `fkGanadoresPartida_idx` (`idPartida`),
  KEY `fkGanadoresPremio_idx` (`idPremio`),
  KEY `fkGanadoresCarta_idx` (`idCarta`),
  KEY `fkGanadorBaraja_idx` (`idBarja`),
  CONSTRAINT `fkGanadorBaraja` FOREIGN KEY (`idBarja`) REFERENCES `baraja` (`idbaraja`),
  CONSTRAINT `fkGanadoresCarta` FOREIGN KEY (`idCarta`) REFERENCES `carta` (`idcarta`),
  CONSTRAINT `fkGanadoresPartida` FOREIGN KEY (`idPartida`) REFERENCES `partida` (`idpartida`),
  CONSTRAINT `fkGanadoresPremio` FOREIGN KEY (`idPremio`) REFERENCES `tipopremios` (`idpremio`),
  CONSTRAINT `fkGanadoresUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ganadores`
--

LOCK TABLES `ganadores` WRITE;
/*!40000 ALTER TABLE `ganadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `ganadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partida`
--

DROP TABLE IF EXISTS `partida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `partida` (
  `idpartida` int(11) NOT NULL,
  `idSala` int(11) NOT NULL,
  `numJugadores` int(11) NOT NULL,
  `costoCarta` int(11) NOT NULL,
  `horaInicio` datetime NOT NULL,
  `horaFin` datetime NOT NULL,
  `estado` varchar(1) NOT NULL,
  PRIMARY KEY (`idpartida`),
  KEY `fkPartidaSala_idx` (`idSala`),
  CONSTRAINT `fkPartidaSala` FOREIGN KEY (`idSala`) REFERENCES `sala` (`idsala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partida`
--

LOCK TABLES `partida` WRITE;
/*!40000 ALTER TABLE `partida` DISABLE KEYS */;
/*!40000 ALTER TABLE `partida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perdedor`
--

DROP TABLE IF EXISTS `perdedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `perdedor` (
  `idPartida` int(11) NOT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPartida`),
  KEY `perdedorusuario_idx` (`idUsuario`),
  CONSTRAINT `fkPerdedorPartida` FOREIGN KEY (`idPartida`) REFERENCES `partida` (`idpartida`),
  CONSTRAINT `fkPrdedorUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perdedor`
--

LOCK TABLES `perdedor` WRITE;
/*!40000 ALTER TABLE `perdedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `perdedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `premio`
--

DROP TABLE IF EXISTS `premio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `premio` (
  `idPartida` int(11) NOT NULL,
  `idPremio` int(11) NOT NULL,
  `porcentaje` varchar(3) NOT NULL,
  PRIMARY KEY (`idPartida`,`idPremio`),
  CONSTRAINT `fkPremioPartida` FOREIGN KEY (`idPartida`) REFERENCES `partida` (`idpartida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premio`
--

LOCK TABLES `premio` WRITE;
/*!40000 ALTER TABLE `premio` DISABLE KEYS */;
/*!40000 ALTER TABLE `premio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sala`
--

DROP TABLE IF EXISTS `sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sala` (
  `idSala` int(11) NOT NULL,
  `nombreSala` varchar(45) NOT NULL,
  `modo` varchar(1) NOT NULL,
  `contra` varchar(45) DEFAULT NULL,
  `numeroJugadores` int(11) NOT NULL,
  `estado` varchar(1) NOT NULL,
  PRIMARY KEY (`idSala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala`
--

LOCK TABLES `sala` WRITE;
/*!40000 ALTER TABLE `sala` DISABLE KEYS */;
/*!40000 ALTER TABLE `sala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipopremios`
--

DROP TABLE IF EXISTS `tipopremios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipopremios` (
  `idPremio` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idPremio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipopremios`
--

LOCK TABLES `tipopremios` WRITE;
/*!40000 ALTER TABLE `tipopremios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipopremios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `userName` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  `genero` varchar(1) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `estado` varchar(1) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-23 22:41:12
