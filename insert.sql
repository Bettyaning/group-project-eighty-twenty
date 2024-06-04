-- MariaDB dump 10.17  Distrib 10.4.15-MariaDB, for Linux (x86_64)
--
-- Host: mysql    Database: 
-- ------------------------------------------------------
-- Server version	10.9.3-MariaDB-1:10.9.3+maria~ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `as1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `as1` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `as1`;

--
-- Table structure for table `auction`
--

DROP TABLE IF EXISTS `auction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction` (
  `auctionID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `categoryID` int(11) DEFAULT NULL,
  `endDate` date NOT NULL,
  `currentBid` double DEFAULT NULL,
  `bid_user` int(11) DEFAULT NULL,
  `bid_placed` datetime DEFAULT NULL,
  `user` int(11) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`auctionID`),
  KEY `categoryID_idx` (`categoryID`),
  CONSTRAINT `categoryID` FOREIGN KEY (`categoryID`) REFERENCES `category` (`categoryID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auction`
--

LOCK TABLES `auction` WRITE;
/*!40000 ALTER TABLE `auction` DISABLE KEYS */;
INSERT INTO `auction` VALUES (1,'Vintage dress Chanel','Vintage designer dress from 1977, good condition!!!',3,'2022-12-03',361,12,'2022-11-18 10:48:37',1,'dress.jpeg'),(2,'Ford Truck wheels','Good condition original Ford wheels',7,'2022-12-03',270,7,'2022-11-11 00:00:00',1,'wheels.jpeg'),(3,'Sofa IKEA','Barely used white IKEA sofa! Bargain!',1,'2022-12-04',800,8,'2022-11-12 00:00:00',1,'sofa.jpeg'),(5,'Mercedes Benz A class engine','1.6L engine, amazing condition, free delivery ',7,'2022-12-04',500,9,'2022-11-13 00:00:00',2,'engine.jpeg'),(6,'Barbie doll Limited Edition','Super limited edition Barbie. New in box. Includes all accessories',6,'2023-01-20',68.99,4,'2022-11-11 00:00:00',1,'barbie.jpeg'),(7,'Apple AirTags 4 Pack','four Airtags by Apple\r\nBluetooth - Rating IP67\r\nApple U1 chip for Ultra Wideband and Accurate Positioning\r\nNFC technology for Lost Mode\r\nIntegrated Speaker - Accelerometer',2,'2023-01-05',70,5,'2022-11-16 00:00:00',8,'airtag.jpeg'),(8,'Gucci Bree Bag','Cute, compact and unexpectedly versatile. This Bree messenger bag easily extends from a shoulder bag to a messenger bag with a built in wallet functionality. Crafted in our iconic GG canvas and textured leather. USED BUT IN GREAT CONDTION',3,'2023-02-03',100,4,'2022-11-11 00:00:00',5,'bag.jpeg'),(9,'2018 AUDI A1 SPORTBACK front bumper','Blue colour. No scratches but minor dent on the left.',7,'2022-12-31',238,12,'2022-11-11 00:00:00',2,'audi.jpeg'),(10,'New Genuine Heavy Duty Car Battery','100 TYPE SUPERCEDES 096 VERSION SAME SIZE MORE POWER. ',7,'2022-12-20',95,12,'2022-11-13 00:00:00',2,'battery.jpeg'),(11,'POKEMON collection cards','Pack of 20 platinum edition Pokemon cards. Mint condition. Estimated value is over 100 pounds',8,'2022-12-25',999.99,12,'2022-11-13 00:00:00',9,'pokemon.jpeg'),(12,'4 Piece Rattan Garden Furniture Set Outdoor Patio Sofa Wicker','The Set Includes:\r\nOne Sofa\r\nTwo Single Armchairs\r\nOne Coffee Table\r\nVery good condition, barely used',1,'2022-12-29',120,9,'2022-11-17 19:36:03',2,'rattan.jpeg'),(13,'Oral-B Smart Series 4000 or 4500 Rechargeable Electric Toothbrush + Travel Case','It\'s brand new. Got it as a gift but not needed. Box Contains: Oral-B Smart Series Electric Toothbrush with Charger, Travel case and 2 Refill Heads',5,'2022-12-15',16,12,'2022-11-18 10:51:46',1,'ORALB.png'),(17,'Basis 2 Full Suspension Mountain Bike 26\" Wheel 18 Spd Black Green','The all-new Basis 2 Full Suspension Mountain Bike\'s spec speaks for itself - 18 speed Shimano gearing, 26\" alloy wheels and alloy V brakes give you all the kit needed to tackle any terrain, whilst front and rear suspension make for a comfortable ride and soak up the bumps.',4,'2023-02-10',225,1,'2022-11-14 00:00:00',7,'bike.jpeg'),(19,'Rare One Australian dollar coin','Very rare 1 Australian dollar coin from 1976.',9,'2023-01-27',700,7,'2022-11-13 00:00:00',2,'coin.jpeg'),(21,'HAIR DRYER','GOOD CONDITION HAIR DRYER FROM DYSON. AROUND 1 YEAR OLD, GREY COLOR. NO DAMAGE',5,'2023-03-11',56,9,'2022-11-14 00:00:00',1,'dyson.jpeg'),(22,'Hotpoint Aquarius Tcfs 93b Condenser Tumble Dryer 9 Kg Working Spares Or Repair','For parts or not working',2,'2023-01-25',5,8,'2022-11-15 00:00:00',7,'product.png'),(24,'Dormeo mattress','Firm Dormeo mattress, new unused, Double size',1,'2023-03-17',95,8,'2022-11-11 00:00:00',7,'product.png'),(25,'SPECTACULAR SPIDER-MAN 1 MARVEL COMICS','Condition fine could be pressed to a much better grade',8,'2023-02-01',0.78,1,'2022-11-11 00:00:00',7,'product.png'),(26,'Funko Pop! #822 Hulk (Blacklight) - Marvel - Funko Exclusive','New in a box, rare collectable item',9,'2023-01-13',23,2,'2022-11-16 00:00:00',7,'product.png'),(27,'NIKE COURT VINTAGE PREMIER WOMENS TRAINERS WHITE','SIZE UK 3.5 EUR 36.5 IN STUNNING WHITE/BLACK-TOTAL ORANGE COLOUR BRAND NEW IN THE BOX GENUINE AND AUTHENTIC DIRECT FROM NIKE',3,'2023-02-02',2001,9,'2022-11-17 17:00:21',7,'nike.jpeg'),(29,'Mop','Refurbished 10 in 1 1500W Neo® Hot Steam Mop Cleaner Floor Carpet Window Washer Hand Steamer ',2,'2023-04-08',13,4,'2022-11-17 00:00:00',12,'s-l1600.jpeg'),(30,'HTC HD HD2 Phone T8585 Microsoft Windows Mobile - Black (Unlocked)','Windows Phone - Comes with USB Cable only (no plug) - Please expect some minor cosmetic marks but this will not affect use.Due to old model and Windows update, this device will be Compatible for Calls & Texts only.',2,'2023-02-03',12.12,5,'2022-11-17 00:00:00',12,'s-l1600.png'),(31,'Philips PUS7906 43 Inch 4K ','Key Product Info\r\n\r\nVibrant HDR picture. Philips 4K UHD TV\r\nMagical ambilight - Intelligent LEDs\r\nDolby Vision + Dolby Atmos - Premium Sound',2,'2023-03-17',167,5,'2022-11-16 00:00:00',12,'Screenshot 2022-11-10 at 21.36.15.png'),(32,'Chanel Espadrilles Size 5','chanel espadrilles 38.\r\n\r\nUsed comes with box and dust bag.',3,'2023-02-26',265.67,5,'2022-11-15 00:00:00',12,'123efvfvgtg.jpeg'),(33,'Monsters Inc. Sully','Monsters Inc. Sully Plush Toy - Disney Pixar - 2000 Hasbro. Condition is \"Used\". Dispatched with Royal Mail 2nd Class.\r\n\r\n',6,'2023-02-24',10,4,'2022-11-13 00:00:00',12,'jfgikrf.jpeg'),(34,'4 wheel folding mobility scooter','Drive DeVilbiss 4-wheel folding scooter. For spares or repair. \r\n\r\nDisplay shows battery fully charged when \"on charge\" and ignition switched on, but when charger disconnected, and scooter switched on there is no power. Suspect battery faulty.\r\n\r\nSupplied with 2 keys and fob for electric folding feature and Manual and quick start guide.\r\n\r\n2 front mud guards removed as one is broken. Supplied in box with scooter.',5,'2023-03-09',50,1,'2022-11-15 00:00:00',12,'uhhkih.jpeg'),(35,'APPLE AIRPODS PRO TRUE WIRELESS BLUETOOTH IN EAR HEADPHONES GENUINE MWP22ZM/A','Ex-Display/Demo Item In Good Condition - Supplied Complete In Original Retail Box - The Item Will Have Cosmetic Blemishes Such As Marks And Scratches',2,'2023-01-11',100,9,'2022-11-17 19:35:32',12,'ccxsx.jpeg'),(40,'rgrgr','rrg',4,'2022-12-04',7,9,'2022-11-17 17:11:17',9,'jfgikrf.jpeg');
