-- MySQL dump 10.16  Distrib 10.1.16-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: cartmart
-- ------------------------------------------------------
-- Server version	10.1.16-MariaDB

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
-- Table structure for table `appeliano`
--

DROP TABLE IF EXISTS `appeliano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appeliano` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appeliano`
--

LOCK TABLES `appeliano` WRITE;
/*!40000 ALTER TABLE `appeliano` DISABLE KEYS */;
INSERT INTO `appeliano` VALUES (1,'Cream Pasta','z3.jpg',300),(2,'Special Oven Baked Pasta','z5.jpg',280),(3,'Chicken Cheese Delight','z7.jpg',260),(4,'Pasta Americana','z9.jpg',250),(5,'Double Cheese Pasta','z10.jpg',220);
/*!40000 ALTER TABLE `appeliano` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apple`
--

DROP TABLE IF EXISTS `apple`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apple` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apple`
--

LOCK TABLES `apple` WRITE;
/*!40000 ALTER TABLE `apple` DISABLE KEYS */;
INSERT INTO `apple` VALUES (1,'Apple iPhone 7 Plus','a1.jpg',50000),(2,'Apple iPhone 7','a2.jpg',47000),(3,'Apple iPhone SE','a3.jpg',45000),(4,'Apple iPhone 6S pLus','a4.jpg',42000),(5,'Apple iPhone 6S ','a5.jpg',40000);
/*!40000 ALTER TABLE `apple` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basta`
--

DROP TABLE IF EXISTS `basta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basta` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basta`
--

LOCK TABLES `basta` WRITE;
/*!40000 ALTER TABLE `basta` DISABLE KEYS */;
INSERT INTO `basta` VALUES (1,'BBQ Pasta','z9.jpg',300),(2,'Special Oven Baked Pasta','z3.jpg',280),(3,'Chicken Cheese Delight','z6.jpg',260),(4,'Cheese Pasta','z2.jpg',250),(5,'Pasta Americana','z10.jpg',220);
/*!40000 ALTER TABLE `basta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `burger_king`
--

DROP TABLE IF EXISTS `burger_king`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `burger_king` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `burger_king`
--

LOCK TABLES `burger_king` WRITE;
/*!40000 ALTER TABLE `burger_king` DISABLE KEYS */;
INSERT INTO `burger_king` VALUES (1,'Double Cheese Burger','b3.jpg',300),(2,'Chicken Sizzling Trio Burger','b5.jpg',280),(3,'Beef Burger with Cheese','b7.jpg',280),(4,'Double Decker Cheese Delight','b10.jpg',220);
/*!40000 ALTER TABLE `burger_king` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `burgers`
--

DROP TABLE IF EXISTS `burgers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `burgers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `burgers`
--

LOCK TABLES `burgers` WRITE;
/*!40000 ALTER TABLE `burgers` DISABLE KEYS */;
INSERT INTO `burgers` VALUES (1,'Black Charcoal Burger','b1.jpg',350),(2,'Chicken Supreme Burger','b2.jpg',340),(3,'Chicken Cheese Delight','b3.jpg',320),(4,'Cheezuzi','b4.jpg',300),(5,'Smokin Chic','b5.jpg',280),(6,'Mushroom Delight','b6.jpg',270),(7,'BBQ Beef and Beef Bacon','b7.jpg',250),(8,'Garlic Mayo Burger','b8.jpg',230),(9,'Mr. Whooper','b9.jpg',210),(10,'Grill Chicken Burger','b10.jpg',200);
/*!40000 ALTER TABLE `burgers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chef`
--

DROP TABLE IF EXISTS `chef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chef` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef`
--

LOCK TABLES `chef` WRITE;
/*!40000 ALTER TABLE `chef` DISABLE KEYS */;
INSERT INTO `chef` VALUES (1,'Chicken Supreme Burger','b1.jpg',300),(2,'Mushroom Delight','b3.jpg',270),(3,'Double Cheese Burger','b5.jpg',260),(4,'Chicken Sizzling Trio Burger','b7.jpg',240),(5,'Beef Burger with Cheese','b9.jpg',220);
/*!40000 ALTER TABLE `chef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `express`
--

DROP TABLE IF EXISTS `express`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `express` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `express`
--

LOCK TABLES `express` WRITE;
/*!40000 ALTER TABLE `express` DISABLE KEYS */;
INSERT INTO `express` VALUES (1,'Double Cheese Pizza','p4.jpg',300),(2,'Mexican Green Wave','p1.jpg',280),(3,'Margherita Pizza','p8.jpg',260),(4,'Deep Dish Pizza','p10.jpg',220);
/*!40000 ALTER TABLE `express` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fresco`
--

DROP TABLE IF EXISTS `fresco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fresco` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fresco`
--

LOCK TABLES `fresco` WRITE;
/*!40000 ALTER TABLE `fresco` DISABLE KEYS */;
INSERT INTO `fresco` VALUES (1,'Cheese Delight Pasta','z3.jpg',300),(2,'Cream Pasta','z6.jpg',280),(3,'Pasta State','z9.jpg',260),(4,'Chicken Cheese Pasta','z1.jpg',250),(5,'Regular Cheese Pasta','z4.jpg',220);
/*!40000 ALTER TABLE `fresco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hut`
--

DROP TABLE IF EXISTS `hut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hut` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hut`
--

LOCK TABLES `hut` WRITE;
/*!40000 ALTER TABLE `hut` DISABLE KEYS */;
INSERT INTO `hut` VALUES (1,'Crown Crust Pizza','p1.jpg',300),(2,'Bolognese Pizza','p2.jpg',280),(3,'Chicken Fajita Pizza','p3.jpg',262),(4,'Grilled Chicken Pizza','p4.jpg',220),(5,'Express Special Pizza','p5.jpg',220);
/*!40000 ALTER TABLE `hut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inn`
--

DROP TABLE IF EXISTS `inn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inn` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inn`
--

LOCK TABLES `inn` WRITE;
/*!40000 ALTER TABLE `inn` DISABLE KEYS */;
INSERT INTO `inn` VALUES (1,'Grilled Chicken Pizza','p6.jpg',300),(2,'Express Special Pizza','p7.jpg',270),(3,'Mexican Green Wave','p8.jpg',260),(4,'Margherita Pizza','p9.jpg',220),(5,'Deep Dish Pizza','p10.jpg',220);
/*!40000 ALTER TABLE `inn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `madchef`
--

DROP TABLE IF EXISTS `madchef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `madchef` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `madchef`
--

LOCK TABLES `madchef` WRITE;
/*!40000 ALTER TABLE `madchef` DISABLE KEYS */;
INSERT INTO `madchef` VALUES (1,'Black Charcoal Burger','b1.jpg',300),(2,'Chicken Supreme Burger','b2.jpg',280),(3,'Chicken Cheese Delight','b3.jpg',260),(4,'Cheezuzi','b4.jpg',250),(5,'Smokin Chic','b5.jpg',230);
/*!40000 ALTER TABLE `madchef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motorola`
--

DROP TABLE IF EXISTS `motorola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motorola` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motorola`
--

LOCK TABLES `motorola` WRITE;
/*!40000 ALTER TABLE `motorola` DISABLE KEYS */;
INSERT INTO `motorola` VALUES (1,'Motorola Moto Z2 Force','m1.jpeg',50000),(2,'Motorola Moto Z2 Play','m1.jpeg',47000),(3,'Motorola Moto E4 Plus','m1.jpeg',45000),(4,'Motorola Moto E4','m1.jpeg',42000),(5,'Motorola Moto C Plus','m1.jpeg',40000);
/*!40000 ALTER TABLE `motorola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pabulum`
--

DROP TABLE IF EXISTS `pabulum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pabulum` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pabulum`
--

LOCK TABLES `pabulum` WRITE;
/*!40000 ALTER TABLE `pabulum` DISABLE KEYS */;
INSERT INTO `pabulum` VALUES (2,'Mushroom Delight','b6.jpg',300),(3,'Garlic Mayo Burger','b8.jpg',280),(4,'Grill Chicken Burger','b1.jpg',260),(5,'Beef Burger with Cheese','b9.jpg',250),(1,'Cheezuzi','b4.jpg',300);
/*!40000 ALTER TABLE `pabulum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pasta`
--

DROP TABLE IF EXISTS `pasta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pasta` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasta`
--

LOCK TABLES `pasta` WRITE;
/*!40000 ALTER TABLE `pasta` DISABLE KEYS */;
INSERT INTO `pasta` VALUES (1,'Cheese Delight Pasta','z1.jpg',300),(2,'Cream Pasta','z2.jpg',280),(3,'Pasta State','z3.jpg',260),(4,'Chicken Cheese Pasta','z4.jpg',220),(5,'Regular Cheese Pasta','z5.jpg',220),(6,'BBQ Pasta','z6.jpg',270),(7,'Special Oven Baked Pasta','z7.jpg',250),(8,'Chicken Cheese Delight','z11.jpg',230),(9,'Cheese Pasta','z9.jpg',210),(10,'Pasta Americana','z10.jpg',200);
/*!40000 ALTER TABLE `pasta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizza`
--

DROP TABLE IF EXISTS `pizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pizza` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizza`
--

LOCK TABLES `pizza` WRITE;
/*!40000 ALTER TABLE `pizza` DISABLE KEYS */;
INSERT INTO `pizza` VALUES (1,'Crown Crust Pizza','p1.jpg',300),(2,'Bolognese Pizza','p2.jpg',280),(3,'Chicken Fajita Pizza','p3.jpg',260),(4,'Grilled Chicken Pizza','p4.jpg',250),(5,'Express Special Pizza','p5.jpg',230),(6,'BBQ Chicken Pizza','p6.jpg',270),(7,'Beef Crust Pizza','p7.jpg',250),(8,'Chicken Cheese Delight','p8.jpg',230),(9,'Double Cheese Pizza','p9.jpg',210),(10,'Mexican Green Wave','p10.jpg',200);
/*!40000 ALTER TABLE `pizza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sabroso`
--

DROP TABLE IF EXISTS `sabroso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sabroso` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sabroso`
--

LOCK TABLES `sabroso` WRITE;
/*!40000 ALTER TABLE `sabroso` DISABLE KEYS */;
INSERT INTO `sabroso` VALUES (1,'BBQ Chicken Pizza','p3.jpg',300),(2,'Beef Crust Pizza','p6.jpg',280),(3,'Chicken Cheese Delight','p9.jpg',260),(4,'Double Cheese Pizza','p9.jpg',200);
/*!40000 ALTER TABLE `sabroso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `samsung`
--

DROP TABLE IF EXISTS `samsung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `samsung` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `samsung`
--

LOCK TABLES `samsung` WRITE;
/*!40000 ALTER TABLE `samsung` DISABLE KEYS */;
INSERT INTO `samsung` VALUES (1,'Samsung Galaxy J7 Nxt','s1.jpeg',50000),(2,'Samsung Galaxy On Max','s1.jpeg',47000),(3,'Samsung Galaxy J5 Pro','s1.jpeg',45000),(4,'Samsung Galaxy J7 Max','s1.jpeg',42000),(5,'Samsung Galaxy J7 Pro','s1.jpeg',40000);
/*!40000 ALTER TABLE `samsung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smlxl`
--

DROP TABLE IF EXISTS `smlxl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smlxl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smlxl`
--

LOCK TABLES `smlxl` WRITE;
/*!40000 ALTER TABLE `smlxl` DISABLE KEYS */;
INSERT INTO `smlxl` VALUES (1,'Cheezuzi','b2.jpg',280),(2,'Smokin Chic','b4.jpg',270),(3,'Beef Burger with Cheese','b6.jpg',260),(4,'Double Decker Cheese Delight','b2.jpg',210);
/*!40000 ALTER TABLE `smlxl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `square`
--

DROP TABLE IF EXISTS `square`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `square` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `square`
--

LOCK TABLES `square` WRITE;
/*!40000 ALTER TABLE `square` DISABLE KEYS */;
INSERT INTO `square` VALUES (1,'Cheese Pasta','z2.jpg',300),(2,'Pasta Americana','z4.jpg',280),(3,'Cave Special Pasta','z6.jpg',260),(4,'Double Cheese Pasta','z11.jpg',250);
/*!40000 ALTER TABLE `square` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Regular Cheese Pasta','z1.jpg',300),(2,'BBQ Pasta','z2.jpg',280),(3,'Pasta Americana','z3.jpg',260),(4,'Cave Special Pasta','z4.jpg',250),(5,'Double Cheese Pasta','z4.jpg',220);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `takeout`
--

DROP TABLE IF EXISTS `takeout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `takeout` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `takeout`
--

LOCK TABLES `takeout` WRITE;
/*!40000 ALTER TABLE `takeout` DISABLE KEYS */;
INSERT INTO `takeout` VALUES (1,'Mushroom Delight','b6.jpg',300),(2,'BBQ Beef and Beef Bacon','b7.jpg',280),(3,'Garlic Mayo Burger','b8.jpg',270),(4,'Mr. Whooper','b9.jpg',250),(5,'Grill Chicken Burger','b10.jpg',230);
/*!40000 ALTER TABLE `takeout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('salmancfc','01196089492'),('Hazard','123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `westeros`
--

DROP TABLE IF EXISTS `westeros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `westeros` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `westeros`
--

LOCK TABLES `westeros` WRITE;
/*!40000 ALTER TABLE `westeros` DISABLE KEYS */;
INSERT INTO `westeros` VALUES (1,'Express Special Pizza','p2.jpg',300),(2,'BBQ Chicken Pizza','p4.jpg',280),(3,'Chicken Cheese Delight','p6.jpg',262),(4,'Double Cheese Pizza','p8.jpg',220),(5,'Margherita Pizza','p10.jpg',220);
/*!40000 ALTER TABLE `westeros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaomi`
--

DROP TABLE IF EXISTS `xiaomi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaomi` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaomi`
--

LOCK TABLES `xiaomi` WRITE;
/*!40000 ALTER TABLE `xiaomi` DISABLE KEYS */;
INSERT INTO `xiaomi` VALUES (1,'Xiaomi Mi 5X','x1.jpeg',50000),(2,'Xiaomi Mi Max 2','x2.jpeg',47000),(3,'Xiaomi Mi 6','x3.jpeg',45000),(4,'Xiaomi Redmi 4X','x4.jpeg',42000),(5,'Xiaomi Mi 5c','x5.jpeg',40000);
/*!40000 ALTER TABLE `xiaomi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-05 23:59:50
