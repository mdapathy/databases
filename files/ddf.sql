-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: ddf
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `argument`
--

DROP TABLE IF EXISTS `argument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `argument` (
  `func` int(11) NOT NULL,
  `argument` int(11) DEFAULT NULL,
  KEY `func` (`func`),
  KEY `argument` (`argument`),
  CONSTRAINT `argument_ibfk_1` FOREIGN KEY (`func`) REFERENCES `concept` (`id`),
  CONSTRAINT `argument_ibfk_2` FOREIGN KEY (`argument`) REFERENCES `concept` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `argument`
--

LOCK TABLES `argument` WRITE;
/*!40000 ALTER TABLE `argument` DISABLE KEYS */;
INSERT INTO `argument` VALUES (6,20),(6,22),(6,21),(8,25),(8,27),(8,85),(10,9),(10,11),(10,2),(10,3),(10,7),(1,6),(1,8),(5,17),(5,18),(5,19),(9,30),(9,28),(9,29),(11,31),(11,32),(2,12),(2,14),(2,13),(3,15),(3,16),(7,23),(7,24),(4,10),(4,1),(4,5),(54,77),(54,78),(54,79),(54,80),(54,81),(54,82),(54,83),(54,84),(52,75),(52,26),(50,64),(50,65),(50,66),(50,67),(50,68),(50,69),(50,70),(50,71),(50,72),(51,59),(51,60),(51,61),(51,62),(51,63),(33,50),(33,51),(33,52),(33,53),(33,54),(33,46),(35,4),(35,49),(34,48),(58,36),(58,37),(58,38),(58,39),(58,40),(58,41),(58,42),(58,43),(58,44),(58,45),(58,46),(58,47),(56,33),(56,34),(56,35),(86,58),(87,56),(87,36),(87,58),(88,33),(88,34),(88,35);
/*!40000 ALTER TABLE `argument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Sustainable Development Indicators',NULL),(2,'Global Context',1),(3,'Economic',2),(4,'Quality and Security of life',2),(5,'Social',2),(6,'Source Data',2),(7,'Threats',2);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concept`
--

DROP TABLE IF EXISTS `concept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `type` enum('calculable','measure') DEFAULT NULL,
  `definition` varchar(150) DEFAULT NULL,
  `src` varchar(150) NOT NULL,
  `href` varchar(100) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `from` double(30,2) DEFAULT NULL,
  `to` double(30,2) DEFAULT NULL,
  `units` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `concept_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concept`
--

LOCK TABLES `concept` WRITE;
/*!40000 ALTER TABLE `concept` DISABLE KEYS */;
INSERT INTO `concept` VALUES (1,'Basic requirements ','calculable',' ','World Data Center','http://wdc.org.ua',3,0.43,0.90,'n/a'),(2,'Effectiveness of goods and services','calculable',' ','World Data Center','http://wdc.org.ua',3,0.40,1.00,'n/a'),(3,'The level of financial market development','calculable',' ','World Data Center','http://wdc.org.ua',3,0.07,0.68,'n/a'),(4,'Global competitiveness','calculable',' ','World Data Center','http://wdc.org.ua',3,0.40,0.79,'n/a'),(5,'Innovations','calculable',' ','World Data Center','http://wdc.org.ua',3,0.38,0.79,'n/a'),(6,'Infrastructure','calculable',' ','World Data Center','http://wdc.org.ua',3,0.38,0.94,'n/a'),(7,'Labor market efficiency','calculable',' ','World Data Center','http://wdc.org.ua',3,0.20,0.83,'n/a'),(8,'Macroeconomic Environment','calculable',' ','World Data Center','http://wdc.org.ua',3,0.18,0.99,'n/a'),(9,'Market size','calculable',' ','World Data Center','http://wdc.org.ua',3,0.32,0.94,'n/a'),(10,'Stimulants efficiency','calculable',' ','World Data Center','http://wdc.org.ua',3,0.36,0.77,'n/a'),(11,'Technological readiness','calculable',' ','World Data Center','http://wdc.org.ua',3,0.35,1.00,'n/a'),(12,'Exports of goods and services','measure',' ','','http://data.worldbank.org/indicator/NE.EXP.GNFS.CD',6,177784785.78,2462839435101.08,'current US$'),(13,'Imports of goods and services','measure',' ','','http://data.worldbank.org/indicator/NE.IMP.GNFS.CD',6,244440120.18,2883157000000.00,'current US$'),(14,'Market capitalization of listed companies','measure','','','http://data.worldbank.org/indicator/CM.MKT.LCAP.CD',6,1152430.00,32120702650000.00,'current US$'),(15,'External debt stocks, total','measure',' ',' ','http://data.worldbank.org/indicator/DT.DOD.DECT.CD',6,0.00,1770542954000.00,'DOD, current US$'),(16,'Deposit interest rate','measure',' ',' ','http://data.worldbank.org/indicator/FR.INR.DPST',6,-0.21,26.58,'%'),(17,'Charges for the use of intell. property, payments','measure',' ','World Bank ','http://data.worldbank.org/indicator/BM.GSR.ROYL.CD',6,-13920000.00,80324778584.42,'BoP, current US$'),(18,'Technicians in R&D','measure',' ','  ','http://data.worldbank.org/indicator/SP.POP.TECH.RD.P6',6,0.12,3766.87,'per million people'),(19,'Patent applications','measure',' ','  ','http://data.worldbank.org/indicator/IP.PAT.RESD',6,1.00,1204981.00,' residents'),(20,'Agriculture, value added','measure',' ',' ','http://data.worldbank.org/indicator/NV.AGR.TOTL.CD',6,19125283.80,977311435092.73,'current US$'),(21,'Industry, value added','measure',' ',' ','http://data.worldbank.org/indicator/NV.IND.TOTL.CD',6,78486734.98,4950917322601.65,'current US$'),(22,'GDP per capita','measure',' ',' ','http://data.worldbank.org/indicator/NY.GDP.PCAP.CD',6,135.76,119225.38,'current US$'),(23,'GDP per person employed','measure',' ',' ','http://data.worldbank.org/indicator/SL.GDP.PCAP.EM.KD',6,1567.73,229424.41,'constant 1990 PPP $'),(24,'Employment to population ratio, 15+, total','measure',' ',' ','http://data.worldbank.org/indicator/SL.EMP.TOTL.SP.ZS',6,31.98,87.82,'%'),(25,'Foreign direct investment, net','measure',' ',' ','http://data.worldbank.org/indicator/BN.KLT.DINV.CD',6,-258376465330.37,211102109927.49,'BoP, current US$'),(26,'Private property rights','measure',' ',' ','http://www.heritage.org/index/explore',6,0.00,95.00,'coef'),(27,'Total reserves','measure',' ','World Bank','http://data.worldbank.org/indicator/FI.RES.TOTL.CD',6,34591085.99,3900039358441.22,'includes gold, current US$'),(28,'Import volume index','measure',' ',' ','http://data.worldbank.org/indicator/TM.QTY.MRCH.XD.WD',6,55.62,1332.75,'2000 = 100'),(29,'Domestic credit to private sector','measure',' ',' ','http://data.worldbank.org/indicator/FS.AST.PRVT.GD.ZS',6,0.19,312.03,'% of GDP'),(30,'Household final consumption expenditure','measure',' ','World Bank','http://data.worldbank.org/indicator/NE.CON.PRVT.CD',6,237348695.54,12820694000000.00,'current US$'),(31,'Technical cooperation grants','measure',' ',' ','http://data.worldbank.org/indicator/BX.GRT.TECH.CD.WD',6,20000.00,973500000.00,'BoP, current US$'),(32,'High-technology exports','measure',' ',' ','http://data.worldbank.org/indicator/TX.VAL.TECH.CD',6,62.00,560058333865.00,'current US$'),(33,'Index of social and institutional dimension','calculable',' ','World Data Center','http://wdc.org.ua',4,0.24,50.73,'n/a'),(34,'Index of environmental dimension','calculable',' ','World Data Center','http://wdc.org.ua',4,0.08,0.82,'n/a'),(35,'Index of economic dimension','calculable',' ','World Data Center','http://wdc.org.ua',4,0.23,0.83,'n/a'),(36,'Conflicts intencity','measure',' ',' ','http://www.hiik.de/en/konfliktbarometer/',6,0.00,5.00,'coef'),(37,'Natural disasters','calculable',' ','World Data Center','http://wdc.org.ua',7,0.00,0.57,'n/a'),(38,'Global diseases','calculable',' ','World Data Center','http://wdc.org.ua',7,0.17,0.69,'n/a'),(39,'Energy security','calculable',' ','World Data Center','http://wdc.org.ua',7,0.47,1.00,'n/a'),(40,'CO2 emissions','measure',' ',' ','http://data.worldbank.org/indicator/EN.ATM.CO2E.KT',6,234.69,10291926.88,'kt'),(41,'Information Challenge','calculable',' ','World Data Center','http://wdc.org.ua',7,0.16,0.87,'n/a'),(42,'Gini coefficient','measure',' ',' ','http://data.worldbank.org/indicator/SI.POV.GINI',6,16.20,64.80,'coef'),(43,'Access to potable water','measure',' ',' ','http://data.worldbank.org/indicator/SH.H2O.SAFE.ZS',6,36.40,100.00,'%'),(44,'State fragility','measure',' ',' ','http://ffp.statesindex.org/',6,16.80,112.60,'coef'),(45,'Biological balance','measure',' ',' ','http://www.footprintnetwork.org/en/index.php/GFN/page/publications/',6,0.01,31.37,'gha/person'),(46,'Corruption perception','measure','A higher score means less (perceived) corruption.',' ','http://www.transparency.org/policy_research/surveys_indices/cpi/2009',6,13.00,97.00,'n/a'),(47,'NI','calculable',' ','World Data Center','http://wdc.org.ua',7,0.07,0.26,'n/a'),(48,'Environmental Performance Index','measure','','','http://epi.yale.edu/downloads',6,34.36,91.05,'index'),(49,'Economic Freedom','measure','','','http://www.heritage.org/index/download',6,24.30,89.40,'index'),(50,'Health, wellness and basics needs','calculable','','World Data Center','http://wdc.org.ua',5,0.16,0.70,'n/a'),(51,'Education','calculable','','World Data Center','http://wdc.org.ua',5,0.10,0.73,'n / a'),(52,'Personal rights and freedom','calculable','','World Data Center','http://wdc.org.ua',5,0.09,0.86,'n/a'),(53,'Personal safety','calculable','','World Data Center','http://wdc.org.ua',5,0.10,0.72,'n/a'),(54,'Social Infrastructure','calculable','','World Data Center','http://wdc.org.ua',5,0.27,0.71,'n/a'),(56,'Quality of Life Component','calculable','','World Data Center','http://wdc.org.ua',4,0.26,1.47,'n/a'),(58,'Security of Life Component','calculable','','World Data Center','http://wdc.org.ua',4,0.87,1.74,'n/a'),(59,'Literacy rate, adult total','measure','','','http://data.worldbank.org/indicator/SE.ADT.LITR.ZS',6,14.38,99.97,'% of people ages 15 and above'),(60,'School enrollment, primary','measure','','','http://data.worldbank.org/indicator/SE.PRM.ENRR',6,46.63,149.31,'% gross'),(61,'School enrollment, secondary','measure','','','http://data.worldbank.org/indicator/SE.SEC.NENR',6,4.07,99.91,'% net'),(62,'School enrollment, tertiary','measure','','','http://data.worldbank.org/indicator/SE.TER.ENRR',6,0.47,121.86,'% gross'),(63,'Public spending on education, total','measure','','','http://data.worldbank.org/indicator/SE.XPD.TOTL.GD.ZS',6,1.03,12.08,'% of GDP'),(64,'The number of people per doctor','measure','','','http://data.worldbank.org/indicator/SH.MED.PHYS.ZS',6,0.01,6.26,'people'),(65,'Hospital beds','measure','','','http://data.worldbank.org/indicator/SH.MED.BEDS.ZS',6,0.10,14.10,'per 1000 people'),(66,'The infant mortality rate','measure','','','http://data.worldbank.org/indicator/SP.DYN.IMRT.IN',6,1.60,131.10,'%'),(67,'Life expectancy','measure','','','http://data.worldbank.org/indicator/SP.DYN.LE00.IN',6,42.66,83.98,'years'),(68,'Health expenditure, public','measure','','World Bank','http://data.worldbank.org/indicator/SH.XPD.TOTL.ZS',6,1.87,17.14,'% of GDP'),(69,'Prevalence of undernourishment','measure','','','http://data.worldbank.org/indicator/SN.ITK.DEFC.ZS',6,5.00,53.20,'% of population'),(70,'Depth of the food deficit','measure','','','http://data.worldbank.org/indicator/SN.ITK.DFCT',6,1.00,457.00,'kilocalories per person per day'),(71,'Maternal mortality ratio','measure','','','http://data.worldbank.org/indicator/SH.STA.MMRT/countries/1W?display=graph',6,3.00,2110.00,'per 100 000 live births'),(72,'Mortality rate, neonatal','measure','','','http://data.worldbank.org/indicator/SH.DYN.NMRT',6,0.90,55.00,'per 1000 live births'),(73,'Intentional homicides','measure','','','http://data.worldbank.org/indicator/VC.IHR.PSRC.P5',6,0.00,108.60,'per 100 000 people'),(74,'Political terror, average','measure','','','http://www.politicalterrorscale.org/download.php',6,1.00,5.00,'coef'),(75,'Freedom of speech','measure','','','http://en.rsf.org/spip.php?page=classement&id_rubrique=1054',6,-10.00,138.00,'coef'),(77,'Mobile cellular subscriptions','measure','','','http://data.worldbank.org/indicator/IT.CEL.SETS.P2',6,0.21,207.78,'per 100 people'),(78,'Internet users','measure','','','http://data.worldbank.org/indicator/IT.NET.USER.P2',6,0.08,98.20,'per 100 people'),(79,'Telephones','measure','','','http://data.worldbank.org/indicator/IT.MLT.MAIN.P2',6,0.00,71.50,'per 100 people'),(80,'Vehicles','measure','','','http://data.worldbank.org/indicator/IS.VEH.ROAD.K1',6,1.12,280.75,'per km of road'),(81,'Number of airports','measure','','','https://www.cia.gov/library/publications/the-world-factbook/rankorder/2053rank.html',6,1.00,992.00,'number'),(82,'Navigable waterways','measure','','','http://www.worldcountries.info/DataPagesAlpha/Waterways.php',6,1.00,990.00,'coef'),(83,'Paved highways','measure','','','http://data.worldbank.org/indicator/IS.ROD.PAVE.ZS',6,3.50,100.00,'coef'),(84,'Rail lines','measure','','','http://data.worldbank.org/indicator/IS.RRS.TOTL.KM',6,251.00,228513.00,'km'),(85,'Portfolio Investment, net','measure','','','http://data.worldbank.org/indicator/BN.KLT.PTXL.CD',6,-807954000000.00,282689352952.11,'BoP, current US$'),(86,'Vulnerability Index','calculable','','World Data Center','http://wdc.org.ua',4,0.55,2.29,'n/a'),(87,'Index of sustainable development','calculable','','World Data Center','http://wdc.org.ua',4,0.15,1.12,'n/a'),(88,'Harmonization degree','calculable','','World Data Center','http://wdc.org.ua',4,0.37,1.00,'n/a');
/*!40000 ALTER TABLE `concept` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-22 21:08:40
