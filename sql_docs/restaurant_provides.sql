-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: restaurant
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `provides`
--

DROP TABLE IF EXISTS `provides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provides` (
  `supplier_id` int NOT NULL,
  `ingredient_id` int NOT NULL,
  PRIMARY KEY (`supplier_id`,`ingredient_id`),
  KEY `ingredient` (`ingredient_id`),
  CONSTRAINT `ingredient` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`),
  CONSTRAINT `supplier` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provides`
--

LOCK TABLES `provides` WRITE;
/*!40000 ALTER TABLE `provides` DISABLE KEYS */;
INSERT INTO `provides` VALUES (4,1),(5,1),(6,1),(4,2),(6,2),(8,3),(1,4),(2,4),(1,5),(1,6),(2,6),(8,7),(3,8),(7,8),(8,9),(2,10),(8,11),(6,12),(6,13),(7,14),(2,15),(3,16),(4,17),(2,18),(4,19),(6,20),(3,21),(8,22),(5,23),(3,24),(8,25),(3,26),(2,27),(5,28),(1,29),(8,30),(7,31),(8,32),(7,33),(7,34),(7,35),(4,36),(8,37),(6,38),(4,39),(7,40),(8,41),(2,42),(6,43),(2,44),(5,45),(4,46),(8,47),(6,48),(6,49),(6,50),(5,51),(4,52),(1,53),(7,54),(3,55),(2,56),(8,57),(1,58),(1,59),(2,60),(5,61),(7,62),(1,63),(6,64),(8,65),(1,66),(2,67),(7,68),(5,69),(7,70),(7,71),(5,72),(8,73),(2,74),(3,75),(3,76),(6,77),(6,78),(8,79),(1,80),(3,81),(4,82),(2,83),(4,84),(7,85),(5,86),(1,87),(4,88),(7,89),(8,90),(6,91),(7,92),(4,93),(7,94),(5,95),(3,96),(3,97),(3,98),(2,99),(6,100),(5,101),(4,102),(6,103),(7,104),(6,105),(3,106),(1,107),(5,108),(5,109),(2,110),(2,111),(4,112),(5,113),(3,114),(2,115),(7,116),(5,117),(5,118),(6,119),(8,120),(8,121),(6,122),(5,123),(7,124),(6,125),(1,126),(1,127),(5,128),(5,129),(2,130),(6,131),(7,132),(6,133),(1,134),(4,135),(7,136),(6,137),(4,138),(8,139),(3,140),(7,141),(8,142),(3,143),(8,144),(3,145),(3,146),(2,147),(2,148),(2,149),(2,150),(5,151),(7,152),(4,153),(8,154),(2,155),(8,156),(4,157),(3,158),(6,159),(4,160),(1,161),(8,162),(8,163),(4,164),(7,165),(1,166),(4,167),(7,168),(4,169),(8,170),(3,171),(3,172),(8,173),(6,174),(8,175),(6,176),(1,177),(1,178),(5,179),(2,180),(6,181),(8,182),(4,183),(2,184),(2,185),(4,186),(2,187),(3,188),(6,189),(7,190),(5,191),(7,192),(3,193),(4,194),(4,195),(7,196),(4,197),(4,198),(5,199),(1,200),(1,201),(4,202),(2,203),(7,204),(1,205),(7,206),(1,207),(8,208),(4,209),(5,210),(1,211),(7,212),(8,213),(3,214),(2,215),(7,216),(8,217),(8,218),(5,219),(7,220);
/*!40000 ALTER TABLE `provides` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-08  0:12:50
