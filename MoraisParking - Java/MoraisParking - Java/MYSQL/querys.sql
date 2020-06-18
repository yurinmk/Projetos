CREATE DATABASE  IF NOT EXISTS `db_morais_parking` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_morais_parking`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: db_morais_parking
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `areas_especiais`
--

DROP TABLE IF EXISTS `areas_especiais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `areas_especiais` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bloco` varchar(45) NOT NULL,
  `acesso` varchar(45) NOT NULL,
  `inicio` date DEFAULT NULL,
  `fim` date DEFAULT NULL,
  `indeterminado` varchar(10) NOT NULL,
  `vagas` int NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas_especiais`
--

LOCK TABLES `areas_especiais` WRITE;
/*!40000 ALTER TABLE `areas_especiais` DISABLE KEYS */;
INSERT INTO `areas_especiais` VALUES (11,'Bloco Central','Diretoria','2020-06-01','2020-06-05','Não',12,'Reuniao','ativa'),(12,'Bloco A','Funcionários/Outros','2020-06-05','2020-06-09','Não',45,'Happy Hour','ativa'),(13,'Bloco B','Convidados','2020-06-09','2020-06-20','Não',34,'Comes e bebes','inativa'),(14,'Bloco G','Outros',NULL,NULL,'Sim',23,'Curso enem','ativa'),(15,'Bloco F','Convidados','2020-07-01','2020-06-30','Não',52,'Curso de Introdução a Java com Alana Morais','ativa'),(16,'Bloco B','Convidados','2020-06-01','2020-06-30','Não',50,'Curso de Estrutura de Dados com Aline Morais','inativa'),(17,'Bloco C','Funcionários','2020-06-05','2020-06-11','Não',3,'Curso de Orientação a Objetos em Java - Carlos','inativa'),(18,'Bloco C','Funcionários',NULL,NULL,'Sim',23,'Semana de Alcool em Gel','ativa'),(19,'Bloco Central','Outros',NULL,NULL,'Sim',11,'','ativa'),(20,'Bloco Central','Diretoria',NULL,NULL,'Sim',13,'importante','ativa');
/*!40000 ALTER TABLE `areas_especiais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `evento` varchar(60) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `local` varchar(45) NOT NULL,
  `vagas` int NOT NULL,
  `vagas_extras` int NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
INSERT INTO `eventos` VALUES (18,'Semana de Tecnologia','2020-05-01','2020-05-31','Bloco Central',200,0,'finalizado'),(19,'Boas vindas Alunos','2020-01-01','2020-01-31','Bloco C',135,0,'finalizado'),(20,'Semana da Ed. Física','2020-04-01','2020-04-15','Bloco F',55,0,'finalizado'),(22,'INOVA UNIESP','2020-05-01','2020-05-31','Bloco Central',20,10,'finalizado'),(23,'rer','2020-05-01','2020-05-31','Bloco Central',12,0,'finalizado'),(24,'teste','2020-05-25','2020-05-31','Bloco F',100,0,'finalizado'),(25,'teste2','2020-05-25','2020-05-31','Bloco F',100,0,'finalizado'),(26,'teste2','2020-05-20','2020-05-25','Bloco F',100,0,'finalizado'),(27,'teste2','2020-05-20','2020-05-31','Bloco F',100,0,'finalizado'),(28,'teste2','2020-05-10','2020-05-20','Bloco F',100,0,'finalizado'),(29,'asdasd','2020-05-01','2020-05-31','Bloco C',12,0,'finalizado'),(30,'Apresentação de Projeto','2020-05-30','2020-06-30','Bloco C',50,0,'em_andamento'),(31,'Torneio de MK 11','2020-06-05','2020-06-05','Bloco C',32,0,'em_andamento'),(32,'Torneio de CSGO','2020-06-06','2020-06-07','Bloco Central',24,0,'futuro'),(33,'Torneio de COD','2020-06-06','2020-06-08','Bloco F',42,0,'futuro'),(34,'Torneio de Valorant','2020-06-05','2020-06-10','Bloco D',36,0,'em_andamento'),(35,'Ferias Merececidas','2020-06-05','2020-08-03','Bloco G',20,0,'em_andamento'),(36,'Dance day','2020-06-03','2020-06-03','Bloco D',12,10,'finalizado'),(37,'Dance Day','2020-06-01','2020-06-05','Bloco Central',100,20,'em_andamento');
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `email` varchar(60) NOT NULL,
  `cargo` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'teste','123','teste@outlook.com','funcionario'),(2,'namikoka','04121993','namikoka@outlook.com','gestor'),(3,'yuri','140405','yuri@gmail.com','funcionario'),(4,'najla','161654','najla@hotmail.com','funcionario_rh'),(5,'neidinha','123456','neidinha@gmail.com','funcionario'),(6,'maria','45633','maria@gmail.com','funcionario_rh'),(7,'neymar','123654','neymar@hotmail.com','funcionario'),(8,'Iria','1234','iria@outlook.com','funcionario'),(9,'kruba','1234','kruba@gmail.com','funcionario'),(10,'teste2','123654','teste2','funcionario_rh'),(11,'João','123','joao@hotmail.com','funcionario'),(12,'namikoka','112233','namikoka@gol.com.br','funcionario'),(13,'Alana','321654','alana@uniesp.com.br','gestor'),(14,'Alana','123456','Alana@qualquercoisa.com','gestor'),(15,'alana','123456','alana@qualquercoisa.com','gestor'),(16,'cleiton','91142915','cleiton@gmail.com','funcionario'),(17,'neidinha','123','kkk@hotmail.com','funcionario_rh'),(18,'aline','123','aline@gmail.com','funcionario_rh'),(19,'ericleiton','123','eri@outlook.com','funcionario'),(20,'marcio','123','marcio@gmail.com','funcionario'),(21,'luan','123','luan@gmail.com','funcionario');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ocorrencias`
--

DROP TABLE IF EXISTS `ocorrencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ocorrencias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `placa` varchar(45) NOT NULL,
  `matricula` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `ocorrencia` varchar(45) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `local` varchar(45) NOT NULL,
  `idOcorrencia` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocorrencias`
--

LOCK TABLES `ocorrencias` WRITE;
/*!40000 ALTER TABLE `ocorrencias` DISABLE KEYS */;
INSERT INTO `ocorrencias` VALUES (37,'kof9899','45693311','Jorge','Hillux','Carro','Batidas','2020-06-01','23:38:23','Bloco F','96.9933123554722'),(38,'kof2000','121213789','Wendel','XRE','Moto','Batidas','2020-06-01','23:38:23','Bloco F','96.9933123554722'),(39,'kof2002','3964783','Luana','Elba','Carro','Batidas','2020-06-01','23:38:23','Bloco F','96.9933123554722'),(40,'top1278','89331472','Vilma','Fiesta','Carro','Batidas','2020-06-01','23:39:15','Bloco F','96.9933123554722'),(41,'mmo4536','39344523','Luan','Eclipse','Carro','Furto ou assalto','2020-06-01','23:39:46','Bloco B','29.33372150728262'),(42,'mmo5563','889317533','Rogerio','Kawaski','MOTO','Inudação','2020-06-01','23:42:37','Bloco G','34.84411791857658'),(43,'nmk1515','12142582','João','Uno','carro','Inudação','2020-06-01','23:42:37','Bloco G','34.84411791857658'),(44,'ggg0020','00000000','Carlos','Toro','Carro','Inudação','2020-06-01','23:42:37','Bloco G','34.84411791857658'),(45,'NMK0Y26','20192007027','Yuri','Kasinski','Moto','Inudação','2020-06-01','23:43:07','Bloco G','34.84411791857658'),(46,'cai1000','1111111','Neymar','Fusca','Carro','Inudação','2020-06-01','23:43:07','Bloco G','34.84411791857658'),(47,'nmk0412','559977884','Namikoka','Harley Davidson','Moto','Inudação','2020-06-01','23:43:07','Bloco G','34.84411791857658'),(48,'mar1234','1111111','Maria','FIat','carro','Dano ao veículo','2020-06-03','22:55:19','Bloco F','92.65753428120999'),(49,'ggg1212','12348631','Julia','Tucson','Carro','Dano ao veículo','2020-06-03','22:55:19','Bloco F','92.65753428120999'),(50,'nmk0412','559977884','Namikoka','Harley Davidson','Moto','Dano ao veículo','2020-06-03','22:55:20','Bloco F','92.65753428120999'),(51,'uun1278','475231472','Marcia','UNO','Carro','Dano ao veículo','2020-06-03','22:55:39','Bloco F','92.65753428120999'),(52,'nmk0412','559977884','Namikoka','Harley Davidson','Moto','Batidas','2020-06-03','22:56:31','Bloco A','47.83995500641448'),(53,'nmk1515','12142582','João','Uno','carro','Batidas','2020-06-05','14:39:38','Bloco B','77.5505510031482'),(54,'mmo5563','889317533','Rogerio','Kawaski','MOTO','Batidas','2020-06-05','14:39:38','Bloco B','77.5505510031482'),(55,'nau7853','873319563','Paulo','Opalla','Carro','Batidas','2020-06-05','14:39:38','Bloco B','77.5505510031482');
/*!40000 ALTER TABLE `ocorrencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teste`
--

DROP TABLE IF EXISTS `teste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teste` (
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teste`
--

LOCK TABLES `teste` WRITE;
/*!40000 ALTER TABLE `teste` DISABLE KEYS */;
/*!40000 ALTER TABLE `teste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teste2`
--

DROP TABLE IF EXISTS `teste2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teste2` (
  `data` datetime DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teste2`
--

LOCK TABLES `teste2` WRITE;
/*!40000 ALTER TABLE `teste2` DISABLE KEYS */;
INSERT INTO `teste2` VALUES ('2020-04-11 18:15:04','yuri');
/*!40000 ALTER TABLE `teste2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculos`
--

DROP TABLE IF EXISTS `veiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matricula` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `placa` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `data` date DEFAULT NULL,
  `hora` time NOT NULL,
  `status` varchar(45) NOT NULL,
  `bloco` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculos`
--

LOCK TABLES `veiculos` WRITE;
/*!40000 ALTER TABLE `veiculos` DISABLE KEYS */;
INSERT INTO `veiculos` VALUES (1,'20192007027','Yuri','NMK0Y26','Kasinski','Moto','2020-05-01','17:16:48','PRESENTE','Bloco D'),(5,'11223344','Kruba','MOF6616','Gol','Carro','2020-05-01','19:49:30','AUSENTE','Bloco Central'),(6,'559977884','Namikoka','NMK0412','Harley Davidson','Moto','2020-05-05','19:04:06','AUSENTE','Bloco E'),(15,'77777777777','Jame','MOF6666','UNO','Carro','2020-05-11','16:04:33','AUSENTE','Bloco E'),(16,'12142582','João','nmk1515','Uno','carro','2020-04-19','19:11:56','PRESENTE','Bloco Central'),(23,'00000000','Carlos','ggg0020','Toro','Carro','2020-05-01','18:43:18','PRESENTE','Bloco B'),(24,'1111111','Neymar','cai1000','Fusca','Carro','2020-05-01','18:43:51','PRESENTE','Bloco C'),(25,'2222222','Najla','nmz0101','Fan','Moto','2020-05-06','22:50:12','AUSENTE','Bloco E'),(26,'789456','Cica','cic4465','Savero','Carro','2020-05-01','19:43:20','PRESENTE','Bloco G'),(27,'777777888','Alana','ala5575','Toro','Carro','2020-05-03','13:01:19','PRESENTE','Bloco A'),(33,'559977884','Namikoka','nmk0412','Harley Davidson','Moto','2020-05-11','15:43:34','PRESENTE','Bloco D'),(34,'77777777777','Jame','mof6666','UNO','Carro','2020-05-11','16:04:33','AUSENTE','Bloco G'),(35,'11223344','Kruba','mof6616','Gol','Carro','2020-05-11','16:42:32','AUSENTE','Bloco Central'),(36,'11223344','Kruba','mof6616','Gol','Carro','2020-05-11','16:43:33','AUSENTE','Bloco B'),(37,'11223344','Kruba','mof6616','Gol','Carro','2020-05-11','16:44:07','AUSENTE','Bloco B'),(42,'12348631','Julia','ggg1212','Tucson','Carro','2020-05-31','18:26:50','PRESENTE','Bloco A'),(47,'1212121212','matheus','mat1212','Gol','especial','2020-05-10','22:43:34','AUSENTE','BLOCO F'),(48,'98943612','Lucas','kog9899','Fox','especial','2020-05-01','22:51:41','AUSENTE','Bloco D'),(49,'0102018556','Marcelo','cod2010','Meriva','especial','2020-03-02','22:52:43','AUSENTE','Bloco E'),(50,'74557016','Maria','kkj7720','Zafira','especial','2020-04-02','22:53:48','AUSENTE','Bloco D'),(51,'5533176','Marina','jlk0170','New Fiesta','especial','2020-04-30','22:54:53','AUSENTE','Bloco B'),(52,'8730002','Joseane','kqq1189','Corsa','especial','2020-02-27','22:55:48','AUSENTE','Bloco A'),(53,'889317533','Rogerio','mmo5563','Kawaski','MOTO','2020-06-05','22:57:16','PRESENTE','Bloco Central'),(54,'873319563','Paulo','nau7853','Opalla','Carro','2020-06-05','22:58:18','PRESENTE','Bloco Central'),(55,'45693311','Jorge','kof9899','Hillux','Carro','2020-06-05','23:00:47','PRESENTE','Bloco A'),(56,'121213789','Wendel','kof2000','XRE','Moto','2020-06-05','23:01:59','PRESENTE','Bloco C'),(57,'3964783','Luana','kof2002','Elba','Carro','2020-06-05','23:03:26','PRESENTE','Bloco D'),(58,'39344523','Luan','mmo4536','Eclipse','Carro','2020-06-05','23:07:09','PRESENTE','Bloco G'),(60,'2823447924','Diego','klç4785','Fusca','Carro','2020-06-05','23:09:00','PRESENTE','Bloco F'),(61,'89331472','Vilma','top1278','Fiesta','Carro','2020-06-05','23:10:23','PRESENTE','Bloco F'),(62,'475231472','Marcia','uun1278','UNO','Carro','2020-06-05','23:11:10','PRESENTE','Bloco G'),(63,'1111111','Maria','mar1234','FIat','carro','2020-06-03','22:47:30','AUSENTE','Bloco Central'),(64,'1111111','Maria','mar1234','FIat','carro','2020-06-03','22:48:12','AUSENTE','Bloco Central'),(65,'1111111','Maria','mar1234','FIat','carro','2020-06-03','22:48:42','PRESENTE','Bloco A'),(66,'1245636','Iria','fff','Uno','Carro','2020-06-04','00:17:34','AUSENTE','Bloco B'),(67,'1245636','Iria','fff','Uno','Carro','2020-06-04','00:18:58','AUSENTE','Bloco B'),(68,'1245636','Iria','fff','Uno','Carro','2020-06-04','00:19:31','AUSENTE','Bloco B'),(69,'1245636','Iria','fff','Uno','Carro','2020-06-04','00:25:20','AUSENTE','Bloco B'),(70,'21325463','Iria','mol1212','Uno','Carro','2020-06-04','00:28:58','AUSENTE','Bloco B'),(71,'21325463','Iria','mol1212','Uno','Carro','2020-06-04','00:29:59','AUSENTE','Bloco B'),(72,'21325463','Iria','mol1212','Uno','Carro','2020-06-04','00:30:42','PRESENTE','Bloco A');
/*!40000 ALTER TABLE `veiculos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_morais_parking'
--

--
-- Dumping routines for database 'db_morais_parking'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-05 18:42:12
