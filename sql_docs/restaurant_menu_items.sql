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
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` int NOT NULL,
  `label` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `category_id` int NOT NULL,
  `chef_id` int NOT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `category` (`category_id`),
  KEY `chef` (`chef_id`),
  KEY `order` (`order_id`),
  CONSTRAINT `category` FOREIGN KEY (`category_id`) REFERENCES `menu_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chef` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`id`),
  CONSTRAINT `order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,'Cheeseburger','A delicious cheeseburger with lettuce, tomato, and onion',7,4,5,NULL),(2,'Cheese Pizza','A classic cheese pizza with your choice of toppings',10.99,1,1,NULL),(3,'Caesar Salad','A fresh garden salad with your choice of dressing',6.5,2,2,NULL),(4,'Chicken Parmesan','Breaded chicken breast topped with marinara sauce and mozzarella cheese, served over spaghetti.',11.5,3,3,NULL),(5,'Grilled Salmon','Fresh salmon fillet seasoned with lemon and herbs, grilled to perfection and served with a side of sautéed vegetables.',13,3,3,NULL),(6,'Margherita Pizza','A thin crust pizza topped with tomato sauce, mozzarella cheese, and fresh basil, baked to perfection in a wood-fired oven.',12,1,1,NULL),(7,'Vegetable Stir-Fry','A medley of fresh vegetables stir-fried in a savory sauce, served over a bed of steamed rice.',16,3,4,NULL),(8,'Garden Salad','Mixed greens topped with cherry tomatoes, cucumbers, carrots, and red onions, served with your choice of dressing.',6,2,2,NULL),(9,'BBQ Burger','A classic burger topped with BBQ sauce, crispy onion rings, and melted cheddar cheese.',8,4,5,NULL),(10,'Classic Burger','A juicy beef patty topped with lettuce, tomato, onion, pickles, and ketchup, served on a toasted bun.',6.5,4,5,NULL),(11,'Veggie Burger','A grilled vegetable patty topped with lettuce, tomato, onion, pickles, and ketchup, served on a toasted bun.',6.5,4,5,NULL),(12,'Greek Salad','Mixed greens topped with feta cheese, kalamata olives, cherry tomatoes, and red onions, served with Greek dressing',7,2,2,NULL),(13,'Chicken Caesar Salad','A Caesar salad topped with grilled chicken breast.',8.5,2,2,NULL),(14,'Southwest Salad','Mixed greens topped with black beans, corn, avocado, cherry tomatoes, and tortilla strips, served with Southwest dressing. ',7.5,2,2,NULL),(15,'Beef Stroganoff','Tender strips of beef in a creamy mushroom sauce, served over egg noodles.',12,3,4,NULL),(16,'Spaghetti and Meatballs','Spaghetti noodles topped with homemade meatballs and marinara sauce. ',11,3,3,NULL),(17,'Meat Lovers Pizza','A pizza topped with pepperoni, sausage, bacon, and ham, with mozzarella cheese and your choice of vegetables.',13,1,1,NULL),(18,'BBQ Chicken Pizza','A pizza topped with BBQ sauce, grilled chicken, red onions, and cheddar cheese. ',12,1,1,NULL),(19,'Veggie Pizza','A pizza topped with a variety of fresh vegetables, with mozzarella cheese and your choice of sauce.',11.5,1,1,NULL),(20,'Soft Drinks','Coca-Cola, Diet Coke, Sprite, Ginger Ale, Lemonade.',2,5,7,NULL),(21,'Iced Tea','Sweetened or unsweetened, served with lemon. ',2,5,7,NULL),(22,'Iced Coffee','Cold-brewed coffee with cream and sugar',3,5,7,NULL),(23,'Hot Coffee','Freshly-brewed coffee with cream and sugar',2,5,7,NULL),(24,'Hot Tea','A variety of black, green, and herbal teas, served with honey and lemon.',2,5,7,NULL),(25,'Cheese Cake','A rich and creamy cheesecake with your choice of topping: strawberry, blueberry, or chocolate.',6,6,7,NULL),(26,'Brownie Sundae','A warm, gooey brownie topped with vanilla ice cream, chocolate sauce, and whipped cream.',6,6,7,NULL),(27,'Apple Pie','A warm, flaky pie crust filled with sliced apples and cinnamon, served with vanilla ice cream. ',5.5,6,7,NULL),(28,'Chocolate Cake','A rich and moist chocolate cake, topped with chocolate frosting and chocolate shavings.',6,6,7,NULL),(29,'Vanilla Bean Crème Brûlée','A rich and creamy custard topped with a crisp caramelized sugar crust.',6,6,7,NULL),(30,'Chicken Noodle Soup','A hearty soup made with chicken, vegetables, and egg noodles. ',5,7,7,NULL),(31,'Tomato Basil Soup','A rich and flavorful soup made with ripe tomatoes, fresh basil, and cream. ',4.5,7,6,NULL),(32,'Lobster Bisque','A creamy soup made with lobster and spices, garnished with a dollop of crème fraîche.',6.5,7,6,NULL),(33,'Black Bean Soup','A hearty soup made with black beans, vegetables, and spices',4.5,7,6,NULL),(34,'Corn Chowder','A creamy soup made with corn, potatoes, and bacon, garnished with chives. ',5,7,6,NULL),(35,'Water','500 mL water',1,5,7,NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
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
