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
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredients` (
  `id` int NOT NULL,
  `ingredient_name` varchar(45) NOT NULL,
  `meal_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `meal_id_frgn` (`meal_id`),
  CONSTRAINT `meal_id_frgn` FOREIGN KEY (`meal_id`) REFERENCES `menu_items` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'lettuce',1),(2,'cheese',1),(3,'lettuce',1),(4,'tomato',1),(5,'onion',1),(6,'pickles',1),(7,'mustard',1),(8,'ketchup',1),(9,'mayonnaise',1),(10,'pizza dough',2),(11,'tomato sauce',2),(12,'cheese',2),(13,'meats',2),(14,'romaine lettuce',3),(15,'croutons',3),(16,'Parmesan cheese',3),(17,'Caesar dressing',3),(18,'tomato sauce',4),(19,'mozzarella cheese',4),(20,'breast tenderloin',4),(21,'Parmesan cheese',4),(22,'fresh basil',4),(23,'salmon fillets ',5),(24,'salt',5),(25,'pepper',5),(26,'lemon juice',5),(27,'vegetable oil',5),(28,'tomatoes',6),(29,'mozzarella cheese',6),(30,'fresh basil',6),(31,'crusty dough',6),(32,'olive oil',6),(33,'salt',6),(34,'broccoli',7),(35,'bell peppers',7),(36,'onions',7),(37,'carrots',7),(38,'mushrooms',7),(39,'lettuce',8),(40,'tomatoes',8),(41,'cucumbers',8),(42,'bell peppers',8),(43,'onions',8),(44,'BBQ sauce',9),(45,'cheese',9),(46,'lettuce',9),(47,'tomato',9),(48,'onion',9),(49,'pickles',9),(50,'hamburger patty',10),(51,'cheese',10),(52,'lettuce',10),(53,'tomato',10),(54,'onion',10),(55,'pickles',10),(56,'garlic',10),(57,'Worcestershire sauce',10),(58,'soy mince',11),(59,'sunflower oil',11),(60,'onion',11),(61,'black pepper',11),(62,'beans',11),(63,'nuts',11),(64,'lettuce',11),(65,'tomato',11),(66,'pickles',11),(67,'tomatoes',12),(68,'cucumbers',12),(69,'bell peppers',12),(70,'onions',12),(71,'feta cheese',12),(72,'olives',12),(73,'baked chicken',13),(74,' romaine lettuce',13),(75,'croutons',13),(76,'Caesar dressing',13),(77,'Parmesan cheese ',13),(78,'bacon',13),(79,'onions',13),(80,'tomato',13),(81,'lettuce',14),(82,'black beans',14),(83,'corn',14),(84,'tomatoes',14),(85,'avocado',14),(86,'cheese',14),(87,'grilled chicken',14),(88,'beef',15),(89,'mushrooms',15),(90,'onions',15),(91,'bell peppers',15),(92,'tomatoes',15),(93,'ground beef',16),(94,'bread crumbs',16),(95,'egg',16),(96,'spices',16),(97,'meats',17),(98,'pepperoni',17),(99,'sausage',17),(100,'ham',17),(101,'bacon',17),(102,'BBQ sauce',18),(103,'baked chicken',18),(104,'cheese',18),(105,'pineapple',18),(106,'bell peppers',18),(107,'bell peppers',19),(108,'onions',19),(109,'mushrooms',19),(110,'tomatoes',19),(111,'olives',19),(112,'sugar',21),(113,'herbal',21),(114,'ice',21),(115,'brewed coffee',22),(116,'milk',22),(117,'sugar',22),(118,'Ä±ce ',22),(119,'ground coffee beans',23),(120,'water',23),(121,'tea bags',24),(122,'water',24),(123,'fresh fruit',25),(124,'cream',25),(125,'chocolate',25),(126,'butter',25),(127,'crumbs',25),(128,'browni',26),(129,'vanilla ice cream',26),(130,'chocolate syrup',26),(131,'cream',26),(132,'nuts',26),(133,'flour',27),(134,'salt',27),(135,'sugar',27),(136,'butter',27),(137,'water',27),(138,'apple',27),(139,'cinnamon',27),(140,'nutmeg',27),(141,'ginger',27),(142,'flour',28),(143,'sugar',28),(144,'cocoa ',28),(145,'soda',28),(146,'salt',28),(147,'milk',28),(148,'vegetable oil',28),(149,'egg',28),(150,'vanilla extract',28),(151,'water',28),(152,'cream',29),(153,'vanilla bean',29),(154,'egg ',29),(155,'sugar',29),(156,'chicken',30),(157,'chicekn broth',30),(158,'onion',30),(159,'carrot',30),(160,'stalks celery',30),(161,'dried thyme',30),(162,'dried basil',30),(163,'dried oregano',30),(164,'dried parsley',30),(165,'salt',30),(166,'pepper',30),(167,'egg noodle',30),(168,'olive oil',31),(169,'onion',31),(170,'garlic',31),(171,'tomatoes',31),(172,'chicken broth',31),(173,'heavy cream',31),(174,'fresh basil',31),(175,'salt',31),(176,'pepper',31),(177,'lobster meat',32),(178,'butter',32),(179,'onion',32),(180,'carrot',32),(181,'celery stalk',32),(182,'garlic',32),(183,'paprica',32),(184,'seafood',32),(185,'heavy cream',32),(186,'tomato paste',32),(187,'leaf',32),(188,'salt',32),(189,'pepper',32),(190,'fresh parsley',32),(191,'black beans',33),(192,'olive oil',33),(193,'onion',33),(194,'pepper',33),(195,'garlic',33),(196,'jalapeno pepper',33),(197,'chili powder',33),(198,'cimin',33),(199,'coriander',33),(200,'chicken broth',33),(201,'diced tomatoes',33),(202,'salt',33),(203,'pepper',33),(204,'fresh cilantro',33),(205,'sour cream',33),(206,'butter',34),(207,'onion',34),(208,'garlic',34),(209,'stalks celery',34),(210,'red bell pepper',34),(211,'chicken broth',34),(212,'milk',34),(213,'potatoe',34),(214,'frozen corn',34),(215,'dried thyme',34),(216,'salt',34),(217,'black pepper',34),(218,'flour',34),(219,'heavy cream',34),(220,'fresh chieves',34);
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-08  0:12:51
