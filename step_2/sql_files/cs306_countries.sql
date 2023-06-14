-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: cs306
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `name` varchar(50) NOT NULL,
  `area_ha` int unsigned DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('Afghanistan',543000),('Albania',161516),('Algeria',6290),('Angola',2664361),('Antigua and Barbuda',50),('Argentina',7232761),('Armenia',3963),('Australia',102872),('Austria',220690),('Azerbaijan',38621),('Bahamas',635),('Bangladesh',445099),('Barbados',880),('Belarus',201199),('Belgium',74169),('Belize',22566),('Benin',1470250),('Bermuda',0),('Bhutan',59300),('Bolivia',468080),('Bosnia and Herzegovina',219104),('Botswana',104197),('Brazil',17515920),('Brunei',0),('Bulgaria',731156),('Burkina Faso',1019181),('Burundi',270755),('Cambodia',238557),('Cameroon',1207013),('Canada',1486700),('Cape Verde',45000),('Central African Republic',177845),('Chad',348716),('Chile',142826),('China',44968000),('Colombia',868867),('Comoros',5300),('Congo',28300),('Costa Rica',75535),('Cote d\'Ivoire',675000),('Croatia',384184),('Cuba',225608),('Cyprus',0),('Czechia',121006),('Czechoslovakia',210362),('Democratic Republic of Congo',2828820),('Denmark',12900),('Djibouti',9),('Dominica',180),('Dominican Republic',52868),('Ecuador',577784),('Egypt',1533571),('El Salvador',320880),('Eritrea',38486),('Eritrea and Ethiopia',1277790),('Estonia',0),('Eswatini',105296),('Ethiopia',3166792),('Fiji',1520),('Finland',0),('France',2020100),('French Guiana',600),('French Polynesia',0),('Gabon',28327),('Gambia',52800),('Georgia',220400),('Germany',526200),('Ghana',1494979),('Greece',269079),('Grenada',730),('Guadeloupe',720),('Guatemala',918000),('Guinea',611474),('Guinea-Bissau',39813),('Guyana',4600),('Haiti',444809),('Honduras',474031),('Hong Kong',0),('Hungary',1473900),('Iceland',0),('India',9900000),('Indonesia',5680360),('Iran',307015),('Iraq',196938),('Ireland',0),('Israel',7600),('Italy',1197001),('Jamaica',6475),('Japan',43100),('Jordan',1496),('Kazakhstan',156280),('Kenya',2337586),('Kiribati',0),('Kuwait',1597),('Kyrgyzstan',106243),('Laos',258910),('Latvia',0),('Lebanon',7000),('Lesotho',177485),('Liberia',0),('Libya',2100),('Lithuania',19000),('Luxembourg',476),('Macao',0),('Madagascar',277182),('Malawi',1762839),('Malaysia',27000),('Maldives',40),('Mali',1432151),('Malta',0),('Mauritania',34745),('Mauritius',1816),('Melanesia',5303),('Mexico',8286935),('Micronesia (country)',66),('Moldova',584311),('Mongolia',0),('Montenegro',2782),('Morocco',532000),('Mozambique',1964522),('Myanmar',519227),('Namibia',46471),('Nauru',0),('Nepal',954158),('Netherlands',27200),('Netherlands Antilles',0),('New Caledonia',1600),('New Zealand',28566),('Nicaragua',417868),('Niger',32154),('Nigeria',7822149),('North Korea',700000),('North Macedonia',44693),('Norway',0),('Oman',3855),('Pakistan',1404158),('Panama',112800),('Papua New Guinea',2326),('Paraguay',1085005),('Peru',514945),('Philippines',3819560),('Poland',678250),('Polynesia',0),('Portugal',502880),('Puerto Rico',15422),('Qatar',149),('Reunion',4300),('Romania',3428400),('Russia',2777019),('Rwanda',297447),('Saint Kitts and Nevis',0),('Saint Lucia',50),('Saint Vincent and the Grenadines',700),('Samoa',0),('Sao Tome and Principe',2000),('Saudi Arabia',29498),('Senegal',258391),('Serbia',1273910),('Serbia and Montenegro',1516000),('Seychelles',0),('Sierra Leone',60000),('Slovakia',221543),('Slovenia',61220),('Solomon Islands',0),('Somalia',362400),('South Africa',5063000),('South Korea',49986),('South Sudan',322000),('Spain',556100),('Sri Lanka',70895),('Sudan',45200),('Sudan (former)',125000),('Suriname',711),('Sweden',1620),('Switzerland',28510),('Syria',70900),('Taiwan',82083),('Tajikistan',38500),('Tanzania',4146000),('Thailand',1918449),('Timor',79433),('Togo',749288),('Trinidad and Tobago',3000),('Tunisia',0),('Turkey',705000),('Turkmenistan',50000),('Uganda',1317321),('Ukraine',4986900),('United Arab Emirates',1094),('United Kingdom',1500),('United States',35390552),('Uruguay',284480),('USSR',7145000),('Uzbekistan',105000),('Vanuatu',1500),('Venezuela',791545),('Vietnam',1440200),('Yemen',53202),('Yugoslavia',2553000),('Zambia',1433944),('Zimbabwe',2043941);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-26 15:25:41
