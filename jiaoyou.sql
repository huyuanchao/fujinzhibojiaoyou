-- MySQL dump 10.13  Distrib 5.5.62, for Linux (x86_64)
--
-- Host: localhost    Database: tp
-- ------------------------------------------------------
-- Server version	5.5.62-log

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
-- Table structure for table `ims_account`
--

DROP TABLE IF EXISTS `ims_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_account` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `hash` varchar(8) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `isconnect` tinyint(4) NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_account`
--

LOCK TABLES `ims_account` WRITE;
/*!40000 ALTER TABLE `ims_account` DISABLE KEYS */;
INSERT INTO `ims_account` VALUES (1,1,'uRr8qvQV',1,0,0,0);
/*!40000 ALTER TABLE `ims_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_account_wechats`
--

DROP TABLE IF EXISTS `ims_account_wechats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_account_wechats` (
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(255) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `country` varchar(10) NOT NULL,
  `province` varchar(3) NOT NULL,
  `city` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `subscribeurl` varchar(120) NOT NULL,
  `auth_refresh_token` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_account_wechats`
--

LOCK TABLES `ims_account_wechats` WRITE;
/*!40000 ALTER TABLE `ims_account_wechats` DISABLE KEYS */;
INSERT INTO `ims_account_wechats` VALUES (1,1,'omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP','',1,'we7team','','','','','','','','',0,'','',1,'','');
/*!40000 ALTER TABLE `ims_account_wechats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_account_wxapp`
--

DROP TABLE IF EXISTS `ims_account_wxapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_account_wxapp` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(43) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `appdomain` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_account_wxapp`
--

LOCK TABLES `ims_account_wxapp` WRITE;
/*!40000 ALTER TABLE `ims_account_wxapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_account_wxapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_article_category`
--

DROP TABLE IF EXISTS `ims_article_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_article_category`
--

LOCK TABLES `ims_article_category` WRITE;
/*!40000 ALTER TABLE `ims_article_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_article_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_article_news`
--

DROP TABLE IF EXISTS `ims_article_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_article_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_article_news`
--

LOCK TABLES `ims_article_news` WRITE;
/*!40000 ALTER TABLE `ims_article_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_article_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_article_notice`
--

DROP TABLE IF EXISTS `ims_article_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_article_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `style` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_article_notice`
--

LOCK TABLES `ims_article_notice` WRITE;
/*!40000 ALTER TABLE `ims_article_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_article_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_article_unread_notice`
--

DROP TABLE IF EXISTS `ims_article_unread_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_article_unread_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `is_new` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `notice_id` (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_article_unread_notice`
--

LOCK TABLES `ims_article_unread_notice` WRITE;
/*!40000 ALTER TABLE `ims_article_unread_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_article_unread_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_basic_reply`
--

DROP TABLE IF EXISTS `ims_basic_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_basic_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_basic_reply`
--

LOCK TABLES `ims_basic_reply` WRITE;
/*!40000 ALTER TABLE `ims_basic_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_basic_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_business`
--

DROP TABLE IF EXISTS `ims_business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_business` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `dist` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `lng` varchar(10) NOT NULL,
  `lat` varchar(10) NOT NULL,
  `industry1` varchar(10) NOT NULL,
  `industry2` varchar(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lat_lng` (`lng`,`lat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_business`
--

LOCK TABLES `ims_business` WRITE;
/*!40000 ALTER TABLE `ims_business` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_attachment`
--

DROP TABLE IF EXISTS `ims_core_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `module_upload_dir` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=202 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_attachment`
--

LOCK TABLES `ims_core_attachment` WRITE;
/*!40000 ALTER TABLE `ims_core_attachment` DISABLE KEYS */;
INSERT INTO `ims_core_attachment` VALUES (91,1,1,'bi6SVLTb9BBujl0an6ZVzJl0NbENJD.mp3','audios/1/2018/06/W1s1s1zeSmsF1laC9eecsZ41f9C09f.mp3',2,1529395029,''),(158,1,1,'4.png','images/1/2018/06/Sg1yQQLVgv1j2VO88LGL8VLfGOLYgG.png',1,1529405242,''),(92,1,1,'3.png','images/1/2018/06/HjLjIHtJmQ4QjtUfUwNGdGfa4LGZnP.png',1,1529395231,''),(93,1,1,'1.png','images/1/2018/06/Dt48eI5I45hUEcI6E8tUScTG404uU9.png',1,1529395231,''),(94,1,1,'2.png','images/1/2018/06/GCD02ZpkOOHW7cPWD656CZo2olCc7l.png',1,1529395231,''),(95,1,1,'c6amC7ySAoCuLpsO7ck77zAAQpY7cl.wav','audios/1/2018/06/BrT6FSNfNdsN8f81c11s9egtLN9Zfr.wav',2,1529395833,''),(96,1,1,'1.png','images/1/2018/06/sjX598hJ9NnHzSqgZgrQGEg9S9xQnZ.png',1,1529395962,''),(97,1,1,'2.png','images/1/2018/06/uOQRMOOyoeltT399K36roT7O9od919.png',1,1529395984,''),(98,1,1,'3.png','images/1/2018/06/T2fcqz6aIvaMQ26Cd2EcrCno2cvncn.png',1,1529396017,''),(99,1,1,'ctPdJeA4XXLPL4dxplEZ1pfmMX1448.mp3','audios/1/2018/06/z51195hil57Fc5c5cfGCJKv7C6UMIj.mp3',2,1529397085,''),(100,1,1,'1.png','images/1/2018/06/rvB1ofTf7H00RFBrO1U4ohrT4a0tNu.png',1,1529397139,''),(101,1,1,'2.png','images/1/2018/06/CGf77qIu7JTfNU0IGB3T3ij5J8tofj.png',1,1529397168,''),(102,1,1,'3.png','images/1/2018/06/yRRWtr6WdFglwNtgk456rz14Ti66k6.png',1,1529397206,''),(103,1,1,'1.png','images/1/2018/06/GW830ezTZRGOP8GcmJR3rm0Rzmtz8U.png',1,1529397375,''),(104,1,1,'2.png','images/1/2018/06/pIdjdyD66UYmJXzXI4Uk4V7dwjd643.png',1,1529397394,''),(105,1,1,'acZp4LuLu5258nl5q49nLLZPng5lYi.wav','audios/1/2018/06/CE800EfHZZRLeffRH8N5H1QfE13hFR.wav',2,1529397784,''),(106,1,1,'aNxjAy9zXfpAxJa3xJAgyPaey77g90.wav','audios/1/2018/06/JFC00bMCcCAoC5znAFG8NNNggwc5wA.wav',2,1529397984,''),(107,1,1,'1.png','images/1/2018/06/r9qW9K2kNfF08QkQn8M2793w8k7f92.png',1,1529398047,''),(108,1,1,'be8BayfeJ3j73oMF77ZjVt3v9e3Yge.mp3','audios/1/2018/06/tmMw6p6UWWWW6sHjw6Ww0szt08p6m3.mp3',2,1529398191,''),(109,1,1,'1.png','images/1/2018/06/OP3pgcF3c639wwP6p6b9JFPpp9jww9.png',1,1529398369,''),(110,1,1,'2.png','images/1/2018/06/LHjIh19867h1ouhlOUqqg2hUGznZte.png',1,1529398427,''),(111,1,1,'3.png','images/1/2018/06/GTT2Rg22IUWx47dawal2dLZN7trdDU.png',1,1529398447,''),(112,1,1,'eO5wNX3TC3wV5fwUz3F3x0wtt997zZ.wav','audios/1/2018/06/b9KOC9ni57a91O0o0W54WWAoO7oKCi.wav',2,1529398601,''),(113,1,1,'1.png','images/1/2018/06/L6rNkYD61FdNIV66fRYIfdKJNnI6kB.png',1,1529398617,''),(114,1,1,'2.png','images/1/2018/06/BtBg4B95I42zZ44w953I16YDgtzxRI.png',1,1529398632,''),(115,1,1,'F9nnDJolW09lDL0MOgnDDDLGanZDjj.mp3','audios/1/2018/06/M2F83LwSXgWX4NfM7GwsFz7wg7fbKG.mp3',2,1529398755,''),(116,1,1,'1.png','images/1/2018/06/dxxHVHjFwxKFvZ28HJ8j2t98p9P25v.png',1,1529398808,''),(117,1,1,'2.png','images/1/2018/06/rF6xf00oOAFxxX46W6CFfW6cF60Wxh.png',1,1529398823,''),(118,1,1,'3.png','images/1/2018/06/aeWdce6sg8CGmYc6fqnZTCeDnCSsFe.png',1,1529398838,''),(119,1,1,'f236s3m2fAOUvsX60Fx6VuAx66v6f6.wav','audios/1/2018/06/VXc65c6NHoqnqJKRKCCCxc6CNEjXcH.wav',2,1529399062,''),(120,1,1,'1.png','images/1/2018/06/ecPpAXHXjpbHckjOm8obRiFcif8nvK.png',1,1529399922,''),(121,1,1,'2.png','images/1/2018/06/IroHDwedZVOgMdY9mYhddMHgZcOHMf.png',1,1529399940,''),(122,1,1,'1.png','images/1/2018/06/pZ9JmKphZ4V2Cd2CJy5ZyVZHjsjH2h.png',1,1529400550,''),(123,1,1,'2.png','images/1/2018/06/v0lAjc12718cxmm280M828CTVM1FbM.png',1,1529400565,''),(124,1,1,'3.png','images/1/2018/06/PlGS7XfHB2fulhLB9jY3Gf7J7Lg597.png',1,1529400594,''),(125,1,1,'fR906QRrXfOR4f24lR0o9MORV0j4cO.mp3','audios/1/2018/06/ukMQySggyhGSHgMJG4oGf5wlbvSG5G.mp3',2,1529400700,''),(126,1,1,'G5N882nj2ub28w2NjLeZvDe2828Bas.mp3','audios/1/2018/06/KB2eDHvheVZKpnI5QsQqzhQv5d53kH.mp3',2,1529400754,''),(127,1,1,'1.png','images/1/2018/06/wNhEfOE434HMOIm4wz3433Hwb544qn.png',1,1529400769,''),(128,1,1,'2.png','images/1/2018/06/ZRCupR7CL8FUlkrk8R5uLcCFLVUlp7.png',1,1529400787,''),(129,1,1,'3.png','images/1/2018/06/fv9dvhQPEC2XIExMz9eD2Ie8cb8zlP.png',1,1529400801,''),(130,1,1,'4.png','images/1/2018/06/s9r50F1C1v2cx57U2fsrA1GqD22QSx.png',1,1529400816,''),(131,1,1,'5.png','images/1/2018/06/LPTplD7Jl1SxqJRQ5XvzXjvRJTtMxE.png',1,1529400831,''),(132,1,1,'g7eh1Jj8An7i52SE80eX6eGK62n61K.mp3','audios/1/2018/06/FrURF2Bi319RR5FfraRRFcrC2Zm5z1.mp3',2,1529400975,''),(133,1,1,'1.png','images/1/2018/06/If7D90Xxu5d7R9xUP0zUpXuXGxHUT7.png',1,1529401017,''),(134,1,1,'GMhdM6dRpaZzUCjehcEYqYDwizpiAA.mp3','audios/1/2018/06/euyuPv7jCxJ7fwKQfm5jfxPllFy5HC.mp3',2,1529401036,''),(135,1,1,'2.png','images/1/2018/06/nbs8IzIB5CIbgGSUYIy1UqGBsGb56I.png',1,1529401293,''),(136,1,1,'3.png','images/1/2018/06/CgN0o0404H7C7D4p8gnG3DOdp7dG47.png',1,1529401313,''),(138,1,1,'Ir3Lm73l1KRhh7bFRZr3RB7FkR7g1k.mp3','audios/1/2018/06/fBn4P4C44NHAWPPg4hLwHh5C55H7ln.mp3',2,1529401448,''),(139,1,1,'1.png','images/1/2018/06/g1RHE1W110iixoiwz2HAxWaqvY0HRS.png',1,1529401475,''),(140,1,1,'2.png','images/1/2018/06/t7NqnND4L7xyN4P3407PaB53D55ba5.png',1,1529401492,''),(141,1,1,'3.png','images/1/2018/06/BaUa23uGVkjU3vJm37k9Ggh3HEuu0Z.png',1,1529401507,''),(142,1,1,'k1OL7xCKCWOCHOs8oS2ZIwwsXhLHC2.mp3','audios/1/2018/06/GKthH1miZn0S00ISDiZ3iT5s5oDKI3.mp3',2,1529401739,''),(143,1,1,'KeDOLObBLZdljOcBH67Ho6wbjUTL6B.mp3','audios/1/2018/06/VSCJ6w8wlOacq6XH6hHPsy9Q6aoa6d.mp3',2,1529401748,''),(144,1,1,'1.png','images/1/2018/06/V255R5s6kg9pKkGr69kZ420t01Gpvg.png',1,1529401804,''),(145,1,1,'2.png','images/1/2018/06/qdUzziIex3ElGLUYGZuYawrEaa0LwP.png',1,1529401820,''),(146,1,1,'1.png','images/1/2018/06/G1A48hrZknDT2QXF181Fk8qIdR02zM.png',1,1529403410,''),(147,1,1,'LNF2NBiBUIIobA2AtO5UO2DZ52BASb.wav','audios/1/2018/06/n38f6dHjjjrbdjVj5BD2J1Hrjv5aFa.wav',2,1529403491,''),(148,1,1,'2.png','images/1/2018/06/p6dBNjJGvbzO31z9n5zn3JJ1Jbjzvv.png',1,1529403737,''),(149,1,1,'1.png','images/1/2018/06/ZsV9qLV2Aduaa2vofmMAqSuaP9Zlld.png',1,1529403788,''),(150,1,1,'3.png','images/1/2018/06/FW50iNq5riYVcTWv394v5nzVWaiXNy.png',1,1529403802,''),(151,1,1,'yXBJfXv09pj9zOj9T99S3JBBJ3MP1s.wav','audios/1/2018/06/hsQqc89j2h8RPRRKGbCKhc59E559cp.wav',2,1529403820,''),(152,1,1,'1.png','images/1/2018/06/oJ2aOtj2I628Jy2Y90jC6oX9y9iayj.png',1,1529405013,''),(153,1,1,'2.png','images/1/2018/06/RCpge3X4vidP3DzePD7tdc3IE4ltre.png',1,1529405027,''),(154,1,1,'3.png','images/1/2018/06/t91xlxn6pU5z1xVzNV6ep5UuV229V3.png',1,1529405044,''),(155,1,1,'1.png','images/1/2018/06/T8NKSAIejHRXJiWLzArIZfIlWrefD6.png',1,1529405194,''),(156,1,1,'2.png','images/1/2018/06/ayTyeX83y00TZSuA3PDztSS8x4S08i.png',1,1529405211,''),(157,1,1,'3.png','images/1/2018/06/qu595K94Z53lr4NA5fr5kRL9GUKq53.png',1,1529405227,''),(159,1,1,'1.png','images/1/2018/06/h2DXWpzg6iPa6PPwtWpwDxdIxnOG9K.png',1,1529405283,''),(160,1,1,'2.png','images/1/2018/06/J5UUN5xJnVJEI5Zxw5HhexUztEDuTh.png',1,1529405307,''),(161,1,1,'3.png','images/1/2018/06/nsh904KLffws01zsH91la44u4340V9.png',1,1529405322,''),(162,1,1,'1.png','images/1/2018/06/HY7LyYbN8K2ZnyKln22yD1P7mxb177.png',1,1529405455,''),(163,1,1,'2.png','images/1/2018/06/NgW9wywYwFWBE9W99yh9HG06WRb7Hv.png',1,1529405471,''),(164,1,1,'3.png','images/1/2018/06/a6gWmum6gsVwcYDuW4gfR1iCI5Z51I.png',1,1529405488,''),(165,1,1,'1.png','images/1/2018/06/s9sbsK49bPw5w8sR4N9rKOGd9BSS7z.png',1,1529405861,''),(166,1,1,'2.png','images/1/2018/06/mnG9aat9AxMb7nN9OzM3of3UqQz7Ga.png',1,1529405947,''),(167,1,1,'3.png','images/1/2018/06/htOQU1lNtNoaZnofluo1l6KK8Klqq6.png',1,1529405967,''),(168,1,1,'4.png','images/1/2018/06/UWL7Dc4SwT1DyM0Wlwkczq6mtNv0D1.png',1,1529405982,''),(169,1,1,'1.png','images/1/2018/06/W818uY88yYliJ188H7yh1UH8Kk00K1.png',1,1529406262,''),(170,1,1,'2.png','images/1/2018/06/Ru34m2000o40x0W4c45X022C940w5u.png',1,1529406276,''),(171,1,1,'3.png','images/1/2018/06/nv8Qh579X75h6Rrr9V2V6A000Vvv79.png',1,1529406291,''),(172,1,1,'4.png','images/1/2018/06/mORZO9xO9kuEzEh6900HcIexAEe9lh.png',1,1529406306,''),(173,1,1,'1.png','images/1/2018/06/oy5PbBVv2pcVobm1fFvJvZynMM1fH6.png',1,1529406608,''),(174,1,1,'2.png','images/1/2018/06/bJd8i8iiG82hGhTAMN28FRMnH2kj02.png',1,1529406626,''),(175,1,1,'3.png','images/1/2018/06/d44dBdG48NdFnvsZp544nTFBT7bDpG.png',1,1529406642,''),(176,1,1,'1.png','images/1/2018/06/oKeuQ0EXKeCE0jqqkfQCKwFCkEETRe.png',1,1529406988,''),(177,1,1,'2.png','images/1/2018/06/GCn1mI9zE7iupY7u47EE5NeimM5T01.png',1,1529407003,''),(178,1,1,'1.png','images/1/2018/06/Rc38W9sd7v3pez8ssSTsN3WWu78psu.png',1,1529407104,''),(179,1,1,'2.png','images/1/2018/06/KNH70AK70KdHn11OV42A72DU00yK7Y.png',1,1529407120,''),(180,1,1,'3.png','images/1/2018/06/y9d0w0DzI98usJ37UcmsIsTDu3wJtz.png',1,1529407140,''),(181,1,1,'4.png','images/1/2018/06/yGB1pUU5SkU97WuuNJ7n517nXBUb7S.png',1,1529407157,''),(182,1,1,'1.png','images/1/2018/06/F4wPcFQSW44pCFp5J6Cpf4gtltZzPW.png',1,1529407286,''),(183,1,1,'2.png','images/1/2018/06/C059Bcm5xQdzMUJ7FBz5JyZ1pBHb5O.png',1,1529407303,''),(184,1,1,'3.png','images/1/2018/06/Nesn5SR5YiGyR8ELi5SF99YI5fR8Kr.png',1,1529407321,''),(185,1,1,'1.png','images/1/2018/06/ZbusTzyhZ4CqTTKy47dTl9sTTS79sQ.png',1,1529407449,''),(186,1,1,'2.png','images/1/2018/06/OAv4IJG8g8qq8q43QSn488S4mVWq3M.png',1,1529407463,''),(187,1,1,'3.png','images/1/2018/06/rZuoU8oVkuUMu3KLv3ZLlKOTIZUull.png',1,1529407480,''),(188,1,1,'1.jpg','images/1/2018/06/dJJRrQgKQTIKED6eOJrrjCCx6zXRrk.jpg',1,1529739096,''),(189,1,1,'2.jpg','images/1/2018/06/vKUk29KOJusZjUow902WOjOiRs0jRp.jpg',1,1529741027,''),(190,1,1,'3.jpg','images/1/2018/06/xHre26442f6CW0C69115R5C4WFa2i6.jpg',1,1529741225,''),(191,1,1,'4.jpg','images/1/2018/06/XMxjMM2xvEzejKdj1erdqJxQjO6eo1.jpg',1,1529741423,''),(192,1,1,'5.jpg','images/1/2018/06/fgxKoWLf6LwP55ZBx53ZkkbwG0eEWE.jpg',1,1529741546,''),(193,1,1,'223.mp3','audios/1/2018/06/ykK3ZkM3uQzfzfMp7Qmp763kBFjoxz.mp3',2,1529742128,''),(194,1,1,'6.jpg','images/1/2018/06/Gzl5h455q5Cl454R444B5l4544r4J4.jpg',1,1529742162,''),(195,1,1,'3162545.jpg','images/1/2018/06/eTsDljIsgsBSlL9JxkLIYLtD9BVdIP.jpg',1,1529742365,''),(197,1,1,'7.jpg','images/1/2018/06/s1M1B92ll23M6MVX182B67ft7BmFBF.jpg',1,1529744146,''),(198,1,1,'7162.mp3','audios/1/2018/06/d4lyG30Y5K5zGexkK6k35k4L1mxz1K.mp3',2,1529744285,''),(199,1,1,'8.jpg','images/1/2018/06/c2DW1XzJ7eexWI3311R3pI2rWeVEHH.jpg',1,1529744341,''),(200,1,1,'9.jpg','images/1/2018/06/Rd1zCSUs8vBcvwYV4YWyVF68DHFT6m.jpg',1,1529744519,''),(201,1,1,'10.jpg','images/1/2018/06/TqMYeEE43C1fYAf0FY3aXEaE7CcAqs.jpg',1,1529744700,'');
/*!40000 ALTER TABLE `ims_core_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_cache`
--

DROP TABLE IF EXISTS `ims_core_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_cache` (
  `key` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_cache`
--

LOCK TABLES `ims_core_cache` WRITE;
/*!40000 ALTER TABLE `ims_core_cache` DISABLE KEYS */;
INSERT INTO `ims_core_cache` VALUES ('account:ticket','s:0:\"\";'),('userbasefields','a:45:{s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:6:\"mobile\";s:12:\"手机号码\";s:5:\"email\";s:12:\"电子邮箱\";s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"gender\";s:6:\"性别\";s:5:\"birth\";s:6:\"生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:6:\"地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:6:\"reside\";s:9:\"居住地\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:8:\"password\";s:6:\"密码\";}'),('usersfields','a:46:{s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"mobile\";s:12:\"手机号码\";s:3:\"vip\";s:9:\"VIP级别\";s:6:\"gender\";s:6:\"性别\";s:9:\"birthyear\";s:12:\"出生生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:12:\"邮寄地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:14:\"resideprovince\";s:12:\"居住地址\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:5:\"email\";s:12:\"电子邮箱\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:8:\"password\";s:12:\"用户密码\";}'),('setting','a:5:{s:9:\"copyright\";a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}s:10:\"module_ban\";a:0:{}s:14:\"module_upgrade\";a:0:{}s:8:\"platform\";a:5:{s:5:\"token\";s:32:\"tNAfd8hv8H6FwCiC8FQzAWQnhFVc83tZ\";s:14:\"encodingaeskey\";s:43:\"a69UKE86Uy8ephv64nENEeuYuypQoUcCvQeP6eEshnU\";s:9:\"appsecret\";s:0:\"\";s:5:\"appid\";s:0:\"\";s:9:\"authstate\";i:1;}s:10:\"thirdlogin\";a:3:{s:6:\"system\";a:3:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"authstate\";s:0:\"\";}s:2:\"qq\";a:3:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"authstate\";s:0:\"\";}s:6:\"wechat\";a:3:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"authstate\";s:0:\"\";}}}'),('we7:all_cloud_upgrade_module:','a:2:{s:6:\"expire\";i:1530518915;s:4:\"data\";a:0:{}}'),('system_frame','a:7:{s:7:\"account\";a:7:{s:5:\"title\";s:9:\"公众号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=home&a=welcome&do=platform&\";s:7:\"section\";a:5:{s:13:\"platform_plus\";a:2:{s:5:\"title\";s:12:\"增强功能\";s:4:\"menu\";a:6:{s:14:\"platform_reply\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"自动回复\";s:3:\"url\";s:31:\"./index.php?c=platform&a=reply&\";s:15:\"permission_name\";s:14:\"platform_reply\";s:4:\"icon\";s:11:\"wi wi-reply\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:13:\"platform_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:13:\"platform_menu\";s:4:\"icon\";s:16:\"wi wi-custommenu\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"platform_qr\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:22:\"二维码/转化链接\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";s:4:\"icon\";s:12:\"wi wi-qrcode\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:18:\"platform_mass_task\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"定时群发\";s:3:\"url\";s:30:\"./index.php?c=platform&a=mass&\";s:15:\"permission_name\";s:18:\"platform_mass_task\";s:4:\"icon\";s:13:\"wi wi-crontab\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:17:\"platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"素材/编辑器\";s:3:\"url\";s:34:\"./index.php?c=platform&a=material&\";s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";s:12:\"wi wi-redact\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:2:{s:5:\"title\";s:13:\"添加/编辑\";s:15:\"permission_name\";s:13:\"material_post\";}i:1;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";}}}s:13:\"platform_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"微官网-文章\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:13:\"platform_site\";s:4:\"icon\";s:10:\"wi wi-home\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:2:{s:7:\"mc_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"粉丝管理\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";s:4:\"icon\";s:16:\"wi wi-fansmanage\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:3:{s:7:\"profile\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:33:\"./index.php?c=profile&a=passport&\";s:15:\"permission_name\";s:15:\"profile_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:7:\"payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:19:\"profile_pay_setting\";s:4:\"icon\";s:17:\"wi wi-pay-setting\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"域名绑定\";s:3:\"url\";s:36:\"./index.php?c=profile&a=bind-domain&\";s:15:\"permission_name\";s:19:\"profile_bind_domain\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:3:\"app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:9:\"wi wi-api\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:2;}s:5:\"wxapp\";a:7:{s:5:\"title\";s:9:\"小程序\";s:4:\"icon\";s:19:\"wi wi-small-routine\";s:3:\"url\";s:38:\"./index.php?c=wxapp&a=display&do=home&\";s:7:\"section\";a:3:{s:14:\"wxapp_entrance\";a:3:{s:5:\"title\";s:15:\"小程序入口\";s:4:\"menu\";a:1:{s:20:\"module_entrance_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"入口页面\";s:3:\"url\";s:36:\"./index.php?c=wxapp&a=entrance-link&\";s:15:\"permission_name\";s:19:\"wxapp_entrance_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";b:1;}s:12:\"wxapp_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:20:\"platform_manage_menu\";a:2:{s:5:\"title\";s:6:\"管理\";s:4:\"menu\";a:4:{s:11:\"module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:25:\"wxapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:13:\"wxapp_profile\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:30:\"./index.php?c=wxapp&a=payment&\";s:15:\"permission_name\";s:13:\"wxapp_payment\";s:4:\"icon\";s:16:\"wi wi-appsetting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"上传微信审核\";s:3:\"url\";s:37:\"./index.php?c=wxapp&a=front-download&\";s:15:\"permission_name\";s:20:\"wxapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:17:\"platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"素材管理\";s:3:\"url\";N;s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:1:{i:0;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";}}}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:3;}s:6:\"module\";a:7:{s:5:\"title\";s:6:\"应用\";s:4:\"icon\";s:11:\"wi wi-apply\";s:3:\"url\";s:31:\"./index.php?c=module&a=display&\";s:7:\"section\";a:0:{}s:10:\"is_display\";b:1;s:9:\"is_system\";b:1;s:12:\"displayorder\";i:4;}s:6:\"system\";a:7:{s:5:\"title\";s:12:\"系统管理\";s:4:\"icon\";s:13:\"wi wi-setting\";s:3:\"url\";s:39:\"./index.php?c=home&a=welcome&do=system&\";s:7:\"section\";a:6:{s:10:\"wxplatform\";a:2:{s:5:\"title\";s:9:\"公众号\";s:4:\"menu\";a:4:{s:14:\"system_account\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\" 微信公众号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=1\";s:15:\"permission_name\";s:14:\"system_account\";s:4:\"icon\";s:12:\"wi wi-wechat\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"公众号管理设置\";s:15:\"permission_name\";s:21:\"system_account_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加公众号\";s:15:\"permission_name\";s:19:\"system_account_post\";}i:2;a:2:{s:5:\"title\";s:15:\"公众号停用\";s:15:\"permission_name\";s:19:\"system_account_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"公众号回收站\";s:15:\"permission_name\";s:22:\"system_account_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"公众号删除\";s:15:\"permission_name\";s:21:\"system_account_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"公众号恢复\";s:15:\"permission_name\";s:22:\"system_account_recover\";}}}s:13:\"system_module\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"公众号应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=1\";s:15:\"permission_name\";s:13:\"system_module\";s:4:\"icon\";s:14:\"wi wi-wx-apply\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_template\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微官网模板\";s:3:\"url\";s:32:\"./index.php?c=system&a=template&\";s:15:\"permission_name\";s:15:\"system_template\";s:4:\"icon\";s:17:\"wi wi-wx-template\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_platform\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\" 微信开放平台\";s:3:\"url\";s:32:\"./index.php?c=system&a=platform&\";s:15:\"permission_name\";s:15:\"system_platform\";s:4:\"icon\";s:20:\"wi wi-exploitsetting\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"module\";a:2:{s:5:\"title\";s:9:\"小程序\";s:4:\"menu\";a:2:{s:12:\"system_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微信小程序\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=4\";s:15:\"permission_name\";s:12:\"system_wxapp\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"小程序管理设置\";s:15:\"permission_name\";s:19:\"system_wxapp_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加小程序\";s:15:\"permission_name\";s:17:\"system_wxapp_post\";}i:2;a:2:{s:5:\"title\";s:15:\"小程序停用\";s:15:\"permission_name\";s:17:\"system_wxapp_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"小程序回收站\";s:15:\"permission_name\";s:20:\"system_wxapp_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"小程序删除\";s:15:\"permission_name\";s:19:\"system_wxapp_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"小程序恢复\";s:15:\"permission_name\";s:20:\"system_wxapp_recover\";}}}s:19:\"system_module_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"小程序应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=4\";s:15:\"permission_name\";s:19:\"system_module_wxapp\";s:4:\"icon\";s:17:\"wi wi-wxapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:4:\"user\";a:2:{s:5:\"title\";s:13:\"帐户/用户\";s:4:\"menu\";a:3:{s:9:\"system_my\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"我的帐户\";s:3:\"url\";s:29:\"./index.php?c=user&a=profile&\";s:15:\"permission_name\";s:9:\"system_my\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"system_user\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"用户管理\";s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:15:\"permission_name\";s:11:\"system_user\";s:4:\"icon\";s:16:\"wi wi-user-group\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{i:0;a:2:{s:5:\"title\";s:12:\"编辑用户\";s:15:\"permission_name\";s:16:\"system_user_post\";}i:1;a:2:{s:5:\"title\";s:12:\"审核用户\";s:15:\"permission_name\";s:17:\"system_user_check\";}i:2;a:2:{s:5:\"title\";s:12:\"店员管理\";s:15:\"permission_name\";s:17:\"system_user_clerk\";}i:3;a:2:{s:5:\"title\";s:15:\"用户回收站\";s:15:\"permission_name\";s:19:\"system_user_recycle\";}i:4;a:2:{s:5:\"title\";s:18:\"用户属性设置\";s:15:\"permission_name\";s:18:\"system_user_fields\";}i:5;a:2:{s:5:\"title\";s:31:\"用户属性设置-编辑字段\";s:15:\"permission_name\";s:23:\"system_user_fields_post\";}i:6;a:2:{s:5:\"title\";s:18:\"用户注册设置\";s:15:\"permission_name\";s:23:\"system_user_registerset\";}}}s:25:\"system_user_founder_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"副创始人组\";s:3:\"url\";s:32:\"./index.php?c=founder&a=display&\";s:15:\"permission_name\";s:21:\"system_founder_manage\";s:4:\"icon\";s:16:\"wi wi-co-founder\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:18:\"添加创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_add\";}i:1;a:2:{s:5:\"title\";s:18:\"编辑创始人组\";s:15:\"permission_name\";s:25:\"system_founder_group_post\";}i:2;a:2:{s:5:\"title\";s:18:\"删除创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_del\";}i:3;a:2:{s:5:\"title\";s:15:\"添加创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_add\";}i:4;a:2:{s:5:\"title\";s:15:\"编辑创始人\";s:15:\"permission_name\";s:24:\"system_founder_user_post\";}i:5;a:2:{s:5:\"title\";s:15:\"删除创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_del\";}}}}}s:10:\"permission\";a:2:{s:5:\"title\";s:12:\"权限管理\";s:4:\"menu\";a:2:{s:19:\"system_module_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:15:\"permission_name\";s:19:\"system_module_group\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:21:\"添加应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_add\";}i:1;a:2:{s:5:\"title\";s:21:\"编辑应用权限组\";s:15:\"permission_name\";s:24:\"system_module_group_post\";}i:2;a:2:{s:5:\"title\";s:21:\"删除应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_del\";}}}s:17:\"system_user_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"用户权限组\";s:3:\"url\";s:27:\"./index.php?c=user&a=group&\";s:15:\"permission_name\";s:17:\"system_user_group\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:15:\"添加用户组\";s:15:\"permission_name\";s:21:\"system_user_group_add\";}i:1;a:2:{s:5:\"title\";s:15:\"编辑用户组\";s:15:\"permission_name\";s:22:\"system_user_group_post\";}i:2;a:2:{s:5:\"title\";s:15:\"删除用户组\";s:15:\"permission_name\";s:21:\"system_user_group_del\";}}}}}s:7:\"article\";a:2:{s:5:\"title\";s:13:\"文章/公告\";s:4:\"menu\";a:2:{s:14:\"system_article\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:29:\"./index.php?c=article&a=news&\";s:15:\"permission_name\";s:19:\"system_article_news\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_article_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"公告管理\";s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:15:\"permission_name\";s:21:\"system_article_notice\";s:4:\"icon\";s:12:\"wi wi-notice\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"cache\";a:2:{s:5:\"title\";s:6:\"缓存\";s:4:\"menu\";a:1:{s:26:\"system_setting_updatecache\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"更新缓存\";s:3:\"url\";s:35:\"./index.php?c=system&a=updatecache&\";s:15:\"permission_name\";s:26:\"system_setting_updatecache\";s:4:\"icon\";s:12:\"wi wi-update\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:5;}s:4:\"site\";a:8:{s:5:\"title\";s:12:\"站点管理\";s:4:\"icon\";s:17:\"wi wi-system-site\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:7:\"section\";a:2:{s:7:\"setting\";a:2:{s:5:\"title\";s:6:\"设置\";s:4:\"menu\";a:9:{s:19:\"system_setting_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站点设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:15:\"permission_name\";s:19:\"system_setting_site\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:9;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"菜单设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=menu&\";s:15:\"permission_name\";s:19:\"system_setting_menu\";s:4:\"icon\";s:18:\"wi wi-menu-setting\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_attachment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"附件设置\";s:3:\"url\";s:34:\"./index.php?c=system&a=attachment&\";s:15:\"permission_name\";s:25:\"system_setting_attachment\";s:4:\"icon\";s:16:\"wi wi-attachment\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_systeminfo\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统信息\";s:3:\"url\";s:34:\"./index.php?c=system&a=systeminfo&\";s:15:\"permission_name\";s:25:\"system_setting_systeminfo\";s:4:\"icon\";s:17:\"wi wi-system-info\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_logs\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"查看日志\";s:3:\"url\";s:28:\"./index.php?c=system&a=logs&\";s:15:\"permission_name\";s:19:\"system_setting_logs\";s:4:\"icon\";s:9:\"wi wi-log\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:26:\"system_setting_ipwhitelist\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:11:\"IP白名单\";s:3:\"url\";s:35:\"./index.php?c=system&a=ipwhitelist&\";s:15:\"permission_name\";s:26:\"system_setting_ipwhitelist\";s:4:\"icon\";s:8:\"wi wi-ip\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:28:\"system_setting_sensitiveword\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"过滤敏感词\";s:3:\"url\";s:37:\"./index.php?c=system&a=sensitiveword&\";s:15:\"permission_name\";s:28:\"system_setting_sensitiveword\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_thirdlogin\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:21:\"第三方登录配置\";s:3:\"url\";s:34:\"./index.php?c=system&a=thirdlogin&\";s:15:\"permission_name\";s:25:\"system_setting_thirdlogin\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_setting_oauth\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:17:\"oauth全局设置\";s:3:\"url\";s:29:\"./index.php?c=system&a=oauth&\";s:15:\"permission_name\";s:20:\"system_setting_oauth\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"utility\";a:2:{s:5:\"title\";s:12:\"常用工具\";s:4:\"menu\";a:5:{s:24:\"system_utility_filecheck\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统文件校验\";s:3:\"url\";s:33:\"./index.php?c=system&a=filecheck&\";s:15:\"permission_name\";s:24:\"system_utility_filecheck\";s:4:\"icon\";s:10:\"wi wi-file\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_optimize\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"性能优化\";s:3:\"url\";s:32:\"./index.php?c=system&a=optimize&\";s:15:\"permission_name\";s:23:\"system_utility_optimize\";s:4:\"icon\";s:14:\"wi wi-optimize\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_database\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"数据库\";s:3:\"url\";s:32:\"./index.php?c=system&a=database&\";s:15:\"permission_name\";s:23:\"system_utility_database\";s:4:\"icon\";s:9:\"wi wi-sql\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_utility_scan\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"木马查杀\";s:3:\"url\";s:28:\"./index.php?c=system&a=scan&\";s:15:\"permission_name\";s:19:\"system_utility_scan\";s:4:\"icon\";s:12:\"wi wi-safety\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"system_utility_bom\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"检测文件BOM\";s:3:\"url\";s:27:\"./index.php?c=system&a=bom&\";s:15:\"permission_name\";s:18:\"system_utility_bom\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:6;}s:4:\"help\";a:8:{s:5:\"title\";s:12:\"帮助系统\";s:4:\"icon\";s:12:\"wi wi-market\";s:3:\"url\";s:29:\"./index.php?c=help&a=display&\";s:7:\"section\";a:0:{}s:5:\"blank\";b:0;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:7;}s:5:\"store\";a:7:{s:5:\"title\";s:6:\"商城\";s:4:\"icon\";s:11:\"wi wi-store\";s:3:\"url\";s:43:\"./index.php?c=home&a=welcome&do=ext&m=store\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:8;}}'),('module_receive_enable','a:0:{}'),('unisetting:1','a:24:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:5:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}s:4:\"line\";a:2:{s:7:\"message\";s:16:\"4543545454354343\";s:6:\"switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";}'),('uniaccount:1','a:34:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";s:14:\"encodingaeskey\";s:0:\"\";s:5:\"level\";s:1:\"1\";s:4:\"name\";s:7:\"we7team\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:0:\"\";s:9:\"signature\";s:0:\"\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:10:\"lastupdate\";s:1:\"0\";s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:7:\"styleid\";s:1:\"1\";s:12:\"subscribeurl\";s:0:\"\";s:18:\"auth_refresh_token\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";N;s:3:\"uid\";N;s:9:\"starttime\";N;s:6:\"groups\";a:1:{i:1;a:5:{s:7:\"groupid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"title\";s:15:\"默认会员组\";s:6:\"credit\";s:1:\"0\";s:9:\"isdefault\";s:1:\"1\";}}s:7:\"setting\";a:24:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:5:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}s:4:\"line\";a:2:{s:7:\"message\";s:16:\"4543545454354343\";s:6:\"switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";}s:10:\"grouplevel\";s:1:\"0\";s:4:\"logo\";s:57:\"http://127.0.0.1/attachment/headimg_1.jpg?time=1530517119\";s:6:\"qrcode\";s:56:\"http://127.0.0.1/attachment/qrcode_1.jpg?time=1530517119\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=1\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";i:-1;s:8:\"username\";s:9:\"创始人\";s:9:\"timelimit\";s:9:\"未设置\";s:7:\"groupid\";s:2:\"-1\";s:9:\"groupname\";s:12:\"所有服务\";}}'),('we7:1:site_store_buy_1','a:0:{}'),('we7:unimodules:1:1','a:12:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:6:\"jy_ppp\";a:1:{s:4:\"name\";s:6:\"jy_ppp\";}}'),('we7:module_info:basic','a:27:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:11:\"description\";s:201:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:51:\"http://127.0.0.1/addons/basic/icon.jpg?v=1530517119\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:news','a:27:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:11:\"description\";s:272:\"一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:50:\"http://127.0.0.1/addons/news/icon.jpg?v=1530517119\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:music','a:27:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:11:\"description\";s:183:\"在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:51:\"http://127.0.0.1/addons/music/icon.jpg?v=1530517119\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:userapi','a:27:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:11:\"description\";s:141:\"自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:53:\"http://127.0.0.1/addons/userapi/icon.jpg?v=1530517119\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:recharge','a:27:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:54:\"http://127.0.0.1/addons/recharge/icon.jpg?v=1530517119\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:custom','a:27:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:6:\"custom\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:17:\"http://bbs.we7.cc\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:52:\"http://127.0.0.1/addons/custom/icon.jpg?v=1530517119\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:images','a:27:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"images\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:52:\"http://127.0.0.1/addons/images/icon.jpg?v=1530517119\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:video','a:27:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"video\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:51:\"http://127.0.0.1/addons/video/icon.jpg?v=1530517119\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:voice','a:27:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:5:\"voice\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:51:\"http://127.0.0.1/addons/voice/icon.jpg?v=1530517119\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:chats','a:27:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"chats\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:51:\"http://127.0.0.1/addons/chats/icon.jpg?v=1530517119\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:wxcard','a:27:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:6:\"wxcard\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"微信卡券回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"微信卡券回复\";s:11:\"description\";s:18:\"微信卡券回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:52:\"http://127.0.0.1/addons/wxcard/icon.jpg?v=1530517119\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:jy_ppp','a:27:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:6:\"jy_ppp\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:15:\"粉丝啪啪啪\";s:7:\"version\";s:3:\"5.2\";s:7:\"ability\";s:15:\"粉丝啪啪啪\";s:11:\"description\";s:24:\"微赢网络粉丝啪啪\";s:6:\"author\";s:17:\"微赢QQ:76020694\";s:3:\"url\";s:28:\"http://weiwincms.taobao.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:6:\"a:0:{}\";s:13:\"title_initial\";s:1:\"F\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:52:\"http://127.0.0.1/addons/jy_ppp/icon.jpg?v=1530517119\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('unicount:1','s:1:\"1\";'),('we7::site_store_buy_1','a:0:{}'),('we7:unimodules::','a:12:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:6:\"jy_ppp\";a:1:{s:4:\"name\";s:6:\"jy_ppp\";}}'),('we7:user_modules:1','a:12:{i:0;s:6:\"jy_ppp\";i:1;s:6:\"wxcard\";i:2;s:5:\"chats\";i:3;s:5:\"voice\";i:4;s:5:\"video\";i:5;s:6:\"images\";i:6;s:6:\"custom\";i:7;s:8:\"recharge\";i:8;s:7:\"userapi\";i:9;s:5:\"music\";i:10;s:4:\"news\";i:11;s:5:\"basic\";}'),('we7:lastaccount:aOzK2','a:2:{s:7:\"account\";i:1;s:6:\"jy_ppp\";a:3:{s:11:\"module_name\";s:6:\"jy_ppp\";s:7:\"uniacid\";s:1:\"1\";s:10:\"version_id\";s:0:\"\";}}'),('we7:unimodules:1:','a:12:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:6:\"jy_ppp\";a:1:{s:4:\"name\";s:6:\"jy_ppp\";}}'),('stat:todaylock:1','a:1:{s:6:\"expire\";i:1531482746;}'),('we7:module:all_uninstall','a:2:{s:6:\"expire\";i:1596497193;s:4:\"data\";a:4:{s:13:\"cloud_m_count\";N;s:7:\"modules\";a:2:{s:7:\"recycle\";a:0:{}s:11:\"uninstalled\";a:0:{}}s:9:\"app_count\";i:0;s:11:\"wxapp_count\";i:0;}}'),('we7:lastaccount:AY6SH','a:2:{s:6:\"jy_ppp\";a:3:{s:11:\"module_name\";s:6:\"jy_ppp\";s:7:\"uniacid\";s:1:\"1\";s:10:\"version_id\";s:0:\"\";}s:7:\"account\";i:1;}'),('we7:lastaccount:Io5qB','a:2:{s:6:\"jy_ppp\";a:3:{s:11:\"module_name\";s:6:\"jy_ppp\";s:7:\"uniacid\";s:1:\"1\";s:10:\"version_id\";s:0:\"\";}s:7:\"account\";i:1;}'),('we7:lastaccount:cj2Gz','a:2:{s:6:\"jy_ppp\";a:3:{s:11:\"module_name\";s:6:\"jy_ppp\";s:7:\"uniacid\";s:1:\"1\";s:10:\"version_id\";s:0:\"\";}s:7:\"account\";i:1;}'),('we7:lastaccount:LXt9Z','a:2:{s:6:\"jy_ppp\";a:3:{s:11:\"module_name\";s:6:\"jy_ppp\";s:7:\"uniacid\";s:1:\"1\";s:10:\"version_id\";s:0:\"\";}s:7:\"account\";i:1;}');
/*!40000 ALTER TABLE `ims_core_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_cron`
--

DROP TABLE IF EXISTS `ims_core_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_cron` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cloudid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `lastruntime` int(10) unsigned NOT NULL,
  `nextruntime` int(10) unsigned NOT NULL,
  `weekday` tinyint(3) NOT NULL,
  `day` tinyint(3) NOT NULL,
  `hour` tinyint(3) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `extra` varchar(5000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createtime` (`createtime`),
  KEY `nextruntime` (`nextruntime`),
  KEY `uniacid` (`uniacid`),
  KEY `cloudid` (`cloudid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_cron`
--

LOCK TABLES `ims_core_cron` WRITE;
/*!40000 ALTER TABLE `ims_core_cron` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_cron_record`
--

DROP TABLE IF EXISTS `ims_core_cron_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_cron_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `tid` (`tid`),
  KEY `module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_cron_record`
--

LOCK TABLES `ims_core_cron_record` WRITE;
/*!40000 ALTER TABLE `ims_core_cron_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_cron_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_menu`
--

DROP TABLE IF EXISTS `ims_core_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `title` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `append_title` varchar(30) NOT NULL,
  `append_url` varchar(255) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_system` tinyint(3) unsigned NOT NULL,
  `permission_name` varchar(50) NOT NULL,
  `group_name` varchar(30) NOT NULL,
  `icon` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_menu`
--

LOCK TABLES `ims_core_menu` WRITE;
/*!40000 ALTER TABLE `ims_core_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_paylog`
--

DROP TABLE IF EXISTS `ims_core_paylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_paylog` (
  `plid` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `acid` int(10) NOT NULL,
  `openid` varchar(40) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `tid` varchar(128) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `tag` varchar(2000) NOT NULL,
  `is_usecard` tinyint(3) unsigned NOT NULL,
  `card_type` tinyint(3) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `card_fee` decimal(10,2) unsigned NOT NULL,
  `encrypt_code` varchar(100) NOT NULL,
  PRIMARY KEY (`plid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_tid` (`tid`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_paylog`
--

LOCK TABLES `ims_core_paylog` WRITE;
/*!40000 ALTER TABLE `ims_core_paylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_paylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_performance`
--

DROP TABLE IF EXISTS `ims_core_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_performance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `runtime` varchar(10) NOT NULL,
  `runurl` varchar(512) NOT NULL,
  `runsql` varchar(512) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_performance`
--

LOCK TABLES `ims_core_performance` WRITE;
/*!40000 ALTER TABLE `ims_core_performance` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_performance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_queue`
--

DROP TABLE IF EXISTS `ims_core_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_queue` (
  `qid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `message` varchar(2000) NOT NULL,
  `params` varchar(1000) NOT NULL,
  `keyword` varchar(1000) NOT NULL,
  `response` varchar(2000) NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`qid`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `module` (`module`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_queue`
--

LOCK TABLES `ims_core_queue` WRITE;
/*!40000 ALTER TABLE `ims_core_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_refundlog`
--

DROP TABLE IF EXISTS `ims_core_refundlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_refundlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `refund_uniontid` varchar(64) NOT NULL,
  `reason` varchar(80) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `refund_uniontid` (`refund_uniontid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_refundlog`
--

LOCK TABLES `ims_core_refundlog` WRITE;
/*!40000 ALTER TABLE `ims_core_refundlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_refundlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_resource`
--

DROP TABLE IF EXISTS `ims_core_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_resource` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `trunk` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `acid` (`uniacid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_resource`
--

LOCK TABLES `ims_core_resource` WRITE;
/*!40000 ALTER TABLE `ims_core_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_sendsms_log`
--

DROP TABLE IF EXISTS `ims_core_sendsms_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_sendsms_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `createtime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_sendsms_log`
--

LOCK TABLES `ims_core_sendsms_log` WRITE;
/*!40000 ALTER TABLE `ims_core_sendsms_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_sendsms_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_sessions`
--

DROP TABLE IF EXISTS `ims_core_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_sessions` (
  `sid` char(32) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `data` varchar(5000) NOT NULL,
  `expiretime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_sessions`
--

LOCK TABLES `ims_core_sessions` WRITE;
/*!40000 ALTER TABLE `ims_core_sessions` DISABLE KEYS */;
INSERT INTO `ims_core_sessions` VALUES ('f0b48fa336d2408f25c01e8e46028d57',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eB0j\";i:1531145981;}',1531149582),('e0df0406370537b388ca76321d18e454',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"m37O\";i:1531405515;s:4:\"ifxJ\";i:1531405516;s:4:\"jLzZ\";i:1531405516;s:4:\"iLVZ\";i:1531405533;s:4:\"HoOP\";i:1531405534;s:4:\"wfw7\";i:1531405535;}moni_city|s:8:\"内网IP\";moni_province|s:2:\"XX\";address|i:1;address_time|i:1531419913;mid|s:3:\"209\";',1531409135),('98c1619a31c0d0de7bb7bb3ea04ce741',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"i50j\";i:1531405583;s:4:\"XY2Z\";i:1531405583;s:4:\"l8g8\";i:1531405586;s:4:\"QHLI\";i:1531405586;s:4:\"U9Yr\";i:1531405596;s:4:\"psxt\";i:1531405596;}moni_city|s:8:\"内网IP\";moni_province|s:2:\"XX\";address|i:1;address_time|i:1531419983;mid|s:3:\"210\";',1531409196),('10fcc18d29366e0965e917ede0b0b8f3',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"fyri\";i:1531406245;s:4:\"U722\";i:1531406254;s:4:\"CVt1\";i:1531406274;s:4:\"IQCq\";i:1531406276;s:4:\"lgFi\";i:1531406286;s:4:\"bJJ9\";i:1531406288;}moni_city|s:8:\"内网IP\";moni_province|s:2:\"XX\";address|i:1;address_time|i:1531420025;mid|s:3:\"211\";',1531409888),('f70afda5243e16ec96d736ee59f0d942',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"n7AA\";i:1531407192;}',1531410792),('8e86f31a4b169ddeabb848696d72d024',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"T8xA\";i:1531477440;s:4:\"QDd3\";i:1531477445;s:4:\"mg6g\";i:1531477450;s:4:\"Xzle\";i:1531477455;s:4:\"vyxq\";i:1531477460;s:4:\"Z0OI\";i:1531477465;}mid|s:3:\"211\";',1531488265),('b660a75ffe03cfea10d6bafc5c2d0a7b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;',1531480969),('155471c98aa7d2cdbf8cd340f5f172fa',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"oThT\";i:1532856817;s:4:\"b568\";i:1532856818;s:4:\"NH63\";i:1532856819;s:4:\"P281\";i:1532856829;s:4:\"vsRN\";i:1532856831;s:4:\"Nk55\";i:1532856833;}moni_city|s:8:\"内网IP\";moni_province|s:2:\"XX\";address|i:1;address_time|i:1532871199;mid|s:3:\"212\";',1532860433),('a3b394107896cc60f8647a19ffe60fb6',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"QHGC\";i:1562814673;s:4:\"sX0v\";i:1562814676;s:4:\"GZ4p\";i:1562814678;s:4:\"DK66\";i:1562814681;s:4:\"tFFf\";i:1562814684;s:4:\"Ue0b\";i:1562814715;}moni_city|s:8:\"内网IP\";moni_province|s:2:\"XX\";address|i:1;address_time|i:1562828960;mid|s:3:\"213\";',1562818315),('abb3f53524772831930f131beb4182de',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;',1530633891),('9dde5c5379d58db08b2b148a7ed442ed',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"KiI3\";i:1530764726;s:4:\"Bj0P\";i:1530764728;s:4:\"Yj71\";i:1530764739;s:4:\"WiwL\";i:1530764742;s:4:\"l9Mw\";i:1530764744;s:4:\"x5KC\";i:1530764784;}mid|s:3:\"208\";',1530769376),('86104f40eaeb54f6443711039ed8a676',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"Eg3M\";i:1530532981;s:4:\"maD5\";i:1530532983;s:4:\"sBwu\";i:1530532984;s:4:\"uc6y\";i:1530533007;s:4:\"LgoS\";i:1530533008;s:4:\"zpIY\";i:1530533009;}mid|s:3:\"208\";',1530536610),('1061184b45b6f04021bafe3fea876f6a',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"O8J5\";i:1530454093;s:4:\"Bl9L\";i:1530454095;s:4:\"syU3\";i:1530454096;s:4:\"zH2h\";i:1530454099;s:4:\"dNhD\";i:1530454100;s:4:\"LfaO\";i:1530454108;}mid|s:3:\"198\";',1530464908),('adec4cca5301948296ba35bbb20d55bc',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"zH49\";i:1530455528;s:4:\"ftI1\";i:1530455543;s:4:\"d6fH\";i:1530455543;s:4:\"Dmm6\";i:1530455550;s:4:\"NmRW\";i:1530455550;s:4:\"tCjX\";i:1530455552;}moni_city|s:8:\"内网IP\";moni_province|s:2:\"XX\";address|i:1;address_time|i:1530468658;mid|s:3:\"199\";',1530459152),('24fccb8de4378fdf29635e613144b4f1',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"CdwX\";i:1530455596;s:4:\"VPm0\";i:1530455599;s:4:\"zy2J\";i:1530455603;s:4:\"T6w1\";i:1530455603;s:4:\"rxI5\";i:1530455610;s:4:\"PVYh\";i:1530455610;}moni_city|s:8:\"内网IP\";moni_province|s:2:\"XX\";address|i:1;address_time|i:1530469996;mid|s:3:\"200\";',1530459210),('7f5f2bea3a8537848bba2cca02137814',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"xhrQ\";i:1530455618;s:4:\"JwnE\";i:1530455619;s:4:\"zzQE\";i:1530455619;s:4:\"X6Ml\";i:1530455619;s:4:\"dVtf\";i:1530455619;s:4:\"UYO8\";i:1530455624;}moni_city|s:8:\"内网IP\";moni_province|s:2:\"XX\";address|i:1;address_time|i:1530470019;mid|s:3:\"201\";',1530459224),('33abad352bbfd4f5e9a7dc668dd69939',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:5:{s:4:\"Uunx\";i:1530455960;s:4:\"oaBr\";i:1530455961;s:4:\"NsNp\";i:1530455961;s:4:\"j6hW\";i:1530455963;s:4:\"BC3k\";i:1530455984;}moni_city|s:8:\"内网IP\";moni_province|s:2:\"XX\";address|i:1;address_time|i:1530470055;mid|s:3:\"202\";',1530459584),('6096737dcb0594f14f1eec51d6fc2e77',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"de2b\";i:1530456069;s:4:\"MUNx\";i:1530456070;s:4:\"sry2\";i:1530456071;s:4:\"cUII\";i:1530456072;s:4:\"iFLk\";i:1530456074;s:4:\"gHkE\";i:1530456074;}moni_city|s:8:\"内网IP\";moni_province|s:2:\"XX\";address|i:1;address_time|i:1530470407;mid|s:3:\"203\";',1530459674),('8b6c7a56a8b23b55864cd37688a94abd',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"Y2zM\";i:1530466616;s:4:\"IzDt\";i:1530466617;s:4:\"Gvxp\";i:1530466619;s:4:\"OQnh\";i:1530466620;s:4:\"yuqb\";i:1530466624;s:4:\"h7e9\";i:1530466632;}mid|s:3:\"204\";',1530477432),('7862721b862616e30ca9745a6664c974',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:3:{s:4:\"Z9P4\";i:1530504126;s:4:\"g2VV\";i:1530504126;s:4:\"Ec34\";i:1530504126;}mid|s:3:\"204\";',1530507726),('7e01b741d69725ac001ee04e1524352e',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:5:{s:4:\"lOY1\";i:1530509978;s:4:\"F0X9\";i:1530509979;s:4:\"KU91\";i:1530510170;s:4:\"HE86\";i:1530510171;s:4:\"WNCK\";i:1530510171;}mid|s:3:\"204\";',1530513772),('26fe38498bb3e6316c1193879bdb1f1d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;',1530515729),('c69023cb7ebdbaa56f1c70a37b4729d2',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oArK\";i:1530515834;}moni_city|s:8:\"内网IP\";moni_province|s:2:\"XX\";address|i:1;address_time|i:1530529567;mid|s:3:\"205\";',1530519434),('f6e67be90c8278751bd74966deefb877',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:5:{s:4:\"N3Ud\";i:1530516740;s:4:\"uOL7\";i:1530516743;s:4:\"x5S3\";i:1530516749;s:4:\"spj3\";i:1530516750;s:4:\"JaOi\";i:1530516751;}moni_city|s:8:\"内网IP\";moni_province|s:2:\"XX\";address|i:1;address_time|i:1530530631;mid|s:3:\"206\";',1530527551),('eb61bb0711a1d7f78e5c4033ca51707e',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;',1530518821),('ff3113d4637965ba07817e86be2d3d38',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"MP66\";i:1530516876;s:4:\"R2b4\";i:1530516877;s:4:\"P7ZC\";i:1530516961;s:4:\"rH41\";i:1530516962;s:4:\"zDUZ\";i:1530516963;s:4:\"f4ek\";i:1530516974;}moni_city|s:8:\"内网IP\";moni_province|s:2:\"XX\";address|i:1;address_time|i:1530531169;mid|s:3:\"207\";',1530520575),('08110394d093e41a8363e7283cefbe51',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"xJ64\";i:1530517137;s:4:\"aq9T\";i:1530517147;s:4:\"ayKh\";i:1530517148;s:4:\"NPjd\";i:1530517152;s:4:\"gmq5\";i:1530517155;s:4:\"fJIe\";i:1530517157;}mid|s:3:\"207\";',1530520757),('2ce143eb0b3b39e57f40e7225a596ab4',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"O24b\";i:1530517699;s:4:\"CHjh\";i:1530517704;s:4:\"soDT\";i:1530517709;s:4:\"MsAf\";i:1530517714;s:4:\"w1zJ\";i:1530517719;s:4:\"Q8pt\";i:1530517724;}moni_city|s:8:\"内网IP\";moni_province|s:2:\"XX\";address|i:1;address_time|i:1530531649;mid|s:3:\"208\";',1530528524),('8pchg281dji5q7r9425tc4uvdc',1,'116.26.231.231','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"w1k8\";i:1562815543;s:4:\"iV81\";i:1562815544;s:4:\"k1fy\";i:1562815545;s:4:\"O1OI\";i:1562815546;s:4:\"MGi1\";i:1562815550;s:4:\"pP88\";i:1562815685;}moni_city|N;moni_province|N;address|i:1;address_time|i:1562829920;mid|s:3:\"214\";',1562826485),('adcef7a60f2efa72790e64407074fee2',1,'14.24.144.90','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"I2iz\";i:1562816108;s:4:\"wNjR\";i:1562816114;s:4:\"EgmZ\";i:1562816161;s:4:\"Zggu\";i:1562816161;s:4:\"fB36\";i:1562816170;s:4:\"bZCR\";i:1562816188;}moni_city|s:6:\"广州\";moni_province|s:6:\"广东\";address|i:1;address_time|i:1562829990;mid|s:3:\"215\";',1562826988),('e893aba7189d28c68a939b071f98c9bb',1,'61.151.207.186','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bRz9\";i:1562815862;}',1562826662),('2b4f05abc14aa846c8dad639dd5585ee',1,'116.26.231.231','acid|s:1:\"1\";uniacid|i:1;token|a:4:{s:4:\"sE8J\";i:1562816958;s:4:\"T3k8\";i:1562816960;s:4:\"Yyt6\";i:1562816961;s:4:\"j2c2\";i:1562816962;}moni_city|s:6:\"汕尾\";moni_province|s:6:\"广东\";address|i:1;address_time|i:1562830669;mid|s:3:\"216\";',1562827762),('91f41bb58edb1f6f83cfd20d31f0a310',1,'42.236.10.106','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Q46G\";i:1562816986;}',1562827786),('d84c3d0d24a895c953d9d9684f84d95f',1,'61.151.178.197','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"E8V8\";i:1562816302;}',1562827102),('eaca6874187837926f07fc34c587cab0',1,'101.91.60.106','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"B0g0\";i:1562816303;}',1562827103),('ae2981a6d182a8d9bbf2497b536eab76',1,'101.89.239.216','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"N2J7\";i:1562816314;}',1562827114),('20396ecf005eeb17434d71d82c3fc146',1,'101.89.19.197','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"srDn\";i:1562816326;}',1562827126),('d1b7699c2d32da8a4b3d323ea874ca90',1,'101.91.60.106','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"T1U7\";i:1562816327;}',1562827127),('5b16f028475b202fa3f9feba20521a28',1,'14.24.144.90','acid|s:1:\"1\";uniacid|i:1;token|a:3:{s:4:\"T4Nw\";i:1562816334;s:4:\"lvp8\";i:1562816334;s:4:\"RCC6\";i:1562816336;}mid|s:3:\"215\";',1562827136),('16564458cc30d2d670e278e0ca481305',1,'101.89.239.120','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"APec\";i:1562816401;}',1562827201),('98d5f2462efc00ce69316f03a521425a',1,'14.24.144.90','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"lcHq\";i:1562816789;s:4:\"LoCo\";i:1562816791;s:4:\"nDDe\";i:1562816793;s:4:\"yrnz\";i:1562816794;s:4:\"s6Nf\";i:1562816794;s:4:\"Y3IG\";i:1562816803;}mid|s:3:\"215\";',1562827603),('ae15ae8c1fa30d8f47f1eede48e262ea',1,'101.91.60.108','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"b4Qg\";i:1562816457;}',1562827257),('28c3ae70a938d556d9297d6adb3e9da3',1,'58.247.206.158','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"p167\";i:1562816459;}',1562827259),('f81122dedd745d7adc2a5c88be0b2250',1,'61.129.8.179','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"kSdr\";i:1562816783;}',1562827583),('4a93c5d5d4c1be1ffb0d0928435a3b0d',1,'61.151.178.197','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VI30\";i:1562817002;}',1562827802),('192834cc6c0817a6948f1e0a3b7b9261',1,'61.151.178.175','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cdaQ\";i:1562817016;}',1562827816),('7f3b4b1e738eabeb858cba205626fc6e',1,'61.151.178.165','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Bm97\";i:1562817017;}',1562827817),('d2bc59cb200f54f61809eb89456fe280',1,'180.163.220.5','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"k0t2\";i:1562817090;}',1562827890),('2b79c4c0f7665c2a3a2992cf5fe3a313',1,'61.129.6.227','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bURW\";i:1562817091;}',1562827891),('dfb5ec8d813f0a01d6af11fecb275504',1,'223.149.25.104','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"t406\";i:1596493579;}',1596504379);
/*!40000 ALTER TABLE `ims_core_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_settings`
--

DROP TABLE IF EXISTS `ims_core_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_settings` (
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_settings`
--

LOCK TABLES `ims_core_settings` WRITE;
/*!40000 ALTER TABLE `ims_core_settings` DISABLE KEYS */;
INSERT INTO `ims_core_settings` VALUES ('copyright','a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}'),('module_ban','a:0:{}'),('module_upgrade','a:0:{}'),('platform','a:5:{s:5:\"token\";s:32:\"tNAfd8hv8H6FwCiC8FQzAWQnhFVc83tZ\";s:14:\"encodingaeskey\";s:43:\"a69UKE86Uy8ephv64nENEeuYuypQoUcCvQeP6eEshnU\";s:9:\"appsecret\";s:0:\"\";s:5:\"appid\";s:0:\"\";s:9:\"authstate\";i:1;}'),('thirdlogin','a:3:{s:6:\"system\";a:3:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"authstate\";s:0:\"\";}s:2:\"qq\";a:3:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"authstate\";s:0:\"\";}s:6:\"wechat\";a:3:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"authstate\";s:0:\"\";}}');
/*!40000 ALTER TABLE `ims_core_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_coupon_location`
--

DROP TABLE IF EXISTS `ims_coupon_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_coupon_location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `province` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `photo_list` varchar(10000) NOT NULL,
  `avg_price` int(10) unsigned NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `recommend` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `offset_type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_coupon_location`
--

LOCK TABLES `ims_coupon_location` WRITE;
/*!40000 ALTER TABLE `ims_coupon_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_coupon_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_cover_reply`
--

DROP TABLE IF EXISTS `ims_cover_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_cover_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `do` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_cover_reply`
--

LOCK TABLES `ims_cover_reply` WRITE;
/*!40000 ALTER TABLE `ims_cover_reply` DISABLE KEYS */;
INSERT INTO `ims_cover_reply` VALUES (1,1,0,7,'mc','','进入个人中心','','','./index.php?c=mc&a=home&i=1'),(2,1,1,8,'site','','进入首页','','','./index.php?c=home&i=1&t=1');
/*!40000 ALTER TABLE `ims_cover_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_custom_reply`
--

DROP TABLE IF EXISTS `ims_custom_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_custom_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `start1` int(10) NOT NULL,
  `end1` int(10) NOT NULL,
  `start2` int(10) NOT NULL,
  `end2` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_custom_reply`
--

LOCK TABLES `ims_custom_reply` WRITE;
/*!40000 ALTER TABLE `ims_custom_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_custom_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_images_reply`
--

DROP TABLE IF EXISTS `ims_images_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_images_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_images_reply`
--

LOCK TABLES `ims_images_reply` WRITE;
/*!40000 ALTER TABLE `ims_images_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_images_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_aihao`
--

DROP TABLE IF EXISTS `ims_jy_ppp_aihao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_aihao` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `aihao` varchar(200) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_aihao`
--

LOCK TABLES `ims_jy_ppp_aihao` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_aihao` DISABLE KEYS */;
INSERT INTO `ims_jy_ppp_aihao` VALUES (1,1,1,'看展览',1525335451),(2,1,2,'研究计算机',1525335451),(3,1,3,'听音乐',1525335451),(4,1,4,'看展览',1525335451),(5,1,5,'跳舞',1525335451),(6,1,6,'摄影',1525335451),(7,1,7,'购物',1525335451),(8,1,8,'摄影',1525335451),(9,1,9,'其他',1525335451),(10,1,10,'听音乐',1525335451),(11,1,11,'其他',1525335451),(12,1,12,'养小动物',1525335451),(13,1,13,'摄影',1525335451),(14,1,14,'购物',1525335451),(15,1,15,'做手工艺',1525335451),(16,1,16,'看展览',1525335451),(17,1,17,'做园艺',1525335451),(18,1,18,'养小动物',1525335451),(19,1,19,'研究汽车',1525335451),(20,1,20,'听音乐',1525335451),(21,1,21,'购物',1525335451),(22,1,22,'做手工艺',1525335451),(23,1,23,'摄影',1525335451),(24,1,24,'做手工艺',1525335451),(25,1,25,'养小动物',1525335451),(26,1,26,'做园艺',1525335451),(27,1,27,'看展览',1525335451),(28,1,28,'养小动物',1525335451),(29,1,29,'养小动物',1525335451),(30,1,30,'跳舞',1525335451),(31,1,31,'研究汽车',1525335451),(32,1,32,'读书',1525335451),(33,1,33,'研究汽车',1525335451),(34,1,34,'做园艺',1525335451),(35,1,35,'烹饪',1525335451),(36,1,36,'做运动',1525335451),(37,1,37,'做运动',1525335451),(38,1,38,'养小动物',1525335451),(39,1,39,'摄影',1525335451),(40,1,40,'购物',1525335451),(41,1,41,'看电影',1525335451),(42,1,42,'研究汽车',1525335451),(43,1,43,'写作',1525335451),(44,1,44,'写作',1525335451),(45,1,45,'跳舞',1525335451),(46,1,46,'研究汽车',1525335451),(47,1,47,'读书',1525335451),(48,1,48,'烹饪',1525335451),(49,1,49,'做运动',1525335451),(50,1,50,'写作',1525335451),(51,1,51,'烹饪',1525335451),(52,1,52,'上网',1525335451),(53,1,53,'绘画',1525335451),(54,1,54,'研究汽车',1525335451),(55,1,55,'读书',1525335451),(56,1,56,'跳舞',1525335451),(57,1,57,'写作',1525335451),(58,1,58,'跳舞',1525335451),(59,1,59,'看展览',1525335451),(60,1,60,'购物',1525335451),(61,1,61,'跳舞',1525335451),(62,1,62,'购物',1525335451),(63,1,63,'做园艺',1525335451),(64,1,64,'听音乐',1525335451),(65,1,65,'绘画',1525335451),(66,1,66,'烹饪',1525335451),(67,1,67,'烹饪',1525335451),(68,1,68,'看电影',1525335451),(69,1,69,'摄影',1525335451),(70,1,70,'其他',1525335451),(71,1,71,'看展览',1525335451),(72,1,72,'读书',1525335451),(73,1,73,'做手工艺',1525335451),(74,1,74,'跳舞',1525335451),(75,1,75,'跳舞',1525335451),(76,1,76,'看电影',1525335451),(77,1,77,'烹饪',1525335451),(78,1,78,'摄影',1525335451),(79,1,79,'做园艺',1525335451),(80,1,80,'购物',1525335451),(81,1,81,'烹饪',1525335451),(82,1,82,'做运动',1525335451),(83,1,83,'上网',1525335451),(84,1,84,'其他',1525335451),(85,1,85,'摄影',1525335451),(86,1,86,'做运动',1525335458),(87,1,87,'听音乐',1525335458),(88,1,88,'摄影',1525335458),(89,1,89,'读书',1525335458),(90,1,90,'养小动物',1525335458),(91,1,91,'做运动',1525335458),(92,1,92,'玩电子游戏',1525335458),(93,1,93,'跳舞',1525335458),(94,1,94,'研究汽车',1525335458),(95,1,95,'旅游',1525335458),(96,1,96,'看展览',1525335458),(97,1,97,'研究汽车',1525335458),(98,1,98,'做园艺',1525335458),(99,1,99,'写作',1525335458),(100,1,100,'做运动',1525335458),(101,1,101,'上网',1525335458),(102,1,102,'做园艺',1525335458),(103,1,103,'购物',1525335458),(104,1,104,'养小动物',1525335458),(105,1,105,'读书',1525335458),(106,1,106,'写作',1525335458),(107,1,107,'研究计算机',1525335458),(108,1,108,'研究汽车',1525335458),(109,1,109,'购物',1525335458),(110,1,110,'做手工艺',1525335458),(111,1,111,'做园艺',1525335458),(112,1,112,'跳舞',1525335458),(113,1,113,'绘画',1525335458),(114,1,114,'听音乐',1525335458),(115,1,164,'摄影',1529228817),(116,1,164,'做园艺',1529228817),(117,1,164,'其他',1529228817);
/*!40000 ALTER TABLE `ims_jy_ppp_aihao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_attent`
--

DROP TABLE IF EXISTS `ims_jy_ppp_attent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_attent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `attentid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `attentid` (`attentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_attent`
--

LOCK TABLES `ims_jy_ppp_attent` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_attent` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_attent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_baoyue_log`
--

DROP TABLE IF EXISTS `ims_jy_ppp_baoyue_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_baoyue_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  `logid` int(10) NOT NULL COMMENT '充值记录id',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_baoyue_log`
--

LOCK TABLES `ims_jy_ppp_baoyue_log` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_baoyue_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_baoyue_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_basic`
--

DROP TABLE IF EXISTS `ims_jy_ppp_basic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_basic` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `height` int(10) NOT NULL,
  `weight` int(10) NOT NULL,
  `blood` varchar(50) NOT NULL,
  `education` varchar(50) NOT NULL,
  `job` varchar(200) NOT NULL,
  `income` varchar(200) NOT NULL,
  `marriage` varchar(200) NOT NULL,
  `house` varchar(200) NOT NULL,
  `blank` int(10) NOT NULL COMMENT '未填写的字段个数',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_basic`
--

LOCK TABLES `ims_jy_ppp_basic` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_basic` DISABLE KEYS */;
INSERT INTO `ims_jy_ppp_basic` VALUES (1,1,1,162,102,'B','高中及中专','其他','10000-20000','未婚','其他',0,1525335451),(2,1,2,159,117,'B','本科','私营业主','10000-20000','未婚','租房',0,1525335451),(3,1,3,157,120,'AB','本科','企业职工','2000-5000','未婚','与父母同住',0,1525335451),(4,1,4,174,106,'A','大专','私营业主','2000-5000','未婚','与父母同住',0,1525335451),(5,1,5,166,120,'A','本科','政府机关/事业单位工作者','2000-5000','未婚','租房',0,1525335451),(6,1,6,160,86,'O','高中及中专','私营业主','2000-5000','未婚','与父母同住',0,1525335451),(7,1,7,172,112,'O','高中及中专','其他','5000-10000','未婚','租房',0,1525335451),(8,1,8,168,88,'B','高中及中专','其他','2000-5000','未婚','与父母同住',0,1525335451),(9,1,9,166,100,'A','本科','其他','5000-10000','未婚','与父母同住',0,1525335451),(10,1,10,174,85,'A','大专','企业职工','2000-5000','未婚','已购房',0,1525335451),(11,1,11,162,91,'B','大专','其他','2000-5000','未婚','已购房',0,1525335451),(12,1,12,160,100,'AB','大专','政府机关/事业单位工作者','2000-5000','未婚','租房',0,1525335451),(13,1,13,164,116,'AB','本科','其他','10000-20000','未婚','租房',0,1525335451),(14,1,14,173,108,'B','大专','私营业主','10000-20000','未婚','与父母同住',0,1525335451),(15,1,15,163,107,'A','高中及中专','政府机关/事业单位工作者','5000-10000','未婚','租房',0,1525335451),(16,1,16,154,90,'A','大专','其他','10000-20000','未婚','与父母同住',0,1525335451),(17,1,17,164,89,'A','本科','私营业主','10000-20000','未婚','租房',0,1525335451),(18,1,18,157,92,'A','本科','企业职工','5000-10000','未婚','与父母同住',0,1525335451),(19,1,19,156,111,'AB','大专','私营业主','5000-10000','未婚','已购房',0,1525335451),(20,1,20,157,113,'O','高中及中专','其他','10000-20000','未婚','其他',0,1525335451),(21,1,21,172,99,'O','高中及中专','政府机关/事业单位工作者','2000-5000','未婚','租房',0,1525335451),(22,1,22,161,113,'B','大专','企业职工','10000-20000','未婚','与父母同住',0,1525335451),(23,1,23,158,105,'O','本科','政府机关/事业单位工作者','2000-5000','未婚','其他',0,1525335451),(24,1,24,160,86,'B','高中及中专','其他','2000-5000','未婚','与父母同住',0,1525335451),(25,1,25,163,110,'B','本科','政府机关/事业单位工作者','10000-20000','未婚','租房',0,1525335451),(26,1,26,154,120,'B','本科','企业职工','2000-5000','未婚','已购房',0,1525335451),(27,1,27,154,91,'O','高中及中专','政府机关/事业单位工作者','10000-20000','未婚','与父母同住',0,1525335451),(28,1,28,156,96,'A','本科','企业职工','10000-20000','未婚','租房',0,1525335451),(29,1,29,157,110,'O','本科','政府机关/事业单位工作者','5000-10000','未婚','租房',0,1525335451),(30,1,30,171,102,'A','大专','私营业主','2000-5000','未婚','与父母同住',0,1525335451),(31,1,31,155,89,'B','高中及中专','其他','10000-20000','未婚','租房',0,1525335451),(32,1,32,172,102,'AB','本科','政府机关/事业单位工作者','10000-20000','未婚','与父母同住',0,1525335451),(33,1,33,159,103,'O','大专','私营业主','10000-20000','未婚','与父母同住',0,1525335451),(34,1,34,156,113,'B','高中及中专','私营业主','2000-5000','未婚','租房',0,1525335451),(35,1,35,162,109,'A','本科','政府机关/事业单位工作者','10000-20000','未婚','已购房',0,1525335451),(36,1,36,175,95,'AB','本科','政府机关/事业单位工作者','10000-20000','未婚','与父母同住',0,1525335451),(37,1,37,174,106,'O','大专','其他','2000-5000','未婚','其他',0,1525335451),(38,1,38,163,109,'B','本科','其他','10000-20000','未婚','其他',0,1525335451),(39,1,39,154,101,'B','本科','其他','5000-10000','未婚','与父母同住',0,1525335451),(40,1,40,159,87,'O','大专','政府机关/事业单位工作者','2000-5000','未婚','租房',0,1525335451),(41,1,41,159,95,'A','大专','其他','5000-10000','未婚','已购房',0,1525335451),(42,1,42,169,91,'B','本科','私营业主','10000-20000','未婚','租房',0,1525335451),(43,1,43,158,86,'A','高中及中专','政府机关/事业单位工作者','5000-10000','未婚','租房',0,1525335451),(44,1,44,174,85,'B','大专','私营业主','2000-5000','未婚','租房',0,1525335451),(45,1,45,166,114,'O','高中及中专','政府机关/事业单位工作者','10000-20000','未婚','其他',0,1525335451),(46,1,46,163,102,'AB','本科','其他','5000-10000','未婚','租房',0,1525335451),(47,1,47,155,85,'A','本科','企业职工','2000-5000','未婚','已购房',0,1525335451),(48,1,48,153,114,'AB','高中及中专','私营业主','2000-5000','未婚','与父母同住',0,1525335451),(49,1,49,157,91,'O','高中及中专','私营业主','5000-10000','未婚','租房',0,1525335451),(50,1,50,158,103,'AB','大专','企业职工','10000-20000','未婚','已购房',0,1525335451),(51,1,51,174,114,'A','大专','私营业主','5000-10000','未婚','已购房',0,1525335451),(52,1,52,161,98,'A','高中及中专','其他','10000-20000','未婚','租房',0,1525335451),(53,1,53,156,115,'AB','大专','其他','10000-20000','未婚','与父母同住',0,1525335451),(54,1,54,170,115,'AB','高中及中专','其他','10000-20000','未婚','其他',0,1525335451),(55,1,55,162,106,'A','本科','私营业主','2000-5000','未婚','与父母同住',0,1525335451),(56,1,56,158,118,'A','高中及中专','其他','5000-10000','未婚','已购房',0,1525335451),(57,1,57,163,94,'AB','大专','其他','5000-10000','未婚','租房',0,1525335451),(58,1,58,154,93,'A','大专','其他','10000-20000','未婚','其他',0,1525335451),(59,1,59,157,109,'B','高中及中专','私营业主','5000-10000','未婚','已购房',0,1525335451),(60,1,60,160,96,'A','本科','政府机关/事业单位工作者','2000-5000','未婚','租房',0,1525335451),(61,1,61,153,86,'O','高中及中专','私营业主','2000-5000','未婚','已购房',0,1525335451),(62,1,62,164,112,'AB','本科','政府机关/事业单位工作者','5000-10000','未婚','与父母同住',0,1525335451),(63,1,63,174,89,'AB','大专','其他','2000-5000','未婚','已购房',0,1525335451),(64,1,64,153,98,'O','大专','政府机关/事业单位工作者','10000-20000','未婚','租房',0,1525335451),(65,1,65,165,111,'A','高中及中专','企业职工','10000-20000','未婚','已购房',0,1525335451),(66,1,66,153,114,'B','本科','其他','10000-20000','未婚','已购房',0,1525335451),(67,1,67,165,93,'O','高中及中专','企业职工','10000-20000','未婚','与父母同住',0,1525335451),(68,1,68,154,111,'B','本科','私营业主','2000-5000','未婚','租房',0,1525335451),(69,1,69,175,115,'AB','大专','其他','10000-20000','未婚','其他',0,1525335451),(70,1,70,156,116,'AB','高中及中专','私营业主','5000-10000','未婚','其他',0,1525335451),(71,1,71,166,96,'B','高中及中专','企业职工','5000-10000','未婚','其他',0,1525335451),(72,1,72,157,86,'AB','高中及中专','政府机关/事业单位工作者','5000-10000','未婚','其他',0,1525335451),(73,1,73,159,92,'AB','大专','私营业主','5000-10000','未婚','其他',0,1525335451),(74,1,74,155,87,'AB','本科','企业职工','5000-10000','未婚','其他',0,1525335451),(75,1,75,156,120,'B','本科','政府机关/事业单位工作者','2000-5000','未婚','租房',0,1525335451),(76,1,76,163,111,'O','大专','私营业主','5000-10000','未婚','已购房',0,1525335451),(77,1,77,161,115,'O','本科','企业职工','10000-20000','未婚','其他',0,1525335451),(78,1,78,154,88,'A','高中及中专','其他','5000-10000','未婚','租房',0,1525335451),(79,1,79,157,108,'AB','高中及中专','私营业主','10000-20000','未婚','已购房',0,1525335451),(80,1,80,174,93,'AB','高中及中专','其他','2000-5000','未婚','其他',0,1525335451),(81,1,81,167,100,'B','大专','政府机关/事业单位工作者','10000-20000','未婚','已购房',0,1525335451),(82,1,82,173,103,'B','大专','其他','10000-20000','未婚','租房',0,1525335451),(83,1,83,173,116,'O','本科','私营业主','5000-10000','未婚','其他',0,1525335451),(84,1,84,153,119,'A','大专','政府机关/事业单位工作者','2000-5000','未婚','其他',0,1525335451),(85,1,85,165,118,'B','高中及中专','其他','2000-5000','未婚','与父母同住',0,1525335451),(86,1,86,175,117,'A','高中及中专','政府机关/事业单位工作者','5000-10000','未婚','租房',0,1525335458),(87,1,87,159,94,'O','高中及中专','其他','10000-20000','未婚','其他',0,1525335458),(88,1,88,173,105,'O','本科','政府机关/事业单位工作者','2000-5000','未婚','其他',0,1525335458),(89,1,89,153,118,'O','本科','其他','5000-10000','未婚','其他',0,1525335458),(90,1,90,160,115,'B','本科','政府机关/事业单位工作者','10000-20000','未婚','租房',0,1525335458),(91,1,91,174,111,'O','大专','政府机关/事业单位工作者','10000-20000','未婚','租房',0,1525335458),(92,1,92,156,88,'B','高中及中专','其他','5000-10000','未婚','租房',0,1525335458),(93,1,93,153,119,'A','大专','私营业主','2000-5000','未婚','与父母同住',0,1525335458),(94,1,94,153,96,'O','大专','私营业主','10000-20000','未婚','与父母同住',0,1525335458),(95,1,95,164,112,'AB','本科','政府机关/事业单位工作者','5000-10000','未婚','已购房',0,1525335458),(96,1,96,162,98,'A','大专','其他','10000-20000','未婚','已购房',0,1525335458),(97,1,97,155,94,'B','本科','私营业主','10000-20000','未婚','租房',0,1525335458),(98,1,98,169,117,'B','大专','企业职工','5000-10000','未婚','与父母同住',0,1525335458),(99,1,99,160,85,'A','高中及中专','企业职工','10000-20000','未婚','其他',0,1525335458),(100,1,100,175,106,'O','高中及中专','私营业主','5000-10000','未婚','租房',0,1525335458),(101,1,101,160,114,'O','高中及中专','政府机关/事业单位工作者','5000-10000','未婚','租房',0,1525335458),(102,1,102,153,97,'O','大专','私营业主','10000-20000','未婚','与父母同住',0,1525335458),(103,1,103,159,114,'A','本科','企业职工','10000-20000','未婚','租房',0,1525335458),(104,1,104,155,106,'O','高中及中专','政府机关/事业单位工作者','2000-5000','未婚','其他',0,1525335458),(105,1,105,161,103,'B','大专','其他','2000-5000','未婚','已购房',0,1525335458),(106,1,106,175,102,'AB','大专','其他','2000-5000','未婚','租房',0,1525335458),(107,1,107,173,118,'A','本科','企业职工','10000-20000','未婚','已购房',0,1525335458),(108,1,108,166,89,'O','高中及中专','政府机关/事业单位工作者','2000-5000','未婚','其他',0,1525335458),(109,1,109,154,111,'B','本科','其他','10000-20000','未婚','其他',0,1525335458),(110,1,110,153,115,'B','高中及中专','其他','2000-5000','未婚','与父母同住',0,1525335458),(111,1,111,166,99,'B','高中及中专','私营业主','2000-5000','未婚','租房',0,1525335458),(112,1,112,164,94,'A','高中及中专','其他','5000-10000','未婚','已购房',0,1525335458),(113,1,113,174,97,'AB','本科','其他','2000-5000','未婚','已购房',0,1525335458),(114,1,114,172,114,'O','大专','政府机关/事业单位工作者','10000-20000','未婚','租房',0,1525335458);
/*!40000 ALTER TABLE `ims_jy_ppp_basic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_black`
--

DROP TABLE IF EXISTS `ims_jy_ppp_black`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_black` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `blackid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `blackid` (`blackid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_black`
--

LOCK TABLES `ims_jy_ppp_black` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_black` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_black` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_chat_doubi`
--

DROP TABLE IF EXISTS `ims_jy_ppp_chat_doubi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_chat_doubi` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `chatid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_chat_doubi`
--

LOCK TABLES `ims_jy_ppp_chat_doubi` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_chat_doubi` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_chat_doubi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_code`
--

DROP TABLE IF EXISTS `ims_jy_ppp_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_code` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `code` varchar(200) NOT NULL,
  `mid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_code`
--

LOCK TABLES `ims_jy_ppp_code` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_credit_log`
--

DROP TABLE IF EXISTS `ims_jy_ppp_credit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_credit_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `credit` int(10) NOT NULL,
  `type` varchar(255) NOT NULL COMMENT 'add,reduce',
  `log` int(10) NOT NULL COMMENT '1为身份认证消耗积分,2为积分兑换聊天机会,3为系统变更积分,4为用户充值积分',
  `logid` int(10) NOT NULL COMMENT '对方用户的id或充值记录id',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_credit_log`
--

LOCK TABLES `ims_jy_ppp_credit_log` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_credit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_credit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_desc`
--

DROP TABLE IF EXISTS `ims_jy_ppp_desc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_desc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `child` varchar(200) NOT NULL,
  `yidi` varchar(200) NOT NULL,
  `leixin` varchar(200) NOT NULL,
  `sex` varchar(200) NOT NULL,
  `fumu` varchar(200) NOT NULL,
  `meili` varchar(200) NOT NULL,
  `blank` int(10) NOT NULL COMMENT '未填写的字段个数',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_desc`
--

LOCK TABLES `ims_jy_ppp_desc` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_desc` DISABLE KEYS */;
INSERT INTO `ims_jy_ppp_desc` VALUES (1,1,1,'还没想好','不能','活泼开朗','看情况','看情况','头发',0,1525335451),(2,1,2,'不想','能','娇小可爱','看情况','看情况','头发',0,1525335451),(3,1,3,'不想','能','雍容华贵','看情况','不愿意','腿',0,1525335451),(4,1,4,'不想','不能','眉清目秀','不能','看情况','臀部',0,1525335451),(5,1,5,'想','看情况','性感妩媚','能','看情况','嘴唇',0,1525335451),(6,1,6,'还没想好','不能','活泼开朗','不能','愿意','头发',0,1525335451),(7,1,7,'想','能','娇小可爱','看情况','愿意','嘴唇',0,1525335451),(8,1,8,'不想','能','雍容华贵','看情况','不愿意','胸部',0,1525335451),(9,1,9,'还没想好','能','雍容华贵','看情况','看情况','颈部',0,1525335451),(10,1,10,'不想','能','性感妩媚','能','看情况','腿',0,1525335451),(11,1,11,'想','不能','活泼开朗','能','看情况','胸部',0,1525335451),(12,1,12,'不想','不能','性感妩媚','能','看情况','颈部',0,1525335451),(13,1,13,'还没想好','能','眉清目秀','不能','不愿意','眉毛',0,1525335451),(14,1,14,'还没想好','能','活泼开朗','不能','看情况','臀部',0,1525335451),(15,1,15,'不想','能','性感妩媚','不能','愿意','笑容',0,1525335451),(16,1,16,'不想','看情况','活泼开朗','看情况','不愿意','脚',0,1525335451),(17,1,17,'不想','看情况','温柔体贴','看情况','不愿意','耳朵',0,1525335451),(18,1,18,'不想','不能','温柔体贴','不能','愿意','腰部',0,1525335451),(19,1,19,'还没想好','能','落落大方','能','愿意','腰部',0,1525335451),(20,1,20,'不想','不能','娇小可爱','看情况','看情况','耳朵',0,1525335451),(21,1,21,'想','能','雍容华贵','不能','不愿意','颈部',0,1525335451),(22,1,22,'不想','能','落落大方','能','愿意','臀部',0,1525335451),(23,1,23,'想','能','落落大方','能','看情况','胸部',0,1525335451),(24,1,24,'不想','能','眉清目秀','能','不愿意','颈部',0,1525335451),(25,1,25,'不想','不能','善解人意','不能','愿意','颈部',0,1525335451),(26,1,26,'不想','看情况','眉清目秀','不能','不愿意','鼻梁',0,1525335451),(27,1,27,'还没想好','能','成熟魅力','不能','愿意','眉毛',0,1525335451),(28,1,28,'还没想好','看情况','温柔体贴','不能','愿意','腰部',0,1525335451),(29,1,29,'不想','能','落落大方','看情况','愿意','耳朵',0,1525335451),(30,1,30,'不想','能','落落大方','能','愿意','胸部',0,1525335451),(31,1,31,'不想','看情况','眉清目秀','不能','看情况','脚',0,1525335451),(32,1,32,'还没想好','能','落落大方','能','看情况','鼻梁',0,1525335451),(33,1,33,'想','看情况','温柔体贴','看情况','愿意','臀部',0,1525335451),(34,1,34,'不想','看情况','性感妩媚','看情况','不愿意','手',0,1525335451),(35,1,35,'不想','不能','娇小可爱','能','看情况','笑容',0,1525335451),(36,1,36,'不想','能','温柔体贴','看情况','不愿意','眼睛',0,1525335451),(37,1,37,'想','不能','性感妩媚','看情况','看情况','手',0,1525335451),(38,1,38,'想','不能','雍容华贵','能','看情况','胸部',0,1525335451),(39,1,39,'不想','不能','落落大方','看情况','不愿意','颈部',0,1525335451),(40,1,40,'不想','不能','娇小可爱','能','不愿意','笑容',0,1525335451),(41,1,41,'不想','看情况','落落大方','不能','看情况','臀部',0,1525335451),(42,1,42,'不想','不能','成熟魅力','看情况','不愿意','胳膊',0,1525335451),(43,1,43,'想','不能','活泼开朗','看情况','不愿意','脚',0,1525335451),(44,1,44,'想','看情况','成熟魅力','不能','愿意','嘴唇',0,1525335451),(45,1,45,'想','不能','娇小可爱','看情况','不愿意','鼻梁',0,1525335451),(46,1,46,'还没想好','看情况','眉清目秀','看情况','看情况','腰部',0,1525335451),(47,1,47,'不想','不能','成熟魅力','不能','看情况','颈部',0,1525335451),(48,1,48,'不想','能','活泼开朗','看情况','愿意','鼻梁',0,1525335451),(49,1,49,'想','不能','娇小可爱','能','不愿意','脚',0,1525335451),(50,1,50,'还没想好','看情况','活泼开朗','能','愿意','牙齿',0,1525335451),(51,1,51,'想','看情况','温柔体贴','看情况','看情况','臀部',0,1525335451),(52,1,52,'还没想好','看情况','成熟魅力','看情况','不愿意','头发',0,1525335451),(53,1,53,'想','不能','落落大方','能','不愿意','鼻梁',0,1525335451),(54,1,54,'还没想好','能','性感妩媚','不能','不愿意','鼻梁',0,1525335451),(55,1,55,'不想','不能','善解人意','看情况','愿意','眉毛',0,1525335451),(56,1,56,'不想','看情况','善解人意','能','看情况','胸部',0,1525335451),(57,1,57,'还没想好','不能','落落大方','能','不愿意','腰部',0,1525335451),(58,1,58,'不想','能','善解人意','不能','愿意','臀部',0,1525335451),(59,1,59,'不想','能','性感妩媚','不能','不愿意','眉毛',0,1525335451),(60,1,60,'不想','能','眉清目秀','不能','愿意','耳朵',0,1525335451),(61,1,61,'想','能','性感妩媚','不能','看情况','耳朵',0,1525335451),(62,1,62,'不想','能','活泼开朗','能','看情况','脚',0,1525335451),(63,1,63,'想','不能','雍容华贵','不能','不愿意','头发',0,1525335451),(64,1,64,'不想','不能','眉清目秀','能','不愿意','眉毛',0,1525335451),(65,1,65,'不想','不能','性感妩媚','看情况','看情况','笑容',0,1525335451),(66,1,66,'还没想好','不能','成熟魅力','不能','愿意','嘴唇',0,1525335451),(67,1,67,'还没想好','能','成熟魅力','能','愿意','手',0,1525335451),(68,1,68,'想','能','落落大方','不能','愿意','脚',0,1525335451),(69,1,69,'还没想好','看情况','雍容华贵','不能','愿意','胸部',0,1525335451),(70,1,70,'还没想好','不能','性感妩媚','能','愿意','胳膊',0,1525335451),(71,1,71,'不想','看情况','活泼开朗','看情况','愿意','臀部',0,1525335451),(72,1,72,'不想','能','落落大方','能','不愿意','头发',0,1525335451),(73,1,73,'不想','看情况','雍容华贵','看情况','不愿意','头发',0,1525335451),(74,1,74,'不想','不能','眉清目秀','看情况','不愿意','脚',0,1525335451),(75,1,75,'想','能','善解人意','不能','看情况','嘴唇',0,1525335451),(76,1,76,'还没想好','不能','善解人意','不能','不愿意','胳膊',0,1525335451),(77,1,77,'还没想好','能','性感妩媚','能','愿意','腿',0,1525335451),(78,1,78,'不想','不能','活泼开朗','能','愿意','鼻梁',0,1525335451),(79,1,79,'不想','看情况','性感妩媚','不能','不愿意','胸部',0,1525335451),(80,1,80,'还没想好','不能','雍容华贵','看情况','愿意','笑容',0,1525335451),(81,1,81,'不想','能','雍容华贵','能','不愿意','头发',0,1525335451),(82,1,82,'不想','不能','娇小可爱','能','愿意','头发',0,1525335451),(83,1,83,'还没想好','能','娇小可爱','能','看情况','腰部',0,1525335451),(84,1,84,'还没想好','能','性感妩媚','能','不愿意','胳膊',0,1525335451),(85,1,85,'不想','能','雍容华贵','看情况','不愿意','胸部',0,1525335451),(86,1,86,'不想','看情况','活泼开朗','不能','看情况','牙齿',0,1525335458),(87,1,87,'不想','不能','娇小可爱','看情况','看情况','耳朵',0,1525335458),(88,1,88,'想','能','落落大方','能','看情况','胸部',0,1525335458),(89,1,89,'想','不能','成熟魅力','看情况','愿意','脚',0,1525335458),(90,1,90,'不想','不能','善解人意','不能','愿意','颈部',0,1525335458),(91,1,91,'还没想好','能','温柔体贴','能','看情况','颈部',0,1525335458),(92,1,92,'想','能','温柔体贴','不能','看情况','眼睛',0,1525335458),(93,1,93,'不想','能','落落大方','能','愿意','胸部',0,1525335458),(94,1,94,'想','看情况','温柔体贴','看情况','愿意','臀部',0,1525335458),(95,1,95,'还没想好','不能','善解人意','看情况','不愿意','耳朵',0,1525335458),(96,1,96,'还没想好','不能','温柔体贴','不能','愿意','颈部',0,1525335458),(97,1,97,'不想','不能','成熟魅力','看情况','不愿意','胳膊',0,1525335458),(98,1,98,'还没想好','能','成熟魅力','能','愿意','嘴唇',0,1525335458),(99,1,99,'还没想好','不能','善解人意','不能','看情况','胳膊',0,1525335458),(100,1,100,'想','不能','娇小可爱','能','不愿意','脚',0,1525335458),(101,1,101,'想','不能','眉清目秀','不能','愿意','头发',0,1525335458),(102,1,102,'不想','能','雍容华贵','能','愿意','臀部',0,1525335458),(103,1,103,'想','看情况','善解人意','看情况','不愿意','脚',0,1525335458),(104,1,104,'不想','能','眉清目秀','不能','不愿意','脚',0,1525335458),(105,1,105,'还没想好','不能','落落大方','能','看情况','鼻梁',0,1525335458),(106,1,106,'还没想好','能','性感妩媚','看情况','愿意','颈部',0,1525335458),(107,1,107,'不想','能','活泼开朗','看情况','看情况','颈部',0,1525335458),(108,1,108,'想','能','性感妩媚','能','愿意','牙齿',0,1525335458),(109,1,109,'还没想好','不能','善解人意','能','愿意','笑容',0,1525335458),(110,1,110,'不想','能','眉清目秀','能','不愿意','颈部',0,1525335458),(111,1,111,'不想','看情况','性感妩媚','看情况','不愿意','手',0,1525335458),(112,1,112,'不想','看情况','善解人意','能','看情况','胸部',0,1525335458),(113,1,113,'不想','不能','娇小可爱','不能','愿意','手',0,1525335458),(114,1,114,'不想','不能','眉清目秀','能','不愿意','眉毛',0,1525335458),(115,1,164,'不想','看情况','善解人意','能','看情况','眼睛',0,1529228817),(116,1,215,'想','0','0','0','0','0',7,1562815744);
/*!40000 ALTER TABLE `ims_jy_ppp_desc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_dianyuan`
--

DROP TABLE IF EXISTS `ims_jy_ppp_dianyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_dianyuan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL DEFAULT '',
  `uid` int(10) NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `username` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(20) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `QQ` varchar(200) DEFAULT NULL,
  `wechat` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `description` text,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_dianyuan`
--

LOCK TABLES `ims_jy_ppp_dianyuan` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_dianyuan` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_dianyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_feedback`
--

DROP TABLE IF EXISTS `ims_jy_ppp_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_feedback` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `feedback` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_feedback`
--

LOCK TABLES `ims_jy_ppp_feedback` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_help`
--

DROP TABLE IF EXISTS `ims_jy_ppp_help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_help` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '批次ID,0为第一级',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `description` text COMMENT '描述',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_help`
--

LOCK TABLES `ims_jy_ppp_help` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_help` DISABLE KEYS */;
INSERT INTO `ims_jy_ppp_help` VALUES (1,1,'服务充值',0,0,'',1),(2,1,'账号密码',0,0,'',1),(3,1,'照片问题',0,0,'',1),(4,1,'活动咨询',0,0,'',1),(5,1,'聊天相关',0,0,'',1),(6,1,'投诉举报',0,0,'',1),(7,1,'其他常见',0,0,'',1),(9,1,'银行卡充值已经准确的填写了相关信息，还是失败怎么办?',1,0,'您选择的银行卡手机支付,失败原因可能有多种：1.您的银行卡号,身份证号、姓名等信息输入有误；2.手机状态异常，未能顺利完成银联支付系统的电话语音确认；3.您的银行卡暂不被支持；如信息正确的情况下，尝试3次依然失败，请更换其他银行卡重试或购买全国通用的移动或联通充值卡在页面上进行充值',1),(10,1,'如何办理聊天的业务呢？',1,0,'您好，请您登陆后，进入【我】点击【豆币账户】或【写信包月】选择需要的服务，进入充值界面。我们提供银行卡，充值卡，支付宝，汇款转账等方式充值。请根据页面提示操作。',1),(11,1,'和异性聊天，豆币是如何扣除的？',1,0,'您好，豆币是按人数收费的，即花费20豆币可以和一位女用户终身免费聊天。',1),(12,1,'可以用两张50元的充值卡充值100元的业务吗？',1,0,'您好，不可以，我们网站不支持合并充值，请您根据服务选择相应面额充值卡进行充值。',1),(13,1,'充值卡充值失败怎么办?',1,0,'请确认您的充值卡是全国通用的移动或者联通充值卡，如果提示您卡密已失效还未获得服务，请拨打易宝客服电话400-150-0800撤销订单，重新充值。',1),(14,1,'红娘服务是什么？',1,0,'为了帮助女用户找到符合自己要求的异性，提供了红娘服务。红娘服务内容包括：优先将红娘会员推荐给优质男性用户，获得更多交流机会；红娘将帮助申请红娘服务的用户向符合其征友要求的异性询问交友意向；实时监控询问总数。',1),(15,1,'如何申请红娘服务？',1,0,'女性用户，进入【我】—【设置中心】模块，点击【红娘设置】直接按提示申请即可。',1),(16,1,'如何取消红娘服务？',1,0,'进入【我】—【设置中心】模块，点击【有缘设置】退订服务即可取消该功能。',1),(17,1,'自动续费是什么，如何办理？',1,0,'自动续费是主动签约服务,支付时选择自动续费,服务到期/豆币余额不足时，将自动续费,自动续费同时赠送服务到期提醒/豆币余额提醒服务，到期前/豆币不足100时会给您发短信和站内信提醒。',1),(18,1,'收到心仪女生的回复，怎样才能给她写信？',1,0,'使用豆币和包月写信服务，可以给对方写信，请先购买豆币或升级成为写信包月会员。',1),(19,1,'购买的充值卡不是你们上面显示那些位数是怎么回事？',1,0,'您好，全国通用移动充值卡序列号是17位密码是18位，全国通用联通充值卡序列号15位，密码19位，如果您的位数不对，可能是地方卡，我们不支持地方充值卡充值。',1),(20,1,'如何确认我充值是否成功及服务期限？',1,0,'您好，每次充值管理员会发出充值成功与否的信息，请您注意查看您的信箱。如果您没有看到信息在您充值那个服务的页面会显示您充值后的信息及服务时间，豆币余额。',1),(21,1,'银行卡支付时，卡号和身份证需要是同一个人吗？',1,0,'是的，银行卡充值卡号和身份证姓名必须一致，否则支付不会成功。',1),(22,1,'手机号需要和开户时候预留的手机号码一致吗',1,0,'建议最好和银行预留手机号码一致，如果忘记号码，请咨询银行修改。',1),(24,1,'以前注册手机号码不用了能否将账号更改为现在手机号码？',2,0,'您好，账号已经注册不能更改，但是不影响您的正常使用，请您牢记您的账号密码。',1),(25,1,'如何修改密码？',2,0,'触屏版用户进入【我】—【设置中心】—【账号管理】，点击【修改密码】',1),(26,1,'如何上传相片？',3,0,'您好，请您点击【我】-进入我的相册中点击上传相片，选择您要上传的照片直接上传即可，上传之后，我们的客服人员会对您的照片进行审核，审核通过后会在相册中看到照片。',1),(27,1,'我的照片显示待审核状态怎么回事？',3,0,'您好，我们是一个正规的交友网站，上传的照片都是需要审核的，确保您的照片文明合理，五官清晰，24小时之后就会通过审核，所以请您耐心等待。',1),(28,1,'什么情况下照片只能显示在相册，而不能作为头像？',3,0,'您好，当您上传的照片过明或者过暗，只能看到头部不能看到一点肩部，头部在图片中过小以至看不清楚五官，五官被遮挡一部分，戴墨镜或者抽烟的都不能作为形象照，只能显示在您的相册中。',1),(29,1,'如何更换头像？',3,0,'您好，请您进入【我】-【我的相册】-查看相册，确定您要更换头像的照片，点击照片下的设形象照即可。',1),(30,1,'我的照片合格，但是没有通过审核，我要申诉',3,0,'请您点击“没有解决，进入人工咨询”，输入详细情况，我们的工作人员会在一个工作日内回复您，请登陆信箱中查看管理员来信。',1),(31,1,'我怎么看不到我上传的照片了，什么情况下照片会被删除？',3,0,'您好，当您上传的照片是色情的，非本人，裸露，闪图，带有联系方式的，年龄不符，看不到五官，合影，侧脸严重的都会被删除，所以建议您上传文明合理，五官清晰的个人照片。',1),(32,1,'如何删除已经上传的照片？',3,0,'您好，请您进入【我】-【我的相册】-查看相册，点击照片下面的删除，确定即可。',1),(33,1,'话费领取了怎么还没有到账？',4,0,'您好，话费领取之后，48小时后可查询到账话费',1),(34,1,'如何增加异性来信？',5,0,'您好，您可以多向异性用户打招呼，或者完善您的资料，提高您的诚信度，在空间-诚信里边验证您的手机号和身份证号（确保安全）这样会增加女会员对您的信任度。或者您可以在服务中办理爱情直通车，您的信息会优先被女会员搜索到，增多来信。',1),(35,1,'为什么提示系统禁言，并且发不了信？',5,0,'您好，你的信息包含本站的非法词汇，所以禁言48小时，请您耐心等待禁言时间过后，账号就能够正常使用了,谢谢！',1),(36,1,'有人违反了相关规定，我要揭发TA怎么做？',6,0,'您好.，针对用户的投诉请您在对方空间最下方点击“举报”并说明理由，会有专人审核处理。',1),(37,1,'如何才能索要到对方联系方式？',7,0,' 您好，建议您在和对方聊天过程中向对方索要联系方式，或者将您的联系方式发送给对方即可！',1),(38,1,'用户之间匹配度是怎么产生的？',7,0,'您好，匹配度不是随机的产生的，是按一定的算法计算出来的。主要是按自已与对方的资料及征友要求来计算的，如果较低说明有一方还是有些条件不适合的（但也仅供参考）。 ',1),(39,1,'为什么我的网页无法转跳?',7,0,'您好，建议您清空手机缓存尝试。',1),(40,1,'为什么访问我空间的人都说没看过?',7,0,'您好.当用户访问了用户列表，该列表中的所有用户即显示为被看过。',1),(41,1,'性别错误如何修改？',7,0,'您好，我们为严肃的婚恋网站，不能随意更改性别。如要更改性别需要在注销账号中进行更改。每月限使用1次修改性别功能。',1),(42,1,'怎么才能修改征友要求？',7,0,'您好，方法为点击资料中的征友要求进行修改即可。',1),(43,1,'怎样加黑对方？',7,0,'您好，进入对方空间，点加黑。',1),(44,1,'其他联系客服方式？',7,0,'除了客服电话外您也可以用其它反馈方式进行答疑在线答疑将问题提出第二天会有专人作答（在线答疑回复时间：9:00--18:00(周一至周五)',1),(45,1,'我填写联系方式对方是否看的到？',7,0,'对个人隐私有着严格的保密措施，对方浏览空间时是看不到的。请您放心。',1),(46,1,'手机号码验证流程？',7,0,'您好，点击诚信-手机号码验证---提交要验证的手机号码---按页面提示使用正确方法发送短信',1),(47,1,'为什么上传3张本人照片还不添加诚信等级？',7,0,'您好，只有成功上传三张照片并通过审核设为形象照后，等级才会得到增加。',1),(48,1,'如何查找对方是否在线?',7,0,'您好，您办理高级会员后就可查看对方是否在线。高级会员办理流程为“服务”里“高级会员”',1);
/*!40000 ALTER TABLE `ims_jy_ppp_help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_hf`
--

DROP TABLE IF EXISTS `ims_jy_ppp_hf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_hf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '0',
  `media_id` varchar(255) NOT NULL,
  `picurl` text,
  `sex` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=777 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_hf`
--

LOCK TABLES `ims_jy_ppp_hf` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_hf` DISABLE KEYS */;
INSERT INTO `ims_jy_ppp_hf` VALUES (689,1,0,'对你失望，你玩不起，我找别人玩了','',1,504,0,'',NULL,0),(688,1,0,'我的直播间房号是：7315 狂野小妹','',1,682,0,'',NULL,0),(687,1,0,'28-3','',1,682,1,'','images/1/2018/06/rZuoU8oVkuUMu3KLv3ZLlKOTIZUull.jpg',0),(686,1,0,'28-2','',1,682,1,'','images/1/2018/06/OAv4IJG8g8qq8q43QSn488S4mVWq3M.jpg',0),(685,1,0,'28-1','',1,682,1,'','images/1/2018/06/ZbusTzyhZ4CqTTKy47dTl9sTTS79sQ.jpg',0),(684,1,0,'我是狂野主播，过来看看嘛，我给您发照片，有兴趣了加入我直播','',1,682,0,'',NULL,0),(683,1,0,'halo','',1,682,0,'',NULL,0),(682,1,0,'组合28','',1,0,3,'',NULL,0),(680,1,0,'27-3','',1,676,1,'','images/1/2018/06/Nesn5SR5YiGyR8ELi5SF99YI5fR8Kr.jpg',0),(681,1,0,'我可以让您满意为止哦，听指挥','',1,676,0,'',NULL,0),(677,1,0,'我是荷官主播表演，直播房号：6211','',1,676,0,'',NULL,0),(678,1,0,'27-1','',1,676,1,'','images/1/2018/06/F4wPcFQSW44pCFp5J6Cpf4gtltZzPW.jpg',0),(679,1,0,'27-2','',1,676,1,'','images/1/2018/06/C059Bcm5xQdzMUJ7FBz5JyZ1pBHb5O.jpg',0),(676,1,0,'组合27','',1,0,3,'',NULL,0),(675,1,0,'刺激的在后面，我的直播房号：5237','',1,669,0,'',NULL,0),(674,1,0,'26-4','',1,669,1,'','images/1/2018/06/yGB1pUU5SkU97WuuNJ7n517nXBUb7S.jpg',0),(673,1,0,'26-3','',1,669,1,'','images/1/2018/06/y9d0w0DzI98usJ37UcmsIsTDu3wJtz.jpg',0),(672,1,0,'26-2','',1,669,1,'','images/1/2018/06/KNH70AK70KdHn11OV42A72DU00yK7Y.jpg',0),(671,1,0,'26-1','',1,669,1,'','images/1/2018/06/Rc38W9sd7v3pez8ssSTsN3WWu78psu.jpg',0),(670,1,0,'来看我直播脱衣舞吗','',1,669,0,'',NULL,0),(669,1,0,'组合26','',1,0,3,'',NULL,0),(668,1,0,'优衣库啪啪啪哦，直播房号：1317 来看我直播哦','',1,664,0,'',NULL,0),(667,1,0,'25-2','',1,664,1,'','images/1/2018/06/GCn1mI9zE7iupY7u47EE5NeimM5T01.jpg',0),(666,1,0,'25-1','',1,664,1,'','images/1/2018/06/oKeuQ0EXKeCE0jqqkfQCKwFCkEETRe.jpg',0),(665,1,0,'优衣库表演，帅哥来看嘛','',1,664,0,'',NULL,0),(664,1,0,'组合25','',1,0,3,'',NULL,0),(663,1,0,'房号：5317 加入进来看哈','',1,658,0,'',NULL,0),(662,1,0,'有需要看我表演吗','',1,658,0,'',NULL,0),(661,1,0,'24-3','',1,658,1,'','images/1/2018/06/d44dBdG48NdFnvsZp544nTFBT7bDpG.jpg',0),(660,1,0,'24-2','',1,658,1,'','images/1/2018/06/bJd8i8iiG82hGhTAMN28FRMnH2kj02.jpg',0),(659,1,0,'24-1','',1,658,1,'','images/1/2018/06/oy5PbBVv2pcVobm1fFvJvZynMM1fH6.jpg',0),(658,1,0,'组合24','',1,0,3,'',NULL,0),(657,1,0,'加入我的直播房号：6172','',1,648,0,'',NULL,0),(656,1,0,'这是我拍下的一些照片，看直播可以看更多的呦','',1,648,0,'',NULL,0),(655,1,0,'23-4','',1,648,1,'','images/1/2018/06/mORZO9xO9kuEzEh6900HcIexAEe9lh.jpg',0),(654,1,0,'23-3','',1,648,1,'','images/1/2018/06/nv8Qh579X75h6Rrr9V2V6A000Vvv79.jpg',0),(653,1,0,'23-2','',1,648,1,'','images/1/2018/06/Ru34m2000o40x0W4c45X022C940w5u.jpg',0),(652,1,0,'23-1','',1,648,1,'','images/1/2018/06/W818uY88yYliJ188H7yh1UH8Kk00K1.jpg',0),(651,1,0,'我表演制服妹的，还有一些道具','',1,648,0,'',NULL,0),(650,1,0,'帅哥您好我是主播6172','',1,648,0,'',NULL,0),(648,1,0,'组合23','',1,0,3,'',NULL,0),(647,1,0,'只能给你发这么多哦，喜欢的话来看我直播房号：8888','',1,639,0,'',NULL,0),(114,1,0,'回复裤9---4','',1,34,0,'',NULL,0),(115,1,0,'回复裤9---5','',1,34,0,'',NULL,0),(116,1,0,'回复裤9---6','',1,34,0,'',NULL,0),(117,1,0,'回复裤9---7','',1,34,0,'',NULL,0),(118,1,0,'回复裤9---8','',1,34,0,'',NULL,0),(119,1,0,'回复裤9---9','',1,34,0,'',NULL,0),(120,1,0,'回复裤9---10','',1,34,0,'',NULL,0),(121,1,0,'回复裤10---1','',1,35,0,'',NULL,0),(122,1,0,'回复裤10---2','',1,35,0,'',NULL,0),(123,1,0,'回复裤10---3','',1,35,0,'',NULL,0),(124,1,0,'回复裤10---4','',1,35,0,'',NULL,0),(125,1,0,'回复裤10---5','',1,35,0,'',NULL,0),(126,1,0,'回复裤10---6','',1,35,0,'',NULL,0),(127,1,0,'回复裤10---7','',1,35,0,'',NULL,0),(128,1,0,'回复裤10---8','',1,35,0,'',NULL,0),(129,1,0,'回复裤10---9','',1,35,0,'',NULL,0),(130,1,0,'回复裤10---10','',1,35,0,'',NULL,0),(131,1,0,'回复裤11---1','',1,36,0,'',NULL,0),(132,1,0,'回复裤11---2','',1,36,0,'',NULL,0),(133,1,0,'回复裤11---3','',1,36,0,'',NULL,0),(134,1,0,'回复裤11---4','',1,36,0,'',NULL,0),(135,1,0,'回复裤11---5','',1,36,0,'',NULL,0),(136,1,0,'回复裤11---6','',1,36,0,'',NULL,0),(137,1,0,'回复裤11---7','',1,36,0,'',NULL,0),(138,1,0,'回复裤11---8','',1,36,0,'',NULL,0),(139,1,0,'回复裤11---9','',1,36,0,'',NULL,0),(140,1,0,'回复裤11---10','',1,36,0,'',NULL,0),(141,1,0,'回复裤12---1','',1,37,0,'',NULL,0),(142,1,0,'回复裤12---2','',1,37,0,'',NULL,0),(143,1,0,'回复裤12---3','',1,37,0,'',NULL,0),(646,1,0,'22-4','',1,639,1,'','images/1/2018/06/UWL7Dc4SwT1DyM0Wlwkczq6mtNv0D1.jpg',0),(645,1,0,'22-3','',1,639,1,'','images/1/2018/06/htOQU1lNtNoaZnofluo1l6KK8Klqq6.jpg',0),(644,1,0,'22-2','',1,639,1,'','images/1/2018/06/mnG9aat9AxMb7nN9OzM3of3UqQz7Ga.jpg',0),(643,1,0,'22-1','',1,639,1,'','images/1/2018/06/s9sbsK49bPw5w8sR4N9rKOGd9BSS7z.jpg',0),(642,1,0,'我的直播房号8888，记得来关注我哦，我现在发一些照片给你看','',1,639,0,'',NULL,0),(641,1,0,'我是表演水上鸳鸯的','',1,639,0,'',NULL,0),(640,1,0,'你好，有需要看直播吗？','',1,639,0,'',NULL,0),(639,1,0,'组合22','',1,0,3,'',NULL,0),(638,1,0,'记住我的房号哦 9622','',1,632,0,'',NULL,0),(637,1,0,'21-3','',1,632,1,'','images/1/2018/06/a6gWmum6gsVwcYDuW4gfR1iCI5Z51I.jpg',0),(636,1,0,'21-2','',1,632,1,'','images/1/2018/06/NgW9wywYwFWBE9W99yh9HG06WRb7Hv.jpg',0),(635,1,0,'21-1','',1,632,1,'','images/1/2018/06/HY7LyYbN8K2ZnyKln22yD1P7mxb177.jpg',0),(634,1,0,'我是表演茄子的，请问加入我直播间吗','',1,632,0,'',NULL,0),(633,1,0,'你好，我是主播小龙女','',1,632,0,'',NULL,0),(632,1,0,'组合21','',1,0,3,'',NULL,0),(631,1,0,'你可以搜索我的房号8621','',1,626,0,'',NULL,0),(630,1,0,'蜡烛表演，然后后面就越来越刺激','',1,626,0,'',NULL,0),(629,1,0,'20-3','',1,626,1,'','images/1/2018/06/nsh904KLffws01zsH91la44u4340V9.jpg',0),(628,1,0,'20-2','',1,626,1,'','images/1/2018/06/J5UUN5xJnVJEI5Zxw5HhexUztEDuTh.jpg',0),(627,1,0,'20-1','',1,626,1,'','images/1/2018/06/h2DXWpzg6iPa6PPwtWpwDxdIxnOG9K.jpg',0),(626,1,0,'组合20','',1,0,3,'',NULL,0),(625,1,0,'19-4','',1,619,1,'','images/1/2018/06/Sg1yQQLVgv1j2VO88LGL8VLfGOLYgG.jpg',0),(624,1,0,'19-3','',1,619,1,'','images/1/2018/06/qu595K94Z53lr4NA5fr5kRL9GUKq53.jpg',0),(623,1,0,'19-2','',1,619,1,'','images/1/2018/06/ayTyeX83y00TZSuA3PDztSS8x4S08i.jpg',0),(204,1,0,'回复裤18---4','',1,43,0,'',NULL,0),(205,1,0,'回复裤18---5','',1,43,0,'',NULL,0),(206,1,0,'回复裤18---6','',1,43,0,'',NULL,0),(207,1,0,'回复裤18---7','',1,43,0,'',NULL,0),(208,1,0,'回复裤18---8','',1,43,0,'',NULL,0),(209,1,0,'回复裤18---9','',1,43,0,'',NULL,0),(210,1,0,'回复裤18---10','',1,43,0,'',NULL,0),(211,1,0,'回复裤19---1','',1,44,0,'',NULL,0),(212,1,0,'回复裤19---2','',1,44,0,'',NULL,0),(213,1,0,'回复裤19---3','',1,44,0,'',NULL,0),(214,1,0,'回复裤19---4','',1,44,0,'',NULL,0),(215,1,0,'回复裤19---5','',1,44,0,'',NULL,0),(216,1,0,'回复裤19---6','',1,44,0,'',NULL,0),(217,1,0,'回复裤19---7','',1,44,0,'',NULL,0),(218,1,0,'回复裤19---8','',1,44,0,'',NULL,0),(219,1,0,'回复裤19---9','',1,44,0,'',NULL,0),(220,1,0,'回复裤19---10','',1,44,0,'',NULL,0),(221,1,0,'回复裤20---1','',1,45,0,'',NULL,0),(222,1,0,'回复裤20---2','',1,45,0,'',NULL,0),(223,1,0,'回复裤20---3','',1,45,0,'',NULL,0),(224,1,0,'回复裤20---4','',1,45,0,'',NULL,0),(225,1,0,'回复裤20---5','',1,45,0,'',NULL,0),(226,1,0,'回复裤20---6','',1,45,0,'',NULL,0),(227,1,0,'回复裤20---7','',1,45,0,'',NULL,0),(228,1,0,'回复裤20---8','',1,45,0,'',NULL,0),(229,1,0,'回复裤20---9','',1,45,0,'',NULL,0),(230,1,0,'回复裤20---10','',1,45,0,'',NULL,0),(231,1,0,'回复裤21---1','',1,46,0,'',NULL,0),(232,1,0,'回复裤21---2','',1,46,0,'',NULL,0),(233,1,0,'回复裤21---3','',1,46,0,'',NULL,0),(622,1,0,'19-1','',1,619,1,'','images/1/2018/06/T8NKSAIejHRXJiWLzArIZfIlWrefD6.jpg',0),(621,1,0,'我的直播房号是6888，你加入我直播间呀','',1,619,0,'',NULL,0),(620,1,0,'小哥哥看刺激的吗','',1,619,0,'',NULL,0),(619,1,0,'组合19','',1,0,3,'',NULL,0),(618,1,0,'进直播间找我搜索我房号6824就可以看了','',1,610,0,'',NULL,0),(617,1,0,'这只是开头，后面精彩刺激的更多','',1,610,0,'',NULL,0),(616,1,0,'18-3','',1,610,1,'','images/1/2018/06/t91xlxn6pU5z1xVzNV6ep5UuV229V3.jpg',0),(615,1,0,'18-2','',1,610,1,'','images/1/2018/06/RCpge3X4vidP3DzePD7tdc3IE4ltre.jpg',0),(614,1,0,'18-1','',1,610,1,'','images/1/2018/06/oJ2aOtj2I628Jy2Y90jC6oX9y9iayj.jpg',0),(613,1,0,'什么都表演的哦，我给你发一些我拍下的照片哈','',1,610,0,'',NULL,0),(612,1,0,'有兴趣看直播吗','',1,610,0,'',NULL,0),(611,1,0,'帅哥您好','',1,610,0,'',NULL,0),(610,1,0,'组合18','',1,0,3,'',NULL,0),(609,1,0,'你再哪里呀','',1,602,2,'audios/1/2018/06/hsQqc89j2h8RPRRKGbCKhc59E559cp.wav',NULL,0),(608,1,0,'16-3','',1,602,1,'','images/1/2018/06/FW50iNq5riYVcTWv394v5nzVWaiXNy.jpg',0),(607,1,0,'16-2','',1,602,1,'','images/1/2018/06/ZsV9qLV2Aduaa2vofmMAqSuaP9Zlld.jpg',0),(606,1,0,'给你发一些刺激的嘿','',1,602,0,'',NULL,0),(605,1,0,'这个是我本人，你有照片吗','',1,602,0,'',NULL,0),(600,1,0,'你好，？？','',1,593,0,'',NULL,0),(601,1,0,'在的就回一句话','',1,593,0,'',NULL,0),(602,1,0,'组合16','',1,0,3,'',NULL,0),(603,1,0,'约一夜情吗','',1,602,0,'',NULL,0),(604,1,0,'16-1','',1,602,1,'','images/1/2018/06/p6dBNjJGvbzO31z9n5zn3JJ1Jbjzvv.jpg',0),(598,1,0,'你在哪里上班','',1,593,0,'',NULL,0),(599,1,0,'在不在，方便视频吗','',1,593,0,'',NULL,0),(596,1,0,'你有没有女朋友','',1,593,0,'',NULL,0),(597,1,0,'我叫李慧娟，你呢','',1,593,0,'',NULL,0),(595,1,0,'家里人','',1,593,2,'audios/1/2018/06/n38f6dHjjjrbdjVj5BD2J1Hrjv5aFa.wav',NULL,0),(594,1,0,'15-1','',1,593,1,'','images/1/2018/06/G1A48hrZknDT2QXF181Fk8qIdR02zM.jpg',0),(591,1,0,'你可以语音吗','',1,584,0,'',NULL,0),(592,1,0,'接一下视频','',1,584,0,'',NULL,0),(593,1,0,'组合15','',1,0,3,'',NULL,0),(590,1,0,'结婚前有必要先测试下吗？','',1,584,0,'',NULL,0),(589,1,0,'14-2','',1,584,1,'','images/1/2018/06/qdUzziIex3ElGLUYGZuYawrEaa0LwP.jpg',0),(587,1,0,'一夜情约吗','',1,584,0,'',NULL,0),(588,1,0,'14-1','',1,584,1,'','images/1/2018/06/V255R5s6kg9pKkGr69kZ420t01Gpvg.jpg',0),(586,1,0,'有时间','',1,584,2,'audios/1/2018/06/GKthH1miZn0S00ISDiZ3iT5s5oDKI3.mp3',NULL,0),(585,1,0,'在吗','',1,584,2,'audios/1/2018/06/VSCJ6w8wlOacq6XH6hHPsy9Q6aoa6d.mp3',NULL,0),(583,1,0,'微信发我，我加你','',1,574,0,'',NULL,0),(584,1,0,'组合14','',1,0,3,'',NULL,0),(581,1,0,'发你的位置给我，我们出去喝酒','',1,574,0,'',NULL,0),(582,1,0,'发语音给你，你怎么拒绝了','',1,574,0,'',NULL,0),(580,1,0,'最近不开心，只想找酒喝，你请客吗','',1,574,0,'',NULL,0),(579,1,0,'13-3','',1,574,1,'','images/1/2018/06/BaUa23uGVkjU3vJm37k9Ggh3HEuu0Z.jpg',0),(577,1,0,'13-1','',1,574,1,'','images/1/2018/06/g1RHE1W110iixoiwz2HAxWaqvY0HRS.jpg',0),(578,1,0,'13-2','',1,574,1,'','images/1/2018/06/t7NqnND4L7xyN4P3407PaB53D55ba5.jpg',0),(576,1,0,'我觉得我不是好女人','',1,574,0,'',NULL,0),(575,1,0,'好男人','',1,574,2,'audios/1/2018/06/fBn4P4C44NHAWPPg4hLwHh5C55H7ln.mp3',NULL,0),(572,1,0,'发了吗，还是卡了','',1,563,0,'',NULL,0),(573,1,0,'？？？？？？','',1,563,0,'',NULL,0),(574,1,0,'组合13','',1,0,3,'',NULL,0),(571,1,0,'你也发出你的，适合的我们就开房去','',1,563,0,'',NULL,0),(570,1,0,'12-3','',1,563,1,'','images/1/2018/06/If7D90Xxu5d7R9xUP0zUpXuXGxHUT7.jpg',0),(568,1,0,'12-1','',1,563,1,'','images/1/2018/06/nbs8IzIB5CIbgGSUYIy1UqGBsGb56I.jpg',0),(569,1,0,'12-2','',1,563,1,'','images/1/2018/06/CgN0o0404H7C7D4p8gnG3DOdp7dG47.jpg',0),(566,1,0,'你是做什么的','',1,563,2,'audios/1/2018/06/euyuPv7jCxJ7fwKQfm5jfxPllFy5HC.mp3',NULL,0),(567,1,0,'大家到这里来都是找一夜情的，我就直接点哦，你也发一下直接点的给我，适合我们的一起','',1,563,0,'',NULL,0),(563,1,0,'组合12','',1,0,3,'',NULL,0),(564,1,0,'好无聊','',1,563,2,'audios/1/2018/06/FrURF2Bi319RR5FfraRRFcrC2Zm5z1.mp3',NULL,0),(562,1,0,'我这发视频给你，提醒你没开通会员','',1,552,0,'',NULL,0),(561,1,0,'你能视频通话吗','',1,552,0,'',NULL,0),(560,1,0,'我的身材可以吗','',1,552,0,'',NULL,0),(558,1,0,'11-4','',1,552,1,'','images/1/2018/06/s9r50F1C1v2cx57U2fsrA1GqD22QSx.jpg',0),(559,1,0,'11-5','',1,552,1,'','images/1/2018/06/LPTplD7Jl1SxqJRQ5XvzXjvRJTtMxE.jpg',0),(557,1,0,'11-3','',1,552,1,'','images/1/2018/06/fv9dvhQPEC2XIExMz9eD2Ie8cb8zlP.jpg',0),(556,1,0,'11-2','',1,552,1,'','images/1/2018/06/ZRCupR7CL8FUlkrk8R5uLcCFLVUlp7.jpg',0),(555,1,0,'11-1','',1,552,1,'','images/1/2018/06/wNhEfOE434HMOIm4wz3433Hwb544qn.jpg',0),(554,1,0,'喜欢开放的吗','',1,552,2,'audios/1/2018/06/KB2eDHvheVZKpnI5QsQqzhQv5d53kH.mp3',NULL,0),(551,1,0,'发你的电话给我，我们聊聊','',1,542,0,'',NULL,0),(552,1,0,'组合11','',1,0,3,'',NULL,0),(553,1,0,'不经常上这里','',1,542,2,'audios/1/2018/06/ukMQySggyhGSHgMJG4oGf5wlbvSG5G.mp3',NULL,0),(550,1,0,'你电话多少呢','',1,542,0,'',NULL,0),(548,1,0,'发你的','',1,542,0,'',NULL,0),(549,1,0,'10-3','',1,542,1,'','images/1/2018/06/PlGS7XfHB2fulhLB9jY3Gf7J7Lg597.jpg',0),(547,1,0,'10-2','',1,542,1,'','images/1/2018/06/v0lAjc12718cxmm280M828CTVM1FbM.jpg',0),(544,1,0,'你几岁','',1,542,0,'',NULL,0),(545,1,0,'不知道你有没有时间陪我说会话','',1,542,0,'',NULL,0),(546,1,0,'10-1','',1,542,1,'','images/1/2018/06/pZ9JmKphZ4V2Cd2CJy5ZyVZHjsjH2h.jpg',0),(543,1,0,'很高兴认识您','',1,542,0,'',NULL,0),(541,1,0,'说个话喂','',1,532,0,'',NULL,0),(542,1,0,'组合10','',1,0,3,'',NULL,0),(540,1,0,'你觉得是性感的好，还是可爱一些好~~','',1,532,0,'',NULL,0),(538,1,0,'可以来陪我喝洒吗？','',1,532,0,'',NULL,0),(539,1,0,'想找一个懂我的人','',1,532,0,'',NULL,0),(537,1,0,'会不会觉得我太开放了','',1,532,0,'',NULL,0),(536,1,0,'9-2','',1,532,1,'','images/1/2018/06/IroHDwedZVOgMdY9mYhddMHgZcOHMf.jpg',0),(534,1,0,'很吸引你的异性主动来勾引你，你会怎么样？','',1,532,0,'',NULL,0),(535,1,0,'9-1','',1,532,1,'','images/1/2018/06/ecPpAXHXjpbHckjOm8obRiFcif8nvK.jpg',0),(532,1,0,'组合9','',1,0,3,'',NULL,0),(533,1,0,'一般晚上','',1,532,2,'audios/1/2018/06/VXc65c6NHoqnqJKRKCCCxc6CNEjXcH.wav',NULL,0),(530,1,0,'蚂蚁上树，冰火两重天','',1,523,0,'',NULL,0),(531,1,0,'需要吗，做完再结','',1,523,0,'',NULL,0),(528,1,0,'8-3','',1,523,1,'','images/1/2018/06/aeWdce6sg8CGmYc6fqnZTCeDnCSsFe.jpg',0),(529,1,0,'有兴趣吗','',1,523,0,'',NULL,0),(527,1,0,'8-2','',1,523,1,'','images/1/2018/06/rF6xf00oOAFxxX46W6CFfW6cF60Wxh.jpg',0),(509,1,0,'平时都是怎么消遣的呀？','',1,504,0,'',NULL,0),(510,1,0,'6-1','',1,504,1,'','images/1/2018/06/OP3pgcF3c639wwP6p6b9JFPpp9jww9.jpg',0),(511,1,0,'6-2','',1,504,1,'','images/1/2018/06/LHjIh19867h1ouhlOUqqg2hUGznZte.jpg',0),(512,1,0,'6-3','',1,504,1,'','images/1/2018/06/GTT2Rg22IUWx47dawal2dLZN7trdDU.jpg',0),(513,1,0,'我们比谁发得漏，我现在发到这，然后现在你发','',1,504,0,'',NULL,0),(514,1,0,'你不靠谱啊，不发么','',1,504,0,'',NULL,0),(515,1,0,'组合7','',1,0,3,'',NULL,0),(516,1,0,'找有趣','',1,515,2,'audios/1/2018/06/b9KOC9ni57a91O0o0W54WWAoO7oKCi.wav',NULL,0),(517,1,0,'7-1','',1,515,1,'','images/1/2018/06/L6rNkYD61FdNIV66fRYIfdKJNnI6kB.jpg',0),(518,1,0,'7-2','',1,515,1,'','images/1/2018/06/BtBg4B95I42zZ44w953I16YDgtzxRI.jpg',0),(519,1,0,'你有什么可烂漫的事吗？说来听听','',1,515,0,'',NULL,0),(520,1,0,'我觉得合适的话，可以陪你','',1,515,0,'',NULL,0),(521,1,0,'？？？？','',1,515,0,'',NULL,0),(522,1,0,'在嘛','',1,515,0,'',NULL,0),(523,1,0,'组合8','',1,0,3,'',NULL,0),(524,1,0,'介意不是','',1,523,2,'audios/1/2018/06/M2F83LwSXgWX4NfM7GwsFz7wg7fbKG.mp3',NULL,0),(525,1,0,'约吗？我收费的，你在附近哪里','',1,523,0,'',NULL,0),(526,1,0,'8-1','',1,523,1,'','images/1/2018/06/dxxHVHjFwxKFvZ28HJ8j2t98p9P25v.jpg',0),(506,1,0,'约吗，你在这附近没','',1,504,0,'',NULL,0),(507,1,0,'陪人家聊会天呗','',1,504,0,'',NULL,0),(508,1,0,'聊什么都行噢~','',1,504,0,'',NULL,0),(505,1,0,'在就回一下','',1,504,2,'audios/1/2018/06/tmMw6p6UWWWW6sHjw6Ww0szt08p6m3.mp3',NULL,0),(503,1,0,'在吗回句话','',1,496,0,'',NULL,0),(504,1,0,'组合6','',1,0,3,'',NULL,0),(502,1,0,'你在这附近的吗','',1,496,0,'',NULL,0),(475,1,0,'你微信多少','',1,466,0,'',NULL,0),(476,1,0,'我看同城显示你在几公里内，你发微信来，我去找你','',1,466,0,'',NULL,0),(477,1,0,'组合3','',1,0,3,'',NULL,0),(478,1,0,'真心找女朋友吗','',1,477,2,'audios/1/2018/06/z51195hil57Fc5c5cfGCJKv7C6UMIj.mp3',NULL,0),(479,1,0,'发你相片认识一下','',1,477,0,'',NULL,0),(480,1,0,'3-1','',1,477,1,'','images/1/2018/06/rvB1ofTf7H00RFBrO1U4ohrT4a0tNu.jpg',0),(481,1,0,'这是我的照片，你的呢','',1,477,0,'',NULL,0),(482,1,0,'3-2','',1,477,1,'','images/1/2018/06/CGf77qIu7JTfNU0IGB3T3ij5J8tofj.jpg',0),(483,1,0,'你的JJ有10公分吗','',1,477,0,'',NULL,0),(484,1,0,'3-3','',1,477,1,'','images/1/2018/06/yRRWtr6WdFglwNtgk456rz14Ti66k6.jpg',0),(485,1,0,'你有10公分起的话，我们可以约，没有的话就算哦','',1,477,0,'',NULL,0),(486,1,0,'回句话','',1,477,0,'',NULL,0),(487,1,0,'不在吗，在了就回我','',1,477,0,'',NULL,0),(488,1,0,'组合4','',1,0,3,'',NULL,0),(489,1,0,'同城吗','',1,488,0,'',NULL,0),(490,1,0,'你几岁了','',1,488,0,'',NULL,0),(491,1,0,'是处男吗','',1,488,0,'',NULL,0),(492,1,0,'4-1','',1,488,1,'','images/1/2018/06/GW830ezTZRGOP8GcmJR3rm0Rzmtz8U.jpg',0),(493,1,0,'4-2','',1,488,1,'','images/1/2018/06/pIdjdyD66UYmJXzXI4Uk4V7dwjd643.jpg',0),(494,1,0,'我的身材怎样，请我去酒吧吗','',1,488,0,'',NULL,0),(495,1,0,'打字好累','',1,488,2,'audios/1/2018/06/CE800EfHZZRLeffRH8N5H1QfE13hFR.wav',NULL,0),(496,1,0,'组合5','',1,0,3,'',NULL,0),(497,1,0,'找个适合的','',1,496,2,'audios/1/2018/06/JFC00bMCcCAoC5znAFG8NNNggwc5wA.wav',NULL,0),(498,1,0,'你那里的','',1,496,0,'',NULL,0),(499,1,0,'5-1','',1,496,1,'','images/1/2018/06/r9qW9K2kNfF08QkQn8M2793w8k7f92.jpg',0),(500,1,0,'这个是我，你有照片吗','',1,496,0,'',NULL,0),(501,1,0,'在吗，发一下你的照片给我看看','',1,496,0,'',NULL,0),(474,1,0,'这是我之前男朋友一起拍的，我可以给你同样的待遇，我要报复他，拍给他看','',1,466,0,'',NULL,0),(473,1,0,'2-3','',1,466,1,'','images/1/2018/06/T2fcqz6aIvaMQ26Cd2EcrCno2cvncn.jpg',0),(466,1,0,'组合2','',1,0,3,'',NULL,0),(467,1,0,'刚分手','',1,466,2,'audios/1/2018/06/BrT6FSNfNdsN8f81c11s9egtLN9Zfr.wav',NULL,0),(468,1,0,'跟我去开房你敢吗','',1,466,0,'',NULL,0),(469,1,0,'我男朋友对不起我，我也要对不起他','',1,466,0,'',NULL,0),(470,1,0,'2-1','',1,466,1,'','images/1/2018/06/sjX598hJ9NnHzSqgZgrQGEg9S9xQnZ.jpg',0),(471,1,0,'2-2','',1,466,1,'','images/1/2018/06/uOQRMOOyoeltT399K36roT7O9od919.jpg',0),(472,1,0,'怎样，我可以给你很好的服务','',1,466,0,'',NULL,0),(463,1,0,'怎样，发一下你的微信','',1,455,0,'',NULL,0),(464,1,0,'在吗，回句话','',1,455,0,'',NULL,0),(465,1,0,'人呢？？？？？','',1,455,0,'',NULL,0),(461,1,0,'约吗','',1,455,0,'',NULL,0),(462,1,0,'1-3','',1,455,1,'','images/1/2018/06/HjLjIHtJmQ4QjtUfUwNGdGfa4LGZnP.jpg',0),(459,1,0,'你有照片吗？发发你的','',1,455,0,'',NULL,0),(460,1,0,'1-2','',1,455,1,'','images/1/2018/06/GCD02ZpkOOHW7cPWD656CZo2olCc7l.jpg',0),(458,1,0,'1-1','',1,455,1,'','images/1/2018/06/Dt48eI5I45hUEcI6E8tUScTG404uU9.jpg',0),(457,1,0,'有女朋友了吗','',1,455,2,'audios/1/2018/06/W1s1s1zeSmsF1laC9eecsZ41f9C09f.mp3',NULL,0),(455,1,0,'组合1','',1,0,3,'',NULL,0),(456,1,0,'你好约吗？','',1,455,0,'',NULL,0),(690,1,0,'失踪了吗，在不在','',1,515,0,'',NULL,0),(691,1,0,'来捧场哦，我给您好好表演','',1,682,0,'',NULL,0),(692,1,0,'进来我直播了吗','',1,676,0,'',NULL,0),(693,1,0,'抓紧一点，我马上就开播了','',1,676,0,'',NULL,0),(694,1,0,'亲，在吗','',1,682,0,'',NULL,0),(695,1,0,'Did you come to me?','',1,682,0,'',NULL,0),(696,1,0,'I can listen to the command, come here','',1,682,0,'',NULL,0),(697,1,0,'组合29','',1,0,3,'',NULL,0),(698,1,0,'你好','',1,697,0,'',NULL,0),(699,1,0,'在干吗呢','',1,697,0,'',NULL,0),(700,1,0,'你叫什么名字？有照片吗','',1,697,0,'',NULL,0),(701,1,0,'29-1','',1,697,1,'','images/1/2018/06/dJJRrQgKQTIKED6eOJrrjCCx6zXRrk.jpg',0),(702,1,0,'这是我的照片，您的发一下好嘛，交个朋友','',1,697,0,'',NULL,0),(703,1,0,'你在这附近吗，我看平台这显示您距离很近','',1,697,0,'',NULL,0),(704,1,0,'人呢，在不在','',1,697,0,'',NULL,0),(705,1,0,'微信聊吧，发你微信给我，这平台老是断线不太好','',1,697,0,'',NULL,0),(706,1,0,'组合30','',1,0,3,'',NULL,0),(707,1,0,'帅哥在哪里','',1,706,0,'',NULL,0),(708,1,0,'可以坚持30分钟起吗','',1,706,0,'',NULL,0),(709,1,0,'30-1','',1,706,1,'','images/1/2018/06/vKUk29KOJusZjUow902WOjOiRs0jRp.jpg',0),(710,1,0,'你有照片发来看看吗','',1,706,0,'',NULL,0),(711,1,0,'。。。。。','',1,706,0,'',NULL,0),(712,1,0,'怎么你们男的都不回话的','',1,706,0,'',NULL,0),(713,1,0,'回一句啊','',1,706,0,'',NULL,0),(714,1,0,'在不在','',1,706,0,'',NULL,0),(715,1,0,'组合31','',1,0,3,'',NULL,0),(716,1,0,'31-1','',1,715,1,'','images/1/2018/06/xHre26442f6CW0C69115R5C4WFa2i6.jpg',0),(717,1,0,'同城约么','',1,715,0,'',NULL,0),(718,1,0,'有没有微信呢','',1,715,0,'',NULL,0),(719,1,0,'发一下','',1,715,0,'',NULL,0),(720,1,0,'你位置在哪里','',1,715,0,'',NULL,0),(721,1,0,'请我吃个饭怎样呢','',1,715,0,'',NULL,0),(722,1,0,'帅哥在线吗','',1,715,0,'',NULL,0),(723,1,0,'帅哥。。。','',1,715,0,'',NULL,0),(724,1,0,'组合32','',1,0,3,'',NULL,0),(725,1,0,'有没有12公分起的呢','',1,724,0,'',NULL,0),(726,1,0,'32-1','',1,724,1,'','images/1/2018/06/XMxjMM2xvEzejKdj1erdqJxQjO6eo1.jpg',0),(727,1,0,'这是我本人','',1,724,0,'',NULL,0),(728,1,0,'有12公分起的话就约哈，没有就不用回了','',1,724,0,'',NULL,0),(729,1,0,'组合33','',1,0,3,'',NULL,0),(730,1,0,'求包养','',1,729,0,'',NULL,0),(731,1,0,'33-1','',1,729,1,'','images/1/2018/06/fgxKoWLf6LwP55ZBx53ZkkbwG0eEWE.jpg',0),(732,1,0,'老板有意的话就联系我，照片是我本人','',1,729,0,'',NULL,0),(733,1,0,'一月付我1万5就可以，我给你很好的服务','',1,729,0,'',NULL,0),(734,1,0,'有微信就发一下，我加你','',1,729,0,'',NULL,0),(735,1,0,'组合34','',1,0,3,'',NULL,0),(737,1,0,'呻吟1','',1,735,2,'audios/1/2018/06/ykK3ZkM3uQzfzfMp7Qmp763kBFjoxz.mp3',NULL,0),(739,1,0,'34-1','',1,735,1,'','images/1/2018/06/eTsDljIsgsBSlL9JxkLIYLtD9BVdIP.jpg',0),(740,1,0,'包夜吗，哥哥','',1,735,0,'',NULL,0),(741,1,0,'34-2','',1,735,1,'','images/1/2018/06/Gzl5h455q5Cl454R444B5l4544r4J4.jpg',0),(742,1,0,'需要吗？','',1,735,0,'',NULL,0),(743,1,0,'我今天才在这附近哦，明天就要去上海了','',1,735,0,'',NULL,0),(744,1,0,'微信多少，我们微信聊','',1,735,0,'',NULL,0),(745,1,0,'组合35','',1,0,3,'',NULL,0),(746,1,0,'很高兴认识你','',1,745,0,'',NULL,0),(747,1,0,'你刚注册的吗','',1,745,0,'',NULL,0),(748,1,0,'在这平台聊天可以直接，都是约炮来的','',1,745,0,'',NULL,0),(749,1,0,'35-1','',1,745,1,'','images/1/2018/06/s1M1B92ll23M6MVX182B67ft7BmFBF.jpg',0),(750,1,0,'这个是我，你可以维持30分钟吗，可以的我们现在出去','',1,745,0,'',NULL,0),(751,1,0,'在吗..','',1,745,0,'',NULL,0),(752,1,0,'组合36','',1,0,3,'',NULL,0),(753,1,0,'呻吟2','',1,752,2,'audios/1/2018/06/d4lyG30Y5K5zGexkK6k35k4L1mxz1K.mp3',NULL,0),(754,1,0,'这呻吟可以吗','',1,752,0,'',NULL,0),(755,1,0,'500包夜，你在附近哪里','',1,752,0,'',NULL,0),(756,1,0,'36-1','',1,752,1,'','images/1/2018/06/c2DW1XzJ7eexWI3311R3pI2rWeVEHH.jpg',0),(757,1,0,'亲亲','',1,752,0,'',NULL,0),(758,1,0,'包夜吗','',1,752,0,'',NULL,0),(759,1,0,'你电话多少','',1,752,0,'',NULL,0),(760,1,0,'组合37','',1,0,3,'',NULL,0),(761,1,0,'你喜欢奶大还是奶小的','',1,760,0,'',NULL,0),(762,1,0,'我的奶蛮大哦，可以当奶妈了，哈哈','',1,760,0,'',NULL,0),(763,1,0,'你有没有照片','',1,760,0,'',NULL,0),(764,1,0,'37-1','',1,760,1,'','images/1/2018/06/Rd1zCSUs8vBcvwYV4YWyVF68DHFT6m.jpg',0),(765,1,0,'怎样，发你的JJ照片给我，我看你的大不大，可以约','',1,760,0,'',NULL,0),(766,1,0,'好了没有，发你的JJ照片给我','',1,760,0,'',NULL,0),(767,1,0,'速度一点呗，等人好累啊','',1,760,0,'',NULL,0),(768,1,0,'组合38','',1,0,3,'',NULL,0),(769,1,0,'哥哥你几岁','',1,768,0,'',NULL,0),(770,1,0,'有照片发来看看吗，','',1,768,0,'',NULL,0),(771,1,0,'38-1','',1,768,1,'','images/1/2018/06/TqMYeEE43C1fYAf0FY3aXEaE7CcAqs.jpg',0),(772,1,0,'快发你的','',1,768,0,'',NULL,0),(773,1,0,'你在上班还是读书？','',1,768,0,'',NULL,0),(774,1,0,'直接点好吧，爽爽快快见一次面，适合的开房去','',1,768,0,'',NULL,0),(775,1,0,'你的照片，发来看','',1,768,0,'',NULL,0),(776,1,0,'- -！','',1,768,0,'',NULL,0);
/*!40000 ALTER TABLE `ims_jy_ppp_hf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_hf2`
--

DROP TABLE IF EXISTS `ims_jy_ppp_hf2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_hf2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `name` varchar(255) NOT NULL,
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '0为文本，1为图片，2为语音，3为组合',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '批次ID,0为第一级',
  `media_id` varchar(255) NOT NULL,
  `picurl` text,
  `sex` int(2) NOT NULL DEFAULT '0' COMMENT '0为不限，1为男，2为女',
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_hf2`
--

LOCK TABLES `ims_jy_ppp_hf2` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_hf2` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_hf2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_hf2_send`
--

DROP TABLE IF EXISTS `ims_jy_ppp_hf2_send`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_hf2_send` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '0',
  `sendid` int(10) NOT NULL DEFAULT '0',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `sendid` (`sendid`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_hf2_send`
--

LOCK TABLES `ims_jy_ppp_hf2_send` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_hf2_send` DISABLE KEYS */;
INSERT INTO `ims_jy_ppp_hf2_send` VALUES (1,1,118,85,1525347188),(2,1,119,50,1525354357),(3,1,121,83,1528264495),(4,1,125,100,1528364340),(5,1,126,111,1528364520),(6,1,131,38,1528441400),(7,1,131,110,1528441926),(8,1,132,20,1528454505),(9,1,146,26,1528527674),(10,1,146,44,1528527680),(11,1,146,62,1528527685),(12,1,146,77,1528527689),(13,1,146,80,1528527693),(14,1,146,43,1528551491),(15,1,151,71,1528981705),(16,1,156,21,1529047317),(17,1,156,46,1529047497),(18,1,156,33,1529047516),(19,1,156,53,1529049755),(20,1,168,108,1529315697),(21,1,172,102,1529330057),(22,1,172,88,1529330930),(23,1,172,55,1529331742),(24,1,174,110,1529407666),(25,1,174,51,1529408294),(26,1,175,85,1529408446),(27,1,176,68,1529718744),(28,1,179,31,1529754571),(29,1,181,101,1530107793),(30,1,182,108,1530109479),(31,1,183,28,1530325823),(32,1,186,97,1530377112),(33,1,187,11,1530379162),(34,1,190,28,1530382094),(35,1,194,42,1530384068),(36,1,198,41,1530438187),(37,1,204,102,1530456192),(38,1,211,112,1531405745),(39,1,211,110,1531475889),(40,1,213,111,1562814618);
/*!40000 ALTER TABLE `ims_jy_ppp_hf2_send` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_idcard`
--

DROP TABLE IF EXISTS `ims_jy_ppp_idcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_idcard` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `idcard` varchar(20) NOT NULL,
  `realname` varchar(100) NOT NULL,
  `sex` int(2) NOT NULL COMMENT '1为男,2为女',
  `brith` int(10) NOT NULL,
  `province` int(10) NOT NULL,
  `city` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_idcard`
--

LOCK TABLES `ims_jy_ppp_idcard` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_idcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_idcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_kefu`
--

DROP TABLE IF EXISTS `ims_jy_ppp_kefu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_kefu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL DEFAULT 'text' COMMENT '客服接口消息类型',
  `content` text,
  `desc` text,
  `url` text,
  `picurl` text,
  `status` int(10) DEFAULT '0' COMMENT '0为成功,其他为错误代码',
  `createtime` int(10) NOT NULL,
  `sendid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_kefu`
--

LOCK TABLES `ims_jy_ppp_kefu` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_kefu` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_kefu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_login_log`
--

DROP TABLE IF EXISTS `ims_jy_ppp_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_login_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_login_log`
--

LOCK TABLES `ims_jy_ppp_login_log` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_login_log` DISABLE KEYS */;
INSERT INTO `ims_jy_ppp_login_log` VALUES (1,1,115,1525335695),(2,1,116,1525337413),(3,1,117,1525338204),(4,1,118,1525346802),(5,1,119,1525353900),(6,1,120,1528262743),(7,1,121,1528263516),(8,1,122,1528264523),(9,1,123,1528274056),(10,1,124,1528360950),(11,1,125,1528364247),(12,1,126,1528364503),(13,1,127,1528375553),(14,1,128,1528379064),(15,1,129,1528380607),(16,1,130,1528389978),(17,1,131,1528440960),(18,1,132,1528446558),(19,1,133,1528471905),(20,1,134,1528472390),(21,1,135,1528472575),(22,1,136,1528475365),(23,1,137,1528476709),(24,1,138,1528484588),(25,1,139,1528518455),(26,1,140,1528518938),(27,1,141,1528519165),(28,1,142,1528519203),(29,1,143,1528519225),(30,1,144,1528519341),(31,1,145,1528520133),(32,1,146,1528521930),(33,1,147,1528552594),(34,1,147,1528564854),(35,1,148,1528621465),(36,1,149,1528891634),(37,1,150,1528980784),(38,1,151,1528981047),(39,1,152,1528982948),(40,1,153,1528983099),(41,1,148,1528983250),(42,1,153,1528993958),(43,1,154,1529028796),(44,1,155,1529036328),(45,1,148,1529036514),(46,1,156,1529036854),(47,1,157,1529038632),(48,1,158,1529039180),(49,1,159,1529039672),(50,1,160,1529041890),(51,1,161,1529058976),(52,1,162,1529060782),(53,1,163,1529200509),(54,1,162,1529219304),(55,1,164,1529219391),(56,1,162,1529300405),(57,1,164,1529311174),(58,1,165,1529311536),(59,1,166,1529314104),(60,1,167,1529314886),(61,1,168,1529315494),(62,1,169,1529316035),(63,1,170,1529325419),(64,1,171,1529327544),(65,1,172,1529329965),(66,1,173,1529333366),(67,1,173,1529345254),(68,1,162,1529391411),(69,1,174,1529407559),(70,1,175,1529408361),(71,1,174,1529433666),(72,1,175,1529501118),(73,1,176,1529502539),(74,1,177,1529510306),(75,1,177,1529510408),(76,1,176,1529511587),(77,1,176,1529655304),(78,1,176,1529718717),(79,1,178,1529724180),(80,1,179,1529747614),(81,1,179,1529771461),(82,1,180,1529903368),(83,1,179,1529938419),(84,1,179,1529983467),(85,1,179,1530067697),(86,1,181,1530107393),(87,1,182,1530109226),(88,1,182,1530160055),(89,1,183,1530289556),(90,1,184,1530376428),(91,1,185,1530376734),(92,1,186,1530376878),(93,1,187,1530377271),(94,1,188,1530380583),(95,1,189,1530380642),(96,1,190,1530381864),(97,1,191,1530382199),(98,1,192,1530382797),(99,1,193,1530383256),(100,1,194,1530383309),(101,1,195,1530422246),(102,1,196,1530422269),(103,1,197,1530426935),(104,1,198,1530429354),(105,1,199,1530454258),(106,1,200,1530455596),(107,1,201,1530455619),(108,1,202,1530455655),(109,1,203,1530456007),(110,1,204,1530456088),(111,1,204,1530466576),(112,1,205,1530515167),(113,1,206,1530516231),(114,1,207,1530516770),(115,1,208,1530517249),(116,1,208,1530621713),(117,1,208,1530762202),(118,1,209,1531405513),(119,1,210,1531405583),(120,1,211,1531405625),(121,1,211,1531475360),(122,1,212,1532856799),(123,1,213,1562814560),(124,1,214,1562815520),(125,1,215,1562815590),(126,1,216,1562816269);
/*!40000 ALTER TABLE `ims_jy_ppp_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_mailui`
--

DROP TABLE IF EXISTS `ims_jy_ppp_mailui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_mailui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `name` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT 'ForLogoImage',
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_mailui`
--

LOCK TABLES `ims_jy_ppp_mailui` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_mailui` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_mailui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_match`
--

DROP TABLE IF EXISTS `ims_jy_ppp_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_match` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `age` int(10) DEFAULT '0' COMMENT '0为不限,1为18-25,2为26-35,3为36-45,4为46-55,5为55以上',
  `height` int(10) DEFAULT '0' COMMENT '0为不限,1为160以下,2为161-165,3为166-170,4为170以上',
  `education` int(10) DEFAULT '0' COMMENT '0为不限,1为高中,中专及以上,2为大专及以上,3为本科及以上',
  `income` int(10) DEFAULT '0' COMMENT '0为不限,1为2000元以上,2为5000元以上,3为10000元以上',
  `province` int(10) NOT NULL,
  `blank` int(10) NOT NULL COMMENT '未填写的字段个数',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_match`
--

LOCK TABLES `ims_jy_ppp_match` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_match` DISABLE KEYS */;
INSERT INTO `ims_jy_ppp_match` VALUES (1,1,115,0,2,0,0,13,3,1525337139),(2,1,121,0,0,0,0,11,4,1528264326),(3,1,164,0,0,0,0,44,4,1529228990),(4,1,179,0,1,0,0,11,3,1529938450);
/*!40000 ALTER TABLE `ims_jy_ppp_match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_member`
--

DROP TABLE IF EXISTS `ims_jy_ppp_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_member` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `nicheng` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `mobile` varchar(11) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `beizhu` varchar(255) NOT NULL,
  `sex` int(2) NOT NULL COMMENT '1为男,2为女',
  `status` int(2) NOT NULL COMMENT '封号与否',
  `brith` int(10) NOT NULL,
  `province` int(10) NOT NULL,
  `city` int(10) NOT NULL,
  `credit` int(10) DEFAULT '0' COMMENT '金币',
  `baoyue` int(10) DEFAULT NULL COMMENT '包月过期时间',
  `shouxin` int(10) DEFAULT NULL COMMENT '收信宝过期时间',
  `type` int(2) NOT NULL COMMENT '3为工作人员虚拟用户,,1为微信,0为账户',
  `mobile_auth` int(2) DEFAULT '0' COMMENT '1为认证,0为未认证',
  `card_auth` int(2) DEFAULT '0' COMMENT '1为认证,0为未认证',
  `createtime` int(10) NOT NULL,
  `qrcode_id` int(10) DEFAULT '0',
  `parentid` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `province` (`province`),
  KEY `sex` (`sex`),
  KEY `mobile` (`mobile`)
) ENGINE=MyISAM AUTO_INCREMENT=217 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_member`
--

LOCK TABLES `ims_jy_ppp_member` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_member` DISABLE KEYS */;
INSERT INTO `ims_jy_ppp_member` VALUES (1,1,0,'','美丽与生俱来','images/jy_ppp/xuni/26/64d98d1001e93901476e414b7dec54e736d19653.png','10000000001','123456','你头发上淡淡青草香气，变成了风才能和我相遇。',2,1,247250673,14,1401,0,NULL,NULL,3,1,1,1525335451,0,0),(2,1,0,'','刺猬','images/jy_ppp/xuni/21/1246f21fbe096b6396c0a2260a338744eaf8acef.jpg','10000000002','123456','不停的在揣测你的心里可有我的名字',2,1,478864866,15,1501,0,NULL,NULL,3,1,1,1525335451,0,0),(3,1,0,'','清风伴烈酒','images/jy_ppp/xuni/17/2bfa828ba61ea8d3a3df7671910a304e241f58c1.png','10000000003','123456','我愿能朝着太阳生长，做一个温暖的人，不卑不亢，清澈生活。',2,1,492434900,64,6401,0,NULL,NULL,3,1,1,1525335451,0,0),(4,1,0,'','Distance','images/jy_ppp/xuni/7/1c5f9f2f0708283842db68b0b899a9014d08f164.jpg','10000000004','123456','许我一段最美的时光，就让我在青春的葱茏里与你相逢。',2,1,713935738,32,3201,0,NULL,NULL,3,1,1,1525335451,0,0),(5,1,0,'','以心换心','images/jy_ppp/xuni/44/945494eef01f3a29d7249fc09f25bc315d607cd4.jpg','10000000005','123456','你是太阳会发光，我是飞蛾会扑火.',2,1,524328875,21,2101,0,NULL,NULL,3,1,1,1525335451,0,0),(6,1,0,'','梦想陪我等天亮','images/jy_ppp/xuni/3/213sadfsfsdwerqwe.jpg','10000000006','123456','晴天，我是最纯白的那朵云',2,1,756154557,12,1201,0,NULL,NULL,3,1,1,1525335451,0,0),(7,1,0,'','凡尘清心','images/jy_ppp/xuni/28/873df8dcd100baa1b5af5dcc4110b912c9fc2ec1.jpg','10000000007','123456','左手牵起右手的爱 无论怎么也分不开',2,1,643994947,43,4301,0,NULL,NULL,3,1,1,1525335451,0,0),(8,1,0,'','草莓小姐','images/jy_ppp/xuni/22/1124ab18972bd407f6abe78b7d899e510fb30953.jpg','10000000008','123456','如果，世间不再有黑暗，人人都可以拥有洁白的雪羽。',2,1,256197293,81,8101,0,NULL,NULL,3,1,1,1525335451,0,0),(9,1,0,'','相见恨晚','images/jy_ppp/xuni/108/1-1504210P117.jpg','10000000009','123456','我站在你的左边，对你绽放出如花的笑颜',2,1,348375141,11,1101,0,NULL,NULL,3,1,1,1525335451,0,0),(10,1,0,'','那份爱','images/jy_ppp/xuni/40/36dda3cc7cd98d1034b81146273fb80e7bec905c.jpg','10000000010','123456','我想拍下全世界的美景，带给你看。',2,1,729609798,44,4401,0,NULL,NULL,3,1,1,1525335451,0,0),(11,1,0,'','每一段旅程','images/jy_ppp/xuni/125/1-150315120448.jpg','10000000011','123456','岁月极美，在于它必然的流逝。春花、秋月、夏日、冬雪。',2,1,546999735,52,5201,0,NULL,NULL,3,1,1,1525335451,0,0),(12,1,0,'','努力为明天','images/jy_ppp/xuni/65/1f0828381f30e924df063e394a086e061d95f71c.jpg','10000000012','123456','微笑的天空~顺其自然，一切随缘，纯净透明，自由自在，把爱随身携带！',2,1,692063883,31,3101,0,NULL,NULL,3,1,1,1525335451,0,0),(13,1,0,'','荧光棒','images/jy_ppp/xuni/13/17b30f2442a7d9336c81f901ab4bd11373f00192.png','10000000013','123456','伴你一夜良辰许我一世深情可好。',2,1,435399147,33,3301,0,NULL,NULL,3,1,1,1525335451,0,0),(14,1,0,'','恬恬妹妹','images/jy_ppp/xuni/23/5e2309f7905298220b6ba4b6d1ca7bcb0a46d46f.jpg','10000000014','123456','属于我们的回忆，哪怕是黑的也是美好的。',2,1,271300513,42,4201,0,NULL,NULL,3,1,1,1525335451,0,0),(15,1,0,'','爱生活爱自己','images/jy_ppp/xuni/131/1-1503100ZP1.jpg','10000000015','123456','我用我千世万世的命，爱你千世万世。',2,1,487781515,32,3201,0,NULL,NULL,3,1,1,1525335451,0,0),(16,1,0,'','明媚旳花','images/jy_ppp/xuni/75/22f8bd3eb13533fa7082248aa8d3fd1f41345b7a.jpg','10000000016','123456','最好的人，像孩子一样，真诚。像夕阳一样，温暖。像天空一样，宁静。 ',2,1,502153569,11,1101,0,NULL,NULL,3,1,1,1525335451,0,0),(17,1,0,'','死寂、漠然','images/jy_ppp/xuni/106/1-1504230K635.jpg','10000000017','123456','我的世界是一片遍布向日葵的原野，那里满眼阳光，绽放希望。 ',2,1,440492418,42,4201,0,NULL,NULL,3,1,1,1525335451,0,0),(18,1,0,'','不谈感情','images/jy_ppp/xuni/45/393fb80e7bec54e7a9aeeb6bbf389b504fc26a01.png','10000000018','123456','渐渐的我学会了隐身，渐渐的我不喜欢在群里说话，渐渐的我不喜欢和别人聊天，渐渐的身边的人越来越少。',2,1,437387412,51,5101,0,NULL,NULL,3,1,1,1525335451,0,0),(19,1,0,'','无话不说','images/jy_ppp/xuni/34/0dce36d3d539b60032e40cb6ef50352ac65cb78c.png','10000000019','123456','一抹绿，一抹蓝，是最好的心情诠释，开遍心里的每个角落。',2,1,332162518,41,4101,0,NULL,NULL,3,1,1,1525335451,0,0),(20,1,0,'','萌萌小天使','images/jy_ppp/xuni/2/asdeq2weqwzzx4354.jpg','10000000020','123456','黎明前的曙光，是说明黑暗已经走远。',2,1,526065083,43,4301,0,NULL,NULL,3,1,1,1525335451,0,0),(21,1,0,'','谁顾我冷暖','images/jy_ppp/xuni/1/6b1cb522g90749125d63d&690.jpg','10000000021','123456','人生恰如三月花，倾我一生一世念。来如飞花散似烟，醉里不知年华限。',2,1,764333960,61,6101,0,NULL,NULL,3,1,1,1525335451,0,0),(22,1,0,'','海豚','images/jy_ppp/xuni/8/11f790529822720ec125828e7dcb0a46f31fabdf.jpg','10000000022','123456','你这样距离遥远地存在于幻想之中,却是唯一可以让我感受到暖色天涯的人',2,1,640403142,46,4601,0,NULL,NULL,3,1,1,1525335451,0,0),(23,1,0,'','笨小孩','images/jy_ppp/xuni/120/1-1503250R020.jpg','10000000023','123456','阳光明媚，温暖如初，你还没来我怎敢老去。',2,1,464125284,64,6401,0,NULL,NULL,3,1,1,1525335451,0,0),(24,1,0,'','六月飞雪','images/jy_ppp/xuni/117/1-1504010S450.jpg','10000000024','123456','一念起，万水千山；一念灭，沧海桑田。',2,1,256576782,37,3701,0,NULL,NULL,3,1,1,1525335451,0,0),(25,1,0,'','平安健康九十九','images/jy_ppp/xuni/74/2ed12f2eb9389b5057e09a258335e5dde7116ead.jpg','10000000025','123456','烟花再美也只在一瞬间 忽闪即逝',2,1,237449527,46,4601,0,NULL,NULL,3,1,1,1525335451,0,0),(26,1,0,'','由他','images/jy_ppp/xuni/66/1246f21fbe096b63ed4265480a338744ebf8ac4a.jpg','10000000026','123456','旧城里看不见阳光，你和我的一个梦长得好像',2,1,440980191,41,4101,0,NULL,NULL,3,1,1,1525335451,0,0),(27,1,0,'','对我粗暴点','images/jy_ppp/xuni/58/7ad0f703918fa0ec69b1e079209759ee3d6ddb54.jpg','10000000027','123456','最好的旅行，就是在一个陌生的地方，发现一种久违的感动。',2,1,659223220,32,3201,0,NULL,NULL,3,1,1,1525335451,0,0),(28,1,0,'','Lonelycity.孤城','images/jy_ppp/xuni/104/1-1504261kasdkaskd23R7.jpg','10000000028','123456','红尘一梦，终是为你覆了青春',2,1,363591870,37,3701,0,NULL,NULL,3,1,1,1525335451,0,0),(29,1,0,'','记忆dē橡皮擦','images/jy_ppp/xuni/60/16f41bd5ad6eddc4c6bba2883fdbb6fd52663360.jpg','10000000029','123456','一朵鲜花打扮不出美丽的春天。',2,1,513243048,33,3301,0,NULL,NULL,3,1,1,1525335451,0,0),(30,1,0,'','此岸花敗','images/jy_ppp/xuni/121/1-150323110236.jpg','10000000030','123456','看天空的云，堆在了一起。看躺在地上的你，微笑的脸庞。',2,1,285170856,46,4601,0,NULL,NULL,3,1,1,1525335451,0,0),(31,1,0,'','从素颜到淡妆','images/jy_ppp/xuni/116/1-1504120T108-50.jpg','10000000031','123456','你说我的眼睛灿若星辰，那是因为你是星辰，而我的眼中只有你。',2,1,514922701,45,4501,0,NULL,NULL,3,1,1,1525335451,0,0),(32,1,0,'','Autism','images/jy_ppp/xuni/87/1-150F6140648.jpg','10000000032','123456','好久没看到昙花绽放的样子，就如好久没看到你笑的样子。',2,1,206404848,71,7101,0,NULL,NULL,3,1,1,1525335451,0,0),(33,1,0,'','怪她多情','images/jy_ppp/xuni/55/0dce36d3d539b6000c3a32c0ef50352ac75cb7d4.png','10000000033','123456','后来的爱成为一首歌，变成音符，歌声。',2,1,436077547,37,3701,0,NULL,NULL,3,1,1,1525335451,0,0),(34,1,0,'','人心太拥挤','images/jy_ppp/xuni/71/57c2d5628535e5dd4ebc52d670c6a7efce1b6223.jpg','10000000034','123456','我从来没有做过跟童话一样如此现实的梦，仿佛触手可及。',2,1,201897652,52,5201,0,NULL,NULL,3,1,1,1525335451,0,0),(35,1,0,'','挽手说梦话','images/jy_ppp/xuni/10/14d7912397dda1441dcec6bcb4b7d0a20df486fd.png','10000000035','123456','若要快乐，就要像太阳花一样：面朝阳光，努力生长，保持本色，不卑不亢。',2,1,593459540,45,4501,0,NULL,NULL,3,1,1,1525335451,0,0),(36,1,0,'','百合','images/jy_ppp/xuni/128/1-150312111059.jpg','10000000036','123456','一直善良下去，总会离幸福很近，你所给予的都会回到你身上。',2,1,433539318,12,1201,0,NULL,NULL,3,1,1,1525335451,0,0),(37,1,0,'','百褶裙','images/jy_ppp/xuni/92/1-1505130KZ5-50.jpg','10000000037','123456','想住在向日葵上，即使沮丧也能面对太阳。',2,1,374748288,11,1101,0,NULL,NULL,3,1,1,1525335451,0,0),(38,1,0,'','陪你醉','images/jy_ppp/xuni/59/9f44ebf81a4c510fea392a096659252dd42aa520.jpg','10000000038','123456','无论你此刻是否迷茫，在阳光升起的时候，请相信，努力的人最终都有回报。 ',2,1,643727700,33,3301,0,NULL,NULL,3,1,1,1525335451,0,0),(39,1,0,'','心比茶凉','images/jy_ppp/xuni/6/2cec872bd40735faea973b0b9e510fb30e240814.jpg','10000000039','123456','用一首花开的时间，述说我对你颠沛流离的思念。',2,1,564357141,53,5301,0,NULL,NULL,3,1,1,1525335451,0,0),(40,1,0,'','我们床上聊','images/jy_ppp/xuni/32/10fa513d269759eef22212bdb4fb43166d22df52.jpg','10000000040','123456','对天空来说，星星是最珍贵的。那么，我希望从此刻我成为你的星星。',2,1,344087081,50,5001,0,NULL,NULL,3,1,1,1525335451,0,0),(41,1,0,'','封心锁','images/jy_ppp/xuni/98/1-1505060Q302.jpg','10000000041','123456','当年华老去的时候，我定会记得我曾那么深深爱过你。',2,1,389289579,52,5201,0,NULL,NULL,3,1,1,1525335451,0,0),(42,1,0,'','渐渐放开','images/jy_ppp/xuni/115/1-1504140UJ1.jpg','10000000042','123456','我像喜欢朝阳一样喜欢你.',2,1,158458145,45,4501,0,NULL,NULL,3,1,1,1525335451,0,0),(43,1,0,'','枫桥旧梦','images/jy_ppp/xuni/130/1-150311091115.jpg','10000000043','123456','我会借着时光的声音去描摹你的眉眼',2,1,298114362,22,2201,0,NULL,NULL,3,1,1,1525335451,0,0),(44,1,0,'','小笼包','images/jy_ppp/xuni/18/0730e924b899a901043ed6391b950a7b0208f5b2.jpg','10000000044','123456','指尖流沙，却已成为了刹那芳华。',2,1,581801549,34,3401,0,NULL,NULL,3,1,1,1525335451,0,0),(45,1,0,'','执酒笑白衣','images/jy_ppp/xuni/94/1-1505110K918-50.jpg','10000000045','123456','掩埋了泪眼的斑驳，在转角之后扣上故事门锁',2,1,321175639,22,2201,0,NULL,NULL,3,1,1,1525335451,0,0),(46,1,0,'','我的心事','images/jy_ppp/xuni/79/6b1cb522g9074a56a6961&690.jpg','10000000046','123456','一缕阳光、一叶清风、一种情怀、一场播种、一把泥土溢出惬意，鸟语花香般恬暖……',2,1,511320490,51,5101,0,NULL,NULL,3,1,1,1525335451,0,0),(47,1,0,'','纯属游戏','images/jy_ppp/xuni/80/6b1cb522g9074919fdfd9&690.jpg','10000000047','123456','展望着未来等着与你相遇',2,1,166639513,82,8201,0,NULL,NULL,3,1,1,1525335451,0,0),(48,1,0,'','花开半夏∞','images/jy_ppp/xuni/33/5336acaf2edda3cc3d9d975707e93901213f924f.jpg','10000000048','123456','糖的滋味，甜蜜而温暖。所有美好的一切。',2,1,605524395,14,1401,0,NULL,NULL,3,1,1,1525335451,0,0),(49,1,0,'','那辛酸回忆╮','images/jy_ppp/xuni/16/05950a7b02087bf4a67b389ef4d3572c11dfcf36.jpg','10000000049','123456','在角落唱沙哑的歌，再大声也都是给你，请用心听，不要说话。',2,1,191531234,82,8201,0,NULL,NULL,3,1,1,1525335451,0,0),(50,1,0,'','背对背拥抱','images/jy_ppp/xuni/114/1-1504150SA1.jpg','10000000050','123456','烟花虽美却稍纵即逝，滴水虽微然恒聚而洋',2,1,651309406,81,8101,0,NULL,NULL,3,1,1,1525335451,0,0),(51,1,0,'','吾时落叶花开否','images/jy_ppp/xuni/31/2112b31bb051f819bbec873cdcb44aed2f73e7ff.jpg','10000000051','123456','花开两朵，共连一枝，这就是我和我的闺蜜。 ',2,1,226482409,37,3701,0,NULL,NULL,3,1,1,1525335451,0,0),(52,1,0,'','荌靜旳埋葬ご','images/jy_ppp/xuni/78/6b1cb522g9074917214a6&690.jpg','10000000052','123456','时间不知不觉，我们后知后觉...',2,1,414629929,14,1401,0,NULL,NULL,3,1,1,1525335451,0,0),(53,1,0,'','情为何物','images/jy_ppp/xuni/118/1-1503310TG6.jpg','10000000053','123456','若，晴天和日，就淡赏闲云；若，风雨敲窗，就且听风吟。',2,1,393267888,54,5401,0,NULL,NULL,3,1,1,1525335451,0,0),(54,1,0,'','阿尔卑斯','images/jy_ppp/xuni/42/bf86c9177f3e6709af4d4a883dc79f3df8dc5573.jpg','10000000054','123456','不会让自己寂寞，那年看过的烟花，绚丽夺目。',2,1,317586777,33,3301,0,NULL,NULL,3,1,1,1525335451,0,0),(55,1,0,'','套路拿人心','images/jy_ppp/xuni/105/1-1504240J539.jpg','10000000055','123456','用一颗不惧过去不畏将来的心去拥抱眼前的碧海蓝天',2,1,340210246,43,4301,0,NULL,NULL,3,1,1,1525335451,0,0),(56,1,0,'','继续我的骄傲','images/jy_ppp/xuni/20/0730e924b899a901f0002a411b950a7b0208f594.png','10000000056','123456','我独自说的对白，静候彼岸花的盛开...',2,1,660608093,22,2201,0,NULL,NULL,3,1,1,1525335451,0,0),(57,1,0,'','戏演的很漂亮','images/jy_ppp/xuni/14/127b02087bf40ad116656195512c11dfa8eccec7.jpg','10000000057','123456','最温暖的太阳最适合心的温度',2,1,422594229,41,4101,0,NULL,NULL,3,1,1,1525335451,0,0),(58,1,0,'','大黄鸭GAGAGA','images/jy_ppp/xuni/43/1b4f78f0f736afc3e8cb4010b519ebc4b64512fb.jpg','10000000058','123456','蒲公英，无牵无挂，无欲无求，风起而行，风静而安。',2,1,434967108,82,8201,0,NULL,NULL,3,1,1,1525335451,0,0),(59,1,0,'','膝盖淤青','images/jy_ppp/xuni/126/1-150314101334.jpg','10000000059','123456','岁月极美，在于它必然的流逝。春花、秋月、夏日、冬雪。',2,1,521537084,82,8201,0,NULL,NULL,3,1,1,1525335451,0,0),(60,1,0,'','忘不了','images/jy_ppp/xuni/9/4a66d0160924ab18fbcd824033fae6cd7a890be9.jpg','10000000060','123456','牵着你的手，满脸微笑地和你走进电影院。',2,1,650600973,53,5301,0,NULL,NULL,3,1,1,1525335451,0,0),(61,1,0,'','过眼云烟-','images/jy_ppp/xuni/110/1-15041ZTasdasd445 (1).jpg','10000000061','123456','当年华老去的时候，我定会记得我曾那么深深爱过你。',2,1,728701006,21,2101,0,NULL,NULL,3,1,1,1525335451,0,0),(62,1,0,'','梦还在','images/jy_ppp/xuni/37/36dda3cc7cd98d10f72f5e47273fb80e7aec90c9.png','10000000062','123456','四叶草在未来唯美盛开，现在只要你做我的花海',2,1,751492934,14,1401,0,NULL,NULL,3,1,1,1525335451,0,0),(63,1,0,'','蝶き梦','images/jy_ppp/xuni/77/c3fcd000baa1cd117cf53b9cb912c8fcc2ce2dee.jpg','10000000063','123456','遥望昨日楼台、已是镜月水花。',2,1,707598069,65,6501,0,NULL,NULL,3,1,1,1525335451,0,0),(64,1,0,'','假窗','images/jy_ppp/xuni/11/7ad0f703918fa0ec2c92bf7b209759ee3d6ddb6b.jpg','10000000064','123456','一直善良下去，总会离幸福很近，你所给予的都会回到你身上。',2,1,215963381,14,1401,0,NULL,NULL,3,1,1,1525335451,0,0),(65,1,0,'','清影觅','images/jy_ppp/xuni/12/284e251f95cad1c89b6ca8a77a3e6709c83d515e.jpg','10000000065','123456','你的世界不会只有黑白，明媚的色彩正在等着你，往前走吧！',2,1,705336888,53,5301,0,NULL,NULL,3,1,1,1525335451,0,0),(66,1,0,'','可爱一如往常','images/jy_ppp/xuni/72/asd234sdfdsf.jpg','10000000066','123456','雨是风的痕迹，风是雨的信息，彩虹则是风雨后的美丽',2,1,640294859,15,1501,0,NULL,NULL,3,1,1,1525335451,0,0),(67,1,0,'','ㄨ听♂小姐','images/jy_ppp/xuni/103/1-15042FI553-50.jpg','10000000067','123456','吹过你窗前的那阵风是我对你的思念。',2,1,601175429,43,4301,0,NULL,NULL,3,1,1,1525335451,0,0),(68,1,0,'','心已乱人已散','images/jy_ppp/xuni/82/asdweyt8678342234.jpg','10000000068','123456','就算我没有倾国倾城的容貌！也要有摧毁一座城池的骄傲！',2,1,446902717,62,6201,0,NULL,NULL,3,1,1,1525335451,0,0),(69,1,0,'','★·°甜了夏天','images/jy_ppp/xuni/107/1-1504220K210.jpg','10000000069','123456','用我的心為膠卷，眼睛為焦距，捕捉你最動人的笑顏。',2,1,357893417,52,5201,0,NULL,NULL,3,1,1,1525335451,0,0),(70,1,0,'','VERTIGO血美人','images/jy_ppp/xuni/86/4-150F6204Z0.jpg','10000000070','123456','成功的花儿，人们只惊羡它现实的美丽，当初它的芽渗透了奋斗的泪水，洒遍了牺牲的细雨..',2,1,514379000,31,3101,0,NULL,NULL,3,1,1,1525335451,0,0),(71,1,0,'','生命旳过客','images/jy_ppp/xuni/54/14d7912397dda144680bd3bcb4b7d0a20cf486ba.jpg','10000000071','123456','满天星每个枝头都有无数的花朵，就像愿望，你不会只有一个愿望，所以希望你所有愿望都能实现。',2,1,205507301,82,8201,0,NULL,NULL,3,1,1,1525335451,0,0),(72,1,0,'','代风轻吻你','images/jy_ppp/xuni/83/2ed3d539b6003af34b2b2715332ac65c1038b636.jpg','10000000072','123456','海平面远方开始阴霾，悲伤要怎么平静纯白。',2,1,345799505,32,3201,0,NULL,NULL,3,1,1,1525335451,0,0),(73,1,0,'','重拾女人心','images/jy_ppp/xuni/48/024c510fd9f9d72a4e85216ad22a2834359bbbe7.jpg','10000000073','123456','距离从不会分开两颗真正在乎彼此的心。',2,1,162454441,21,2101,0,NULL,NULL,3,1,1,1525335451,0,0),(74,1,0,'','那一夜','images/jy_ppp/xuni/99/1-1505050Q101.jpg','10000000074','123456','至那一朵，满心伤怀的玫瑰花！',2,1,662532202,15,1501,0,NULL,NULL,3,1,1,1525335451,0,0),(75,1,0,'','可惜没有如果','images/jy_ppp/xuni/123/1-15031ZR004.jpg','10000000075','123456','人生若只如初见，何事秋风悲画扇。',2,1,159366693,13,1301,0,NULL,NULL,3,1,1,1525335451,0,0),(76,1,0,'','Laundry 爱我别走','images/jy_ppp/xuni/97/1-15050Gfhfgh02R2.jpg','10000000076','123456','晴天，我是最纯白的那朵云',2,1,438771739,50,5001,0,NULL,NULL,3,1,1,1525335451,0,0),(77,1,0,'','你背对我着远走','images/jy_ppp/xuni/113/1-1504160R330.jpg','10000000077','123456','旅行，是心灵的阅读，而阅读，是心灵的旅行。',2,1,395008669,14,1401,0,NULL,NULL,3,1,1,1525335451,0,0),(78,1,0,'','红颜为君醉','images/jy_ppp/xuni/67/8f0a304e251f95ca014f6ca4cf177f3e6709526e.jpg','10000000078','123456','只要心是晴朗的，人生就没有雨天。',2,1,239510461,43,4301,0,NULL,NULL,3,1,1,1525335451,0,0),(79,1,0,'','小奶瓶','images/jy_ppp/xuni/70/8482d158ccbf6c815161a59eba3eb13533fa4076.jpg','10000000079','123456','对你的爱不是一种谎言,相信我,我们就一起快乐。',2,1,297390249,13,1301,0,NULL,NULL,3,1,1,1525335451,0,0),(80,1,0,'','嫌我你滚','images/jy_ppp/xuni/56/1b4f78f0f736afc38eb2ee10b519ebc4b745120d.png','10000000080','123456','下雨天，端着咖啡走在街上，享受这续杯的温暖……',2,1,561988256,37,3701,0,NULL,NULL,3,1,1,1525335451,0,0),(81,1,0,'','白色婚纱','images/jy_ppp/xuni/69/1124ab18972bd4072b4f40ea7d899e510fb30918.jpg','10000000081','123456','冥冥的黑夜中你带着我去找寻破晓之光',2,1,607619237,45,4501,0,NULL,NULL,3,1,1,1525335451,0,0),(82,1,0,'','一岁时就很酷','images/jy_ppp/xuni/61/de5c10385343fbf20f141a57b67eca8065388f8e.jpg','10000000082','123456','下初雪的时候接吻，会很幸福长久呢',2,1,594716212,41,4101,0,NULL,NULL,3,1,1,1525335451,0,0),(83,1,0,'','〆﹏淡淡草季','images/jy_ppp/xuni/76/883c8601a18b87d679f8e2a3070828381e30fdf0.jpg','10000000083','123456','你是不是太容易得到我的真心，所以就一定要拿来浪费。',2,1,617211648,21,2101,0,NULL,NULL,3,1,1,1525335451,0,0),(84,1,0,'','寂寞是你给我的苦','images/jy_ppp/xuni/49/05950a7b02087bf488c6e69bf4d3572c11dfcf9e.jpg','10000000084','123456','风很清澈，从头到脚都快乐。',2,1,262865055,36,3601,0,NULL,NULL,3,1,1,1525335451,0,0),(85,1,0,'','笑谈自己','images/jy_ppp/xuni/4/3fe971cf3bc79f3d92abb0cfbaa1cd11708b29df.jpg','10000000085','123456','一个人，一场戏，一辈子。 两个人，一台戏，此生唯一。',2,1,315844120,61,6101,0,NULL,NULL,3,1,1,1525335451,0,0),(86,1,0,'','天长地久','images/jy_ppp/xuni/57/8a45d688d43f8794d66f3c59d41b0ef41bd53a30.jpg','10000000086','123456','渐渐的喜欢上下雨天，打着雨伞，听雨滴滴在雨伞上滴滴答答的声音。',2,1,236917142,31,3101,0,NULL,NULL,3,1,1,1525335458,0,0),(87,1,0,'','泪印','images/jy_ppp/xuni/35/393fb80e7bec54e7d774ad68bf389b504fc26a28.jpg','10000000087','123456','我要变成一个可以让你永远感到温暖的小太阳',2,1,588776093,31,3101,0,NULL,NULL,3,1,1,1525335458,0,0),(88,1,0,'','只陪你睡','images/jy_ppp/xuni/27/2bfa828ba61ea8d3b2e30771910a304e241f5885.jpg','10000000088','123456','你若倾心，我必倾听。',2,1,743176868,11,1101,0,NULL,NULL,3,1,1,1525335458,0,0),(89,1,0,'','suo⌒ 呓','images/jy_ppp/xuni/109/1-1504200P214-50.jpg','10000000089','123456','时间从来不回答，生命从来不喧哗。一段流年，一场花事。',2,1,694161299,22,2201,0,NULL,NULL,3,1,1,1525335458,0,0),(90,1,0,'','杨家千金','images/jy_ppp/xuni/53/7481800a19d8bc3e75a2ffbf848ba61ea8d34519.jpg','10000000090','123456','我甚至一秒都没有拥有过你 却感觉失去了你一万次',2,1,340496795,54,5401,0,NULL,NULL,3,1,1,1525335458,0,0),(91,1,0,'','睫毛','images/jy_ppp/xuni/63/1f0828381f30e924327ddce949086e061c95f709.jpg','10000000091','123456','剪一段旖旎时光，任时间缓缓流淌。',2,1,704044332,22,2201,0,NULL,NULL,3,1,1,1525335458,0,0),(92,1,0,'','明人不放暗屁','images/jy_ppp/xuni/93/1-1505120Kfghfgh928-50.jpg','10000000092','123456','天空是抹忧伤的蓝，海是倒过来的天、',2,1,302727430,62,6201,0,NULL,NULL,3,1,1,1525335458,0,0),(93,1,0,'','顺其自然','images/jy_ppp/xuni/15/ae003af33a87e950cc358e1f16385343fbf2b4a7.png','10000000093','123456','从天空中落下了蒲公英，像是在诉说着谁回忆。',2,1,492728174,51,5101,0,NULL,NULL,3,1,1,1525335458,0,0),(94,1,0,'','身下玩物','images/jy_ppp/xuni/91/1-1505150K151-50.jpg','10000000094','123456','风华莫念指间沙，一朝一梦一年华。',2,1,458222465,81,8101,0,NULL,NULL,3,1,1,1525335458,0,0),(95,1,0,'','终丢了相思','images/jy_ppp/xuni/51/b0d3fd1f4134970a5a3c0b5893cad1c8a7865d7d.jpg','10000000095','123456','相信，会有那么一天，会有那么一个人，在我最伤心的时候，为我撑起一片天',2,1,489785019,36,3601,0,NULL,NULL,3,1,1,1525335458,0,0),(96,1,0,'','爱是一种信仰','images/jy_ppp/xuni/101/1-1505010S300.jpg','10000000096','123456','容颜未老，岁月静好',2,1,769111417,65,6501,0,NULL,NULL,3,1,1,1525335458,0,0),(97,1,0,'','IF YOU','images/jy_ppp/xuni/100/1-1505030IG0-50.jpg','10000000097','123456','愿意用一支黑色的铅笔画一出沉默舞台剧灯光再亮也抱住你 。',2,1,500575192,50,5001,0,NULL,NULL,3,1,1,1525335458,0,0),(98,1,0,'','←щó鍀àì沵要丆要','images/jy_ppp/xuni/127/1-150313111K1.jpg','10000000098','123456','想和你一起去看海 一起去看从未看过的风景',2,1,526111194,61,6101,0,NULL,NULL,3,1,1,1525335458,0,0),(99,1,0,'','纵此生不见','images/jy_ppp/xuni/84/4-150F6205644.jpg','10000000099','123456','你是我万暗生命里最璀璨的星光',2,1,667537867,46,4601,0,NULL,NULL,3,1,1,1525335458,0,0),(100,1,0,'','洋葱','images/jy_ppp/xuni/36/22292df5e0fe99255775cd2632a85edf8db1714f.jpg','10000000100','123456','在我下个生日，可不可以送我三件礼物，一个爱人的拥抱，一个感动到哭的惊喜，一场彻彻底底的宿醉。',2,1,293141283,15,1501,0,NULL,NULL,3,1,1,1525335458,0,0),(101,1,0,'','气质与生俱来','images/jy_ppp/xuni/119/1-150330150R7.jpg','10000000101','123456','爱情从天上掉下来',2,1,389396912,22,2201,0,NULL,NULL,3,1,1,1525335458,0,0),(102,1,0,'','彼岸花開','images/jy_ppp/xuni/112/1-15041FR010.jpg','10000000102','123456','我不是垂暮的老人，我是即将远行的故人，望一望过去，念一念当初，整装继续前行。',2,1,304790958,71,7101,0,NULL,NULL,3,1,1,1525335458,0,0),(103,1,0,'','微笑面对','images/jy_ppp/xuni/85/1-150FG25938.jpg','10000000103','123456','天还是那片天，依旧很蓝',2,1,681074522,61,6101,0,NULL,NULL,3,1,1,1525335458,0,0),(104,1,0,'','糖贝莉佳','images/jy_ppp/xuni/39/6ec6a7efce1b9d16585f62bff6deb48f8d546450.jpg','10000000104','123456','一直牵着彼此的手，你不离，我不弃，直到生命的尽头。',2,1,356711694,54,5401,0,NULL,NULL,3,1,1,1525335458,0,0),(105,1,0,'','风凌乱了我的发','images/jy_ppp/xuni/81/b54bd11373f08202f0768c494dfbfbedaa641bdb.jpg','10000000105','123456','看起来像是樱花般的纯洁，实际是罂粟花般的美中带毒。',2,1,755621377,13,1301,0,NULL,NULL,3,1,1,1525335458,0,0),(106,1,0,'','不再犹豫','images/jy_ppp/xuni/38/0730e924b899a90157858b3e1b950a7b0208f502.png','10000000106','123456','喜欢夏天的雨， 冬天的太阳， 和任何时候的你。',2,1,409742999,81,8101,0,NULL,NULL,3,1,1,1525335458,0,0),(107,1,0,'','疲惫了身心','images/jy_ppp/xuni/88/1-150F5110T0.jpg','10000000107','123456','我们一起十指相扣到永远。',2,1,262910491,44,4401,0,NULL,NULL,3,1,1,1525335458,0,0),(108,1,0,'','醉了就可以表白','images/jy_ppp/xuni/96/1-15050PI4fdfd57.jpg','10000000108','123456','糖的滋味，甜蜜而温暖。所有美好的一切。',2,1,702983147,46,4601,0,NULL,NULL,3,1,1,1525335458,0,0),(109,1,0,'','比花还妖艳','images/jy_ppp/xuni/102/1-15042PQ049.jpg','10000000109','123456','愿所有停留不了的爱，洁白如兰花，纵使明日又隔天涯。',2,1,416451270,36,3601,0,NULL,NULL,3,1,1,1525335458,0,0),(110,1,0,'','喜欢不是爱','images/jy_ppp/xuni/25/8a45d688d43f8794d352415fd41b0ef41bd53a15.jpg','10000000110','123456','你给我的笑颜、惊艳了我所有的旧时光。',2,1,359456809,65,6501,0,NULL,NULL,3,1,1,1525335458,0,0),(111,1,0,'','无动于衷','images/jy_ppp/xuni/73/218732qh4hsdaf.jpg','10000000111','123456','凄美的音符勾勒出唯美的旋律。',2,1,337010155,61,6101,0,NULL,NULL,3,1,1,1525335458,0,0),(112,1,0,'','新鲜柠檬奶','images/jy_ppp/xuni/41/10fa513d269759ee30a25cc7b4fb43166c22dfcf.jpg','10000000112','123456','心底荡起一丝涟漪。',2,1,450647711,35,3501,0,NULL,NULL,3,1,1,1525335458,0,0),(113,1,0,'','先生借个吻','images/jy_ppp/xuni/95/1-15050ZzxcvQ910-50.jpg','10000000113','123456','你错失了夏花绚烂，必将会走进秋叶静羌。任何事，任何人，都会成为过去，不要跟它过不去。',2,1,602861172,82,8201,0,NULL,NULL,3,1,1,1525335458,0,0),(114,1,0,'','染指旳沵唇','images/jy_ppp/xuni/111/1-15041PU120-50.jpg','10000000114','123456','早起的时候发现下雪了，薄薄的淡淡的，挺美。',2,1,500725916,42,4201,0,NULL,NULL,3,1,1,1525335458,0,0),(115,1,0,'','安详的耳机',NULL,'15300288877','15300288877','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,1525335695,0,0),(116,1,0,'','孝顺的咖啡豆',NULL,'15622200117','15622200117','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,1525337413,0,0),(117,1,0,'','称心的小猫咪',NULL,'15966300887','15966300887','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,1525338204,0,0),(118,1,0,'','糟糕的老师',NULL,'13566925200','13566925200','',1,1,662659200,44,4415,0,NULL,NULL,0,0,0,1525346800,0,0),(119,1,0,'','执着的母鸡',NULL,'13588900002','shxhbx','',1,1,662659200,44,4415,0,NULL,NULL,0,0,0,1525353899,0,0),(120,1,0,'','痴情的黑裤',NULL,'13522011889','13522011889','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,1528262742,0,0),(121,1,0,'','细腻的钥匙',NULL,'13566622001','13566622001','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,1528263516,0,0),(122,1,0,'','瘦瘦的冬日',NULL,'13522200001','13522200001','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,1528264523,0,0),(123,1,0,'','等待的哑铃',NULL,'13522011777','13522011777','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,1528274056,0,0),(124,1,0,'','动人的战斗机',NULL,'15200099887','15200099887','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,1528360949,0,0),(125,1,0,'','勤恳的芹菜',NULL,'15666622220','564564','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,1528364247,0,0),(126,1,0,'','精明的红酒',NULL,'15955554654','654654894','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,1528364503,0,0),(127,1,0,'','心灵美的睫毛',NULL,'13522200110','13522200110','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,1528375553,0,0),(128,1,0,'','满意的老师',NULL,'15646545645','564654546','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,1528379063,0,0),(129,1,0,'','雪白的蜗牛',NULL,'13545642312','4564656','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,1528380606,0,0),(130,1,0,'','长情的小蝴蝶',NULL,'13555588889','13555588889','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,1528389978,0,0),(131,1,0,'','火星上的发箍',NULL,'13555588999','54564656','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,1528440960,0,0),(132,1,0,'','怕孤独的小天鹅',NULL,'15955588877','sdfdssdf','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,1528446558,0,0),(133,1,0,'','匿名',NULL,'10000000133','123456','',0,1,0,0,0,0,NULL,NULL,0,0,0,0,0,0),(134,1,0,'','匿名',NULL,'10000000134','123456','',0,1,0,0,0,0,NULL,NULL,0,0,0,0,0,0),(135,1,0,'','不安的冬日',NULL,'13555145645','545646','',2,1,662659200,0,0,0,NULL,NULL,0,0,0,1528472575,0,0),(136,1,0,'','还单身的云朵',NULL,'13556465412','564654654','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,1528475364,0,0),(137,1,0,'','匿名',NULL,'10000000137','123456','',0,1,0,0,0,0,NULL,NULL,0,0,0,0,0,0),(138,1,0,'','匿名',NULL,'10000000138','123456','',0,1,0,0,0,0,NULL,NULL,0,0,0,0,0,0),(139,1,0,'','匿名',NULL,'10000000139','123456','',1,1,0,0,0,0,NULL,NULL,0,0,0,0,0,0),(140,1,0,'','微笑的奇异果',NULL,'15566612315','545645623','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,1528518938,0,0),(141,1,0,'','匿名',NULL,'10000000141','123456','',1,1,0,0,0,0,NULL,NULL,0,0,0,0,0,0),(142,1,0,'','匿名',NULL,'10000000142','123456','',1,1,0,0,0,0,NULL,NULL,0,0,0,0,0,0),(143,1,0,'','欢喜的柚子',NULL,'13555548456','89465456498','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,1528519224,0,0),(144,1,0,'','匿名',NULL,'10000000144','123456','',1,1,0,0,0,0,NULL,NULL,0,0,0,0,0,0),(145,1,0,'','俭朴的导师',NULL,'15522245218','45642318','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,1528520133,0,0),(146,1,0,'','要减肥的帽子',NULL,'10000000146','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(147,1,0,'','寂寞的鱼',NULL,'10000000147','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(148,1,0,'','强健的白开水',NULL,'10000000148','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(149,1,0,'','拼搏的大象',NULL,'10000000149','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(150,1,0,'','优秀的小蚂蚁',NULL,'10000000150','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(151,1,0,'','成就的白开水',NULL,'10000000151','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(152,1,0,'','美满的寒风',NULL,'10000000152','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(153,1,0,'','体贴的戒指',NULL,'10000000153','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(154,1,0,'','受伤的帽子',NULL,'10000000154','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(155,1,0,'','迷人的楼房',NULL,'10000000155','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(156,1,0,'','从容的流沙',NULL,'10000000156','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(157,1,0,'','美满的高山',NULL,'10000000157','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(168,1,0,'','淡然的天空',NULL,'10000000168','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(169,1,0,'','甜甜的奇迹',NULL,'10000000169','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(170,1,0,'','冷酷的发带',NULL,'10000000170','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(161,1,0,'','淡然的往事',NULL,'10000000161','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(162,1,0,'','魁梧的小刺猬',NULL,'10000000162','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(171,1,0,'','土豪的烤鸡',NULL,'10000000171','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(164,1,0,'','温婉的日记本',NULL,'10000000164','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(165,1,0,'','安详的紫菜',NULL,'10000000165','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(166,1,0,'','善良的河马',NULL,'10000000166','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(167,1,0,'','灵巧的康乃馨',NULL,'10000000167','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(172,1,0,'','高挑的飞鸟',NULL,'10000000172','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(173,1,0,'','勤恳的魔镜',NULL,'10000000173','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(174,1,0,'','狂野的大象',NULL,'10000000174','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(175,1,0,'','清秀的夕阳',NULL,'10000000175','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(176,1,0,'','眯眯眼的花卷',NULL,'10000000176','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(177,1,0,'','知性的水蜜桃',NULL,'10000000177','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(178,1,0,'','调皮的外套',NULL,'10000000178','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(179,1,0,'','狂野的小海豚',NULL,'10000000179','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(180,1,0,'','复杂的冰淇淋',NULL,'10000000180','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(181,1,0,'','时尚的飞机',NULL,'10000000181','123456','',1,1,662659200,0,0,20,NULL,NULL,0,0,0,0,0,0),(182,1,0,'','无心的路人',NULL,'10000000182','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(183,1,0,'','虚心的奇异果',NULL,'10000000183','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(184,1,0,'','踏实的酒窝',NULL,'10000000184','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(185,1,0,'','激动的耳机',NULL,'10000000185','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(186,1,0,'','无限的小蚂蚁',NULL,'10000000186','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(187,1,0,'','忧郁的蜻蜓',NULL,'10000000187','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(188,1,0,'','单纯的过客',NULL,'10000000188','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(189,1,0,'','高兴的煎饼',NULL,'10000000189','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(190,1,0,'','高兴的战斗机',NULL,'10000000190','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(191,1,0,'','老实的煎蛋',NULL,'10000000191','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(192,1,0,'','慈祥的香氛',NULL,'10000000192','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(193,1,0,'','雪白的钢铁侠',NULL,'10000000193','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(194,1,0,'','淡然的战斗机',NULL,'10000000194','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(195,1,0,'','闪闪的香水',NULL,'10000000195','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(196,1,0,'','明亮的航空',NULL,'10000000196','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(197,1,0,'','甜蜜的牛排',NULL,'10000000197','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(198,1,0,'','爱笑的自行车',NULL,'10000000198','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(199,1,0,'','故意的银耳汤',NULL,'10000000199','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(200,1,0,'','清脆的冬天',NULL,'10000000200','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(201,1,0,'','开朗的西牛',NULL,'10000000201','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(202,1,0,'','儒雅的月饼',NULL,'10000000202','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(203,1,0,'','高挑的香氛',NULL,'10000000203','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(204,1,0,'','傲娇的自行车',NULL,'10000000204','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(205,1,0,'','受伤的雪碧',NULL,'10000000205','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(206,1,0,'','瘦瘦的刺猬',NULL,'10000000206','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(207,1,0,'','大方的板凳',NULL,'10000000207','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(208,1,0,'','安详的学姐',NULL,'10000000208','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(209,1,0,'','英俊的面包',NULL,'10000000209','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(210,1,0,'','明亮的网络',NULL,'10000000210','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(211,1,0,'','甜美的故事',NULL,'10000000211','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(212,1,0,'','霸气的外套',NULL,'10000000212','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(213,1,0,'','兴奋的苗条',NULL,'10000000213','123456','',1,1,662659200,0,0,0,NULL,NULL,0,0,0,0,0,0),(214,1,0,'','斯文的哈密瓜',NULL,'10000000214','123456','',1,1,662659200,11,1101,0,NULL,NULL,0,0,0,0,0,0),(215,1,0,'','壮观的犀牛',NULL,'10000000215','123456','',1,1,662659200,44,4401,0,NULL,NULL,0,0,0,0,0,0),(216,1,0,'','热情的大碗',NULL,'10000000216','123456','',1,1,662659200,44,4415,0,NULL,NULL,0,0,0,0,0,0);
/*!40000 ALTER TABLE `ims_jy_ppp_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_mianrao`
--

DROP TABLE IF EXISTS `ims_jy_ppp_mianrao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_mianrao` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `zhaohu` int(10) DEFAULT '0' COMMENT '0为不限,1为拒绝异性发来的招呼类信件',
  `thumb` int(10) DEFAULT '0' COMMENT '0为不限,1为拒绝无头像的异性信件',
  `province` int(10) DEFAULT '0' COMMENT '0为不限,1为拒绝异省的异性信件',
  `age` int(10) DEFAULT '0' COMMENT '0为不限,1为拒绝不符合征友条件年龄的异性信件',
  `mobile` int(10) DEFAULT '0' COMMENT '0为不限,1为拒绝未验证手机的异性信件',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_mianrao`
--

LOCK TABLES `ims_jy_ppp_mianrao` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_mianrao` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_mianrao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_mobile`
--

DROP TABLE IF EXISTS `ims_jy_ppp_mobile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_mobile` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `mid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_mobile`
--

LOCK TABLES `ims_jy_ppp_mobile` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_mobile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_mobile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_msg`
--

DROP TABLE IF EXISTS `ims_jy_ppp_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `type` int(2) NOT NULL DEFAULT '0',
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `name` varchar(255) NOT NULL,
  `media` text,
  `url` text,
  `picurl` text,
  `media_id` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_msg`
--

LOCK TABLES `ims_jy_ppp_msg` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_msg` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_nickname`
--

DROP TABLE IF EXISTS `ims_jy_ppp_nickname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_nickname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_nickname`
--

LOCK TABLES `ims_jy_ppp_nickname` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_nickname` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_nickname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_pay_log`
--

DROP TABLE IF EXISTS `ims_jy_ppp_pay_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_pay_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `from_user` varchar(250) DEFAULT NULL COMMENT '付款的from_user,为空时代表自己付的款',
  `fee` int(10) NOT NULL,
  `log` int(10) NOT NULL COMMENT '1为购买豆币,2为购买包月服务,3为购买收信宝',
  `status` int(10) NOT NULL COMMENT '付款状态',
  `plid` bigint(11) unsigned DEFAULT NULL COMMENT 'core_paylog表的id',
  `paytime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_pay_log`
--

LOCK TABLES `ims_jy_ppp_pay_log` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_pay_log` DISABLE KEYS */;
INSERT INTO `ims_jy_ppp_pay_log` VALUES (1,1530106882,179,NULL,11,0,0,NULL,0,1530106882),(2,1530106944,179,NULL,11,0,0,NULL,0,1530106944),(3,1530106975,179,NULL,68,0,0,NULL,0,1530106975),(4,1530107009,179,NULL,11,0,0,NULL,0,1530107009),(5,1530107438,181,NULL,11,0,0,NULL,0,1530107438),(6,1530107562,181,NULL,11,0,0,NULL,0,1530107562),(7,1530107618,181,NULL,68,0,0,NULL,0,1530107618),(8,1530108118,181,NULL,68,0,0,NULL,0,1530108118),(9,1530108481,181,NULL,68,0,0,NULL,0,1530108481),(10,1530108631,181,NULL,68,0,0,NULL,0,1530108631),(11,1530108834,181,NULL,99,0,0,NULL,0,1530108834),(12,1530109248,182,NULL,99,0,0,NULL,0,1530109248),(13,1530160066,182,NULL,99,0,0,NULL,0,1530160066),(14,1530160074,182,NULL,68,0,0,NULL,0,1530160074),(15,1530172943,182,NULL,99,0,0,NULL,0,1530172943),(16,1530172973,182,NULL,99,0,0,NULL,0,1530172973),(17,1530172979,182,NULL,99,0,0,NULL,0,1530172979),(18,1530173023,182,NULL,99,0,0,NULL,0,1530173023),(19,1530173098,182,NULL,99,0,0,NULL,0,1530173098),(20,1530173127,182,NULL,99,0,0,NULL,0,1530173127),(21,1530173157,182,NULL,99,0,0,NULL,0,1530173157),(22,1530173207,182,NULL,99,0,0,NULL,0,1530173207),(23,1530173217,182,NULL,99,0,0,NULL,0,1530173217),(24,1530173241,182,NULL,99,0,0,NULL,0,1530173241),(25,1530173314,182,NULL,99,0,0,NULL,0,1530173314),(26,1530173351,182,NULL,99,0,0,NULL,0,1530173351),(27,1530173359,182,NULL,99,0,0,NULL,0,1530173359),(28,1530173396,182,NULL,99,0,0,NULL,0,1530173396),(29,1530173407,182,NULL,99,0,0,NULL,0,1530173407),(30,1530173413,182,NULL,99,0,0,NULL,0,1530173413),(31,1530173453,182,NULL,99,0,0,NULL,0,1530173453),(32,1530173778,182,NULL,99,0,0,NULL,0,1530173778),(33,1530173875,182,NULL,68,0,0,NULL,0,1530173875),(34,1530174012,182,NULL,68,0,0,NULL,0,1530174012),(35,1530174014,182,NULL,98,0,0,NULL,0,1530174014),(36,1530174021,182,NULL,68,0,0,NULL,0,1530174021),(37,1530175353,182,NULL,68,0,0,NULL,0,1530175353),(38,1530176015,182,NULL,99,0,0,NULL,0,1530176015),(39,1530179506,182,NULL,99,0,0,NULL,0,1530179506),(40,1530187108,182,NULL,99,0,0,NULL,0,1530187108),(41,1530325835,183,NULL,68,0,0,NULL,0,1530325835),(42,1530377195,186,NULL,68,0,0,NULL,0,1530377195),(43,1530516244,206,NULL,99,0,0,NULL,0,1530516244),(44,1530516247,206,NULL,249,0,0,NULL,0,1530516247);
/*!40000 ALTER TABLE `ims_jy_ppp_pay_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_price`
--

DROP TABLE IF EXISTS `ims_jy_ppp_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `fee` int(10) NOT NULL,
  `credit` int(10) NOT NULL,
  `baoyue` int(10) NOT NULL,
  `shouxin` int(10) NOT NULL,
  `log` int(10) NOT NULL COMMENT '1为购买豆币,2为购买包月服务,3为购买收信宝',
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists',
  `huafei` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_price`
--

LOCK TABLES `ims_jy_ppp_price` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_price` DISABLE KEYS */;
INSERT INTO `ims_jy_ppp_price` VALUES (9,1,3,68,0,30,0,2,'',1,30),(8,1,2,98,0,365,0,2,'',1,50),(7,1,1,168,0,9999,0,2,'',1,100),(10,1,0,99,1,0,0,1,'',1,0),(11,1,0,159,5,0,0,1,'',1,0),(12,1,0,249,10,0,0,1,'',1,0);
/*!40000 ALTER TABLE `ims_jy_ppp_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_report`
--

DROP TABLE IF EXISTS `ims_jy_ppp_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `reportid` int(11) NOT NULL,
  `report` text,
  `status` int(2) DEFAULT '0' COMMENT '0为审核中,1审核过',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_report`
--

LOCK TABLES `ims_jy_ppp_report` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_rule`
--

DROP TABLE IF EXISTS `ims_jy_ppp_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rulename` varchar(255) NOT NULL,
  `desc` text,
  `ruleid` int(11) NOT NULL,
  `uniacid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_rule`
--

LOCK TABLES `ims_jy_ppp_rule` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_safe`
--

DROP TABLE IF EXISTS `ims_jy_ppp_safe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_safe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '批次ID,0为第一级',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `description` text COMMENT '描述',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  `paixu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_safe`
--

LOCK TABLES `ims_jy_ppp_safe` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_safe` DISABLE KEYS */;
INSERT INTO `ims_jy_ppp_safe` VALUES (46,1,'赴异地约会陷入传销窝',6,0,'&lt;p&gt;刘先生离异多年，偶然机会注册了某婚恋网并结识了异地女孩C。C通过聊天了解到刘先生寻偶心情较急迫，便邀请刘先生来到其所在城市约会。当刘先生抵达C所在城市后发现其从事传销行业，并强迫刘先生加入。后经客服向警方求助，刘先生脱离危险并对C进行刑事拘留。&lt;/p&gt;\r\n&lt;p&gt;提示：请不要轻易单独去其他城市约见陌生异性。&lt;/p&gt;',1,0),(44,1,'假冒客服电话',6,0,'&lt;p&gt;近来有不法分子用虚假电话号码冒充客服行骗，请认准官方唯一客服电话&lt;/p&gt;\r\n&lt;p&gt;客服人员不会以任何借口索要用户充值卡/银行卡密码！官方将严肃追究该类行骗者应承担的责任.&lt;/p&gt;',1,0),(45,1,'帮充话费遇到骗子',6,0,'&lt;p&gt;王先生在某婚恋网结识了年龄女孩M。经聊天，王先生对M有了初步了解，这时M提出要求王先生帮其充值手机费。M先生为&ldquo;挣面子&rdquo;和表达诚意，便购买了充值卡，向M提供的手机号进行了充值。事后王先生醒悟，怀疑对方可能在行骗并向客服进行了求助。&lt;/p&gt;\r\n&lt;p&gt;提示：请不要帮异性充值话费，这是最常见骗术之一&lt;/p&gt;',1,0),(42,1,'举报须知',5,0,'&lt;p&gt;请您本着诚实、守信的原则,对举报行为负责,同时您将受到保护.如有虚假或恶意投诉,将受到网站严肃处理,后果严重者承担相应法律责任.&lt;/p&gt;\r\n&lt;p&gt;&nbsp;&lt;/p&gt;\r\n&lt;p&gt;站方免责声明&lt;/p&gt;\r\n&lt;p&gt;官方会尽力维护网络交友平台的严肃性,但仍难确保每位用户资料的真实性及其交友动机的正当性,特别提醒广大用户在交友过程中注意人身财产安全&lt;/p&gt;',1,0),(43,1,'投诉举报入口说明',5,0,'点击对方空间页下方的【举报】链接',1,0),(39,1,'封号',4,0,'违反有关规定并予以警告过的用户仍屡此违反规定,则封锁其账号.',1,0),(40,1,'报警',4,0,'情节严重,超出站方能力范围则向公安机关举报. ',1,0),(41,1,'黑名单公告',4,0,'&lt;p&gt;经核实，以下被加入黑名单的账号存在违反有关规定的行为，特此予以公告。&lt;/p&gt;\r\n&lt;p&gt;&nbsp;&lt;/p&gt;\r\n&lt;p&gt;今生 女 27岁 广西&lt;/p&gt;\r\n&lt;p&gt;来世 女 35岁 上海&lt;/p&gt;',1,0),(37,1,'交往提高警惕',30,0,'&lt;p&gt;交往过程中,对方出现以下任何行为,请您提高警惕&lt;/p&gt;\r\n&lt;p&gt;1.首次见面或交往时间不长索取钱财或提出性要求&lt;/p&gt;\r\n&lt;p&gt;2.个人信息自相矛盾,包括年龄、兴趣、外貌、婚姻状况、职业等&lt;/p&gt;\r\n&lt;p&gt;3.本人外表与网站形象照明显不符&lt;/p&gt;\r\n&lt;p&gt;4.在网络上建立了深入发展的亲密关系,却拒绝进行电话交谈或见面&lt;/p&gt;',1,0),(38,1,'警告',4,0,'违反有关规定且情节较轻的用户,予以警告.',1,0),(36,1,'时刻保持警觉',29,0,'&lt;p&gt;时刻保持警觉:&lt;/p&gt;\r\n&lt;p&gt;在约会过程中要保持警觉,如果感觉到或发生让自己害怕或危险的事情,要保持冷静,及时离开.必要时可请求他人帮助或报警以保障人身安全.&lt;/p&gt;',1,0),(34,1,'确认真实身份',29,0,'&lt;p&gt;确认真实身份:&lt;/p&gt;\r\n&lt;p&gt;当双方见面后最好先确认真实身份,可出示身份证或其他有效证件,保证交友安全.&lt;/p&gt;',1,0),(35,1,'控制约会时间',29,0,'&lt;p&gt;控制约会时间:&lt;/p&gt;\r\n&lt;p&gt;如果您是新手,则请格外牢记忠告,即使企盼这次约会已经很长时间,而且做好了精心准备,并且约会非常美满,我们还是请您不要忘记早些回家,让家人放心.&lt;/p&gt;',1,0),(31,1,'地址信息要保密',28,0,'&lt;p&gt;地址信息要保密:&lt;/p&gt;\r\n&lt;p&gt;骗子为了不浪费时间和金钱,往往发信直接索要您的家庭住址或工作地点等详细信息,方便日后骗取钱财.若您不提供,骗子可能会马上放弃行骗,转移目标&lt;/p&gt;',1,0),(32,1,'沟通工具不泄露',28,0,'&lt;p&gt;沟通工具不泄露:&lt;/p&gt;\r\n&lt;p&gt;电话号及QQ号属于私人沟通工具.骗子获取联系方式后,会拨打骚扰电话或发送垃圾广告信息.望用户在与对方深入了解后再告知此类信息.&lt;/p&gt;',1,0),(33,1,'如何选择约会地点',29,0,'&lt;p&gt;如何选择约会地点:&lt;/p&gt;\r\n&lt;p&gt;选择公共场所约会,如肯德基、麦当劳、公共餐厅等.并告知自己的朋友或家人,不要去对方的家里或者陌生的KTV,酒吧等.&lt;/p&gt;',1,0),(28,1,'初期联系，隐私内容不透露',3,0,'',1,0),(29,1,'约会见面，防人之心不可无',3,0,'',1,0),(30,1,'交往期间，日久接触见人心',3,0,'',1,0),(27,1,'事例四:提供性服务',14,0,'&lt;p&gt;提供性服务:对方初次来信便透漏QQ、手机号,宣传提供性服务,骗取钱财.&lt;/p&gt;\r\n&lt;p&gt;案例分析: 有些女用户上传虚假漂亮照片,直接给男性发送私信,包含&quot;兼职一夜情&quot;、&quot;新鲜妹妹上门服务&quot;等内容,并留有联系方式.当男性与其取得联系后提供违法性服务.&lt;/p&gt;\r\n&lt;p&gt;提醒:&lt;/p&gt;\r\n&lt;p&gt;为了你的人身和财物安全,请用户朋友们杜绝与这类人员联系,以免被骗财骗色或者产生其他不良后果.&lt;/p&gt;',1,0),(26,1,'事例三:代孕广告',14,0,'&lt;p&gt;代孕广告:骗子以代孕为由,发送代孕信息,骗取钱财.若发现此类信息请及时举报,以净化网站交友环境.&lt;/p&gt;\r\n&lt;p&gt;案例分析: 台湾年轻美貌的少妇因为丈夫没有生育能力,在网上求代孕,并称愿意给代孕者50万,19岁的贵州男子小张竟信以为真,结果50万没赚到,倒是被骗了28800元的所谓&quot;代孕手续费&quot;.&lt;/p&gt;\r\n&lt;p&gt;提醒:&lt;/p&gt;\r\n&lt;p&gt;网友要懂得甄别真假,不要抱着贪小便宜的心理,轻信各种所谓的&quot;代孕&quot;信息,上当受骗.&lt;/p&gt;',1,0),(25,1,'事例二:异地传销',14,0,'&lt;p&gt;异地传销:对方以约会为由,要求您去其所在地区见面,对方很可能从事传销行业,并会丛恿你一同进行传销,害人害己 .&lt;/p&gt;\r\n&lt;p&gt;案例分析: 徐女士在网上认识A先生,沟通一段时间后,男方便要求徐女士到异地看他,徐女士欣然接受并前往.哪知到了异地才知男方是某传销行业的下线,与徐女士接触是进行有目的的传销.徐女士惊慌逃脱后向警方报案.&lt;/p&gt;\r\n&lt;p&gt;提醒:&lt;/p&gt;\r\n&lt;p&gt;异地网友见面需谨慎,去之前需对目的地进行一番了解,并一路保持电话畅通,若感觉情况不对,应及时离开或选择报警.&lt;/p&gt;',1,0),(24,1,'事例一:中奖圈套',14,0,'&lt;p&gt;中奖圈套:骗子会以站方的名义发送中奖消息.请不要轻信信件中公布的&ldquo;领奖&rdquo;网站.官方不会授权其他单位发布任何形式的中奖通知.&lt;/p&gt;\r\n&lt;p&gt;案例分析: 骗子多以中奖通知的形式发送如下虚假信息:&quot;您|已|获|得|免|费|苹|果|手|机|一|部,请|邮|寄|邮|费|至****.&quot;因邮寄费用不是很高,多数被骗用户便自认倒霉不再追究.&lt;/p&gt;\r\n&lt;p&gt;提醒:&lt;/p&gt;\r\n&lt;p&gt;该网发布的中奖信息均为管理员名称及管理员统一头像发送,以区别于会员间的往来信件.&lt;/p&gt;',1,0),(23,1,'事例二:地址信息泄露',13,0,'&lt;p&gt;地址信息泄露:沟通中泄露自己的家庭住址、公司地址等信息,可能造成人身财产安全损失.&lt;/p&gt;\r\n&lt;p&gt;案例分析: 陈女士在网站认识某男子,在多次交流中曾透露其单位地址.一天陈女士在单位门口见到一男士等她还自称是网上认识的,但陈女士并未想与此人见面.陈女士觉得自己的人身安全受到了威胁,自此陈女士在网上交友都不再透漏地址信息.&lt;/p&gt;\r\n&lt;p&gt;提醒:&lt;/p&gt;\r\n&lt;p&gt;提供信息时需谨慎,为保证人身财产安全,请与对方进一步了解后再告知个人信息.&lt;/p&gt;',1,0),(22,1,'事例一:沟通工具泄露',13,0,'&lt;p&gt;沟通工具泄露：骗子会在沟通过程中获取你的手机号或QQ号码,随后会给你拨打骚扰电话或发送垃圾广告信息.&lt;/p&gt;\r\n&lt;p&gt;案例分析: 北京某男在网上交友过程中,有一女生主动发信提供手机号,并要求对方与之交换联系方式.几天后,男用户收到某婚介公司的电话,声称可以为其提供线下婚姻介绍服务,并不断对其进行电话骚扰.&lt;/p&gt;\r\n&lt;p&gt;提醒:&lt;/p&gt;\r\n&lt;p&gt;建议你与对方有一定了解后再提供联系方式,避免受到骚扰电话和垃圾信息的打扰.&lt;/p&gt;',1,0),(21,1,'事例二:利用感情骗钱财',12,0,'&lt;p&gt;利用感情骗钱财:骗子在和你深入了解,获得你的信任后,以各种方法骗取你的个人信息、银行卡号、密码等.以骗取巨额钱财.&lt;/p&gt;\r\n&lt;p&gt;案例分析: 方女士网上认识A先生,在3个月交往期间,A先生假意骗方女士出钱投资开店,并劝说投资越多回报越多.在A先生的花言巧语下,方女士先后3次投资近十万元.之后,该男子就杳无音讯了.&lt;/p&gt;\r\n&lt;p&gt;提醒:&lt;/p&gt;\r\n&lt;p&gt;交友时需小心谨慎,建议在双方感情稳定后再告知一些私人信息或与之有钱财往来,以防人财两空.&lt;/p&gt;',1,0),(20,1,'事例一:以性需求为目的',12,0,'&lt;p&gt;以性需求为目的:骗子在与你深入了解后,便会提出发生性关系等要求.以感情为谎骗财骗色.&lt;/p&gt;\r\n&lt;p&gt;案例分析: 女孩小张哭着到派出所报警,称前一天晚上与一名男网友见面开房,早晨醒来发现网友不辞而别,自己衣衫不整,手机钱包都不见了.&lt;/p&gt;\r\n&lt;p&gt;提醒:&lt;/p&gt;\r\n&lt;p&gt;女性用户交友时需提高警惕,对方提出的要求需仔细斟酌,以免给自己带来伤害.&lt;/p&gt;',1,0),(19,1,'事例五:高额声讯电话',11,0,'&lt;p&gt;高额声讯电话:骗子在沟通过程中,主动或被动提供电话号码声称是自己的电话,但其实是高额收费的声讯电话.请勿随便轻信拨打！&lt;/p&gt;\r\n&lt;p&gt;案例分析: 安徽的王先生在网上认识了一个美女网友,两人聊的很是投机.美女多次要求给她打电话陪她聊天.事后王先生发现他的电话账单中莫名其妙多出了300元,当王先生意识到是高额声讯电话诈骗时,该女网友也消失得无影无踪了.&lt;/p&gt;\r\n&lt;p&gt;提醒:&lt;/p&gt;\r\n&lt;p&gt;遇到网友提供的电话号码需要仔细查看,必要时通过搜索引擎进行查询&lt;/p&gt;',1,0),(18,1,'事例四:借款诈骗',11,0,'&lt;p&gt;借款诈骗:对方在与你进一步了解后,会以家庭困难、异地被骗等各种理由诉说自己的苦境,请求你给其汇款、转账等.&lt;/p&gt;\r\n&lt;p&gt;案例分析: 王先生和刘女士在网上认识有2个月了,一日王先生与刘女士哭诉家中父亲有病住院,需支付高额手术费,自己却没钱医治.刘女士怜悯心起便答应汇款相助,哪知自此以后这个所谓的王先生杳无音讯.刘女士只好报警.&lt;/p&gt;\r\n&lt;p&gt;提醒:&lt;/p&gt;\r\n&lt;p&gt;请勿相信任何未曾见面即要求汇款或充值的理由,即便见面后,涉及到金钱往来的事情,也需格外小心.&lt;/p&gt;',1,0),(17,1,'事例三:酒托饭托',11,0,'&lt;p&gt;酒托饭托:对方会与你约会见面,随后将你带至不知名的KTV、饭店或其他娱乐场所,与不良商家勾结欺骗,巨额敲诈.&lt;/p&gt;\r\n&lt;p&gt;案例分析: 李先生是辽宁人,在网上与女网友聊天,觉得甚是投缘.对方主动提约会见面.见面后女方带领其去某KTV,但结账时,李先生傻眼了,他没想到唱个歌,点了点东西竟然要1800多元钱,只得硬着头皮付了钱.&lt;/p&gt;\r\n&lt;p&gt;建议&lt;/p&gt;\r\n&lt;p&gt;用户在交友时需谨慎,如不慎被骗到KTV、咖啡厅,结帐时发现帐单价格过高,可借去洗手间等为由拨打电话报警.&lt;/p&gt;',1,0),(16,1,'事例二:骗电话费',11,0,'&lt;p&gt;骗电话费:对方会与您进行沟通,取得你的信任后,便会要你帮助充值手机话费,请不要上当！&lt;/p&gt;\r\n&lt;p&gt;案例分析: 刘先生在网上认识美女C,并与之深入沟通后,美女C多次声称自己手机欠费,撒娇要刘先生给其购买充值卡或充话费,当刘先生提出见面时,对方又婉言拒绝.最终刘先生意识到美女C就是骗他钱财时也只能认栽.&lt;/p&gt;\r\n&lt;p&gt;提醒：&lt;/p&gt;\r\n&lt;p&gt;遇到非常热情,联系时间很短就主动要求确立情侣关系的人需要提高警惕.不要轻易为他人支付电话费,以免上当受骗&lt;/p&gt;',1,0),(14,1,'其他骗术',2,0,'',1,0),(15,1,'事例一:骗路费',11,0,'&lt;p&gt;骗路费：对方会以赴异地与您见面为由,要求您提供其路费花销（火车票/飞机票）,以骗取钱财.&lt;/p&gt;\r\n&lt;p&gt;案例分析:&lt;/p&gt;\r\n&lt;p&gt;朱女士在网上认识了某男,俩人深入了解后,决定约会见面.过了一天,男方来电声称路上钱丢了,要求朱女士汇款救济,朱女士照做后,男方又声称没收到,要求再汇一次,朱女士也照做了.然而过了两天此男士都没再联系过.当朱女士再拨打其电话时已找不到此人,方知自己被骗.&lt;/p&gt;\r\n&lt;p&gt;建议:&lt;/p&gt;\r\n&lt;p&gt;请勿相信任何未曾见面即要求汇款或转账的理由,涉及到金钱往来的事情,需格外小心.&nbsp;&lt;/p&gt;',1,0),(12,1,'情感诈骗',2,0,'',1,0),(13,1,'隐私泄露',2,0,'',1,0),(11,1,'经济诈骗',2,0,'',1,0),(10,1,'花篮托',1,0,'&lt;p&gt;此类行骗人员多为30-50岁之间声称事业有成的男性，他们通常不会留下自己的任何联系方式，只是在一开始便索要对方的电话号码，通过电话急切的与对方建立亲密关系，使用各种亲昵的方式骗取对方信任，接着就会以公司开业、店面开张为由，要求对方送花篮。&lt;/p&gt;\r\n&lt;p&gt;&nbsp;&lt;/p&gt;\r\n&lt;p&gt;防花篮托指南：&lt;/p&gt;\r\n&lt;p&gt;1、衣着西装革履（比较光鲜），年龄在40几岁的男性用户在一开始便索要联系电话时，需要提高谨慎；&lt;/p&gt;\r\n&lt;p&gt;2、在电话联系的过程中，对方一旦提出自己的公司开业、店面开张，并且要求汇款时，务必提高警惕，断绝与此人的联系！&lt;/p&gt;',1,0),(9,1,'钱财诈骗',1,0,'&lt;p&gt;女性通常会找各种理由让对方为其买充值卡、汇钱、寄路费等，甚至以&lsquo;考验对方的真诚度&rsquo;为借口，要求对方充值汇款。&lt;/p&gt;\r\n&lt;p&gt;&nbsp;&lt;/p&gt;\r\n&lt;p&gt;防钱财欺诈指南：&lt;/p&gt;\r\n&lt;p&gt;交流过程中，对方一旦提及钱财相关的语句即需提高谨慎。&lt;/p&gt;',1,0),(8,1,'代孕',1,0,'&lt;p&gt;此类行骗人员会假借各种理由寻找健康男士要求代孕，并承诺给予高额的回报来诱惑男用户上当。她们通常会持续发送带有联系方式的信件，但是在网站上不与对方进行下一步的沟通，当用户加了她们留在网站上的qq时，会发现其qq的资料里写着代孕相关的信息来进一步行骗。&lt;/p&gt;\r\n&lt;p&gt;&nbsp;&lt;/p&gt;\r\n&lt;p&gt;防代孕指南：&lt;/p&gt;\r\n&lt;p&gt;1、当女性用户上来就给你发联系方式，并且没有进一步沟通时，男性用户需要提高警惕；&lt;/p&gt;\r\n&lt;p&gt;2、当怀疑其存在代孕行为倾向时，即考虑停止通过其他联系方式与其取得进一步的联系。&lt;/p&gt;',1,0),(1,1,'行骗类型',0,0,'',1,1),(2,1,'警惕诈骗',0,0,'',1,1),(3,1,'防骗指南',0,0,'',1,0),(4,1,'处罚方式',0,0,'',1,1),(5,1,'投诉举报',0,0,'',1,0),(6,1,'热点问题',0,0,'',1,0),(7,1,'酒托',1,0,'&lt;p&gt;双方聊天时会索要对方联系方式，持续坚持双方见面了解，并且找各种理由约对方到指定地点见面，被指定地点提供的饮料酒水或食品价格通常会比较昂贵，对方会非常热情的点单，大部分是高级酒水、果盘（她们可以从中获利），消费完后，会找各种借口先行离开，由对方结账。&lt;/p&gt;\r\n&lt;p&gt;&nbsp;&lt;/p&gt;\r\n&lt;p&gt;防酒托指南：&lt;/p&gt;\r\n&lt;p&gt;1、女性在沟通过程中积极主动的索要你的联系方式，在没有深入了解的情况下即提出见面了解时，男性朋友需提高警惕；&lt;/p&gt;\r\n&lt;p&gt;2、首次见面由自己确定见面的地点，或者尽量选择人多的公共场合见面，如KFC、麦当劳等；&lt;/p&gt;\r\n&lt;p&gt;3、如不慎被骗，在发现后需冷静对待，及时打电话报警。&lt;/p&gt;',1,0),(47,1,'陷入热恋人财两空',6,0,'&lt;p&gt;郑女士30岁，从事金融行业，单身待嫁。近日郑女士在某婚恋网认识了同城男士Z，几日聊天后觉得相见恨晚，Z提出见面后郑女士欣然同意。双方首次约会后均表示满意，迅速确立了恋爱关系，当晚用餐后，Z和郑女士便在某快捷酒店开房留宿。数日后，Z以生意周转为借口多次向郑女士借钱，郑女士没有提防，将数万元积蓄都交付给Z。交往一月后，Z以各种理由搪塞郑女士，不再与其见面，并更换电话号码，郑女士意识到可能上当，并在客服协助下报警。&lt;/p&gt;\r\n&lt;p&gt;提示：骗子往往在取得异性信任后骗财骗色，请不要轻信陌生人！&lt;/p&gt;',1,0);
/*!40000 ALTER TABLE `ims_jy_ppp_safe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_setting`
--

DROP TABLE IF EXISTS `ims_jy_ppp_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_setting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `aname` varchar(255) NOT NULL,
  `sharetitle` varchar(255) NOT NULL,
  `sharedesc` varchar(255) NOT NULL,
  `sharelogo` varchar(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `copyrighturl` varchar(255) NOT NULL,
  `zhuce_bg` varchar(255) NOT NULL,
  `zhuce_text` varchar(255) NOT NULL,
  `adminthumb` varchar(255) NOT NULL,
  `sms_type` int(10) NOT NULL DEFAULT '0' COMMENT '0,1为互亿无线,2为微擎',
  `sms_sign` varchar(255) NOT NULL,
  `sms_product` varchar(255) NOT NULL,
  `sms_username` varchar(255) NOT NULL,
  `sms_pwd` varchar(255) NOT NULL,
  `address` int(10) DEFAULT '0',
  `province` int(10) DEFAULT '11',
  `city` int(10) DEFAULT '1101',
  `chat` int(10) DEFAULT '20',
  `idcard` int(10) DEFAULT '60',
  `doubi` varchar(255) NOT NULL DEFAULT '豆币',
  `unit` varchar(255) NOT NULL DEFAULT '豆',
  `jiange` int(10) DEFAULT '30',
  `shangxian` int(10) DEFAULT '12',
  `tel` varchar(255) NOT NULL,
  `kftime` varchar(255) NOT NULL,
  `rule` text,
  `createtime` int(10) NOT NULL,
  `thumb` int(2) NOT NULL DEFAULT '1',
  `kjmsg_num` int(10) DEFAULT '10',
  `kjmsg_jiange` int(10) DEFAULT '60',
  `moni` int(2) NOT NULL DEFAULT '0',
  `bd_ak` varchar(255) NOT NULL,
  `indexui` int(2) NOT NULL DEFAULT '0',
  `unzhuce` int(2) NOT NULL DEFAULT '0',
  `kjmsg_jiange2` int(10) DEFAULT '60',
  `user_addr` int(2) NOT NULL DEFAULT '0',
  `youhuo_pay` int(2) NOT NULL DEFAULT '0',
  `mail_float` int(2) NOT NULL DEFAULT '1',
  `sql_style` int(2) NOT NULL DEFAULT '0',
  `huafei` int(2) NOT NULL DEFAULT '0',
  `huafei_thumb` varchar(255) NOT NULL,
  `stat_style` int(2) NOT NULL DEFAULT '0',
  `kjmsg_jiange3` int(10) DEFAULT '60',
  `kjmsg_jiange4` int(10) DEFAULT '80',
  `cz_send_style` int(2) NOT NULL DEFAULT '0',
  `dw_style` int(2) NOT NULL DEFAULT '0',
  `cz_style` int(2) NOT NULL DEFAULT '0',
  `chat_style` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_setting`
--

LOCK TABLES `ims_jy_ppp_setting` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_setting` DISABLE KEYS */;
INSERT INTO `ims_jy_ppp_setting` VALUES (1,1,'好朋友','来自牛码屋源码网www.niumawu.com','来自牛码屋源码网www.niumawu.com','','','','../addons/jy_ppp/images/speed_2015114.jpg','1亿9836万美女帅哥在这里等你哦~','../addons/jy_ppp/images/adminthumb.png',0,'','','','',0,11,0,20,60,'豆币','豆',30,12,'','9:00-21:00 周一至周五','&lt;p&gt;本网站是一个严肃纯净的婚恋交友软件，用户（以下也称“会员”）在此注册为征友会员并在之后进行的征友活动中应遵守以下会员注册条款：&lt;br/&gt;&lt;br/&gt;1、注册条款的接受&lt;br/&gt;一旦会员注册即表示会员已经阅读并且同意该协议，并接受所有的注册条款。&lt;br/&gt;&lt;br/&gt;2、会员注册条件&lt;br/&gt;1) 申请注册成为会员应同时满足下列全部条件：在注册之日以及此后使用交友服务期间必须以恋爱或者婚姻为目的；在注册之日以及此后使用交友服务期间必须是单身状态，包括未婚、离异或是丧偶；在注册之日必须年满18周岁以上。&lt;br/&gt;2) 为更好的享有提供的服务，会员应：提供本人真实、正确、最新及完整的资料； 随时更新登记资料，保持其真实性及有效性；提供真实有效的联系人手机号码；征友过程中，务必保持征友帐号的唯一性。&lt;br/&gt;3) 若会员提供任何错误、不实或不完整的资料，或被怀疑资料为错误、不实或不完整及违反会员注册条款的，或被怀疑其会员资料、言行等有悖于“严肃纯净的婚恋交友”主题的，官方将有权修改会员的注册昵称、独白等，或暂停或终止该会员的帐号，或暂停或终止提供全部或部分服务。&lt;br/&gt;&lt;br/&gt;3、会员账号名称安全&lt;br/&gt;任何注册和使用的账号名称，不得有下列情形：&lt;br/&gt;（一）违反宪法或法律法规规定的；&lt;br/&gt;（二）危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；&lt;br/&gt;（三）损害国家荣誉和利益的，损害公共利益的；&lt;br/&gt;（四）煽动民族仇恨、民族歧视，破坏民族团结的；&lt;br/&gt;（五）破坏国家宗教政策，宣扬邪教和封建迷信的；&lt;br/&gt;（六）散布谣言，扰乱社会秩序，破坏社会稳定的；&lt;br/&gt;（七）散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；&lt;br/&gt;（八）侮辱或者诽谤他人，侵害他人合法权益的；&lt;br/&gt;（九）含有法律、行政法规禁止的其他内容的。&lt;br/&gt;会员以虚假信息骗取账号名称注册，或其账号头像、简介等注册信息存在违法和不良信息的，官方有权采取通知限期改正、暂停使用、注销登记等措施。&lt;br/&gt;对冒用关联机构或社会名人注册账号名称的会员，官方有权注销其账号。&lt;br/&gt;&lt;br/&gt;4、服务说明&lt;br/&gt;1) 在提供网络服务时，可能会对部分网络服务收取一定的费用，在此情况下，会在相关页面上做明确的提示。如会员拒绝支付该等费用，则不能使用相关的网络服务。付费业务将在本注册条款的基础上另行规定服务条款，以规范付费业务的内容和双方的权利义务，会员应认真阅读，如会员购买付费业务，则视为接受付费业务的服务条款。&lt;br/&gt;2) 无论是付费业务还是免费提供服务，上述服务均有有效期，有效期结束后服务将自动终止，且有效期不可中断或延期。除非本注册条款另有规定，所有付费业务均不退费。&lt;br/&gt;3) 对于利用服务进行非法活动，或其言行（无论线上或者线下的）背离严肃交友目的的，官方将严肃处理，包括将其列入黑名单、将其被投诉的情形公之于众、删除会员帐号等处罚措施。&lt;br/&gt;4) 官方权向其会员发送广告信，或为组织线下活动等目的，向其会员发送电子邮件、短信或电话通知。由于手机网络的特殊性，官方有权获取会员的手机信息，如手机号码或会员的基站位置等。&lt;br/&gt;5) 为提高会员的交友的成功率和效率的目的，官方有权将会员的交友信息在合作网站上进行展示或其他类似行为。&lt;br/&gt;&lt;br/&gt;5、免责条款&lt;br/&gt;1) 不保证其提供的服务一定能满足会员的要求和期望，也不保证服务不会中断，对服务的及时性、安全性、准确性都不作保证。&lt;br/&gt;2) 对于会员通过提供的服务传送的内容，官方会尽合理努力按照国家有关规定严格审查，但无法完全控制经由网站服务传送的内容，不保证内容的正确性、完整性或品质。因此会员在使用服务时，可能会接触到令人不快、不适当或令人厌恶的内容。在任何情况下，官方均不为会员经由网站服务以张贴、发送电子邮件或其它方式传送的任何内容负责。但官方有权依法停止传输任何前述内容并采取相应行动，包括但不限于暂停会员使用网站服务的全部或部分，保存有关记录，并根据国家法律法规、相关政策在必要时向有关机关报告并配合有关机关的行动。&lt;br/&gt;3) 对于网站提供的各种广告信息、链接、资讯等，官方会对广告内容进行初步审核，但是难以确保对方产品真实性、合法性或可靠性，由于产品购买导致的相关责任主要由广告商承担；敬告用户理性看待，如需购买或者交易，请谨慎考虑。并且，对于会员经由服务与广告商进行联系或商业往来，完全属于会员和广告商之间的行为，与官方无关。对于前述商业往来所产生的任何损害或损失，官方不承担任何责任。&lt;br/&gt;4) 对于用户上传的照片、资料、证件等，官方已采用相关措施并已尽合理努力进行审核，但不保证其内容的正确性、合法性或可靠性，相关责任由上传上述内容的会员负责。&lt;br/&gt;5) 会员以自己的独立判断从事与交友相关的行为，并独立承担可能产生的不利后果和责任，官方不承担任何法律责任。&lt;br/&gt;6)依据有关法律法规的规定或依据行政机关、司法机关、检察机关的要求，向其提供会员的基本信息或站内聊天信息，上述行为侵犯会员隐私权的，官方不承担任何法律责任。&lt;br/&gt;7)作为交友平台，帮助用户寻找心仪伴侣是我们的服务内容。官方推出的有缘小助手、红娘服务、收信宝等服务，全都是在用户同意并主动授权的情况下帮助授权用户寻找异性的功能性服务。不能保证用户通过此类服务授权由系统自动发出或接收到的信息完全满足用户交友需求。&lt;br/&gt;有缘小助手，为了提高用户处理私信的能力，看到更多符合自己要求的异性来信，提供了有缘小助手服务。在用户主动授权设置有缘小助手的情况下，有缘小助手会帮助用户过滤掉信箱中异性发来的招呼类信件，此类过滤掉的私信只是设为已读，仍然存于授权用户的信箱中。过滤的同时给符合授权用户征友要求的异性发送系统自动做出的信件回复。回复内容由官方根据用户交友互动中最常用的词语拟定，并由系统随机选取后发送。&lt;br/&gt;红娘服务，为了帮助女用户找到符合自己要求的异性，提供了红娘服务。红娘服务内容包括：优先将红娘会员推荐给优质男性用户，获得更多交流机会；红娘将帮助申请红娘服务的用户向符合其征友要求的异性询问交友意向；实时监控询问总数。&lt;br/&gt;收信宝，为了帮助男用户找到符合自己要求的异性，提供了收信宝服务。收信宝服务内容包括：优先将收信宝用户展示给女用户，通过替男用户打招呼的方式向符合男用户征友要求的女用户介绍男用户，从而增加男用户收信。 &lt;br/&gt;以上三种服务用户可以自行取消。&lt;br/&gt;8) &nbsp;为了促进用户互动，产品上的组件应用或小游戏都带有触发招呼的功能。用户在玩此功能的组件或小游戏的同时会给符合自己征友要求的异性发去问候招呼。不能保证用户通过此类组件或小游戏发出或接受到的信息完全满足用户的交友需求。&lt;br/&gt;&lt;br/&gt;6、会员应遵守以下法律法规：&lt;br/&gt;1) 提醒会员在使用服务时，遵守《中华人民共和国合同法》、《中华人民共和国著作权法》、《全国人民代表大会常务委员会关于维护互联网安全的决定》、《中华人民共和国保守国家秘密法》、《中华人民共和国电信条例》、《中华人民共和国计算机信息系统安全保护条例》、《中华人民共和国计算机信息网络国际联网管理暂行规定》及其实施办法、《计算机信息系统国际联网保密管理规定》、《互联网信息服务管理办法》、《计算机信息网络国际联网安全保护管理办法》、《互联网电子公告服务管理规定》、《互联网用户账号名称管理规定》等相关中国法律法规的规定。&lt;br/&gt;2) 在任何情况下，如果官方有理由认为会员使用服务过程中的任何行为，包括但不限于会员的任何言论和其它行为违反或可能违反上述法律和法规的任何规定，可在任何时候不经任何事先通知终止向该会员提供服务。&lt;br/&gt;&lt;br/&gt;7、禁止会员从事下列行为:&lt;br/&gt;1)发布信息或者利用服务时在网页上或者利用服务制作、复制、发布、传播以下信息：反对宪法所确定的基本原则的；危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；损害国家荣誉和利益的；煽动民族仇恨、民族歧视、破坏民族团结的；破坏国家宗教政策，宣扬邪教和封建迷信的；散布谣言，扰乱社会秩序，破坏社会稳定的；散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；侮辱或者诽谤他人，侵害他人合法权利的；含有虚假、有害、胁迫、侵害他人隐私、骚扰、侵害、中伤、粗俗、猥亵、或其它有悖道德、令人反感的内容；含有中国法律、法规、规章、条例以及任何具有法律效力的规范所限制或禁止的其它内容的。&lt;br/&gt;2) 使用服务的过程中，以任何方式危害未成年人的利益的。&lt;br/&gt;3) 冒充任何人或机构，包含但不限于冒充工作人员、版主、主持人，或以虚伪不实的方式陈述或谎称与任何人或机构有关的。&lt;br/&gt;4) 将侵犯任何人的肖像权、名誉权、隐私权、专利权、商标权、著作权、商业秘密或其它专属权利的内容上载、张贴、发送电子邮件或以其它方式传送的。&lt;br/&gt;5) 将病毒或其它计算机代码、档案和程序，加以上载、张贴、发送电子邮件或以其它方式传送的。&lt;br/&gt;6) 跟踪或以其它方式骚扰其他会员的。&lt;br/&gt;7) 未经合法授权而截获、篡改、收集、储存或删除他人个人信息、电子邮件或其它数据资料，或将获知的此类资料用于任何非法或不正当目的。&lt;br/&gt;8) 以任何方式干扰服务的。&lt;br/&gt;&lt;br/&gt;8、关于会员在婚恋的上传或张贴的内容&lt;br/&gt;1) 会员上传或张贴的内容（包括照片、文字、交友成功会员的成功故事等），视为会员授予官方免费、非独家的使用权，有权为展示、传播及推广前述张贴内容的目的，对上述内容进行复制、修改、出版等。该使用权持续至会员书面通知官方不得继续使用，且以实际收到该等书面通知时止。官方合作伙伴使用或在现场活动中使用，官方将事先征得会员的同意，但官方使用不受此限。&lt;br/&gt;2) 因会员进行上述上传或张贴，而导致任何第三方提出侵权或索赔要求的，会员承担全部责任。&lt;br/&gt;3) 任何第三方对于会员在公开使用区域张贴的内容进行复制、修改、编辑、传播等行为的，该行为产生的法律后果和责任均由行为人承担，与官方无关。&lt;br/&gt;&lt;br/&gt;9、会员注册条款的变更和修改&lt;br/&gt;有权随时对本注册条款进行变更和修改。一旦发生注册条款的变动，将在页面上提示修改的内容，或将最新版本的会员注册条款以邮件的形式发送给会员。会员如果不同意会员注册条款的修改，可以主动取消会员资格（如注销账号），如对部分服务支付了额外的费用，可以申请将费用全额或部分退回。如果会员继续使用会员帐号，则视为会员已经接受会员注册条款的修改。&lt;br/&gt;&lt;/p&gt;',1596493627,0,10,60,1,'',1,1,80,2,1,1,0,1,'../addons/jy_ppp/images/huafei_thumb.png',1,60,80,1,0,1,1);
/*!40000 ALTER TABLE `ims_jy_ppp_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_shouxin_log`
--

DROP TABLE IF EXISTS `ims_jy_ppp_shouxin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_shouxin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  `logid` int(10) NOT NULL COMMENT '充值记录id',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_shouxin_log`
--

LOCK TABLES `ims_jy_ppp_shouxin_log` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_shouxin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_shouxin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_tezheng`
--

DROP TABLE IF EXISTS `ims_jy_ppp_tezheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_tezheng` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `tezheng` varchar(200) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_tezheng`
--

LOCK TABLES `ims_jy_ppp_tezheng` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_tezheng` DISABLE KEYS */;
INSERT INTO `ims_jy_ppp_tezheng` VALUES (1,1,1,'有责任心',1525335451),(2,1,2,'孝顺',1525335451),(3,1,3,'好动',1525335451),(4,1,4,'感性',1525335451),(5,1,5,'孝顺',1525335451),(6,1,6,'冷静',1525335451),(7,1,7,'温柔',1525335451),(8,1,8,'正直',1525335451),(9,1,9,'随和',1525335451),(10,1,10,'体贴',1525335451),(11,1,11,'稳重',1525335451),(12,1,12,'温柔',1525335451),(13,1,13,'好动',1525335451),(14,1,14,'讲义气',1525335451),(15,1,15,'有责任心',1525335451),(16,1,16,'勇敢',1525335451),(17,1,17,'体贴',1525335451),(18,1,18,'宅',1525335451),(19,1,19,'宅',1525335451),(20,1,20,'憨厚',1525335451),(21,1,21,'有责任心',1525335451),(22,1,22,'温柔',1525335451),(23,1,23,'讲义气',1525335451),(24,1,24,'冷静',1525335451),(25,1,25,'好动',1525335451),(26,1,26,'幽默',1525335451),(27,1,27,'正直',1525335451),(28,1,28,'憨厚',1525335451),(29,1,29,'憨厚',1525335451),(30,1,30,'幽默',1525335451),(31,1,31,'感性',1525335451),(32,1,32,'幽默',1525335451),(33,1,33,'勇敢',1525335451),(34,1,34,'稳重',1525335451),(35,1,35,'感性',1525335451),(36,1,36,'体贴',1525335451),(37,1,37,'孝顺',1525335451),(38,1,38,'讲义气',1525335451),(39,1,39,'有责任心',1525335451),(40,1,40,'有责任心',1525335451),(41,1,41,'宅',1525335451),(42,1,42,'正直',1525335451),(43,1,43,'讲义气',1525335451),(44,1,44,'幽默',1525335451),(45,1,45,'憨厚',1525335451),(46,1,46,'感性',1525335451),(47,1,47,'好动',1525335451),(48,1,48,'冷静',1525335451),(49,1,49,'自我',1525335451),(50,1,50,'有责任心',1525335451),(51,1,51,'随和',1525335451),(52,1,52,'有责任心',1525335451),(53,1,53,'孝顺',1525335451),(54,1,54,'勇敢',1525335451),(55,1,55,'勇敢',1525335451),(56,1,56,'宅',1525335451),(57,1,57,'孝顺',1525335451),(58,1,58,'好动',1525335451),(59,1,59,'幽默',1525335451),(60,1,60,'憨厚',1525335451),(61,1,61,'有责任心',1525335451),(62,1,62,'幽默',1525335451),(63,1,63,'温柔',1525335451),(64,1,64,'幽默',1525335451),(65,1,65,'稳重',1525335451),(66,1,66,'有责任心',1525335451),(67,1,67,'幽默',1525335451),(68,1,68,'温柔',1525335451),(69,1,69,'勇敢',1525335451),(70,1,70,'随和',1525335451),(71,1,71,'幽默',1525335451),(72,1,72,'讲义气',1525335451),(73,1,73,'稳重',1525335451),(74,1,74,'好动',1525335451),(75,1,75,'随和',1525335451),(76,1,76,'憨厚',1525335451),(77,1,77,'自我',1525335451),(78,1,78,'正直',1525335451),(79,1,79,'孝顺',1525335451),(80,1,80,'正直',1525335451),(81,1,81,'冷静',1525335451),(82,1,82,'幽默',1525335451),(83,1,83,'自我',1525335451),(84,1,84,'体贴',1525335451),(85,1,85,'正直',1525335451),(86,1,86,'稳重',1525335458),(87,1,87,'憨厚',1525335458),(88,1,88,'讲义气',1525335458),(89,1,89,'好动',1525335458),(90,1,90,'好动',1525335458),(91,1,91,'好强',1525335458),(92,1,92,'勇敢',1525335458),(93,1,93,'幽默',1525335458),(94,1,94,'勇敢',1525335458),(95,1,95,'好强',1525335458),(96,1,96,'正直',1525335458),(97,1,97,'正直',1525335458),(98,1,98,'随和',1525335458),(99,1,99,'自我',1525335458),(100,1,100,'自我',1525335458),(101,1,101,'稳重',1525335458),(102,1,102,'幽默',1525335458),(103,1,103,'闷骚',1525335458),(104,1,104,'感性',1525335458),(105,1,105,'勇敢',1525335458),(106,1,106,'闷骚',1525335458),(107,1,107,'勇敢',1525335458),(108,1,108,'好动',1525335458),(109,1,109,'憨厚',1525335458),(110,1,110,'冷静',1525335458),(111,1,111,'稳重',1525335458),(112,1,112,'宅',1525335458),(113,1,113,'冷静',1525335458),(114,1,114,'幽默',1525335458),(115,1,164,'好强',1529228817),(116,1,164,'幽默',1529228817);
/*!40000 ALTER TABLE `ims_jy_ppp_tezheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_thumb`
--

DROP TABLE IF EXISTS `ims_jy_ppp_thumb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_thumb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `type` int(2) DEFAULT '0' COMMENT '0为审核中,1为头像,2为非头像,3为不通过,4为删除',
  `thumb` longtext,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=370 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_thumb`
--

LOCK TABLES `ims_jy_ppp_thumb` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_thumb` DISABLE KEYS */;
INSERT INTO `ims_jy_ppp_thumb` VALUES (1,1,1,1,'images/jy_ppp/xuni/26/64d98d1001e93901476e414b7dec54e736d19653.png',1525335451),(2,1,1,1,'images/jy_ppp/xuni/26/951001e93901213fdf5f82a952e736d12f2e9553.png',1525335451),(3,1,2,1,'images/jy_ppp/xuni/21/1246f21fbe096b6396c0a2260a338744eaf8acef.jpg',1525335451),(4,1,2,1,'images/jy_ppp/xuni/21/951001e93901213f2feab2aa52e736d12e2e95ef.jpg',1525335451),(5,1,2,1,'images/jy_ppp/xuni/21/aa119313b07eca80e490c591972397dda144832b.jpg',1525335451),(6,1,3,1,'images/jy_ppp/xuni/17/2bfa828ba61ea8d3a3df7671910a304e241f58c1.png',1525335451),(7,1,3,1,'images/jy_ppp/xuni/17/9a8ba61ea8d3fd1f1ef4a04f364e251f94ca5fc1.png',1525335451),(8,1,3,1,'images/jy_ppp/xuni/17/a93533fa828ba61ef513ca5a4734970a314e59c1.png',1525335451),(9,1,4,1,'images/jy_ppp/xuni/7/1c5f9f2f0708283842db68b0b899a9014d08f164.jpg',1525335451),(10,1,4,1,'images/jy_ppp/xuni/7/1e3f94cad1c8a78637ddfeaa6709c93d71cf50bb.jpg',1525335451),(11,1,4,1,'images/jy_ppp/xuni/7/5c29c83d70cf3bc79bcc7948d100baa1cc112a61.jpg',1525335451),(12,1,4,1,'images/jy_ppp/xuni/7/8faf8d5494eef01fe4a55179e0fe9925bd317dfd.jpg',1525335451),(13,1,4,1,'images/jy_ppp/xuni/7/9a64ac345982b2b763168d6031adcbef77099bad.jpg',1525335451),(14,1,5,1,'images/jy_ppp/xuni/44/945494eef01f3a29d7249fc09f25bc315d607cd4.jpg',1525335451),(15,1,5,1,'images/jy_ppp/xuni/44/ac8f8c5494eef01fc3f852cbe6fe9925bd317dd4.jpg',1525335451),(16,1,5,1,'images/jy_ppp/xuni/44/b751f3deb48f8c54633f8f213c292df5e1fe7fd4.jpg',1525335451),(17,1,5,1,'images/jy_ppp/xuni/44/bfefce1b9d16fdfa5c808ce0b28f8c5495ee7bd4.jpg',1525335451),(18,1,5,1,'images/jy_ppp/xuni/44/e5faaf51f3deb48f7a85ebd0f61f3a292cf578d4.jpg',1525335451),(19,1,6,1,'images/jy_ppp/xuni/3/213sadfsfsdwerqwe.jpg',1525335451),(20,1,6,1,'images/jy_ppp/xuni/3/fhsdjfhsdfsdf213.jpg',1525335451),(21,1,6,1,'images/jy_ppp/xuni/3/q234fsdfwer23423q12.jpg',1525335451),(22,1,6,1,'images/jy_ppp/xuni/3/r43qwqawede43.jpg',1525335451),(23,1,7,1,'images/jy_ppp/xuni/28/873df8dcd100baa1b5af5dcc4110b912c9fc2ec1.jpg',1525335451),(24,1,7,1,'images/jy_ppp/xuni/28/a2a1cd11728b4710c2ace7bbc5cec3fdfd0323c1.jpg',1525335451),(25,1,7,1,'images/jy_ppp/xuni/28/c900baa1cd11728b3dae9655cefcc3cec2fd2cc1.jpg',1525335451),(26,1,7,1,'images/jy_ppp/xuni/28/e0dcd100baa1cd110b356857bf12c8fcc2ce2dc1.jpg',1525335451),(27,1,8,1,'images/jy_ppp/xuni/22/1124ab18972bd407f6abe78b7d899e510fb30953.jpg',1525335451),(28,1,8,1,'images/jy_ppp/xuni/22/c909b3de9c82d15846ee6dc7860a19d8bc3e4253.jpg',1525335451),(29,1,9,1,'images/jy_ppp/xuni/108/1-1504210P117.jpg',1525335451),(30,1,9,1,'images/jy_ppp/xuni/108/1-1504210P119.jpg',1525335451),(31,1,9,1,'images/jy_ppp/xuni/108/1-1504210P120.jpg',1525335451),(32,1,10,1,'images/jy_ppp/xuni/40/36dda3cc7cd98d1034b81146273fb80e7bec905c.jpg',1525335451),(33,1,10,1,'images/jy_ppp/xuni/40/b4af2edda3cc7cd9b94129ae3f01213fb80e915c.jpg',1525335451),(34,1,11,1,'images/jy_ppp/xuni/125/1-150315120448.jpg',1525335451),(35,1,11,1,'images/jy_ppp/xuni/125/1-150315120449.jpg',1525335451),(36,1,11,1,'images/jy_ppp/xuni/125/1-150315120450.jpg',1525335451),(37,1,11,1,'images/jy_ppp/xuni/125/1-150315120455.jpg',1525335451),(38,1,12,1,'images/jy_ppp/xuni/65/1f0828381f30e924df063e394a086e061d95f71c.jpg',1525335451),(39,1,12,1,'images/jy_ppp/xuni/65/7481800a19d8bc3e4895a4c2848ba61ea8d3451d.jpg',1525335451),(40,1,12,1,'images/jy_ppp/xuni/65/8516fdfaaf51f3de69131b6c92eef01f3a297911.jpg',1525335451),(41,1,12,1,'images/jy_ppp/xuni/65/bbcc7cd98d1001e9ff61b907be0e7bec54e7975d.jpg',1525335451),(42,1,12,1,'images/jy_ppp/xuni/65/f3f81a4c510fd9f94db4f761232dd42a2834a413.jpg',1525335451),(43,1,13,1,'images/jy_ppp/xuni/13/17b30f2442a7d9336c81f901ab4bd11373f00192.png',1525335451),(44,1,13,1,'images/jy_ppp/xuni/13/63899e510fb30f24e0b3f171ce95d143ad4b0392.png',1525335451),(45,1,13,1,'images/jy_ppp/xuni/13/86510fb30f2442a77a27e0d7d743ad4bd1130292.png',1525335451),(46,1,14,1,'images/jy_ppp/xuni/23/5e2309f7905298220b6ba4b6d1ca7bcb0a46d46f.jpg',1525335451),(47,1,14,1,'images/jy_ppp/xuni/23/673e6709c93d70cfc1ef3778fedcd100baa12baa.jpg',1525335451),(48,1,14,1,'images/jy_ppp/xuni/23/8022720e0cf3d7ca07aca203f41fbe096b63a969.jpg',1525335451),(49,1,14,1,'images/jy_ppp/xuni/23/93d4b31c8701a18bc8498f3a982f07082838fe21.jpg',1525335451),(50,1,14,1,'images/jy_ppp/xuni/23/a2a1cd11728b4710bb3860b9c5cec3fdfc0323ab.jpg',1525335451),(51,1,15,1,'images/jy_ppp/xuni/131/1-1503100ZP1.jpg',1525335451),(52,1,15,1,'images/jy_ppp/xuni/131/1-1503100ZP3.jpg',1525335451),(53,1,15,1,'images/jy_ppp/xuni/131/1-1503100ZP5.jpg',1525335451),(54,1,15,1,'images/jy_ppp/xuni/131/1-1503100ZP7.jpg',1525335451),(55,1,15,1,'images/jy_ppp/xuni/131/1-1503100ZP8.jpg',1525335451),(56,1,16,1,'images/jy_ppp/xuni/75/22f8bd3eb13533fa7082248aa8d3fd1f41345b7a.jpg',1525335451),(57,1,16,1,'images/jy_ppp/xuni/75/441e6609c93d70cf38361ea9f8dcd100bba12b61.jpg',1525335451),(58,1,16,1,'images/jy_ppp/xuni/75/57a1810a19d8bc3e413cb16e828ba61ea8d3457a.jpg',1525335451),(59,1,16,1,'images/jy_ppp/xuni/75/883c8601a18b87d67e941fbb070828381e30fd64.jpg',1525335451),(60,1,16,1,'images/jy_ppp/xuni/75/9d3ea9d3fd1f41346003b2da251f95cad1c85e7a.jpg',1525335451),(61,1,17,1,'images/jy_ppp/xuni/106/1-1504230K635.jpg',1525335451),(62,1,17,1,'images/jy_ppp/xuni/106/1-1504230K637-50.jpg',1525335451),(63,1,17,1,'images/jy_ppp/xuni/106/1-1504230K638.jpg',1525335451),(64,1,18,1,'images/jy_ppp/xuni/45/393fb80e7bec54e7a9aeeb6bbf389b504fc26a01.png',1525335451),(65,1,18,1,'images/jy_ppp/xuni/45/63ec54e736d12f2e18475f1549c2d56285356801.png',1525335451),(66,1,18,1,'images/jy_ppp/xuni/45/a00e7bec54e736d18f517d7d9d504fc2d5626901.png',1525335451),(67,1,19,1,'images/jy_ppp/xuni/34/0dce36d3d539b60032e40cb6ef50352ac65cb78c.png',1525335451),(68,1,19,1,'images/jy_ppp/xuni/34/c133c895d143ad4b4bbb46c184025aafa40f061d.png',1525335451),(69,1,19,1,'images/jy_ppp/xuni/34/ea1fbe096b63f6249e8039028144ebf81b4ca3d6.png',1525335451),(70,1,20,1,'images/jy_ppp/xuni/2/asdeq2weqwzzx4354.jpg',1525335451),(71,1,20,1,'images/jy_ppp/xuni/2/fg564523423sdfsd.jpg',1525335451),(72,1,20,1,'images/jy_ppp/xuni/2/jxdsdas45fgdfgq.jpg',1525335451),(73,1,20,1,'images/jy_ppp/xuni/2/kkkosfsfrwerwerwerzxcz999.jpg',1525335451),(74,1,20,1,'images/jy_ppp/xuni/2/ksahdfakspqwe123asdzxf.jpg',1525335451),(75,1,20,1,'images/jy_ppp/xuni/2/sdfwe45r34534zx.jpg',1525335451),(76,1,21,1,'images/jy_ppp/xuni/1/6b1cb522g90749125d63d&690.jpg',1525335451),(77,1,21,1,'images/jy_ppp/xuni/1/6b1cb522g9074913517b3&690.jpg',1525335451),(78,1,21,1,'images/jy_ppp/xuni/1/6b1cb522g907491445f23&690.jpg',1525335451),(79,1,21,1,'images/jy_ppp/xuni/1/6b1cb522g907491816cd5&690.jpg',1525335451),(80,1,22,1,'images/jy_ppp/xuni/8/11f790529822720ec125828e7dcb0a46f31fabdf.jpg',1525335451),(81,1,22,1,'images/jy_ppp/xuni/8/38a4462309f7905253f4274a0af3d7ca7acbd5df.jpg',1525335451),(82,1,22,1,'images/jy_ppp/xuni/8/5e2309f790529822bed859b7d1ca7bcb0b46d4df.jpg',1525335451),(83,1,23,1,'images/jy_ppp/xuni/120/1-1503250R020.jpg',1525335451),(84,1,23,1,'images/jy_ppp/xuni/120/1-1503250R021.jpg',1525335451),(85,1,23,1,'images/jy_ppp/xuni/120/1-1503250R022.jpg',1525335451),(86,1,23,1,'images/jy_ppp/xuni/120/1-1503250R027.jpg',1525335451),(87,1,23,1,'images/jy_ppp/xuni/120/1-1503250R031.jpg',1525335451),(88,1,24,1,'images/jy_ppp/xuni/117/1-1504010S450.jpg',1525335451),(89,1,24,1,'images/jy_ppp/xuni/117/1-1504010S452.jpg',1525335451),(90,1,24,1,'images/jy_ppp/xuni/117/1-1504010S453.jpg',1525335451),(91,1,24,1,'images/jy_ppp/xuni/117/1-1504010S454.jpg',1525335451),(92,1,24,1,'images/jy_ppp/xuni/117/1-1504010S455.jpg',1525335451),(93,1,25,1,'images/jy_ppp/xuni/74/2ed12f2eb9389b5057e09a258335e5dde7116ead.jpg',1525335451),(94,1,25,1,'images/jy_ppp/xuni/74/4ce736d12f2eb9388c720085d3628535e5dd6fad.jpg',1525335451),(95,1,25,1,'images/jy_ppp/xuni/74/4dfbb2fb43166d22ab1617e2402309f79052d267.jpg',1525335451),(96,1,26,1,'images/jy_ppp/xuni/66/1246f21fbe096b63ed4265480a338744ebf8ac4a.jpg',1525335451),(97,1,26,1,'images/jy_ppp/xuni/66/63cb0a46f21fbe097105f80c6d600c338744ad4a.jpg',1525335451),(98,1,27,1,'images/jy_ppp/xuni/58/7ad0f703918fa0ec69b1e079209759ee3d6ddb54.jpg',1525335451),(99,1,27,1,'images/jy_ppp/xuni/58/7b2762d0f703918fc0a7b9be573d269759eec454.jpg',1525335451),(100,1,27,1,'images/jy_ppp/xuni/58/ef03918fa0ec08fa337697d35fee3d6d55fbda54.jpg',1525335451),(101,1,28,1,'images/jy_ppp/xuni/104/1-1504261kasdkaskd23R7.jpg',1525335451),(102,1,28,1,'images/jy_ppp/xuni/104/1-1504dsfsdf26123R5.jpg',1525335451),(103,1,29,1,'images/jy_ppp/xuni/60/16f41bd5ad6eddc4c6bba2883fdbb6fd52663360.jpg',1525335451),(104,1,29,1,'images/jy_ppp/xuni/60/651ed21b0ef41bd5380ffe8757da81cb39db3d60.jpg',1525335451),(105,1,29,1,'images/jy_ppp/xuni/60/ca1b0ef41bd5ad6e4ba5729987cb39dbb6fd3c60.jpg',1525335451),(106,1,30,1,'images/jy_ppp/xuni/121/1-150323110236.jpg',1525335451),(107,1,30,1,'images/jy_ppp/xuni/121/1-150323110238.jpg',1525335451),(108,1,30,1,'images/jy_ppp/xuni/121/1-150323110240.jpg',1525335451),(109,1,30,1,'images/jy_ppp/xuni/121/1-150323110241.jpg',1525335451),(110,1,31,1,'images/jy_ppp/xuni/116/1-1504120T108-50.jpg',1525335451),(111,1,31,1,'images/jy_ppp/xuni/116/1-1504120T108.jpg',1525335451),(112,1,31,1,'images/jy_ppp/xuni/116/1-1504120T109.jpg',1525335451),(113,1,31,1,'images/jy_ppp/xuni/116/1-1504120T110-50.jpg',1525335451),(114,1,32,1,'images/jy_ppp/xuni/87/1-150F6140648.jpg',1525335451),(115,1,32,1,'images/jy_ppp/xuni/87/1-150F6140A5.jpg',1525335451),(116,1,32,1,'images/jy_ppp/xuni/87/1-150F6140A9.jpg',1525335451),(117,1,33,1,'images/jy_ppp/xuni/55/0dce36d3d539b6000c3a32c0ef50352ac75cb7d4.png',1525335451),(118,1,33,1,'images/jy_ppp/xuni/55/cd39b6003af33a87d1993d6dc05c10385243b5d4.png',1525335451),(119,1,34,1,'images/jy_ppp/xuni/71/57c2d5628535e5dd4ebc52d670c6a7efce1b6223.jpg',1525335451),(120,1,34,1,'images/jy_ppp/xuni/71/83504fc2d56285354d70252896ef76c6a7ef6323.jpg',1525335451),(121,1,34,1,'images/jy_ppp/xuni/71/cd628535e5dde7113a42b4ffa1efce1b9d166123.jpg',1525335451),(122,1,35,1,'images/jy_ppp/xuni/10/14d7912397dda1441dcec6bcb4b7d0a20df486fd.png',1525335451),(123,1,35,1,'images/jy_ppp/xuni/10/7d380cd7912397dd0ebe320a5f82b2b7d1a287fd.png',1525335451),(124,1,35,1,'images/jy_ppp/xuni/10/892397dda144ad34e8782d89d6a20cf430ad85fd.png',1525335451),(125,1,35,1,'images/jy_ppp/xuni/10/8fdda144ad345982004d4f9c0af431adcaef84fd.png',1525335451),(126,1,36,1,'images/jy_ppp/xuni/128/1-150312111059.jpg',1525335451),(127,1,36,1,'images/jy_ppp/xuni/128/1-150312111105.jpg',1525335451),(128,1,36,1,'images/jy_ppp/xuni/128/1-150312111106.jpg',1525335451),(129,1,37,1,'images/jy_ppp/xuni/92/1-1505130KZ5-50.jpg',1525335451),(130,1,37,1,'images/jy_ppp/xuni/92/1-1505130KZ5.jpg',1525335451),(131,1,37,1,'images/jy_ppp/xuni/92/1-1505130KZ7.jpg',1525335451),(132,1,37,1,'images/jy_ppp/xuni/92/1-1505130KZ8.jpg',1525335451),(133,1,38,1,'images/jy_ppp/xuni/59/9f44ebf81a4c510fea392a096659252dd42aa520.jpg',1525335451),(134,1,38,1,'images/jy_ppp/xuni/59/f3f81a4c510fd9f9e3ea9d7a232dd42a2834a420.jpg',1525335451),(135,1,39,1,'images/jy_ppp/xuni/6/2cec872bd40735faea973b0b9e510fb30e240814.jpg',1525335451),(136,1,39,1,'images/jy_ppp/xuni/6/342a8c82d158ccbfbff4c08819d8bc3eb0354128.jpg',1525335451),(137,1,39,1,'images/jy_ppp/xuni/6/55ef1ef41bd5ad6edd9e115881cb39dbb7fd3c14.jpg',1525335451),(138,1,39,1,'images/jy_ppp/xuni/6/d62e91cb39dbb6fd573c90940924ab18962b3714.jpg',1525335451),(139,1,39,1,'images/jy_ppp/xuni/6/fb2d9d1001e93901874af88c7bec54e737d19628.jpg',1525335451),(140,1,39,1,'images/jy_ppp/xuni/6/ff04e736afc37931290ff39bebc4b74542a91114.jpg',1525335451),(141,1,40,1,'images/jy_ppp/xuni/32/10fa513d269759eef22212bdb4fb43166d22df52.jpg',1525335451),(142,1,40,1,'images/jy_ppp/xuni/32/493d269759ee3d6d85b4f5bd45166d224f4ade52.jpg',1525335451),(143,1,40,1,'images/jy_ppp/xuni/32/b8ec08fa513d269797a17a2b53fbb2fb4316d852.jpg',1525335451),(144,1,41,1,'images/jy_ppp/xuni/98/1-1505060Q302.jpg',1525335451),(145,1,41,1,'images/jy_ppp/xuni/98/1-1505060Q303-50.jpg',1525335451),(146,1,41,1,'images/jy_ppp/xuni/98/1-1505060Q303.jpg',1525335451),(147,1,41,1,'images/jy_ppp/xuni/98/1-1505060Q304.jpg',1525335451),(148,1,41,1,'images/jy_ppp/xuni/98/1-1505060Q305.jpg',1525335451),(149,1,42,1,'images/jy_ppp/xuni/115/1-1504140UJ1.jpg',1525335451),(150,1,42,1,'images/jy_ppp/xuni/115/1-1504140UJ2.jpg',1525335451),(151,1,42,1,'images/jy_ppp/xuni/115/1-1504140UJ3-50.jpg',1525335451),(152,1,43,1,'images/jy_ppp/xuni/130/1-150311091115.jpg',1525335451),(153,1,43,1,'images/jy_ppp/xuni/130/1-150311091119.jpg',1525335451),(154,1,43,1,'images/jy_ppp/xuni/130/1-150311091125.jpg',1525335451),(155,1,44,1,'images/jy_ppp/xuni/18/0730e924b899a901043ed6391b950a7b0208f5b2.jpg',1525335451),(156,1,44,1,'images/jy_ppp/xuni/18/a099a9014c086e0657a3b24404087bf40ad1cbb2.jpg',1525335451),(157,1,44,1,'images/jy_ppp/xuni/18/b1014c086e061d95414dba377df40ad162d9cab2.jpg',1525335451),(158,1,44,1,'images/jy_ppp/xuni/18/f124b899a9014c082730a5aa0c7b02087bf4f4b2.jpg',1525335451),(159,1,45,1,'images/jy_ppp/xuni/94/1-1505110K918-50.jpg',1525335451),(160,1,45,1,'images/jy_ppp/xuni/94/1-1505110K918.jpg',1525335451),(161,1,45,1,'images/jy_ppp/xuni/94/1-1505110K922.jpg',1525335451),(162,1,46,1,'images/jy_ppp/xuni/79/6b1cb522g9074a56a6961&690.jpg',1525335451),(163,1,46,1,'images/jy_ppp/xuni/79/6b1cb522g9074a5b6ad07&690.jpg',1525335451),(164,1,47,1,'images/jy_ppp/xuni/80/6b1cb522g9074919fdfd9&690.jpg',1525335451),(165,1,47,1,'images/jy_ppp/xuni/80/6b1cb522g907496b3d07f&690.jpg',1525335451),(166,1,48,1,'images/jy_ppp/xuni/33/5336acaf2edda3cc3d9d975707e93901213f924f.jpg',1525335451),(167,1,48,1,'images/jy_ppp/xuni/33/6e094b36acaf2edde388669e8b1001e93901934f.jpg',1525335451),(168,1,48,1,'images/jy_ppp/xuni/33/b4af2edda3cc7cd9cf541bae3f01213fb80e914f.jpg',1525335451),(169,1,48,1,'images/jy_ppp/xuni/33/d3ef76094b36acaf1199b98b7ad98d1001e99c4f.jpg',1525335451),(170,1,49,1,'images/jy_ppp/xuni/16/05950a7b02087bf4a67b389ef4d3572c11dfcf36.jpg',1525335451),(171,1,49,1,'images/jy_ppp/xuni/16/127b02087bf40ad1cf73a894512c11dfa9ecce36.jpg',1525335451),(172,1,50,1,'images/jy_ppp/xuni/114/1-1504150SA1.jpg',1525335451),(173,1,50,1,'images/jy_ppp/xuni/114/1-1504150SA2-50.jpg',1525335451),(174,1,50,1,'images/jy_ppp/xuni/114/1-1504150SA2.jpg',1525335451),(175,1,50,1,'images/jy_ppp/xuni/114/1-1504150SA3.jpg',1525335451),(176,1,51,1,'images/jy_ppp/xuni/31/2112b31bb051f819bbec873cdcb44aed2f73e7ff.jpg',1525335451),(177,1,51,1,'images/jy_ppp/xuni/31/ab19ebc4b74543a9b2d27eba18178a82b80114fe.jpg',1525335451),(178,1,51,1,'images/jy_ppp/xuni/31/b7c379310a55b319c7e1050345a98226cffc17af.jpg',1525335451),(179,1,52,1,'images/jy_ppp/xuni/78/6b1cb522g9074917214a6&690.jpg',1525335451),(180,1,52,1,'images/jy_ppp/xuni/78/6b1cb522g907497a7efeb&690.jpg',1525335451),(181,1,53,1,'images/jy_ppp/xuni/118/1-1503310TG6.jpg',1525335451),(182,1,53,1,'images/jy_ppp/xuni/118/1-1503310TG9-50.jpg',1525335451),(183,1,53,1,'images/jy_ppp/xuni/118/1-1503310TG9.jpg',1525335451),(184,1,54,1,'images/jy_ppp/xuni/42/bf86c9177f3e6709af4d4a883dc79f3df8dc5573.jpg',1525335451),(185,1,54,1,'images/jy_ppp/xuni/42/c9c8a786c9177f3e0279f37a76cf3bc79f3d5673.jpg',1525335451),(186,1,54,1,'images/jy_ppp/xuni/42/d1177f3e6709c93d17bf0180993df8dcd1005473.jpg',1525335451),(187,1,55,1,'images/jy_ppp/xuni/105/1-1504240J539.jpg',1525335451),(188,1,55,1,'images/jy_ppp/xuni/105/1-1504240J541-50.jpg',1525335451),(189,1,55,1,'images/jy_ppp/xuni/105/1-1504240J541.jpg',1525335451),(190,1,56,1,'images/jy_ppp/xuni/20/0730e924b899a901f0002a411b950a7b0208f594.png',1525335451),(191,1,56,1,'images/jy_ppp/xuni/20/30381f30e924b8991209084f68061d950a7bf694.png',1525335451),(192,1,56,1,'images/jy_ppp/xuni/20/f124b899a9014c08d30e59d20c7b02087bf4f494.png',1525335451),(193,1,57,1,'images/jy_ppp/xuni/14/127b02087bf40ad116656195512c11dfa8eccec7.jpg',1525335451),(194,1,57,1,'images/jy_ppp/xuni/14/1a087bf40ad162d9876fc46a17dfa9ec8b13cdc7.jpg',1525335451),(195,1,57,1,'images/jy_ppp/xuni/14/63f40ad162d9f2d321908299afec8a136227ccc7.jpg',1525335451),(196,1,58,1,'images/jy_ppp/xuni/43/1b4f78f0f736afc3e8cb4010b519ebc4b64512fb.jpg',1525335451),(197,1,58,1,'images/jy_ppp/xuni/43/2ca85edf8db1cb137e6b4266db54564e92584b40.jpg',1525335451),(198,1,58,1,'images/jy_ppp/xuni/43/945494eef01f3a290248aabb9f25bc315d607cc6.jpg',1525335451),(199,1,58,1,'images/jy_ppp/xuni/43/a2a1cd11728b4710d9e982b9c5cec3fdfd032384.jpg',1525335451),(200,1,59,1,'images/jy_ppp/xuni/126/1-150314101334.jpg',1525335451),(201,1,59,1,'images/jy_ppp/xuni/126/1-150314101335.jpg',1525335451),(202,1,59,1,'images/jy_ppp/xuni/126/1-150314101337.jpg',1525335451),(203,1,60,1,'images/jy_ppp/xuni/9/4a66d0160924ab18fbcd824033fae6cd7a890be9.jpg',1525335451),(204,1,60,1,'images/jy_ppp/xuni/9/57c2d5628535e5ddf37ec7a870c6a7efce1b6272.jpg',1525335451),(205,1,60,1,'images/jy_ppp/xuni/9/63f40ad162d9f2d3e5424698afec8a136327cc72.jpg',1525335451),(206,1,61,1,'images/jy_ppp/xuni/110/1-15041ZTasdasd445 (1).jpg',1525335451),(207,1,61,1,'images/jy_ppp/xuni/110/1-15041ZTtrtdg447-50 (2).jpg',1525335451),(208,1,61,1,'images/jy_ppp/xuni/110/1-15041dfgdfgZT447-50 (1).jpg',1525335451),(209,1,62,1,'images/jy_ppp/xuni/37/36dda3cc7cd98d10f72f5e47273fb80e7aec90c9.png',1525335451),(210,1,62,1,'images/jy_ppp/xuni/37/bbcc7cd98d1001e9cec74679be0e7bec55e797c9.png',1525335451),(211,1,63,1,'images/jy_ppp/xuni/77/c3fcd000baa1cd117cf53b9cb912c8fcc2ce2dee.jpg',1525335451),(212,1,63,1,'images/jy_ppp/xuni/77/c8feb58f8c5494ee2d8646a52df5e0fe98257e82.jpg',1525335451),(213,1,63,1,'images/jy_ppp/xuni/77/c8feb58f8c5494ee2d9346a52df5e0fe98257efd.jpg',1525335451),(214,1,63,1,'images/jy_ppp/xuni/77/f79f6d81800a19d8533733a133fa828ba61e467a.jpg',1525335451),(215,1,64,1,'images/jy_ppp/xuni/11/7ad0f703918fa0ec2c92bf7b209759ee3d6ddb6b.jpg',1525335451),(216,1,64,1,'images/jy_ppp/xuni/11/ef03918fa0ec08fa7455c8d15fee3d6d55fbda6b.jpg',1525335451),(217,1,65,1,'images/jy_ppp/xuni/12/284e251f95cad1c89b6ca8a77a3e6709c83d515e.jpg',1525335451),(218,1,65,1,'images/jy_ppp/xuni/12/3d1f95cad1c8a786f4fd1e8e6209c93d71cf505e.jpg',1525335451),(219,1,66,1,'images/jy_ppp/xuni/72/asd234sdfdsf.jpg',1525335451),(220,1,66,1,'images/jy_ppp/xuni/72/bvjbhkihoudfgdw.jpg',1525335451),(221,1,66,1,'images/jy_ppp/xuni/72/tyutyiyuouiouio.jpg',1525335451),(222,1,66,1,'images/jy_ppp/xuni/72/uhy8iczxzfesr34.jpg',1525335451),(223,1,66,1,'images/jy_ppp/xuni/72/vbncjnczxkczxjgdsafwq.jpg',1525335451),(224,1,66,1,'images/jy_ppp/xuni/72/xcjgkhdfghdfkhgfgh.jpg',1525335451),(225,1,66,1,'images/jy_ppp/xuni/72/zxcnzxnfndgdfgk.jpg',1525335451),(226,1,67,1,'images/jy_ppp/xuni/103/1-15042FI553-50.jpg',1525335451),(227,1,67,1,'images/jy_ppp/xuni/103/1-15042FI553.jpg',1525335451),(228,1,67,1,'images/jy_ppp/xuni/103/1-15042FI554.jpg',1525335451),(229,1,67,1,'images/jy_ppp/xuni/103/1-15042FI555-50.jpg',1525335451),(230,1,67,1,'images/jy_ppp/xuni/103/1-15042FI555.jpg',1525335451),(231,1,68,1,'images/jy_ppp/xuni/82/asdweyt8678342234.jpg',1525335451),(232,1,68,1,'images/jy_ppp/xuni/82/njghju675234sdsXa.jpg',1525335451),(233,1,69,1,'images/jy_ppp/xuni/107/1-1504220K210.jpg',1525335451),(234,1,69,1,'images/jy_ppp/xuni/107/1-1504220K211.jpg',1525335451),(235,1,69,1,'images/jy_ppp/xuni/107/1-1504220K212.jpg',1525335451),(236,1,69,1,'images/jy_ppp/xuni/107/1-1504220K213-50.jpg',1525335451),(237,1,70,1,'images/jy_ppp/xuni/86/4-150F6204Z0.jpg',1525335451),(238,1,70,1,'images/jy_ppp/xuni/86/4-150F6204Z1.jpg',1525335451),(239,1,71,1,'images/jy_ppp/xuni/54/14d7912397dda144680bd3bcb4b7d0a20cf486ba.jpg',1525335451),(240,1,71,1,'images/jy_ppp/xuni/54/9d35e5dde71190ef95f92dd1c81b9d16fdfa60ba.jpg',1525335451),(241,1,72,1,'images/jy_ppp/xuni/83/2ed3d539b6003af34b2b2715332ac65c1038b636.jpg',1525335451),(242,1,72,1,'images/jy_ppp/xuni/83/xcfgrtyrwr345456zcsddfgfghghjyui787fghfg.jpg',1525335451),(243,1,73,1,'images/jy_ppp/xuni/48/024c510fd9f9d72a4e85216ad22a2834359bbbe7.jpg',1525335451),(244,1,73,1,'images/jy_ppp/xuni/48/14338744ebf81a4c7ad3ddbed12a6059242da6e7.jpg',1525335451),(245,1,73,1,'images/jy_ppp/xuni/48/490fd9f9d72a60590af1d06d2e34349b023bbae7.jpg',1525335451),(246,1,73,1,'images/jy_ppp/xuni/48/73600c338744ebf830905548dff9d72a6159a7e7.jpg',1525335451),(247,1,73,1,'images/jy_ppp/xuni/48/9f44ebf81a4c510ff525d36d6659252dd52aa5e7.jpg',1525335451),(248,1,74,1,'images/jy_ppp/xuni/99/1-1505050Q101.jpg',1525335451),(249,1,74,1,'images/jy_ppp/xuni/99/1-1505050Q107.jpg',1525335451),(250,1,75,1,'images/jy_ppp/xuni/123/1-15031ZR004.jpg',1525335451),(251,1,75,1,'images/jy_ppp/xuni/123/1-15031ZR005.jpg',1525335451),(252,1,75,1,'images/jy_ppp/xuni/123/1-15031ZR009.jpg',1525335451),(253,1,75,1,'images/jy_ppp/xuni/123/1-15031ZR014.jpg',1525335451),(254,1,76,1,'images/jy_ppp/xuni/97/1-15050Gfhfgh02R2.jpg',1525335451),(255,1,76,1,'images/jy_ppp/xuni/97/1-15050Gzxczxc02R4-50.jpg',1525335451),(256,1,76,1,'images/jy_ppp/xuni/97/1-1505asdasd0G02R5.jpg',1525335451),(257,1,77,1,'images/jy_ppp/xuni/113/1-1504160R330.jpg',1525335451),(258,1,77,1,'images/jy_ppp/xuni/113/1-1504160R332-50.jpg',1525335451),(259,1,78,1,'images/jy_ppp/xuni/67/8f0a304e251f95ca014f6ca4cf177f3e6709526e.jpg',1525335451),(260,1,78,1,'images/jy_ppp/xuni/67/ab19ebc4b74543a9943a04de18178a82b90114fa.jpg',1525335451),(261,1,78,1,'images/jy_ppp/xuni/67/f8fe9925bc315c6087e395fd8bb1cb13495477aa.jpg',1525335451),(262,1,79,1,'images/jy_ppp/xuni/70/8482d158ccbf6c815161a59eba3eb13533fa4076.jpg',1525335451),(263,1,79,1,'images/jy_ppp/xuni/70/abde9c82d158ccbfbcea3c4c1fd8bc3eb1354176.jpg',1525335451),(264,1,79,1,'images/jy_ppp/xuni/70/c958ccbf6c81800acbb30078b73533fa828b4776.jpg',1525335451),(265,1,80,1,'images/jy_ppp/xuni/56/1b4f78f0f736afc38eb2ee10b519ebc4b745120d.png',1525335451),(266,1,81,1,'images/jy_ppp/xuni/69/1124ab18972bd4072b4f40ea7d899e510fb30918.jpg',1525335451),(267,1,81,1,'images/jy_ppp/xuni/69/4a66d0160924ab188b9e722033fae6cd7b890b18.jpg',1525335451),(268,1,82,1,'images/jy_ppp/xuni/61/de5c10385343fbf20f141a57b67eca8065388f8e.jpg',1525335451),(269,1,83,1,'images/jy_ppp/xuni/76/883c8601a18b87d679f8e2a3070828381e30fdf0.jpg',1525335451),(270,1,83,1,'images/jy_ppp/xuni/76/9471f2deb48f8c5448628c933a292df5e1fe7ffd.jpg',1525335451),(271,1,83,1,'images/jy_ppp/xuni/76/aeead0c8a786c91780f4e69dc93d70cf3ac757bb.jpg',1525335451),(272,1,83,1,'images/jy_ppp/xuni/76/bb2a18d8bc3eb135c2f3001fa61ea8d3fd1f447a.jpg',1525335451),(273,1,83,1,'images/jy_ppp/xuni/76/bc21a08b87d6277fc1a87b8428381f30e824fcf0.jpg',1525335451),(274,1,84,1,'images/jy_ppp/xuni/49/05950a7b02087bf488c6e69bf4d3572c11dfcf9e.jpg',1525335451),(275,1,84,1,'images/jy_ppp/xuni/49/8516fdfaaf51f3de45540f1692eef01f3b2979da.jpg',1525335451),(276,1,84,1,'images/jy_ppp/xuni/49/ead3572c11dfa9ec03c9e06564d0f703908fc1d9.jpg',1525335451),(277,1,85,1,'images/jy_ppp/xuni/4/3fe971cf3bc79f3d92abb0cfbaa1cd11708b29df.jpg',1525335451),(278,1,85,1,'images/jy_ppp/xuni/4/40295366d0160924e991319cd40735fae4cd34d1.jpg',1525335451),(279,1,85,1,'images/jy_ppp/xuni/4/563809fa513d2697cf819bda55fbb2fb4216d838.jpg',1525335451),(280,1,85,1,'images/jy_ppp/xuni/4/5dcc962bd40735faa044dd3e9e510fb30d2408d1.jpg',1525335451),(281,1,86,1,'images/jy_ppp/xuni/57/8a45d688d43f8794d66f3c59d41b0ef41bd53a30.jpg',1525335458),(282,1,86,1,'images/jy_ppp/xuni/57/ce88d43f8794a4c20eb3935c08f41bd5ad6e3930.jpg',1525335458),(283,1,87,1,'images/jy_ppp/xuni/35/393fb80e7bec54e7d774ad68bf389b504fc26a28.jpg',1525335458),(284,1,87,1,'images/jy_ppp/xuni/35/8a58d109b3de9c82d9fe4ef96a81800a19d84328.jpg',1525335458),(285,1,87,1,'images/jy_ppp/xuni/35/d7fc1e178a82b9012eac7445758da9773912ef47.jpg',1525335458),(286,1,88,1,'images/jy_ppp/xuni/27/2bfa828ba61ea8d3b2e30771910a304e241f5885.jpg',1525335458),(287,1,88,1,'images/jy_ppp/xuni/27/9a8ba61ea8d3fd1f11c8d14f364e251f94ca5f85.jpg',1525335458),(288,1,89,1,'images/jy_ppp/xuni/109/1-1504200P214-50.jpg',1525335458),(289,1,89,1,'images/jy_ppp/xuni/109/1-1504200P214.jpg',1525335458),(290,1,89,1,'images/jy_ppp/xuni/109/1-1504200P217.jpg',1525335458),(291,1,89,1,'images/jy_ppp/xuni/109/1-1504200P219-50.jpg',1525335458),(292,1,89,1,'images/jy_ppp/xuni/109/1-1504200P220.jpg',1525335458),(293,1,90,1,'images/jy_ppp/xuni/53/7481800a19d8bc3e75a2ffbf848ba61ea8d34519.jpg',1525335458),(294,1,90,1,'images/jy_ppp/xuni/53/8482d158ccbf6c81419dd59dba3eb13533fa4019.jpg',1525335458),(295,1,90,1,'images/jy_ppp/xuni/53/abde9c82d158ccbfac164c4f1fd8bc3eb1354119.jpg',1525335458),(296,1,90,1,'images/jy_ppp/xuni/53/c958ccbf6c81800adb4f707bb73533fa828b4719.jpg',1525335458),(297,1,91,1,'images/jy_ppp/xuni/63/1f0828381f30e924327ddce949086e061c95f709.jpg',1525335458),(298,1,91,1,'images/jy_ppp/xuni/63/862f070828381f3060c0cd71ac014c086f06f009.jpg',1525335458),(299,1,91,1,'images/jy_ppp/xuni/63/b98b87d6277f9e2f81ec5dd01a30e924b999f309.jpg',1525335458),(300,1,92,1,'images/jy_ppp/xuni/93/1-1505120Kfghfgh928-50.jpg',1525335458),(301,1,92,1,'images/jy_ppp/xuni/93/1-150512sdxz0K926.jpg',1525335458),(302,1,93,1,'images/jy_ppp/xuni/15/ae003af33a87e950cc358e1f16385343fbf2b4a7.png',1525335458),(303,1,93,1,'images/jy_ppp/xuni/15/cd39b6003af33a87114f7d69c05c10385343b5a7.png',1525335458),(304,1,94,1,'images/jy_ppp/xuni/91/1-1505150K151-50.jpg',1525335458),(305,1,94,1,'images/jy_ppp/xuni/91/1-1505150K152.jpg',1525335458),(306,1,95,1,'images/jy_ppp/xuni/51/b0d3fd1f4134970a5a3c0b5893cad1c8a7865d7d.jpg',1525335458),(307,1,95,1,'images/jy_ppp/xuni/51/e51f4134970a304e4e6dbb8dd7c8a786c9175c7d.jpg',1525335458),(308,1,96,1,'images/jy_ppp/xuni/101/1-1505010S300.jpg',1525335458),(309,1,96,1,'images/jy_ppp/xuni/101/1-1505020P412.jpg',1525335458),(310,1,96,1,'images/jy_ppp/xuni/101/1-1505020P414.jpg',1525335458),(311,1,96,1,'images/jy_ppp/xuni/101/1-1505020P415.jpg',1525335458),(312,1,97,1,'images/jy_ppp/xuni/100/1-1505030IG0-50.jpg',1525335458),(313,1,97,1,'images/jy_ppp/xuni/100/1-1505030IG0.jpg',1525335458),(314,1,97,1,'images/jy_ppp/xuni/100/1-1505030IG5.jpg',1525335458),(315,1,98,1,'images/jy_ppp/xuni/127/1-150313111K1.jpg',1525335458),(316,1,98,1,'images/jy_ppp/xuni/127/1-150313111K2.jpg',1525335458),(317,1,98,1,'images/jy_ppp/xuni/127/1-150313111K6.jpg',1525335458),(318,1,99,1,'images/jy_ppp/xuni/84/4-150F6205644.jpg',1525335458),(319,1,99,1,'images/jy_ppp/xuni/84/4-150F6205645.jpg',1525335458),(320,1,99,1,'images/jy_ppp/xuni/84/4-150F6205A1.jpg',1525335458),(321,1,99,1,'images/jy_ppp/xuni/84/4-150F6205A3.jpg',1525335458),(322,1,100,1,'images/jy_ppp/xuni/36/22292df5e0fe99255775cd2632a85edf8db1714f.jpg',1525335458),(323,1,101,1,'images/jy_ppp/xuni/119/1-150330150R7.jpg',1525335458),(324,1,101,1,'images/jy_ppp/xuni/119/1-150330150R9-50.jpg',1525335458),(325,1,101,1,'images/jy_ppp/xuni/119/1-150330150S0-50.jpg',1525335458),(326,1,101,1,'images/jy_ppp/xuni/119/1-150330150S0.jpg',1525335458),(327,1,102,1,'images/jy_ppp/xuni/112/1-15041FR010.jpg',1525335458),(328,1,102,1,'images/jy_ppp/xuni/112/1-15041FR011.jpg',1525335458),(329,1,102,1,'images/jy_ppp/xuni/112/1-15041FR013.jpg',1525335458),(330,1,103,1,'images/jy_ppp/xuni/85/1-150FG25938.jpg',1525335458),(331,1,103,1,'images/jy_ppp/xuni/85/1-150FG25940.jpg',1525335458),(332,1,103,1,'images/jy_ppp/xuni/85/1-150FG25946.jpg',1525335458),(333,1,103,1,'images/jy_ppp/xuni/85/1-150FG25953.jpg',1525335458),(334,1,104,1,'images/jy_ppp/xuni/39/6ec6a7efce1b9d16585f62bff6deb48f8d546450.jpg',1525335458),(335,1,104,1,'images/jy_ppp/xuni/39/bfefce1b9d16fdfa09f43e30b18f8c5495ee7b50.jpg',1525335458),(336,1,104,1,'images/jy_ppp/xuni/39/fddde71190ef76c6054a03f59816fdfaae516750.jpg',1525335458),(337,1,104,1,'images/jy_ppp/xuni/39/ff1190ef76c6a7ef6dbe50f8f8faaf51f2de6650.jpg',1525335458),(338,1,105,1,'images/jy_ppp/xuni/81/b54bd11373f08202f0768c494dfbfbedaa641bdb.jpg',1525335458),(339,1,105,1,'images/jy_ppp/xuni/81/c943ad4bd11373f02bdb72e9a20f4bfbfaed04db.jpg',1525335458),(340,1,106,1,'images/jy_ppp/xuni/38/0730e924b899a90157858b3e1b950a7b0208f502.png',1525335458),(341,1,106,1,'images/jy_ppp/xuni/38/f124b899a9014c08728bf8ad0c7b02087bf4f402.png',1525335458),(342,1,107,1,'images/jy_ppp/xuni/88/1-150F5110T0.jpg',1525335458),(343,1,107,1,'images/jy_ppp/xuni/88/1-150F5110T2.jpg',1525335458),(344,1,107,1,'images/jy_ppp/xuni/88/1-150F5110T5.jpg',1525335458),(345,1,108,1,'images/jy_ppp/xuni/96/1-15050PI4fdfd57.jpg',1525335458),(346,1,108,1,'images/jy_ppp/xuni/96/1-15050PIzxzc501.jpg',1525335458),(347,1,108,1,'images/jy_ppp/xuni/96/1-15050dfsadfPI458.jpg',1525335458),(348,1,108,1,'images/jy_ppp/xuni/96/1-15050xcvxcvPI459.jpg',1525335458),(349,1,109,1,'images/jy_ppp/xuni/102/1-15042PQ049.jpg',1525335458),(350,1,109,1,'images/jy_ppp/xuni/102/1-15042PQ053-50.jpg',1525335458),(351,1,110,1,'images/jy_ppp/xuni/25/8a45d688d43f8794d352415fd41b0ef41bd53a15.jpg',1525335458),(352,1,110,1,'images/jy_ppp/xuni/25/cc3f8794a4c27d1eab8b32b51dd5ad6eddc43815.jpg',1525335458),(353,1,110,1,'images/jy_ppp/xuni/25/ce88d43f8794a4c2058eee5a08f41bd5ad6e3915.jpg',1525335458),(354,1,110,1,'images/jy_ppp/xuni/25/d0fcc3cec3fdfc03e1d5eac9d23f8794a4c22615.jpg',1525335458),(355,1,110,1,'images/jy_ppp/xuni/25/e4039245d688d43ff10498837b1ed21b0ef43b15.jpg',1525335458),(356,1,111,1,'images/jy_ppp/xuni/73/218732qh4hsdaf.jpg',1525335458),(357,1,111,1,'images/jy_ppp/xuni/73/28sadyufsudfhdsfh.jpg',1525335458),(358,1,111,1,'images/jy_ppp/xuni/73/87dasugdgashf.jpg',1525335458),(359,1,111,1,'images/jy_ppp/xuni/73/asd8932jdsafhsd.jpg',1525335458),(360,1,111,1,'images/jy_ppp/xuni/73/ausd6rw34rhwezxbc.jpg',1525335458),(361,1,111,1,'images/jy_ppp/xuni/73/jj54345retvxsdf.jpg',1525335458),(362,1,111,1,'images/jy_ppp/xuni/73/sadwq87324234.jpg',1525335458),(363,1,112,1,'images/jy_ppp/xuni/41/10fa513d269759ee30a25cc7b4fb43166c22dfcf.jpg',1525335458),(364,1,112,1,'images/jy_ppp/xuni/41/493d269759ee3d6d5b34bbc745166d224e4adecf.jpg',1525335458),(365,1,112,1,'images/jy_ppp/xuni/41/7b2762d0f703918fa82301c6573d269758eec4cf.jpg',1525335458),(366,1,112,1,'images/jy_ppp/xuni/41/b8ec08fa513d26975521345153fbb2fb4216d8cf.jpg',1525335458),(367,1,113,1,'images/jy_ppp/xuni/95/1-15050ZzxcvQ910-50.jpg',1525335458),(368,1,114,1,'images/jy_ppp/xuni/111/1-15041PU120-50.jpg',1525335458),(369,1,114,1,'images/jy_ppp/xuni/111/1-15041PU121.jpg',1525335458);
/*!40000 ALTER TABLE `ims_jy_ppp_thumb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_visit`
--

DROP TABLE IF EXISTS `ims_jy_ppp_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_visit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL,
  `visitid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_visit`
--

LOCK TABLES `ims_jy_ppp_visit` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_visit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_xinxi`
--

DROP TABLE IF EXISTS `ims_jy_ppp_xinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_xinxi` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '0',
  `sendid` int(10) NOT NULL DEFAULT '0' COMMENT '发送人员',
  `content` text,
  `zhaohuid` int(10) DEFAULT '0' COMMENT '打招呼id',
  `huifuid` int(10) DEFAULT '0' COMMENT '回复打招呼id',
  `type` int(10) DEFAULT '0' COMMENT '0为打招呼,1为会员推荐,2为最新回信,3为管理员',
  `yuedu` tinyint(1) DEFAULT '0' COMMENT '0为未读,1为已读',
  `yuedutime` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `picurl` text,
  `media_id` varchar(255) NOT NULL,
  `leixing` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `sendid` (`sendid`)
) ENGINE=MyISAM AUTO_INCREMENT=12299 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_xinxi`
--

LOCK TABLES `ims_jy_ppp_xinxi` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_xinxi` DISABLE KEYS */;
INSERT INTO `ims_jy_ppp_xinxi` VALUES (11783,1,211,110,'微信发我，我加你',0,0,2,0,0,1531475959,'','',0),(11784,1,211,93,'我是荷官主播表演，直播房号：6211',0,0,2,0,0,1531476081,'','',0),(11785,1,211,93,'您有一张新的图片消息！',0,0,2,0,0,1531476157,'http://127.0.0.1/attachment/images/1/2018/06/F4wPcFQSW44pCFp5J6Cpf4gtltZzPW.jpg','',1),(11786,1,211,93,'您有一张新的图片消息！',0,0,2,0,0,1531476297,'http://127.0.0.1/attachment/images/1/2018/06/Nesn5SR5YiGyR8ELi5SF99YI5fR8Kr.jpg','',1),(11787,1,211,93,'我可以让您满意为止哦，听指挥',0,0,2,0,0,1531476372,'','',0),(11788,1,211,93,'进来我直播了吗',0,0,2,0,0,1531476443,'','',0),(11789,1,211,93,'抓紧一点，我马上就开播了',0,0,2,0,0,1531476522,'','',0),(11790,1,211,77,'您有一张新的图片消息！',0,0,2,0,0,1531476654,'http://127.0.0.1/attachment/images/1/2018/06/oy5PbBVv2pcVobm1fFvJvZynMM1fH6.jpg','',1),(11791,1,211,77,'您有一张新的图片消息！',0,0,2,0,0,1531476725,'http://127.0.0.1/attachment/images/1/2018/06/bJd8i8iiG82hGhTAMN28FRMnH2kj02.jpg','',1),(11792,1,211,77,'您有一张新的图片消息！',0,0,2,0,0,1531476787,'http://127.0.0.1/attachment/images/1/2018/06/d44dBdG48NdFnvsZp544nTFBT7bDpG.jpg','',1),(11793,1,211,77,'有需要看我表演吗',0,0,2,0,0,1531476866,'','',0),(11794,1,211,77,'房号：5317 加入进来看哈',0,0,2,0,0,1531476934,'','',0),(11795,1,211,61,'您有一张新的图片消息！',0,0,2,0,0,1531477088,'http://127.0.0.1/attachment/images/1/2018/06/oy5PbBVv2pcVobm1fFvJvZynMM1fH6.jpg','',1),(11796,1,211,61,'您有一张新的图片消息！',0,0,2,0,0,1531477159,'http://127.0.0.1/attachment/images/1/2018/06/bJd8i8iiG82hGhTAMN28FRMnH2kj02.jpg','',1),(11797,1,211,61,'您有一张新的图片消息！',0,0,2,0,0,1531477226,'http://127.0.0.1/attachment/images/1/2018/06/d44dBdG48NdFnvsZp544nTFBT7bDpG.jpg','',1),(11798,1,211,61,'有需要看我表演吗',0,0,2,0,0,1531477299,'','',0),(11799,1,211,61,'房号：5317 加入进来看哈',0,0,2,0,0,1531477366,'','',0),(11800,1,211,15,'这只是开头，后面精彩刺激的更多',0,0,2,0,0,1531480931,'','',0),(11801,1,211,15,'进直播间找我搜索我房号6824就可以看了',0,0,2,0,0,1531480995,'','',0),(11802,1,211,15,'您有一张新的图片消息！',0,0,2,0,0,1531480854,'http://127.0.0.1/attachment/images/1/2018/06/t91xlxn6pU5z1xVzNV6ep5UuV229V3.jpg','',1),(11803,1,211,15,'您有一张新的图片消息！',0,0,2,0,0,1531480774,'http://127.0.0.1/attachment/images/1/2018/06/RCpge3X4vidP3DzePD7tdc3IE4ltre.jpg','',1),(11804,1,211,15,'您有一张新的图片消息！',0,0,2,0,0,1531480695,'http://127.0.0.1/attachment/images/1/2018/06/oJ2aOtj2I628Jy2Y90jC6oX9y9iayj.jpg','',1),(11805,1,211,15,'什么都表演的哦，我给你发一些我拍下的照片哈',0,0,2,0,0,1531480631,'','',0),(11806,1,211,15,'有兴趣看直播吗',0,0,2,0,0,1531480565,'','',0),(11807,1,211,20,'一月付我1万5就可以，我给你很好的服务',0,0,2,0,0,1531480301,'','',0),(11808,1,211,20,'有微信就发一下，我加你',0,0,2,0,0,1531480366,'','',0),(11809,1,211,15,'帅哥您好',0,0,2,0,0,1531480499,'','',0),(11810,1,211,20,'老板有意的话就联系我，照片是我本人',0,0,2,0,0,1531480224,'','',0),(11811,1,211,20,'求包养',0,0,2,0,0,1531480101,'','',0),(11812,1,211,20,'您有一张新的图片消息！',0,0,2,0,0,1531480164,'http://127.0.0.1/attachment/images/1/2018/06/fgxKoWLf6LwP55ZBx53ZkkbwG0eEWE.jpg','',1),(11813,1,211,39,'您有一张新的图片消息！',0,0,2,0,0,1531479881,'http://127.0.0.1/attachment/images/1/2018/06/a6gWmum6gsVwcYDuW4gfR1iCI5Z51I.jpg','',1),(11814,1,211,39,'记住我的房号哦 9622',0,0,2,0,0,1531479948,'','',0),(11815,1,211,39,'您有一张新的图片消息！',0,0,2,0,0,1531479812,'http://127.0.0.1/attachment/images/1/2018/06/NgW9wywYwFWBE9W99yh9HG06WRb7Hv.jpg','',1),(11816,1,211,39,'您有一张新的图片消息！',0,0,2,0,0,1531479734,'http://127.0.0.1/attachment/images/1/2018/06/HY7LyYbN8K2ZnyKln22yD1P7mxb177.jpg','',1),(11817,1,211,39,'你好，我是主播小龙女',0,0,2,0,0,1531479585,'','',0),(11818,1,211,39,'我是表演茄子的，请问加入我直播间吗',0,0,2,0,0,1531479654,'','',0),(11819,1,211,50,'你能视频通话吗',0,0,2,0,0,1531479377,'','',0),(11820,1,211,50,'我这发视频给你，提醒你没开通会员',0,0,2,0,0,1531479446,'','',0),(11821,1,211,50,'我的身材可以吗',0,0,2,0,0,1531479313,'','',0),(11822,1,211,50,'您有一张新的图片消息！',0,0,2,0,0,1531479246,'http://127.0.0.1/attachment/images/1/2018/06/LPTplD7Jl1SxqJRQ5XvzXjvRJTtMxE.jpg','',1),(11823,1,211,50,'您有一张新的图片消息！',0,0,2,0,0,1531479175,'http://127.0.0.1/attachment/images/1/2018/06/s9r50F1C1v2cx57U2fsrA1GqD22QSx.jpg','',1),(11824,1,211,50,'您有一张新的图片消息！',0,0,2,0,0,1531479095,'http://127.0.0.1/attachment/images/1/2018/06/fv9dvhQPEC2XIExMz9eD2Ie8cb8zlP.jpg','',1),(11825,1,211,50,'您有一张新的图片消息！',0,0,2,0,0,1531479034,'http://127.0.0.1/attachment/images/1/2018/06/ZRCupR7CL8FUlkrk8R5uLcCFLVUlp7.jpg','',1),(11826,1,211,50,'您有一张新的图片消息！',0,0,2,0,0,1531478958,'http://127.0.0.1/attachment/images/1/2018/06/wNhEfOE434HMOIm4wz3433Hwb544qn.jpg','',1),(11827,1,211,50,'您有一条新的语音消息！',0,0,2,0,0,1531478894,'','http://127.0.0.1/attachment/audios/1/2018/06/KB2eDHvheVZKpnI5QsQqzhQv5d53kH.mp3',2),(11828,1,211,52,'我的身材可以吗',0,0,2,0,0,1531478592,'','',0),(11829,1,211,52,'我这发视频给你，提醒你没开通会员',0,0,2,0,0,1531478745,'','',0),(11830,1,211,52,'你能视频通话吗',0,0,2,0,0,1531478667,'','',0),(11831,1,211,52,'您有一张新的图片消息！',0,0,2,0,0,1531478447,'http://127.0.0.1/attachment/images/1/2018/06/s9r50F1C1v2cx57U2fsrA1GqD22QSx.jpg','',1),(11832,1,211,52,'您有一张新的图片消息！',0,0,2,0,0,1531478522,'http://127.0.0.1/attachment/images/1/2018/06/LPTplD7Jl1SxqJRQ5XvzXjvRJTtMxE.jpg','',1),(11833,1,211,52,'您有一张新的图片消息！',0,0,2,0,0,1531478369,'http://127.0.0.1/attachment/images/1/2018/06/fv9dvhQPEC2XIExMz9eD2Ie8cb8zlP.jpg','',1),(11834,1,211,52,'您有一张新的图片消息！',0,0,2,0,0,1531478290,'http://127.0.0.1/attachment/images/1/2018/06/ZRCupR7CL8FUlkrk8R5uLcCFLVUlp7.jpg','',1),(11835,1,211,52,'您有一张新的图片消息！',0,0,2,0,0,1531478225,'http://127.0.0.1/attachment/images/1/2018/06/wNhEfOE434HMOIm4wz3433Hwb544qn.jpg','',1),(11836,1,211,52,'您有一条新的语音消息！',0,0,2,0,0,1531478163,'','http://127.0.0.1/attachment/audios/1/2018/06/KB2eDHvheVZKpnI5QsQqzhQv5d53kH.mp3',2),(11837,1,211,60,'这是我拍下的一些照片，看直播可以看更多的呦',0,0,2,0,0,1531477944,'','',0),(11838,1,211,60,'加入我的直播房号：6172',0,0,2,0,0,1531478022,'','',0),(11839,1,211,60,'您有一张新的图片消息！',0,0,2,0,0,1531477881,'http://127.0.0.1/attachment/images/1/2018/06/mORZO9xO9kuEzEh6900HcIexAEe9lh.jpg','',1),(11840,1,211,60,'您有一张新的图片消息！',0,0,2,0,0,1531477812,'http://127.0.0.1/attachment/images/1/2018/06/nv8Qh579X75h6Rrr9V2V6A000Vvv79.jpg','',1),(11841,1,211,60,'我表演制服妹的，还有一些道具',0,0,2,0,0,1531477578,'','',0),(11842,1,211,60,'您有一张新的图片消息！',0,0,2,0,0,1531477654,'http://127.0.0.1/attachment/images/1/2018/06/W818uY88yYliJ188H7yh1UH8Kk00K1.jpg','',1),(11843,1,211,60,'您有一张新的图片消息！',0,0,2,0,0,1531477734,'http://127.0.0.1/attachment/images/1/2018/06/Ru34m2000o40x0W4c45X022C940w5u.jpg','',1),(11844,1,211,60,'帅哥您好我是主播6172',0,0,2,0,0,1531477513,'','',0),(11845,1,59,212,'hey，我觉得你很有气质，可以认识你吗？',0,0,0,0,0,1532856801,NULL,'',0),(11846,1,64,212,'哈喽！我生于1991年,希望能够了解你，可以交个朋友吗？',0,0,0,0,0,1532856801,NULL,'',0),(11847,1,67,212,'hello,您好！很高兴认识你，可以交个朋友么？',0,0,0,0,0,1532856801,NULL,'',0),(11848,1,212,67,'我看同城显示你在几公里内，你发微信来，我去找你',0,0,2,0,0,1532857646,'','',0),(11849,1,212,67,'你微信多少',0,0,2,0,0,1532857571,'','',0),(11850,1,212,67,'这是我之前男朋友一起拍的，我可以给你同样的待遇，我要报复他，拍给他看',0,0,2,0,0,1532857504,'','',0),(11851,1,212,67,'您有一张新的图片消息！',0,0,2,0,0,1532857427,'http://127.0.0.1/attachment/images/1/2018/06/T2fcqz6aIvaMQ26Cd2EcrCno2cvncn.jpg','',1),(11852,1,212,67,'怎样，我可以给你很好的服务',0,0,2,0,0,1532857355,'','',0),(11853,1,212,67,'您有一张新的图片消息！',0,0,2,0,0,1532857284,'http://127.0.0.1/attachment/images/1/2018/06/uOQRMOOyoeltT399K36roT7O9od919.jpg','',1),(11854,1,212,67,'您有一张新的图片消息！',0,0,2,0,0,1532857218,'http://127.0.0.1/attachment/images/1/2018/06/sjX598hJ9NnHzSqgZgrQGEg9S9xQnZ.jpg','',1),(11855,1,212,67,'跟我去开房你敢吗',0,0,2,0,0,1532857064,'','',0),(11856,1,212,67,'我男朋友对不起我，我也要对不起他',0,0,2,0,0,1532857141,'','',0),(11857,1,212,67,'您有一条新的语音消息！',0,0,2,0,0,1532856989,'','http://127.0.0.1/attachment/audios/1/2018/06/BrT6FSNfNdsN8f81c11s9egtLN9Zfr.wav',2),(11858,1,212,64,'您有一张新的图片消息！',0,0,2,0,0,1532857283,'http://127.0.0.1/attachment/images/1/2018/06/Sg1yQQLVgv1j2VO88LGL8VLfGOLYgG.jpg','',1),(11859,1,212,64,'您有一张新的图片消息！',0,0,2,0,0,1532857207,'http://127.0.0.1/attachment/images/1/2018/06/qu595K94Z53lr4NA5fr5kRL9GUKq53.jpg','',1),(11860,1,212,64,'您有一张新的图片消息！',0,0,2,0,0,1532857052,'http://127.0.0.1/attachment/images/1/2018/06/T8NKSAIejHRXJiWLzArIZfIlWrefD6.jpg','',1),(11861,1,212,64,'您有一张新的图片消息！',0,0,2,0,0,1532857131,'http://127.0.0.1/attachment/images/1/2018/06/ayTyeX83y00TZSuA3PDztSS8x4S08i.jpg','',1),(11862,1,212,4,'您有一张新的图片消息！',0,0,2,0,0,1532862885,'http://127.0.0.1/attachment/images/1/2018/06/LPTplD7Jl1SxqJRQ5XvzXjvRJTtMxE.jpg','',1),(11863,1,212,4,'我的身材可以吗',0,0,2,0,0,1532862959,'','',0),(11864,1,212,4,'你能视频通话吗',0,0,2,0,0,1532863035,'','',0),(11865,1,212,4,'我这发视频给你，提醒你没开通会员',0,0,2,0,0,1532863109,'','',0),(11866,1,212,59,'您有一张新的图片消息！',0,0,2,0,0,1532856906,'http://127.0.0.1/attachment/images/1/2018/06/h2DXWpzg6iPa6PPwtWpwDxdIxnOG9K.jpg','',1),(11867,1,212,59,'您有一张新的图片消息！',0,0,2,0,0,1532856983,'http://127.0.0.1/attachment/images/1/2018/06/J5UUN5xJnVJEI5Zxw5HhexUztEDuTh.jpg','',1),(11868,1,212,59,'您有一张新的图片消息！',0,0,2,0,0,1532857063,'http://127.0.0.1/attachment/images/1/2018/06/nsh904KLffws01zsH91la44u4340V9.jpg','',1),(11869,1,212,59,'蜡烛表演，然后后面就越来越刺激',0,0,2,0,0,1532857136,'','',0),(11870,1,212,59,'你可以搜索我的房号8621',0,0,2,0,0,1532857213,'','',0),(11871,1,212,64,'小哥哥看刺激的吗',0,0,2,0,0,1532856916,'','',0),(11872,1,212,64,'我的直播房号是6888，你加入我直播间呀',0,0,2,0,0,1532856976,'','',0),(11873,1,212,4,'您有一张新的图片消息！',0,0,2,0,0,1532862825,'http://127.0.0.1/attachment/images/1/2018/06/s9r50F1C1v2cx57U2fsrA1GqD22QSx.jpg','',1),(11874,1,212,55,'500包夜，你在附近哪里',0,0,2,0,0,1532860631,'','',0),(11875,1,212,55,'您有一张新的图片消息！',0,0,2,0,0,1532860702,'http://127.0.0.1/attachment/images/1/2018/06/c2DW1XzJ7eexWI3311R3pI2rWeVEHH.jpg','',1),(11876,1,212,55,'这呻吟可以吗',0,0,2,0,0,1532860571,'','',0),(11877,1,212,60,'需要吗？',0,0,2,0,0,1532860230,'','',0),(11878,1,212,60,'我今天才在这附近哦，明天就要去上海了',0,0,2,0,0,1532860308,'','',0),(11879,1,212,60,'微信多少，我们微信聊',0,0,2,0,0,1532860376,'','',0),(11880,1,212,55,'您有一条新的语音消息！',0,0,2,0,0,1532860505,'','http://127.0.0.1/attachment/audios/1/2018/06/d4lyG30Y5K5zGexkK6k35k4L1mxz1K.mp3',2),(11881,1,212,60,'您有一张新的图片消息！',0,0,2,0,0,1532860150,'http://127.0.0.1/attachment/images/1/2018/06/Gzl5h455q5Cl454R444B5l4544r4J4.jpg','',1),(11882,1,212,60,'包夜吗，哥哥',0,0,2,0,0,1532860088,'','',0),(11883,1,212,60,'您有一张新的图片消息！',0,0,2,0,0,1532860022,'http://127.0.0.1/attachment/images/1/2018/06/eTsDljIsgsBSlL9JxkLIYLtD9BVdIP.jpg','',1),(11884,1,212,63,'优衣库啪啪啪哦，直播房号：1317 来看我直播哦',0,0,2,0,0,1532859811,'','',0),(11885,1,212,63,'您有一张新的图片消息！',0,0,2,0,0,1532859733,'http://127.0.0.1/attachment/images/1/2018/06/GCn1mI9zE7iupY7u47EE5NeimM5T01.jpg','',1),(11886,1,212,60,'您有一条新的语音消息！',0,0,2,0,0,1532859944,'','http://127.0.0.1/attachment/audios/1/2018/06/ykK3ZkM3uQzfzfMp7Qmp763kBFjoxz.mp3',2),(11887,1,212,63,'您有一张新的图片消息！',0,0,2,0,0,1532859662,'http://127.0.0.1/attachment/images/1/2018/06/oKeuQ0EXKeCE0jqqkfQCKwFCkEETRe.jpg','',1),(11888,1,212,73,'我们比谁发得漏，我现在发到这，然后现在你发',0,0,2,0,0,1532859308,'','',0),(11889,1,212,73,'你不靠谱啊，不发么',0,0,2,0,0,1532859378,'','',0),(11890,1,212,73,'对你失望，你玩不起，我找别人玩了',0,0,2,0,0,1532859448,'','',0),(11891,1,212,63,'优衣库表演，帅哥来看嘛',0,0,2,0,0,1532859598,'','',0),(11892,1,212,73,'您有一张新的图片消息！',0,0,2,0,0,1532859246,'http://127.0.0.1/attachment/images/1/2018/06/GTT2Rg22IUWx47dawal2dLZN7trdDU.jpg','',1),(11893,1,212,73,'您有一张新的图片消息！',0,0,2,0,0,1532859167,'http://127.0.0.1/attachment/images/1/2018/06/LHjIh19867h1ouhlOUqqg2hUGznZte.jpg','',1),(11894,1,212,73,'您有一张新的图片消息！',0,0,2,0,0,1532859103,'http://127.0.0.1/attachment/images/1/2018/06/OP3pgcF3c639wwP6p6b9JFPpp9jww9.jpg','',1),(11895,1,212,73,'聊什么都行噢~',0,0,2,0,0,1532858965,'','',0),(11896,1,212,73,'平时都是怎么消遣的呀？',0,0,2,0,0,1532859040,'','',0),(11897,1,212,73,'您有一条新的语音消息！',0,0,2,0,0,1532858745,'','http://127.0.0.1/attachment/audios/1/2018/06/tmMw6p6UWWWW6sHjw6Ww0szt08p6m3.mp3',2),(11898,1,212,73,'约吗，你在这附近没',0,0,2,0,0,1532858824,'','',0),(11899,1,212,73,'陪人家聊会天呗',0,0,2,0,0,1532858899,'','',0),(11900,1,212,96,'微信多少，我们微信聊',0,0,2,0,0,1532858605,'','',0),(11901,1,212,96,'需要吗？',0,0,2,0,0,1532858474,'','',0),(11902,1,212,96,'我今天才在这附近哦，明天就要去上海了',0,0,2,0,0,1532858539,'','',0),(11903,1,212,96,'包夜吗，哥哥',0,0,2,0,0,1532858336,'','',0),(11904,1,212,96,'您有一张新的图片消息！',0,0,2,0,0,1532858405,'http://127.0.0.1/attachment/images/1/2018/06/Gzl5h455q5Cl454R444B5l4544r4J4.jpg','',1),(11905,1,212,96,'您有一张新的图片消息！',0,0,2,0,0,1532858267,'http://127.0.0.1/attachment/images/1/2018/06/eTsDljIsgsBSlL9JxkLIYLtD9BVdIP.jpg','',1),(11906,1,212,109,'这只是开头，后面精彩刺激的更多',0,0,2,0,0,1532857984,'','',0),(11907,1,212,109,'进直播间找我搜索我房号6824就可以看了',0,0,2,0,0,1532858053,'','',0),(11908,1,212,96,'您有一条新的语音消息！',0,0,2,0,0,1532858191,'','http://127.0.0.1/attachment/audios/1/2018/06/ykK3ZkM3uQzfzfMp7Qmp763kBFjoxz.mp3',2),(11909,1,212,109,'您有一张新的图片消息！',0,0,2,0,0,1532857908,'http://127.0.0.1/attachment/images/1/2018/06/t91xlxn6pU5z1xVzNV6ep5UuV229V3.jpg','',1),(11910,1,212,109,'您有一张新的图片消息！',0,0,2,0,0,1532857832,'http://127.0.0.1/attachment/images/1/2018/06/RCpge3X4vidP3DzePD7tdc3IE4ltre.jpg','',1),(11911,1,212,109,'什么都表演的哦，我给你发一些我拍下的照片哈',0,0,2,0,0,1532857698,'','',0),(11912,1,212,109,'您有一张新的图片消息！',0,0,2,0,0,1532857772,'http://127.0.0.1/attachment/images/1/2018/06/oJ2aOtj2I628Jy2Y90jC6oX9y9iayj.jpg','',1),(11913,1,212,114,'我的身材可以吗',0,0,2,0,0,1532857294,'','',0),(11914,1,212,114,'你能视频通话吗',0,0,2,0,0,1532857362,'','',0),(11915,1,212,114,'我这发视频给你，提醒你没开通会员',0,0,2,0,0,1532857436,'','',0),(11916,1,212,109,'帅哥您好',0,0,2,0,0,1532857560,'','',0),(11917,1,212,109,'有兴趣看直播吗',0,0,2,0,0,1532857636,'','',0),(11918,1,212,114,'您有一张新的图片消息！',0,0,2,0,0,1532857228,'http://127.0.0.1/attachment/images/1/2018/06/LPTplD7Jl1SxqJRQ5XvzXjvRJTtMxE.jpg','',1),(11919,1,212,114,'您有一张新的图片消息！',0,0,2,0,0,1532857163,'http://127.0.0.1/attachment/images/1/2018/06/s9r50F1C1v2cx57U2fsrA1GqD22QSx.jpg','',1),(11920,1,212,114,'您有一张新的图片消息！',0,0,2,0,0,1532856941,'http://127.0.0.1/attachment/images/1/2018/06/wNhEfOE434HMOIm4wz3433Hwb544qn.jpg','',1),(11921,1,212,114,'您有一张新的图片消息！',0,0,2,0,0,1532857086,'http://127.0.0.1/attachment/images/1/2018/06/fv9dvhQPEC2XIExMz9eD2Ie8cb8zlP.jpg','',1),(11922,1,212,114,'您有一张新的图片消息！',0,0,2,0,0,1532857021,'http://127.0.0.1/attachment/images/1/2018/06/ZRCupR7CL8FUlkrk8R5uLcCFLVUlp7.jpg','',1),(11923,1,212,114,'您有一条新的语音消息！',0,0,2,0,0,1532856872,'','http://127.0.0.1/attachment/audios/1/2018/06/KB2eDHvheVZKpnI5QsQqzhQv5d53kH.mp3',2),(11924,1,212,55,'亲亲',0,0,2,0,0,1532860772,'','',0),(11925,1,212,55,'包夜吗',0,0,2,0,0,1532860834,'','',0),(11926,1,212,55,'你电话多少',0,0,2,0,0,1532860905,'','',0),(11927,1,212,40,'很高兴认识您',0,0,2,0,0,1532861057,'','',0),(11928,1,212,40,'你几岁',0,0,2,0,0,1532861136,'','',0),(11929,1,212,40,'不知道你有没有时间陪我说会话',0,0,2,0,0,1532861200,'','',0),(11930,1,212,40,'您有一张新的图片消息！',0,0,2,0,0,1532861274,'http://127.0.0.1/attachment/images/1/2018/06/pZ9JmKphZ4V2Cd2CJy5ZyVZHjsjH2h.jpg','',1),(11931,1,212,40,'您有一张新的图片消息！',0,0,2,0,0,1532861338,'http://127.0.0.1/attachment/images/1/2018/06/v0lAjc12718cxmm280M828CTVM1FbM.jpg','',1),(11932,1,212,40,'发你的',0,0,2,0,0,1532861399,'','',0),(11933,1,212,40,'您有一张新的图片消息！',0,0,2,0,0,1532861475,'http://127.0.0.1/attachment/images/1/2018/06/PlGS7XfHB2fulhLB9jY3Gf7J7Lg597.jpg','',1),(11934,1,212,40,'你电话多少呢',0,0,2,0,0,1532861542,'','',0),(11935,1,212,40,'发你的电话给我，我们聊聊',0,0,2,0,0,1532861615,'','',0),(11936,1,212,40,'您有一条新的语音消息！',0,0,2,0,0,1532861684,'','http://127.0.0.1/attachment/audios/1/2018/06/ukMQySggyhGSHgMJG4oGf5wlbvSG5G.mp3',2),(11937,1,212,26,'您有一条新的语音消息！',0,0,2,0,0,1532861810,'','http://127.0.0.1/attachment/audios/1/2018/06/FrURF2Bi319RR5FfraRRFcrC2Zm5z1.mp3',2),(11938,1,212,26,'您有一条新的语音消息！',0,0,2,0,0,1532861881,'','http://127.0.0.1/attachment/audios/1/2018/06/euyuPv7jCxJ7fwKQfm5jfxPllFy5HC.mp3',2),(11939,1,212,26,'大家到这里来都是找一夜情的，我就直接点哦，你也发一下直接点的给我，适合我们的一起',0,0,2,0,0,1532861944,'','',0),(11940,1,212,26,'您有一张新的图片消息！',0,0,2,0,0,1532862021,'http://127.0.0.1/attachment/images/1/2018/06/nbs8IzIB5CIbgGSUYIy1UqGBsGb56I.jpg','',1),(11941,1,212,26,'您有一张新的图片消息！',0,0,2,0,0,1532862097,'http://127.0.0.1/attachment/images/1/2018/06/CgN0o0404H7C7D4p8gnG3DOdp7dG47.jpg','',1),(11942,1,212,26,'您有一张新的图片消息！',0,0,2,0,0,1532862175,'http://127.0.0.1/attachment/images/1/2018/06/If7D90Xxu5d7R9xUP0zUpXuXGxHUT7.jpg','',1),(11943,1,212,26,'你也发出你的，适合的我们就开房去',0,0,2,0,0,1532862253,'','',0),(11944,1,212,26,'发了吗，还是卡了',0,0,2,0,0,1532862327,'','',0),(11945,1,212,26,'？？？？？？',0,0,2,0,0,1532862397,'','',0),(11946,1,212,4,'您有一条新的语音消息！',0,0,2,0,0,1532862540,'','http://127.0.0.1/attachment/audios/1/2018/06/KB2eDHvheVZKpnI5QsQqzhQv5d53kH.mp3',2),(11947,1,212,4,'您有一张新的图片消息！',0,0,2,0,0,1532862607,'http://127.0.0.1/attachment/images/1/2018/06/wNhEfOE434HMOIm4wz3433Hwb544qn.jpg','',1),(11948,1,212,4,'您有一张新的图片消息！',0,0,2,0,0,1532862682,'http://127.0.0.1/attachment/images/1/2018/06/ZRCupR7CL8FUlkrk8R5uLcCFLVUlp7.jpg','',1),(11949,1,212,4,'您有一张新的图片消息！',0,0,2,0,0,1532862748,'http://127.0.0.1/attachment/images/1/2018/06/fv9dvhQPEC2XIExMz9eD2Ie8cb8zlP.jpg','',1),(11950,1,111,213,'哈喽！我生于1991年,我觉得我们挺合适的。',0,0,0,0,0,1562814562,NULL,'',0),(11951,1,112,213,'哈喽！我生于1991年,有时间可以聊会儿天么？',0,0,0,0,0,1562814562,NULL,'',0),(11952,1,114,213,'hello,你很漂亮，我看上你了，我真心想找个合适的女朋友，也许我们能交个朋友哈~',0,0,0,0,0,1562814562,NULL,'',0),(11953,1,213,111,'您有一张新的图片消息！',0,0,2,1,1562814630,1562814590,'http://127.0.0.1/attachment/images/1/2018/06/xHre26442f6CW0C69115R5C4WFa2i6.jpg','',1),(11954,1,111,213,'5255',0,0,2,0,0,1562814618,NULL,'',0),(11955,1,213,111,'我很少在平台，你直接给我微信吧~',0,0,2,1,1562814630,1562814623,'','',0),(11956,1,213,100,'求包养',0,0,2,0,0,1562814620,'','',0),(11957,1,213,112,'很高兴认识您',0,0,2,0,0,1562814650,'','',0),(11958,1,213,111,'同城约么',0,0,2,0,0,1562814651,'','',0),(11959,1,213,114,'您有一条新的语音消息！',0,0,2,0,0,1562814704,'','http://127.0.0.1/attachment/audios/1/2018/06/M2F83LwSXgWX4NfM7GwsFz7wg7fbKG.mp3',2),(11960,1,213,111,'有没有微信呢',0,0,2,0,0,1562814711,'','',0),(11961,1,213,100,'您有一张新的图片消息！',0,0,2,0,0,1562814690,'http://127.0.0.1/attachment/images/1/2018/06/fgxKoWLf6LwP55ZBx53ZkkbwG0eEWE.jpg','',1),(11962,1,213,114,'约吗？我收费的，你在附近哪里',0,0,2,0,0,1562814774,'','',0),(11963,1,213,112,'你几岁',0,0,2,0,0,1562814720,'','',0),(11964,1,213,100,'老板有意的话就联系我，照片是我本人',0,0,2,0,0,1562814752,'','',0),(11965,1,213,111,'发一下',0,0,2,0,0,1562814787,'','',0),(11966,1,213,112,'不知道你有没有时间陪我说会话',0,0,2,0,0,1562814792,'','',0),(11967,1,213,112,'你电话多少呢',0,0,2,0,0,1562815118,'','',0),(11968,1,213,112,'发你的电话给我，我们聊聊',0,0,2,0,0,1562815192,'','',0),(11969,1,213,112,'您有一条新的语音消息！',0,0,2,0,0,1562815271,'','http://127.0.0.1/attachment/audios/1/2018/06/ukMQySggyhGSHgMJG4oGf5wlbvSG5G.mp3',2),(11970,1,213,114,'需要吗，做完再结',0,0,2,0,0,1562815185,'','',0),(11971,1,213,114,'有兴趣吗',0,0,2,0,0,1562815054,'','',0),(11972,1,213,114,'蚂蚁上树，冰火两重天',0,0,2,0,0,1562815118,'','',0),(11973,1,213,114,'您有一张新的图片消息！',0,0,2,0,0,1562814974,'http://127.0.0.1/attachment/images/1/2018/06/aeWdce6sg8CGmYc6fqnZTCeDnCSsFe.jpg','',1),(11974,1,213,114,'您有一张新的图片消息！',0,0,2,0,0,1562814897,'http://127.0.0.1/attachment/images/1/2018/06/rF6xf00oOAFxxX46W6CFfW6cF60Wxh.jpg','',1),(11975,1,213,114,'您有一张新的图片消息！',0,0,2,0,0,1562814835,'http://127.0.0.1/attachment/images/1/2018/06/dxxHVHjFwxKFvZ28HJ8j2t98p9P25v.jpg','',1),(11976,1,213,112,'发你的',0,0,2,0,0,1562814988,'','',0),(11977,1,213,112,'您有一张新的图片消息！',0,0,2,0,0,1562815051,'http://127.0.0.1/attachment/images/1/2018/06/PlGS7XfHB2fulhLB9jY3Gf7J7Lg597.jpg','',1),(11978,1,213,112,'您有一张新的图片消息！',0,0,2,0,0,1562814925,'http://127.0.0.1/attachment/images/1/2018/06/v0lAjc12718cxmm280M828CTVM1FbM.jpg','',1),(11979,1,213,111,'请我吃个饭怎样呢',0,0,2,0,0,1562814918,'','',0),(11980,1,213,111,'帅哥在线吗',0,0,2,0,0,1562814995,'','',0),(11981,1,213,111,'帅哥。。。',0,0,2,0,0,1562815075,'','',0),(11982,1,213,112,'您有一张新的图片消息！',0,0,2,0,0,1562814852,'http://127.0.0.1/attachment/images/1/2018/06/pZ9JmKphZ4V2Cd2CJy5ZyVZHjsjH2h.jpg','',1),(11983,1,213,111,'你位置在哪里',0,0,2,0,0,1562814853,'','',0),(11984,1,213,99,'包夜吗',0,0,2,0,0,1562815364,'','',0),(11985,1,213,99,'你电话多少',0,0,2,0,0,1562815441,'','',0),(11986,1,213,99,'亲亲',0,0,2,0,0,1562815303,'','',0),(11987,1,213,99,'您有一张新的图片消息！',0,0,2,0,0,1562815231,'http://127.0.0.1/attachment/images/1/2018/06/c2DW1XzJ7eexWI3311R3pI2rWeVEHH.jpg','',1),(11988,1,213,99,'500包夜，你在附近哪里',0,0,2,0,0,1562815157,'','',0),(11989,1,213,99,'这呻吟可以吗',0,0,2,0,0,1562815097,'','',0),(11990,1,213,99,'您有一条新的语音消息！',0,0,2,0,0,1562815021,'','http://127.0.0.1/attachment/audios/1/2018/06/d4lyG30Y5K5zGexkK6k35k4L1mxz1K.mp3',2),(11991,1,213,100,'一月付我1万5就可以，我给你很好的服务',0,0,2,0,0,1562814821,'','',0),(11992,1,213,100,'有微信就发一下，我加你',0,0,2,0,0,1562814899,'','',0),(11993,1,213,92,'您有一条新的语音消息！',0,0,2,0,0,1562815587,'','http://127.0.0.1/attachment/audios/1/2018/06/VXc65c6NHoqnqJKRKCCCxc6CNEjXcH.wav',2),(11994,1,214,113,'小哥哥看刺激的吗',0,0,2,0,0,1562815598,'','',0),(11995,1,213,92,'很吸引你的异性主动来勾引你，你会怎么样？',0,0,2,0,0,1562815647,'','',0),(11996,1,215,107,'优衣库表演，帅哥来看嘛',0,0,2,1,1562816108,1562815667,'','',0),(11997,1,214,113,'我的直播房号是6888，你加入我直播间呀',0,0,2,0,0,1562815677,'','',0),(11998,1,213,92,'您有一张新的图片消息！',0,0,2,0,0,1562815717,'http://127.0.0.1/attachment/images/1/2018/06/ecPpAXHXjpbHckjOm8obRiFcif8nvK.jpg','',1),(11999,1,214,113,'您有一张新的图片消息！',0,0,2,0,0,1562815744,'http://fk.lzmzbg.com/attachment/images/1/2018/06/T8NKSAIejHRXJiWLzArIZfIlWrefD6.jpg','',1),(12000,1,215,107,'您有一张新的图片消息！',0,0,2,1,1562816108,1562815747,'http://fk.lzmzbg.com/attachment/images/1/2018/06/oKeuQ0EXKeCE0jqqkfQCKwFCkEETRe.jpg','',1),(12001,1,213,92,'您有一张新的图片消息！',0,0,2,0,0,1562815790,'http://127.0.0.1/attachment/images/1/2018/06/IroHDwedZVOgMdY9mYhddMHgZcOHMf.jpg','',1),(12002,1,214,113,'您有一张新的图片消息！',0,0,2,0,0,1562815813,'http://fk.lzmzbg.com/attachment/images/1/2018/06/ayTyeX83y00TZSuA3PDztSS8x4S08i.jpg','',1),(12003,1,215,107,'您有一张新的图片消息！',0,0,2,1,1562816108,1562815819,'http://fk.lzmzbg.com/attachment/images/1/2018/06/GCn1mI9zE7iupY7u47EE5NeimM5T01.jpg','',1),(12004,1,214,113,'您有一张新的图片消息！',0,0,2,0,0,1562815948,'http://fk.lzmzbg.com/attachment/images/1/2018/06/Sg1yQQLVgv1j2VO88LGL8VLfGOLYgG.jpg','',1),(12005,1,213,92,'可以来陪我喝洒吗？',0,0,2,0,0,1562815944,'','',0),(12006,1,213,92,'想找一个懂我的人',0,0,2,0,0,1562816012,'','',0),(12007,1,213,92,'会不会觉得我太开放了',0,0,2,0,0,1562815868,'','',0),(12008,1,214,113,'您有一张新的图片消息！',0,0,2,0,0,1562815888,'http://fk.lzmzbg.com/attachment/images/1/2018/06/qu595K94Z53lr4NA5fr5kRL9GUKq53.jpg','',1),(12009,1,215,107,'优衣库啪啪啪哦，直播房号：1317 来看我直播哦',0,0,2,1,1562816108,1562815893,'','',0),(12010,1,215,97,'您有一条新的语音消息！',0,0,2,0,0,1562816024,'','http://fk.lzmzbg.com/attachment/audios/1/2018/06/z51195hil57Fc5c5cfGCJKv7C6UMIj.mp3',2),(12011,1,213,92,'你觉得是性感的好，还是可爱一些好~~',0,0,2,0,0,1562816073,'','',0),(12012,1,214,85,'很高兴认识您',0,0,2,0,0,1562816094,'','',0),(12013,1,215,97,'发你相片认识一下',0,0,2,0,0,1562816095,'','',0),(12014,1,214,85,'你几岁',0,0,2,0,0,1562816158,'','',0),(12015,1,213,92,'说个话喂',0,0,2,0,0,1562816148,'','',0),(12016,1,215,97,'您有一张新的图片消息！',0,0,2,0,0,1562816167,'http://fk.lzmzbg.com/attachment/images/1/2018/06/rvB1ofTf7H00RFBrO1U4ohrT4a0tNu.jpg','',1),(12017,1,214,85,'不知道你有没有时间陪我说会话',0,0,2,0,0,1562816227,'','',0),(12018,1,215,97,'这是我的照片，你的呢',0,0,2,0,0,1562816231,'','',0),(12019,1,33,216,'hey，我觉得你的打扮很多看，可以认识你吗？',0,0,0,0,0,1562816274,NULL,'',0),(12020,1,41,216,'嗨！我是来自广东省的年轻人，希望你会记得我哈~',0,0,0,0,0,1562816274,NULL,'',0),(12021,1,43,216,'哈喽！我生于1991年,有时间可以聊会儿天么？',0,0,0,0,0,1562816274,NULL,'',0),(12022,1,213,89,'您有一条新的语音消息！',0,0,2,0,0,1562816290,'','http://127.0.0.1/attachment/audios/1/2018/06/z51195hil57Fc5c5cfGCJKv7C6UMIj.mp3',2),(12023,1,214,85,'您有一张新的图片消息！',0,0,2,0,0,1562816294,'http://fk.lzmzbg.com/attachment/images/1/2018/06/pZ9JmKphZ4V2Cd2CJy5ZyVZHjsjH2h.jpg','',1),(12024,1,215,97,'您有一张新的图片消息！',0,0,2,0,0,1562816301,'http://fk.lzmzbg.com/attachment/images/1/2018/06/CGf77qIu7JTfNU0IGB3T3ij5J8tofj.jpg','',1),(12025,1,214,85,'您有一张新的图片消息！',0,0,2,0,0,1562816363,'http://fk.lzmzbg.com/attachment/images/1/2018/06/v0lAjc12718cxmm280M828CTVM1FbM.jpg','',1),(12026,1,213,89,'发你相片认识一下',0,0,2,0,0,1562816368,'','',0),(12027,1,216,114,'很高兴认识你',0,0,2,1,1562816398,1562816341,'','',0),(12028,1,215,97,'你的JJ有10公分吗',0,0,2,0,0,1562816371,'','',0),(12029,1,216,33,'您有一张新的图片消息！',0,0,2,0,0,1562816375,'http://fk.lzmzbg.com/attachment/images/1/2018/06/oy5PbBVv2pcVobm1fFvJvZynMM1fH6.jpg','',1),(12030,1,216,114,'你刚注册的吗',0,0,2,0,0,1562816419,'','',0),(12031,1,216,41,'来看我直播脱衣舞吗',0,0,2,0,0,1562816412,'','',0),(12032,1,214,85,'发你的',0,0,2,0,0,1562816431,'','',0),(12033,1,213,89,'您有一张新的图片消息！',0,0,2,0,0,1562816438,'http://127.0.0.1/attachment/images/1/2018/06/rvB1ofTf7H00RFBrO1U4ohrT4a0tNu.jpg','',1),(12034,1,215,97,'您有一张新的图片消息！',0,0,2,0,0,1562816444,'http://fk.lzmzbg.com/attachment/images/1/2018/06/yRRWtr6WdFglwNtgk456rz14Ti66k6.jpg','',1),(12035,1,216,33,'您有一张新的图片消息！',0,0,2,0,0,1562816442,'http://fk.lzmzbg.com/attachment/images/1/2018/06/bJd8i8iiG82hGhTAMN28FRMnH2kj02.jpg','',1),(12036,1,214,85,'您有一张新的图片消息！',0,0,2,0,0,1562816502,'http://fk.lzmzbg.com/attachment/images/1/2018/06/PlGS7XfHB2fulhLB9jY3Gf7J7Lg597.jpg','',1),(12037,1,216,114,'在这平台聊天可以直接，都是约炮来的',0,0,2,0,0,1562816488,'','',0),(12038,1,213,89,'这是我的照片，你的呢',0,0,2,0,0,1562816512,'','',0),(12039,1,216,33,'您有一张新的图片消息！',0,0,2,0,0,1562816510,'http://fk.lzmzbg.com/attachment/images/1/2018/06/d44dBdG48NdFnvsZp544nTFBT7bDpG.jpg','',1),(12040,1,216,41,'您有一张新的图片消息！',0,0,2,0,0,1562816485,'http://fk.lzmzbg.com/attachment/images/1/2018/06/Rc38W9sd7v3pez8ssSTsN3WWu78psu.jpg','',1),(12041,1,216,43,'帅哥您好我是主播6172',0,0,2,0,0,1562816454,'','',0),(12042,1,215,97,'你有10公分起的话，我们可以约，没有的话就算哦',0,0,2,0,0,1562816521,'','',0),(12043,1,216,43,'我表演制服妹的，还有一些道具',0,0,2,0,0,1562816522,'','',0),(12044,1,216,41,'您有一张新的图片消息！',0,0,2,0,0,1562816550,'http://fk.lzmzbg.com/attachment/images/1/2018/06/KNH70AK70KdHn11OV42A72DU00yK7Y.jpg','',1),(12045,1,216,114,'您有一张新的图片消息！',0,0,2,0,0,1562816563,'http://fk.lzmzbg.com/attachment/images/1/2018/06/s1M1B92ll23M6MVX182B67ft7BmFBF.jpg','',1),(12046,1,216,33,'有需要看我表演吗',0,0,2,0,0,1562816576,'','',0),(12047,1,214,85,'你电话多少呢',0,0,2,0,0,1562816577,'','',0),(12048,1,213,89,'您有一张新的图片消息！',0,0,2,0,0,1562816577,'http://127.0.0.1/attachment/images/1/2018/06/CGf77qIu7JTfNU0IGB3T3ij5J8tofj.jpg','',1),(12049,1,214,85,'您有一条新的语音消息！',0,0,2,0,0,1562816725,'','http://fk.lzmzbg.com/attachment/audios/1/2018/06/ukMQySggyhGSHgMJG4oGf5wlbvSG5G.mp3',2),(12050,1,214,85,'发你的电话给我，我们聊聊',0,0,2,0,0,1562816656,'','',0),(12051,1,216,114,'这个是我，你可以维持30分钟吗，可以的我们现在出去',0,0,2,0,0,1562816639,'','',0),(12052,1,213,89,'你有10公分起的话，我们可以约，没有的话就算哦',0,0,2,0,0,1562816776,'','',0),(12053,1,213,89,'您有一张新的图片消息！',0,0,2,0,0,1562816702,'http://127.0.0.1/attachment/images/1/2018/06/yRRWtr6WdFglwNtgk456rz14Ti66k6.jpg','',1),(12054,1,213,89,'你的JJ有10公分吗',0,0,2,0,0,1562816637,'','',0),(12055,1,216,114,'在吗..',0,0,2,0,0,1562816699,'','',0),(12056,1,215,97,'回句话',0,0,2,0,0,1562816600,'','',0),(12057,1,215,97,'不在吗，在了就回我',0,0,2,0,0,1562816667,'','',0),(12058,1,216,33,'房号：5317 加入进来看哈',0,0,2,0,0,1562816637,'','',0),(12059,1,216,41,'您有一张新的图片消息！',0,0,2,0,0,1562816627,'http://fk.lzmzbg.com/attachment/images/1/2018/06/y9d0w0DzI98usJ37UcmsIsTDu3wJtz.jpg','',1),(12060,1,216,41,'您有一张新的图片消息！',0,0,2,0,0,1562816692,'http://fk.lzmzbg.com/attachment/images/1/2018/06/yGB1pUU5SkU97WuuNJ7n517nXBUb7S.jpg','',1),(12061,1,216,41,'刺激的在后面，我的直播房号：5237',0,0,2,0,0,1562816760,'','',0),(12062,1,216,43,'您有一张新的图片消息！',0,0,2,0,0,1562816600,'http://fk.lzmzbg.com/attachment/images/1/2018/06/W818uY88yYliJ188H7yh1UH8Kk00K1.jpg','',1),(12063,1,216,43,'您有一张新的图片消息！',0,0,2,0,0,1562816668,'http://fk.lzmzbg.com/attachment/images/1/2018/06/Ru34m2000o40x0W4c45X022C940w5u.jpg','',1),(12064,1,216,43,'您有一张新的图片消息！',0,0,2,0,0,1562816747,'http://fk.lzmzbg.com/attachment/images/1/2018/06/nv8Qh579X75h6Rrr9V2V6A000Vvv79.jpg','',1),(12065,1,214,81,'来看我直播脱衣舞吗',0,0,2,0,0,1562816851,'','',0),(12066,1,213,89,'回句话',0,0,2,0,0,1562816836,'','',0),(12067,1,213,89,'不在吗，在了就回我',0,0,2,0,0,1562816916,'','',0),(12068,1,214,81,'您有一张新的图片消息！',0,0,2,0,0,1562816911,'http://fk.lzmzbg.com/attachment/images/1/2018/06/Rc38W9sd7v3pez8ssSTsN3WWu78psu.jpg','',1),(12069,1,216,101,'求包养',0,0,2,0,0,1562816850,'','',0),(12070,1,216,101,'您有一张新的图片消息！',0,0,2,0,0,1562816910,'http://fk.lzmzbg.com/attachment/images/1/2018/06/fgxKoWLf6LwP55ZBx53ZkkbwG0eEWE.jpg','',1),(12071,1,215,84,'你好',0,0,2,0,0,1562816815,'','',0),(12072,1,215,84,'在干吗呢',0,0,2,0,0,1562816879,'','',0),(12073,1,215,84,'你叫什么名字？有照片吗',0,0,2,0,0,1562816943,'','',0),(12074,1,216,43,'您有一张新的图片消息！',0,0,2,0,0,1562816827,'http://fk.lzmzbg.com/attachment/images/1/2018/06/mORZO9xO9kuEzEh6900HcIexAEe9lh.jpg','',1),(12075,1,216,43,'这是我拍下的一些照片，看直播可以看更多的呦',0,0,2,0,0,1562816906,'','',0),(12076,1,216,101,'老板有意的话就联系我，照片是我本人',0,0,2,0,0,1562816987,'','',0),(12077,1,214,81,'您有一张新的图片消息！',0,0,2,0,0,1562816971,'http://fk.lzmzbg.com/attachment/images/1/2018/06/KNH70AK70KdHn11OV42A72DU00yK7Y.jpg','',1),(12078,1,216,43,'加入我的直播房号：6172',0,0,2,0,0,1562816982,'','',0),(12079,1,215,84,'您有一张新的图片消息！',0,0,2,0,0,1562817011,'http://fk.lzmzbg.com/attachment/images/1/2018/06/dJJRrQgKQTIKED6eOJrrjCCx6zXRrk.jpg','',1),(12080,1,213,70,'你喜欢奶大还是奶小的',0,0,2,0,0,1562817070,'','',0),(12081,1,216,101,'一月付我1万5就可以，我给你很好的服务',0,0,2,0,0,1562817047,'','',0),(12082,1,214,81,'您有一张新的图片消息！',0,0,2,0,0,1562817051,'http://fk.lzmzbg.com/attachment/images/1/2018/06/y9d0w0DzI98usJ37UcmsIsTDu3wJtz.jpg','',1),(12083,1,215,84,'这是我的照片，您的发一下好嘛，交个朋友',0,0,2,0,0,1562817074,'','',0),(12084,1,213,7,'您有一张新的图片消息！',0,0,2,0,0,1562820443,'http://127.0.0.1/attachment/images/1/2018/06/mORZO9xO9kuEzEh6900HcIexAEe9lh.jpg','',1),(12085,1,213,7,'这是我拍下的一些照片，看直播可以看更多的呦',0,0,2,0,0,1562820511,'','',0),(12086,1,213,7,'加入我的直播房号：6172',0,0,2,0,0,1562820571,'','',0),(12087,1,213,7,'帅哥您好我是主播6172',0,0,2,0,0,1562820085,'','',0),(12088,1,213,7,'我表演制服妹的，还有一些道具',0,0,2,0,0,1562820156,'','',0),(12089,1,213,7,'您有一张新的图片消息！',0,0,2,0,0,1562820228,'http://127.0.0.1/attachment/images/1/2018/06/W818uY88yYliJ188H7yh1UH8Kk00K1.jpg','',1),(12090,1,213,7,'您有一张新的图片消息！',0,0,2,0,0,1562820301,'http://127.0.0.1/attachment/images/1/2018/06/Ru34m2000o40x0W4c45X022C940w5u.jpg','',1),(12091,1,213,7,'您有一张新的图片消息！',0,0,2,0,0,1562820365,'http://127.0.0.1/attachment/images/1/2018/06/nv8Qh579X75h6Rrr9V2V6A000Vvv79.jpg','',1),(12092,1,213,16,'帅哥在线吗',0,0,2,0,0,1562819879,'','',0),(12093,1,213,16,'帅哥。。。',0,0,2,0,0,1562819950,'','',0),(12094,1,213,16,'发一下',0,0,2,0,0,1562819654,'','',0),(12095,1,213,16,'你位置在哪里',0,0,2,0,0,1562819733,'','',0),(12096,1,213,16,'请我吃个饭怎样呢',0,0,2,0,0,1562819809,'','',0),(12097,1,213,16,'您有一张新的图片消息！',0,0,2,0,0,1562819443,'http://127.0.0.1/attachment/images/1/2018/06/xHre26442f6CW0C69115R5C4WFa2i6.jpg','',1),(12098,1,213,16,'同城约么',0,0,2,0,0,1562819514,'','',0),(12099,1,213,16,'有没有微信呢',0,0,2,0,0,1562819593,'','',0),(12100,1,213,28,'好了没有，发你的JJ照片给我',0,0,2,0,0,1562819242,'','',0),(12101,1,213,28,'速度一点呗，等人好累啊',0,0,2,0,0,1562819302,'','',0),(12102,1,213,28,'怎样，发你的JJ照片给我，我看你的大不大，可以约',0,0,2,0,0,1562819173,'','',0),(12103,1,213,55,'你的照片，发来看',0,0,2,0,0,1562818687,'','',0),(12104,1,213,55,'- -！',0,0,2,0,0,1562818763,'','',0),(12105,1,213,28,'你喜欢奶大还是奶小的',0,0,2,0,0,1562818890,'','',0),(12106,1,213,28,'我的奶蛮大哦，可以当奶妈了，哈哈',0,0,2,0,0,1562818955,'','',0),(12107,1,213,28,'你有没有照片',0,0,2,0,0,1562819033,'','',0),(12108,1,213,28,'您有一张新的图片消息！',0,0,2,0,0,1562819103,'http://127.0.0.1/attachment/images/1/2018/06/Rd1zCSUs8vBcvwYV4YWyVF68DHFT6m.jpg','',1),(12109,1,213,55,'直接点好吧，爽爽快快见一次面，适合的开房去',0,0,2,0,0,1562818612,'','',0),(12110,1,213,55,'快发你的',0,0,2,0,0,1562818486,'','',0),(12111,1,213,55,'你在上班还是读书？',0,0,2,0,0,1562818551,'','',0),(12112,1,213,58,'这只是开头，后面精彩刺激的更多',0,0,2,0,0,1562818043,'','',0),(12113,1,213,58,'进直播间找我搜索我房号6824就可以看了',0,0,2,0,0,1562818114,'','',0),(12114,1,213,55,'哥哥你几岁',0,0,2,0,0,1562818262,'','',0),(12115,1,213,55,'有照片发来看看吗，',0,0,2,0,0,1562818341,'','',0),(12116,1,213,55,'您有一张新的图片消息！',0,0,2,0,0,1562818420,'http://127.0.0.1/attachment/images/1/2018/06/TqMYeEE43C1fYAf0FY3aXEaE7CcAqs.jpg','',1),(12117,1,213,58,'您有一张新的图片消息！',0,0,2,0,0,1562817976,'http://127.0.0.1/attachment/images/1/2018/06/t91xlxn6pU5z1xVzNV6ep5UuV229V3.jpg','',1),(12118,1,213,58,'帅哥您好',0,0,2,0,0,1562817617,'','',0),(12119,1,213,58,'有兴趣看直播吗',0,0,2,0,0,1562817692,'','',0),(12120,1,213,58,'什么都表演的哦，我给你发一些我拍下的照片哈',0,0,2,0,0,1562817763,'','',0),(12121,1,213,58,'您有一张新的图片消息！',0,0,2,0,0,1562817836,'http://127.0.0.1/attachment/images/1/2018/06/oJ2aOtj2I628Jy2Y90jC6oX9y9iayj.jpg','',1),(12122,1,213,58,'您有一张新的图片消息！',0,0,2,0,0,1562817914,'http://127.0.0.1/attachment/images/1/2018/06/RCpge3X4vidP3DzePD7tdc3IE4ltre.jpg','',1),(12123,1,213,70,'好了没有，发你的JJ照片给我',0,0,2,0,0,1562817398,'','',0),(12124,1,213,70,'速度一点呗，等人好累啊',0,0,2,0,0,1562817466,'','',0),(12125,1,213,70,'怎样，发你的JJ照片给我，我看你的大不大，可以约',0,0,2,0,0,1562817326,'','',0),(12126,1,213,70,'你有没有照片',0,0,2,0,0,1562817195,'','',0),(12127,1,213,70,'您有一张新的图片消息！',0,0,2,0,0,1562817258,'http://127.0.0.1/attachment/images/1/2018/06/Rd1zCSUs8vBcvwYV4YWyVF68DHFT6m.jpg','',1),(12128,1,213,70,'我的奶蛮大哦，可以当奶妈了，哈哈',0,0,2,0,0,1562817132,'','',0),(12129,1,216,77,'您有一张新的图片消息！',0,0,2,0,0,1562817920,'http://fk.lzmzbg.com/attachment/images/1/2018/06/ZbusTzyhZ4CqTTKy47dTl9sTTS79sQ.jpg','',1),(12130,1,216,77,'您有一张新的图片消息！',0,0,2,0,0,1562817993,'http://fk.lzmzbg.com/attachment/images/1/2018/06/OAv4IJG8g8qq8q43QSn488S4mVWq3M.jpg','',1),(12131,1,216,77,'您有一张新的图片消息！',0,0,2,0,0,1562818053,'http://fk.lzmzbg.com/attachment/images/1/2018/06/rZuoU8oVkuUMu3KLv3ZLlKOTIZUull.jpg','',1),(12132,1,216,92,'您有一张新的图片消息！',0,0,2,0,0,1562817406,'http://fk.lzmzbg.com/attachment/images/1/2018/06/KNH70AK70KdHn11OV42A72DU00yK7Y.jpg','',1),(12133,1,216,92,'您有一张新的图片消息！',0,0,2,0,0,1562817481,'http://fk.lzmzbg.com/attachment/images/1/2018/06/y9d0w0DzI98usJ37UcmsIsTDu3wJtz.jpg','',1),(12134,1,216,92,'您有一张新的图片消息！',0,0,2,0,0,1562817556,'http://fk.lzmzbg.com/attachment/images/1/2018/06/yGB1pUU5SkU97WuuNJ7n517nXBUb7S.jpg','',1),(12135,1,216,92,'刺激的在后面，我的直播房号：5237',0,0,2,0,0,1562817628,'','',0),(12136,1,216,77,'halo',0,0,2,0,0,1562817786,'','',0),(12137,1,216,77,'我是狂野主播，过来看看嘛，我给您发照片，有兴趣了加入我直播',0,0,2,0,0,1562817855,'','',0),(12138,1,214,81,'您有一张新的图片消息！',0,0,2,0,0,1562817125,'http://fk.lzmzbg.com/attachment/images/1/2018/06/yGB1pUU5SkU97WuuNJ7n517nXBUb7S.jpg','',1),(12139,1,214,81,'刺激的在后面，我的直播房号：5237',0,0,2,0,0,1562817187,'','',0),(12140,1,214,79,'您有一条新的语音消息！',0,0,2,0,0,1562817341,'','http://fk.lzmzbg.com/attachment/audios/1/2018/06/VSCJ6w8wlOacq6XH6hHPsy9Q6aoa6d.mp3',2),(12141,1,214,79,'您有一条新的语音消息！',0,0,2,0,0,1562817421,'','http://fk.lzmzbg.com/attachment/audios/1/2018/06/GKthH1miZn0S00ISDiZ3iT5s5oDKI3.mp3',2),(12142,1,214,79,'一夜情约吗',0,0,2,0,0,1562817485,'','',0),(12143,1,214,79,'您有一张新的图片消息！',0,0,2,0,0,1562817547,'http://fk.lzmzbg.com/attachment/images/1/2018/06/V255R5s6kg9pKkGr69kZ420t01Gpvg.jpg','',1),(12144,1,214,79,'您有一张新的图片消息！',0,0,2,0,0,1562817608,'http://fk.lzmzbg.com/attachment/images/1/2018/06/qdUzziIex3ElGLUYGZuYawrEaa0LwP.jpg','',1),(12145,1,214,79,'结婚前有必要先测试下吗？',0,0,2,0,0,1562817685,'','',0),(12146,1,214,79,'你可以语音吗',0,0,2,0,0,1562817758,'','',0),(12147,1,214,79,'接一下视频',0,0,2,0,0,1562817822,'','',0),(12148,1,214,77,'帅哥您好',0,0,2,0,0,1562817961,'','',0),(12149,1,214,77,'有兴趣看直播吗',0,0,2,0,0,1562818039,'','',0),(12150,1,214,77,'什么都表演的哦，我给你发一些我拍下的照片哈',0,0,2,0,0,1562818105,'','',0),(12151,1,214,77,'您有一张新的图片消息！',0,0,2,0,0,1562818185,'http://fk.lzmzbg.com/attachment/images/1/2018/06/oJ2aOtj2I628Jy2Y90jC6oX9y9iayj.jpg','',1),(12152,1,214,77,'您有一张新的图片消息！',0,0,2,0,0,1562818265,'http://fk.lzmzbg.com/attachment/images/1/2018/06/RCpge3X4vidP3DzePD7tdc3IE4ltre.jpg','',1),(12153,1,214,77,'您有一张新的图片消息！',0,0,2,0,0,1562818333,'http://fk.lzmzbg.com/attachment/images/1/2018/06/t91xlxn6pU5z1xVzNV6ep5UuV229V3.jpg','',1),(12154,1,214,77,'这只是开头，后面精彩刺激的更多',0,0,2,0,0,1562818400,'','',0),(12155,1,214,77,'进直播间找我搜索我房号6824就可以看了',0,0,2,0,0,1562818462,'','',0),(12156,1,214,68,'有没有12公分起的呢',0,0,2,0,0,1562818618,'','',0),(12157,1,214,68,'您有一张新的图片消息！',0,0,2,0,0,1562818679,'http://fk.lzmzbg.com/attachment/images/1/2018/06/XMxjMM2xvEzejKdj1erdqJxQjO6eo1.jpg','',1),(12158,1,214,68,'这是我本人',0,0,2,0,0,1562818754,'','',0),(12159,1,214,68,'有12公分起的话就约哈，没有就不用回了',0,0,2,0,0,1562818817,'','',0),(12160,1,214,58,'您有一条新的语音消息！',0,0,2,0,0,1562818969,'','http://fk.lzmzbg.com/attachment/audios/1/2018/06/JFC00bMCcCAoC5znAFG8NNNggwc5wA.wav',2),(12161,1,214,58,'你那里的',0,0,2,0,0,1562819044,'','',0),(12162,1,214,58,'您有一张新的图片消息！',0,0,2,0,0,1562819106,'http://fk.lzmzbg.com/attachment/images/1/2018/06/r9qW9K2kNfF08QkQn8M2793w8k7f92.jpg','',1),(12163,1,214,58,'这个是我，你有照片吗',0,0,2,0,0,1562819181,'','',0),(12164,1,214,58,'在吗，发一下你的照片给我看看',0,0,2,0,0,1562819260,'','',0),(12165,1,214,58,'你在这附近的吗',0,0,2,0,0,1562819333,'','',0),(12166,1,214,58,'在吗回句话',0,0,2,0,0,1562819409,'','',0),(12167,1,214,44,'您有一条新的语音消息！',0,0,2,0,0,1562819552,'','http://fk.lzmzbg.com/attachment/audios/1/2018/06/fBn4P4C44NHAWPPg4hLwHh5C55H7ln.mp3',2),(12168,1,214,44,'我觉得我不是好女人',0,0,2,0,0,1562819632,'','',0),(12169,1,214,44,'您有一张新的图片消息！',0,0,2,0,0,1562819706,'http://fk.lzmzbg.com/attachment/images/1/2018/06/g1RHE1W110iixoiwz2HAxWaqvY0HRS.jpg','',1),(12170,1,214,44,'您有一张新的图片消息！',0,0,2,0,0,1562819785,'http://fk.lzmzbg.com/attachment/images/1/2018/06/t7NqnND4L7xyN4P3407PaB53D55ba5.jpg','',1),(12171,1,214,44,'您有一张新的图片消息！',0,0,2,0,0,1562819864,'http://fk.lzmzbg.com/attachment/images/1/2018/06/BaUa23uGVkjU3vJm37k9Ggh3HEuu0Z.jpg','',1),(12172,1,214,44,'最近不开心，只想找酒喝，你请客吗',0,0,2,0,0,1562819924,'','',0),(12173,1,214,44,'发你的位置给我，我们出去喝酒',0,0,2,0,0,1562819998,'','',0),(12174,1,214,44,'发语音给你，你怎么拒绝了',0,0,2,0,0,1562820058,'','',0),(12175,1,214,44,'微信发我，我加你',0,0,2,0,0,1562820138,'','',0),(12176,1,214,26,'你好，有需要看直播吗？',0,0,2,0,0,1562820275,'','',0),(12177,1,214,26,'我是表演水上鸳鸯的',0,0,2,0,0,1562820355,'','',0),(12178,1,214,26,'我的直播房号8888，记得来关注我哦，我现在发一些照片给你看',0,0,2,0,0,1562820432,'','',0),(12179,1,214,26,'您有一张新的图片消息！',0,0,2,0,0,1562820500,'http://fk.lzmzbg.com/attachment/images/1/2018/06/s9sbsK49bPw5w8sR4N9rKOGd9BSS7z.jpg','',1),(12180,1,214,26,'您有一张新的图片消息！',0,0,2,0,0,1562820578,'http://fk.lzmzbg.com/attachment/images/1/2018/06/mnG9aat9AxMb7nN9OzM3of3UqQz7Ga.jpg','',1),(12181,1,214,26,'您有一张新的图片消息！',0,0,2,0,0,1562820656,'http://fk.lzmzbg.com/attachment/images/1/2018/06/htOQU1lNtNoaZnofluo1l6KK8Klqq6.jpg','',1),(12182,1,214,26,'您有一张新的图片消息！',0,0,2,0,0,1562820720,'http://fk.lzmzbg.com/attachment/images/1/2018/06/UWL7Dc4SwT1DyM0Wlwkczq6mtNv0D1.jpg','',1),(12183,1,214,26,'只能给你发这么多哦，喜欢的话来看我直播房号：8888',0,0,2,0,0,1562820784,'','',0),(12184,1,214,14,'您有一张新的图片消息！',0,0,2,0,0,1562820924,'http://fk.lzmzbg.com/attachment/images/1/2018/06/G1A48hrZknDT2QXF181Fk8qIdR02zM.jpg','',1),(12185,1,214,14,'您有一条新的语音消息！',0,0,2,0,0,1562820985,'','http://fk.lzmzbg.com/attachment/audios/1/2018/06/n38f6dHjjjrbdjVj5BD2J1Hrjv5aFa.wav',2),(12186,1,214,14,'你有没有女朋友',0,0,2,0,0,1562821064,'','',0),(12187,1,214,14,'我叫李慧娟，你呢',0,0,2,0,0,1562821132,'','',0),(12188,1,214,14,'你在哪里上班',0,0,2,0,0,1562821203,'','',0),(12189,1,214,14,'在不在，方便视频吗',0,0,2,0,0,1562821266,'','',0),(12190,1,214,14,'你好，？？',0,0,2,0,0,1562821333,'','',0),(12191,1,214,14,'在的就回一句话',0,0,2,0,0,1562821412,'','',0),(12192,1,216,77,'来捧场哦，我给您好好表演',0,0,2,0,0,1562818201,'','',0),(12193,1,216,77,'我的直播间房号是：7315 狂野小妹',0,0,2,0,0,1562818123,'','',0),(12194,1,216,92,'您有一张新的图片消息！',0,0,2,0,0,1562817339,'http://fk.lzmzbg.com/attachment/images/1/2018/06/Rc38W9sd7v3pez8ssSTsN3WWu78psu.jpg','',1),(12195,1,216,101,'有微信就发一下，我加你',0,0,2,0,0,1562817120,'','',0),(12196,1,216,92,'来看我直播脱衣舞吗',0,0,2,0,0,1562817259,'','',0),(12197,1,215,84,'你在这附近吗，我看平台这显示您距离很近',0,0,2,0,0,1562817144,'','',0),(12198,1,215,84,'人呢，在不在',0,0,2,0,0,1562817219,'','',0),(12199,1,215,84,'微信聊吧，发你微信给我，这平台老是断线不太好',0,0,2,0,0,1562817287,'','',0),(12200,1,215,78,'您有一条新的语音消息！',0,0,2,0,0,1562817433,'','http://fk.lzmzbg.com/attachment/audios/1/2018/06/JFC00bMCcCAoC5znAFG8NNNggwc5wA.wav',2),(12201,1,215,78,'你那里的',0,0,2,0,0,1562817497,'','',0),(12202,1,215,78,'您有一张新的图片消息！',0,0,2,0,0,1562817570,'http://fk.lzmzbg.com/attachment/images/1/2018/06/r9qW9K2kNfF08QkQn8M2793w8k7f92.jpg','',1),(12203,1,215,78,'这个是我，你有照片吗',0,0,2,0,0,1562817630,'','',0),(12204,1,215,78,'在吗，发一下你的照片给我看看',0,0,2,0,0,1562817697,'','',0),(12205,1,215,78,'你在这附近的吗',0,0,2,0,0,1562817765,'','',0),(12206,1,215,78,'在吗回句话',0,0,2,0,0,1562817836,'','',0),(12207,1,215,69,'你好，我是主播小龙女',0,0,2,0,0,1562817973,'','',0),(12208,1,215,69,'我是表演茄子的，请问加入我直播间吗',0,0,2,0,0,1562818053,'','',0),(12209,1,215,69,'您有一张新的图片消息！',0,0,2,0,0,1562818133,'http://fk.lzmzbg.com/attachment/images/1/2018/06/HY7LyYbN8K2ZnyKln22yD1P7mxb177.jpg','',1),(12210,1,215,69,'您有一张新的图片消息！',0,0,2,0,0,1562818199,'http://fk.lzmzbg.com/attachment/images/1/2018/06/NgW9wywYwFWBE9W99yh9HG06WRb7Hv.jpg','',1),(12211,1,215,69,'您有一张新的图片消息！',0,0,2,0,0,1562818261,'http://fk.lzmzbg.com/attachment/images/1/2018/06/a6gWmum6gsVwcYDuW4gfR1iCI5Z51I.jpg','',1),(12212,1,215,69,'记住我的房号哦 9622',0,0,2,0,0,1562818340,'','',0),(12213,1,215,64,'来看我直播脱衣舞吗',0,0,2,0,0,1562818490,'','',0),(12214,1,215,64,'您有一张新的图片消息！',0,0,2,0,0,1562818560,'http://fk.lzmzbg.com/attachment/images/1/2018/06/Rc38W9sd7v3pez8ssSTsN3WWu78psu.jpg','',1),(12215,1,215,64,'您有一张新的图片消息！',0,0,2,0,0,1562818628,'http://fk.lzmzbg.com/attachment/images/1/2018/06/KNH70AK70KdHn11OV42A72DU00yK7Y.jpg','',1),(12216,1,215,64,'您有一张新的图片消息！',0,0,2,0,0,1562818690,'http://fk.lzmzbg.com/attachment/images/1/2018/06/y9d0w0DzI98usJ37UcmsIsTDu3wJtz.jpg','',1),(12217,1,215,64,'您有一张新的图片消息！',0,0,2,0,0,1562818766,'http://fk.lzmzbg.com/attachment/images/1/2018/06/yGB1pUU5SkU97WuuNJ7n517nXBUb7S.jpg','',1),(12218,1,215,64,'刺激的在后面，我的直播房号：5237',0,0,2,0,0,1562818840,'','',0),(12219,1,215,59,'您有一条新的语音消息！',0,0,2,0,0,1562818984,'','http://fk.lzmzbg.com/attachment/audios/1/2018/06/b9KOC9ni57a91O0o0W54WWAoO7oKCi.wav',2),(12220,1,215,59,'您有一张新的图片消息！',0,0,2,0,0,1562819047,'http://fk.lzmzbg.com/attachment/images/1/2018/06/L6rNkYD61FdNIV66fRYIfdKJNnI6kB.jpg','',1),(12221,1,215,59,'您有一张新的图片消息！',0,0,2,0,0,1562819109,'http://fk.lzmzbg.com/attachment/images/1/2018/06/BtBg4B95I42zZ44w953I16YDgtzxRI.jpg','',1),(12222,1,215,59,'你有什么可烂漫的事吗？说来听听',0,0,2,0,0,1562819179,'','',0),(12223,1,215,59,'我觉得合适的话，可以陪你',0,0,2,0,0,1562819250,'','',0),(12224,1,215,59,'？？？？',0,0,2,0,0,1562819310,'','',0),(12225,1,215,59,'在嘛',0,0,2,0,0,1562819385,'','',0),(12226,1,215,59,'失踪了吗，在不在',0,0,2,0,0,1562819458,'','',0),(12227,1,215,49,'您有一张新的图片消息！',0,0,2,0,0,1562819605,'http://fk.lzmzbg.com/attachment/images/1/2018/06/G1A48hrZknDT2QXF181Fk8qIdR02zM.jpg','',1),(12228,1,215,49,'您有一条新的语音消息！',0,0,2,0,0,1562819683,'','http://fk.lzmzbg.com/attachment/audios/1/2018/06/n38f6dHjjjrbdjVj5BD2J1Hrjv5aFa.wav',2),(12229,1,215,49,'你有没有女朋友',0,0,2,0,0,1562819745,'','',0),(12230,1,215,49,'我叫李慧娟，你呢',0,0,2,0,0,1562819812,'','',0),(12231,1,215,49,'你在哪里上班',0,0,2,0,0,1562819876,'','',0),(12232,1,215,49,'在不在，方便视频吗',0,0,2,0,0,1562819937,'','',0),(12233,1,215,49,'你好，？？',0,0,2,0,0,1562820006,'','',0),(12234,1,215,49,'在的就回一句话',0,0,2,0,0,1562820067,'','',0),(12235,1,215,13,'你好，有需要看直播吗？',0,0,2,0,0,1562820201,'','',0),(12236,1,215,13,'我是表演水上鸳鸯的',0,0,2,0,0,1562820263,'','',0),(12237,1,215,13,'我的直播房号8888，记得来关注我哦，我现在发一些照片给你看',0,0,2,0,0,1562820332,'','',0),(12238,1,215,13,'您有一张新的图片消息！',0,0,2,0,0,1562820409,'http://fk.lzmzbg.com/attachment/images/1/2018/06/s9sbsK49bPw5w8sR4N9rKOGd9BSS7z.jpg','',1),(12239,1,215,13,'您有一张新的图片消息！',0,0,2,0,0,1562820470,'http://fk.lzmzbg.com/attachment/images/1/2018/06/mnG9aat9AxMb7nN9OzM3of3UqQz7Ga.jpg','',1),(12240,1,215,13,'您有一张新的图片消息！',0,0,2,0,0,1562820533,'http://fk.lzmzbg.com/attachment/images/1/2018/06/htOQU1lNtNoaZnofluo1l6KK8Klqq6.jpg','',1),(12241,1,215,13,'您有一张新的图片消息！',0,0,2,0,0,1562820608,'http://fk.lzmzbg.com/attachment/images/1/2018/06/UWL7Dc4SwT1DyM0Wlwkczq6mtNv0D1.jpg','',1),(12242,1,215,13,'只能给你发这么多哦，喜欢的话来看我直播房号：8888',0,0,2,0,0,1562820670,'','',0),(12243,1,215,8,'您有一条新的语音消息！',0,0,2,0,0,1562820821,'','http://fk.lzmzbg.com/attachment/audios/1/2018/06/FrURF2Bi319RR5FfraRRFcrC2Zm5z1.mp3',2),(12244,1,215,8,'您有一条新的语音消息！',0,0,2,0,0,1562820899,'','http://fk.lzmzbg.com/attachment/audios/1/2018/06/euyuPv7jCxJ7fwKQfm5jfxPllFy5HC.mp3',2),(12245,1,215,8,'大家到这里来都是找一夜情的，我就直接点哦，你也发一下直接点的给我，适合我们的一起',0,0,2,0,0,1562820975,'','',0),(12246,1,215,8,'您有一张新的图片消息！',0,0,2,0,0,1562821039,'http://fk.lzmzbg.com/attachment/images/1/2018/06/nbs8IzIB5CIbgGSUYIy1UqGBsGb56I.jpg','',1),(12247,1,215,8,'您有一张新的图片消息！',0,0,2,0,0,1562821115,'http://fk.lzmzbg.com/attachment/images/1/2018/06/CgN0o0404H7C7D4p8gnG3DOdp7dG47.jpg','',1),(12248,1,215,8,'您有一张新的图片消息！',0,0,2,0,0,1562821187,'http://fk.lzmzbg.com/attachment/images/1/2018/06/If7D90Xxu5d7R9xUP0zUpXuXGxHUT7.jpg','',1),(12249,1,215,8,'你也发出你的，适合的我们就开房去',0,0,2,0,0,1562821267,'','',0),(12250,1,215,8,'发了吗，还是卡了',0,0,2,0,0,1562821342,'','',0),(12251,1,215,8,'？？？？？？',0,0,2,0,0,1562821407,'','',0),(12252,1,216,77,'亲，在吗',0,0,2,0,0,1562818272,'','',0),(12253,1,216,77,'Did you come to me?',0,0,2,0,0,1562818351,'','',0),(12254,1,216,77,'I can listen to the command, come here',0,0,2,0,0,1562818412,'','',0),(12255,1,216,73,'你喜欢奶大还是奶小的',0,0,2,0,0,1562818554,'','',0),(12256,1,216,73,'我的奶蛮大哦，可以当奶妈了，哈哈',0,0,2,0,0,1562818627,'','',0),(12257,1,216,73,'你有没有照片',0,0,2,0,0,1562818702,'','',0),(12258,1,216,73,'您有一张新的图片消息！',0,0,2,0,0,1562818762,'http://fk.lzmzbg.com/attachment/images/1/2018/06/Rd1zCSUs8vBcvwYV4YWyVF68DHFT6m.jpg','',1),(12259,1,216,73,'怎样，发你的JJ照片给我，我看你的大不大，可以约',0,0,2,0,0,1562818823,'','',0),(12260,1,216,73,'好了没有，发你的JJ照片给我',0,0,2,0,0,1562818903,'','',0),(12261,1,216,73,'速度一点呗，等人好累啊',0,0,2,0,0,1562818970,'','',0),(12262,1,216,70,'有没有12公分起的呢',0,0,2,0,0,1562819118,'','',0),(12263,1,216,70,'您有一张新的图片消息！',0,0,2,0,0,1562819185,'http://fk.lzmzbg.com/attachment/images/1/2018/06/XMxjMM2xvEzejKdj1erdqJxQjO6eo1.jpg','',1),(12264,1,216,70,'这是我本人',0,0,2,0,0,1562819254,'','',0),(12265,1,216,70,'有12公分起的话就约哈，没有就不用回了',0,0,2,0,0,1562819315,'','',0),(12266,1,216,35,'您有一条新的语音消息！',0,0,2,0,0,1562819460,'','http://fk.lzmzbg.com/attachment/audios/1/2018/06/z51195hil57Fc5c5cfGCJKv7C6UMIj.mp3',2),(12267,1,216,35,'发你相片认识一下',0,0,2,0,0,1562819535,'','',0),(12268,1,216,35,'您有一张新的图片消息！',0,0,2,0,0,1562819596,'http://fk.lzmzbg.com/attachment/images/1/2018/06/rvB1ofTf7H00RFBrO1U4ohrT4a0tNu.jpg','',1),(12269,1,216,35,'这是我的照片，你的呢',0,0,2,0,0,1562819663,'','',0),(12270,1,216,35,'您有一张新的图片消息！',0,0,2,0,0,1562819730,'http://fk.lzmzbg.com/attachment/images/1/2018/06/CGf77qIu7JTfNU0IGB3T3ij5J8tofj.jpg','',1),(12271,1,216,35,'你的JJ有10公分吗',0,0,2,0,0,1562819790,'','',0),(12272,1,216,35,'您有一张新的图片消息！',0,0,2,0,0,1562819859,'http://fk.lzmzbg.com/attachment/images/1/2018/06/yRRWtr6WdFglwNtgk456rz14Ti66k6.jpg','',1),(12273,1,216,35,'你有10公分起的话，我们可以约，没有的话就算哦',0,0,2,0,0,1562819937,'','',0),(12274,1,216,35,'回句话',0,0,2,0,0,1562820010,'','',0),(12275,1,216,35,'不在吗，在了就回我',0,0,2,0,0,1562820085,'','',0),(12276,1,216,24,'帅哥在哪里',0,0,2,0,0,1562820237,'','',0),(12277,1,216,24,'可以坚持30分钟起吗',0,0,2,0,0,1562820303,'','',0),(12278,1,216,24,'您有一张新的图片消息！',0,0,2,0,0,1562820379,'http://fk.lzmzbg.com/attachment/images/1/2018/06/vKUk29KOJusZjUow902WOjOiRs0jRp.jpg','',1),(12279,1,216,24,'你有照片发来看看吗',0,0,2,0,0,1562820451,'','',0),(12280,1,216,24,'。。。。。',0,0,2,0,0,1562820523,'','',0),(12281,1,216,24,'怎么你们男的都不回话的',0,0,2,0,0,1562820602,'','',0),(12282,1,216,24,'回一句啊',0,0,2,0,0,1562820668,'','',0),(12283,1,216,24,'在不在',0,0,2,0,0,1562820731,'','',0),(12284,1,216,20,'您有一条新的语音消息！',0,0,2,0,0,1562820885,'','http://fk.lzmzbg.com/attachment/audios/1/2018/06/b9KOC9ni57a91O0o0W54WWAoO7oKCi.wav',2),(12285,1,216,20,'您有一张新的图片消息！',0,0,2,0,0,1562820954,'http://fk.lzmzbg.com/attachment/images/1/2018/06/L6rNkYD61FdNIV66fRYIfdKJNnI6kB.jpg','',1),(12286,1,216,20,'您有一张新的图片消息！',0,0,2,0,0,1562821014,'http://fk.lzmzbg.com/attachment/images/1/2018/06/BtBg4B95I42zZ44w953I16YDgtzxRI.jpg','',1),(12287,1,216,20,'你有什么可烂漫的事吗？说来听听',0,0,2,0,0,1562821083,'','',0),(12288,1,216,20,'我觉得合适的话，可以陪你',0,0,2,0,0,1562821156,'','',0),(12289,1,216,20,'？？？？',0,0,2,0,0,1562821219,'','',0),(12290,1,216,20,'在嘛',0,0,2,0,0,1562821295,'','',0),(12291,1,216,20,'失踪了吗，在不在',0,0,2,0,0,1562821361,'','',0),(12292,1,216,14,'同城吗',0,0,2,0,0,1562821501,'','',0),(12293,1,216,14,'你几岁了',0,0,2,0,0,1562821580,'','',0),(12294,1,216,14,'是处男吗',0,0,2,0,0,1562821649,'','',0),(12295,1,216,14,'您有一张新的图片消息！',0,0,2,0,0,1562821714,'http://fk.lzmzbg.com/attachment/images/1/2018/06/GW830ezTZRGOP8GcmJR3rm0Rzmtz8U.jpg','',1),(12296,1,216,14,'您有一张新的图片消息！',0,0,2,0,0,1562821777,'http://fk.lzmzbg.com/attachment/images/1/2018/06/pIdjdyD66UYmJXzXI4Uk4V7dwjd643.jpg','',1),(12297,1,216,14,'我的身材怎样，请我去酒吧吗',0,0,2,0,0,1562821857,'','',0),(12298,1,216,14,'您有一条新的语音消息！',0,0,2,0,0,1562821923,'','http://fk.lzmzbg.com/attachment/audios/1/2018/06/CE800EfHZZRLeffRH8N5H1QfE13hFR.wav',2);
/*!40000 ALTER TABLE `ims_jy_ppp_xinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_xinxi_temp`
--

DROP TABLE IF EXISTS `ims_jy_ppp_xinxi_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_xinxi_temp` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `mid` int(10) NOT NULL DEFAULT '0',
  `sendid` int(10) NOT NULL DEFAULT '0' COMMENT '发送人员',
  `content` text,
  `zhaohuid` int(10) DEFAULT '0' COMMENT '打招呼id',
  `huifuid` int(10) DEFAULT '0' COMMENT '回复打招呼id',
  `type` int(10) DEFAULT '0' COMMENT '0为打招呼,1为会员推荐,2为最新回信,3为管理员',
  `leixing` int(10) DEFAULT '0' COMMENT '0为文本,1为图片，2为语音，3为组合',
  `media_id` varchar(255) NOT NULL,
  `picurl` text,
  `yuedu` tinyint(1) DEFAULT '0' COMMENT '0为未读,1为已读',
  `yuedutime` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `sendid` (`sendid`)
) ENGINE=MyISAM AUTO_INCREMENT=11888 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_xinxi_temp`
--

LOCK TABLES `ims_jy_ppp_xinxi_temp` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_xinxi_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_xinxi_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_xuni_member`
--

DROP TABLE IF EXISTS `ims_jy_ppp_xuni_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_xuni_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) NOT NULL,
  `dyid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_xuni_member`
--

LOCK TABLES `ims_jy_ppp_xuni_member` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_xuni_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_xuni_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_xuni_pay`
--

DROP TABLE IF EXISTS `ims_jy_ppp_xuni_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_xuni_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `name` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_xuni_pay`
--

LOCK TABLES `ims_jy_ppp_xuni_pay` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_xuni_pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jy_ppp_xuni_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_xunithumb`
--

DROP TABLE IF EXISTS `ims_jy_ppp_xunithumb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_xunithumb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `sex` int(2) NOT NULL COMMENT '1为男,2为女',
  `avatar` int(2) NOT NULL DEFAULT '0' COMMENT '1为头像,0为普通',
  `thumb` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=827 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_xunithumb`
--

LOCK TABLES `ims_jy_ppp_xunithumb` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_xunithumb` DISABLE KEYS */;
INSERT INTO `ims_jy_ppp_xunithumb` VALUES (414,1,2,0,'images/jy_ppp/xuni/1/6b1cb522g90749125d63d&690.jpg'),(415,1,2,0,'images/jy_ppp/xuni/1/6b1cb522g9074913517b3&690.jpg'),(416,1,2,0,'images/jy_ppp/xuni/1/6b1cb522g907491445f23&690.jpg'),(417,1,2,0,'images/jy_ppp/xuni/1/6b1cb522g907491816cd5&690.jpg'),(418,10,2,0,'images/jy_ppp/xuni/10/14d7912397dda1441dcec6bcb4b7d0a20df486fd.png'),(419,10,2,0,'images/jy_ppp/xuni/10/7d380cd7912397dd0ebe320a5f82b2b7d1a287fd.png'),(420,10,2,0,'images/jy_ppp/xuni/10/892397dda144ad34e8782d89d6a20cf430ad85fd.png'),(421,10,2,0,'images/jy_ppp/xuni/10/8fdda144ad345982004d4f9c0af431adcaef84fd.png'),(422,100,2,0,'images/jy_ppp/xuni/100/1-1505030IG0-50.jpg'),(423,100,2,0,'images/jy_ppp/xuni/100/1-1505030IG0.jpg'),(424,100,2,0,'images/jy_ppp/xuni/100/1-1505030IG5.jpg'),(425,101,2,0,'images/jy_ppp/xuni/101/1-1505010S300.jpg'),(426,101,2,0,'images/jy_ppp/xuni/101/1-1505020P412.jpg'),(427,101,2,0,'images/jy_ppp/xuni/101/1-1505020P414.jpg'),(428,101,2,0,'images/jy_ppp/xuni/101/1-1505020P415.jpg'),(429,102,2,0,'images/jy_ppp/xuni/102/1-15042PQ049.jpg'),(430,102,2,0,'images/jy_ppp/xuni/102/1-15042PQ053-50.jpg'),(431,103,2,0,'images/jy_ppp/xuni/103/1-15042FI553-50.jpg'),(432,103,2,0,'images/jy_ppp/xuni/103/1-15042FI553.jpg'),(433,103,2,0,'images/jy_ppp/xuni/103/1-15042FI554.jpg'),(434,103,2,0,'images/jy_ppp/xuni/103/1-15042FI555-50.jpg'),(435,103,2,0,'images/jy_ppp/xuni/103/1-15042FI555.jpg'),(436,104,2,0,'images/jy_ppp/xuni/104/1-1504261kasdkaskd23R7.jpg'),(437,104,2,0,'images/jy_ppp/xuni/104/1-1504dsfsdf26123R5.jpg'),(438,105,2,0,'images/jy_ppp/xuni/105/1-1504240J539.jpg'),(439,105,2,0,'images/jy_ppp/xuni/105/1-1504240J541-50.jpg'),(440,105,2,0,'images/jy_ppp/xuni/105/1-1504240J541.jpg'),(441,106,2,0,'images/jy_ppp/xuni/106/1-1504230K635.jpg'),(442,106,2,0,'images/jy_ppp/xuni/106/1-1504230K637-50.jpg'),(443,106,2,0,'images/jy_ppp/xuni/106/1-1504230K638.jpg'),(444,107,2,0,'images/jy_ppp/xuni/107/1-1504220K210.jpg'),(445,107,2,0,'images/jy_ppp/xuni/107/1-1504220K211.jpg'),(446,107,2,0,'images/jy_ppp/xuni/107/1-1504220K212.jpg'),(447,107,2,0,'images/jy_ppp/xuni/107/1-1504220K213-50.jpg'),(448,108,2,0,'images/jy_ppp/xuni/108/1-1504210P117.jpg'),(449,108,2,0,'images/jy_ppp/xuni/108/1-1504210P119.jpg'),(450,108,2,0,'images/jy_ppp/xuni/108/1-1504210P120.jpg'),(451,109,2,0,'images/jy_ppp/xuni/109/1-1504200P214-50.jpg'),(452,109,2,0,'images/jy_ppp/xuni/109/1-1504200P214.jpg'),(453,109,2,0,'images/jy_ppp/xuni/109/1-1504200P217.jpg'),(454,109,2,0,'images/jy_ppp/xuni/109/1-1504200P219-50.jpg'),(455,109,2,0,'images/jy_ppp/xuni/109/1-1504200P220.jpg'),(456,11,2,0,'images/jy_ppp/xuni/11/7ad0f703918fa0ec2c92bf7b209759ee3d6ddb6b.jpg'),(457,11,2,0,'images/jy_ppp/xuni/11/ef03918fa0ec08fa7455c8d15fee3d6d55fbda6b.jpg'),(458,110,2,0,'images/jy_ppp/xuni/110/1-15041ZTasdasd445 (1).jpg'),(459,110,2,0,'images/jy_ppp/xuni/110/1-15041ZTtrtdg447-50 (2).jpg'),(460,110,2,0,'images/jy_ppp/xuni/110/1-15041dfgdfgZT447-50 (1).jpg'),(461,111,2,0,'images/jy_ppp/xuni/111/1-15041PU120-50.jpg'),(462,111,2,0,'images/jy_ppp/xuni/111/1-15041PU121.jpg'),(463,112,2,0,'images/jy_ppp/xuni/112/1-15041FR010.jpg'),(464,112,2,0,'images/jy_ppp/xuni/112/1-15041FR011.jpg'),(465,112,2,0,'images/jy_ppp/xuni/112/1-15041FR013.jpg'),(466,113,2,0,'images/jy_ppp/xuni/113/1-1504160R330.jpg'),(467,113,2,0,'images/jy_ppp/xuni/113/1-1504160R332-50.jpg'),(468,114,2,0,'images/jy_ppp/xuni/114/1-1504150SA1.jpg'),(469,114,2,0,'images/jy_ppp/xuni/114/1-1504150SA2-50.jpg'),(470,114,2,0,'images/jy_ppp/xuni/114/1-1504150SA2.jpg'),(471,114,2,0,'images/jy_ppp/xuni/114/1-1504150SA3.jpg'),(472,115,2,0,'images/jy_ppp/xuni/115/1-1504140UJ1.jpg'),(473,115,2,0,'images/jy_ppp/xuni/115/1-1504140UJ2.jpg'),(474,115,2,0,'images/jy_ppp/xuni/115/1-1504140UJ3-50.jpg'),(475,116,2,0,'images/jy_ppp/xuni/116/1-1504120T108-50.jpg'),(476,116,2,0,'images/jy_ppp/xuni/116/1-1504120T108.jpg'),(477,116,2,0,'images/jy_ppp/xuni/116/1-1504120T109.jpg'),(478,116,2,0,'images/jy_ppp/xuni/116/1-1504120T110-50.jpg'),(479,117,2,0,'images/jy_ppp/xuni/117/1-1504010S450.jpg'),(480,117,2,0,'images/jy_ppp/xuni/117/1-1504010S452.jpg'),(481,117,2,0,'images/jy_ppp/xuni/117/1-1504010S453.jpg'),(482,117,2,0,'images/jy_ppp/xuni/117/1-1504010S454.jpg'),(483,117,2,0,'images/jy_ppp/xuni/117/1-1504010S455.jpg'),(484,118,2,0,'images/jy_ppp/xuni/118/1-1503310TG6.jpg'),(485,118,2,0,'images/jy_ppp/xuni/118/1-1503310TG9-50.jpg'),(486,118,2,0,'images/jy_ppp/xuni/118/1-1503310TG9.jpg'),(487,119,2,0,'images/jy_ppp/xuni/119/1-150330150R7.jpg'),(488,119,2,0,'images/jy_ppp/xuni/119/1-150330150R9-50.jpg'),(489,119,2,0,'images/jy_ppp/xuni/119/1-150330150S0-50.jpg'),(490,119,2,0,'images/jy_ppp/xuni/119/1-150330150S0.jpg'),(491,12,2,0,'images/jy_ppp/xuni/12/284e251f95cad1c89b6ca8a77a3e6709c83d515e.jpg'),(492,12,2,0,'images/jy_ppp/xuni/12/3d1f95cad1c8a786f4fd1e8e6209c93d71cf505e.jpg'),(493,120,2,0,'images/jy_ppp/xuni/120/1-1503250R020.jpg'),(494,120,2,0,'images/jy_ppp/xuni/120/1-1503250R021.jpg'),(495,120,2,0,'images/jy_ppp/xuni/120/1-1503250R022.jpg'),(496,120,2,0,'images/jy_ppp/xuni/120/1-1503250R027.jpg'),(497,120,2,0,'images/jy_ppp/xuni/120/1-1503250R031.jpg'),(498,121,2,0,'images/jy_ppp/xuni/121/1-150323110236.jpg'),(499,121,2,0,'images/jy_ppp/xuni/121/1-150323110238.jpg'),(500,121,2,0,'images/jy_ppp/xuni/121/1-150323110240.jpg'),(501,121,2,0,'images/jy_ppp/xuni/121/1-150323110241.jpg'),(502,122,2,0,'images/jy_ppp/xuni/122/1-1503200Q529.jpg'),(503,122,2,0,'images/jy_ppp/xuni/122/1-1503200Q533.jpg'),(504,122,2,0,'images/jy_ppp/xuni/122/1-1503200Q538.jpg'),(505,123,2,0,'images/jy_ppp/xuni/123/1-15031ZR004.jpg'),(506,123,2,0,'images/jy_ppp/xuni/123/1-15031ZR005.jpg'),(507,123,2,0,'images/jy_ppp/xuni/123/1-15031ZR009.jpg'),(508,123,2,0,'images/jy_ppp/xuni/123/1-15031ZR014.jpg'),(509,124,2,0,'images/jy_ppp/xuni/124/1-15031PP543.jpg'),(510,124,2,0,'images/jy_ppp/xuni/124/1-15031PP548.jpg'),(511,124,2,0,'images/jy_ppp/xuni/124/1-15031PP551.jpg'),(512,125,2,0,'images/jy_ppp/xuni/125/1-150315120448.jpg'),(513,125,2,0,'images/jy_ppp/xuni/125/1-150315120449.jpg'),(514,125,2,0,'images/jy_ppp/xuni/125/1-150315120450.jpg'),(515,125,2,0,'images/jy_ppp/xuni/125/1-150315120455.jpg'),(516,126,2,0,'images/jy_ppp/xuni/126/1-150314101334.jpg'),(517,126,2,0,'images/jy_ppp/xuni/126/1-150314101335.jpg'),(518,126,2,0,'images/jy_ppp/xuni/126/1-150314101337.jpg'),(519,127,2,0,'images/jy_ppp/xuni/127/1-150313111K1.jpg'),(520,127,2,0,'images/jy_ppp/xuni/127/1-150313111K2.jpg'),(521,127,2,0,'images/jy_ppp/xuni/127/1-150313111K6.jpg'),(522,128,2,0,'images/jy_ppp/xuni/128/1-150312111059.jpg'),(523,128,2,0,'images/jy_ppp/xuni/128/1-150312111105.jpg'),(524,128,2,0,'images/jy_ppp/xuni/128/1-150312111106.jpg'),(525,129,2,0,'images/jy_ppp/xuni/129/1-150312111100.jpg'),(526,129,2,0,'images/jy_ppp/xuni/129/1-150312111102.jpg'),(527,129,2,0,'images/jy_ppp/xuni/129/1-150312111104.jpg'),(528,13,2,0,'images/jy_ppp/xuni/13/17b30f2442a7d9336c81f901ab4bd11373f00192.png'),(529,13,2,0,'images/jy_ppp/xuni/13/63899e510fb30f24e0b3f171ce95d143ad4b0392.png'),(530,13,2,0,'images/jy_ppp/xuni/13/86510fb30f2442a77a27e0d7d743ad4bd1130292.png'),(531,130,2,0,'images/jy_ppp/xuni/130/1-150311091115.jpg'),(532,130,2,0,'images/jy_ppp/xuni/130/1-150311091119.jpg'),(533,130,2,0,'images/jy_ppp/xuni/130/1-150311091125.jpg'),(534,131,2,0,'images/jy_ppp/xuni/131/1-1503100ZP1.jpg'),(535,131,2,0,'images/jy_ppp/xuni/131/1-1503100ZP3.jpg'),(536,131,2,0,'images/jy_ppp/xuni/131/1-1503100ZP5.jpg'),(537,131,2,0,'images/jy_ppp/xuni/131/1-1503100ZP7.jpg'),(538,131,2,0,'images/jy_ppp/xuni/131/1-1503100ZP8.jpg'),(539,14,2,0,'images/jy_ppp/xuni/14/127b02087bf40ad116656195512c11dfa8eccec7.jpg'),(540,14,2,0,'images/jy_ppp/xuni/14/1a087bf40ad162d9876fc46a17dfa9ec8b13cdc7.jpg'),(541,14,2,0,'images/jy_ppp/xuni/14/63f40ad162d9f2d321908299afec8a136227ccc7.jpg'),(542,15,2,0,'images/jy_ppp/xuni/15/ae003af33a87e950cc358e1f16385343fbf2b4a7.png'),(543,15,2,0,'images/jy_ppp/xuni/15/cd39b6003af33a87114f7d69c05c10385343b5a7.png'),(544,16,2,0,'images/jy_ppp/xuni/16/05950a7b02087bf4a67b389ef4d3572c11dfcf36.jpg'),(545,16,2,0,'images/jy_ppp/xuni/16/127b02087bf40ad1cf73a894512c11dfa9ecce36.jpg'),(546,17,2,0,'images/jy_ppp/xuni/17/2bfa828ba61ea8d3a3df7671910a304e241f58c1.png'),(547,17,2,0,'images/jy_ppp/xuni/17/9a8ba61ea8d3fd1f1ef4a04f364e251f94ca5fc1.png'),(548,17,2,0,'images/jy_ppp/xuni/17/a93533fa828ba61ef513ca5a4734970a314e59c1.png'),(549,18,2,0,'images/jy_ppp/xuni/18/0730e924b899a901043ed6391b950a7b0208f5b2.jpg'),(550,18,2,0,'images/jy_ppp/xuni/18/a099a9014c086e0657a3b24404087bf40ad1cbb2.jpg'),(551,18,2,0,'images/jy_ppp/xuni/18/b1014c086e061d95414dba377df40ad162d9cab2.jpg'),(552,18,2,0,'images/jy_ppp/xuni/18/f124b899a9014c082730a5aa0c7b02087bf4f4b2.jpg'),(553,19,2,0,'images/jy_ppp/xuni/19/21dbb6fd5266d0161bfe055c912bd40734fa35da.jpg'),(554,19,2,0,'images/jy_ppp/xuni/19/99cb39dbb6fd5266c1cca760ad18972bd50736da.jpg'),(555,19,2,0,'images/jy_ppp/xuni/19/aefd5266d0160924b8c2396fd20735fae7cd34da.jpg'),(556,2,2,0,'images/jy_ppp/xuni/2/asdeq2weqwzzx4354.jpg'),(557,2,2,0,'images/jy_ppp/xuni/2/fg564523423sdfsd.jpg'),(558,2,2,0,'images/jy_ppp/xuni/2/jxdsdas45fgdfgq.jpg'),(559,2,2,0,'images/jy_ppp/xuni/2/kkkosfsfrwerwerwerzxcz999.jpg'),(560,2,2,0,'images/jy_ppp/xuni/2/ksahdfakspqwe123asdzxf.jpg'),(561,2,2,0,'images/jy_ppp/xuni/2/sdfwe45r34534zx.jpg'),(562,20,2,0,'images/jy_ppp/xuni/20/0730e924b899a901f0002a411b950a7b0208f594.png'),(563,20,2,0,'images/jy_ppp/xuni/20/30381f30e924b8991209084f68061d950a7bf694.png'),(564,20,2,0,'images/jy_ppp/xuni/20/f124b899a9014c08d30e59d20c7b02087bf4f494.png'),(565,21,2,0,'images/jy_ppp/xuni/21/1246f21fbe096b6396c0a2260a338744eaf8acef.jpg'),(566,21,2,0,'images/jy_ppp/xuni/21/951001e93901213f2feab2aa52e736d12e2e95ef.jpg'),(567,21,2,0,'images/jy_ppp/xuni/21/aa119313b07eca80e490c591972397dda144832b.jpg'),(568,22,2,0,'images/jy_ppp/xuni/22/1124ab18972bd407f6abe78b7d899e510fb30953.jpg'),(569,22,2,0,'images/jy_ppp/xuni/22/c909b3de9c82d15846ee6dc7860a19d8bc3e4253.jpg'),(570,23,2,0,'images/jy_ppp/xuni/23/5e2309f7905298220b6ba4b6d1ca7bcb0a46d46f.jpg'),(571,23,2,0,'images/jy_ppp/xuni/23/673e6709c93d70cfc1ef3778fedcd100baa12baa.jpg'),(572,23,2,0,'images/jy_ppp/xuni/23/8022720e0cf3d7ca07aca203f41fbe096b63a969.jpg'),(573,23,2,0,'images/jy_ppp/xuni/23/93d4b31c8701a18bc8498f3a982f07082838fe21.jpg'),(574,23,2,0,'images/jy_ppp/xuni/23/a2a1cd11728b4710bb3860b9c5cec3fdfc0323ab.jpg'),(575,24,2,0,'images/jy_ppp/xuni/24/6b8da9773912b31bf2d5525c8018367adab4e10e.png'),(576,24,2,0,'images/jy_ppp/xuni/24/b1773912b31bb051bb9d2c5d307adab44aede00e.png'),(577,24,2,0,'images/jy_ppp/xuni/24/ee03738da9773912f29f1a14fe198618367ae20e.png'),(578,25,2,0,'images/jy_ppp/xuni/25/8a45d688d43f8794d352415fd41b0ef41bd53a15.jpg'),(579,25,2,0,'images/jy_ppp/xuni/25/cc3f8794a4c27d1eab8b32b51dd5ad6eddc43815.jpg'),(580,25,2,0,'images/jy_ppp/xuni/25/ce88d43f8794a4c2058eee5a08f41bd5ad6e3915.jpg'),(581,25,2,0,'images/jy_ppp/xuni/25/d0fcc3cec3fdfc03e1d5eac9d23f8794a4c22615.jpg'),(582,25,2,0,'images/jy_ppp/xuni/25/e4039245d688d43ff10498837b1ed21b0ef43b15.jpg'),(583,26,2,0,'images/jy_ppp/xuni/26/64d98d1001e93901476e414b7dec54e736d19653.png'),(584,26,2,0,'images/jy_ppp/xuni/26/951001e93901213fdf5f82a952e736d12f2e9553.png'),(585,27,2,0,'images/jy_ppp/xuni/27/2bfa828ba61ea8d3b2e30771910a304e241f5885.jpg'),(586,27,2,0,'images/jy_ppp/xuni/27/9a8ba61ea8d3fd1f11c8d14f364e251f94ca5f85.jpg'),(587,28,2,0,'images/jy_ppp/xuni/28/873df8dcd100baa1b5af5dcc4110b912c9fc2ec1.jpg'),(588,28,2,0,'images/jy_ppp/xuni/28/a2a1cd11728b4710c2ace7bbc5cec3fdfd0323c1.jpg'),(589,28,2,0,'images/jy_ppp/xuni/28/c900baa1cd11728b3dae9655cefcc3cec2fd2cc1.jpg'),(590,28,2,0,'images/jy_ppp/xuni/28/e0dcd100baa1cd110b356857bf12c8fcc2ce2dc1.jpg'),(591,29,2,0,'images/jy_ppp/xuni/29/2ed12f2eb9389b50a723aa208335e5dde6116ee0.jpg'),(592,29,2,0,'images/jy_ppp/xuni/29/4ce736d12f2eb9387cb13080d3628535e4dd6fe0.jpg'),(593,3,2,0,'images/jy_ppp/xuni/3/213sadfsfsdwerqwe.jpg'),(594,3,2,0,'images/jy_ppp/xuni/3/fhsdjfhsdfsdf213.jpg'),(595,3,2,0,'images/jy_ppp/xuni/3/q234fsdfwer23423q12.jpg'),(596,3,2,0,'images/jy_ppp/xuni/3/r43qwqawede43.jpg'),(597,30,2,0,'images/jy_ppp/xuni/30/1b4f78f0f736afc37dd5dd14b519ebc4b64512e1.jpg'),(598,30,2,0,'images/jy_ppp/xuni/30/b364034f78f0f736ac27ae700c55b319eac413e1.jpg'),(599,31,2,0,'images/jy_ppp/xuni/31/2112b31bb051f819bbec873cdcb44aed2f73e7ff.jpg'),(600,31,2,0,'images/jy_ppp/xuni/31/ab19ebc4b74543a9b2d27eba18178a82b80114fe.jpg'),(601,31,2,0,'images/jy_ppp/xuni/31/b7c379310a55b319c7e1050345a98226cffc17af.jpg'),(602,32,2,0,'images/jy_ppp/xuni/32/10fa513d269759eef22212bdb4fb43166d22df52.jpg'),(603,32,2,0,'images/jy_ppp/xuni/32/493d269759ee3d6d85b4f5bd45166d224f4ade52.jpg'),(604,32,2,0,'images/jy_ppp/xuni/32/b8ec08fa513d269797a17a2b53fbb2fb4316d852.jpg'),(605,33,2,0,'images/jy_ppp/xuni/33/5336acaf2edda3cc3d9d975707e93901213f924f.jpg'),(606,33,2,0,'images/jy_ppp/xuni/33/6e094b36acaf2edde388669e8b1001e93901934f.jpg'),(607,33,2,0,'images/jy_ppp/xuni/33/b4af2edda3cc7cd9cf541bae3f01213fb80e914f.jpg'),(608,33,2,0,'images/jy_ppp/xuni/33/d3ef76094b36acaf1199b98b7ad98d1001e99c4f.jpg'),(609,34,2,0,'images/jy_ppp/xuni/34/0dce36d3d539b60032e40cb6ef50352ac65cb78c.png'),(610,34,2,0,'images/jy_ppp/xuni/34/c133c895d143ad4b4bbb46c184025aafa40f061d.png'),(611,34,2,0,'images/jy_ppp/xuni/34/ea1fbe096b63f6249e8039028144ebf81b4ca3d6.png'),(612,35,2,0,'images/jy_ppp/xuni/35/393fb80e7bec54e7d774ad68bf389b504fc26a28.jpg'),(613,35,2,0,'images/jy_ppp/xuni/35/8a58d109b3de9c82d9fe4ef96a81800a19d84328.jpg'),(614,35,2,0,'images/jy_ppp/xuni/35/d7fc1e178a82b9012eac7445758da9773912ef47.jpg'),(615,36,2,0,'images/jy_ppp/xuni/36/22292df5e0fe99255775cd2632a85edf8db1714f.jpg'),(616,37,2,0,'images/jy_ppp/xuni/37/36dda3cc7cd98d10f72f5e47273fb80e7aec90c9.png'),(617,37,2,0,'images/jy_ppp/xuni/37/bbcc7cd98d1001e9cec74679be0e7bec55e797c9.png'),(618,38,2,0,'images/jy_ppp/xuni/38/0730e924b899a90157858b3e1b950a7b0208f502.png'),(619,38,2,0,'images/jy_ppp/xuni/38/f124b899a9014c08728bf8ad0c7b02087bf4f402.png'),(620,39,2,0,'images/jy_ppp/xuni/39/6ec6a7efce1b9d16585f62bff6deb48f8d546450.jpg'),(621,39,2,0,'images/jy_ppp/xuni/39/bfefce1b9d16fdfa09f43e30b18f8c5495ee7b50.jpg'),(622,39,2,0,'images/jy_ppp/xuni/39/fddde71190ef76c6054a03f59816fdfaae516750.jpg'),(623,39,2,0,'images/jy_ppp/xuni/39/ff1190ef76c6a7ef6dbe50f8f8faaf51f2de6650.jpg'),(624,4,2,0,'images/jy_ppp/xuni/4/3fe971cf3bc79f3d92abb0cfbaa1cd11708b29df.jpg'),(625,4,2,0,'images/jy_ppp/xuni/4/40295366d0160924e991319cd40735fae4cd34d1.jpg'),(626,4,2,0,'images/jy_ppp/xuni/4/563809fa513d2697cf819bda55fbb2fb4216d838.jpg'),(627,4,2,0,'images/jy_ppp/xuni/4/5dcc962bd40735faa044dd3e9e510fb30d2408d1.jpg'),(628,40,2,0,'images/jy_ppp/xuni/40/36dda3cc7cd98d1034b81146273fb80e7bec905c.jpg'),(629,40,2,0,'images/jy_ppp/xuni/40/b4af2edda3cc7cd9b94129ae3f01213fb80e915c.jpg'),(630,41,2,0,'images/jy_ppp/xuni/41/10fa513d269759ee30a25cc7b4fb43166c22dfcf.jpg'),(631,41,2,0,'images/jy_ppp/xuni/41/493d269759ee3d6d5b34bbc745166d224e4adecf.jpg'),(632,41,2,0,'images/jy_ppp/xuni/41/7b2762d0f703918fa82301c6573d269758eec4cf.jpg'),(633,41,2,0,'images/jy_ppp/xuni/41/b8ec08fa513d26975521345153fbb2fb4216d8cf.jpg'),(634,42,2,0,'images/jy_ppp/xuni/42/bf86c9177f3e6709af4d4a883dc79f3df8dc5573.jpg'),(635,42,2,0,'images/jy_ppp/xuni/42/c9c8a786c9177f3e0279f37a76cf3bc79f3d5673.jpg'),(636,42,2,0,'images/jy_ppp/xuni/42/d1177f3e6709c93d17bf0180993df8dcd1005473.jpg'),(637,43,2,0,'images/jy_ppp/xuni/43/1b4f78f0f736afc3e8cb4010b519ebc4b64512fb.jpg'),(638,43,2,0,'images/jy_ppp/xuni/43/2ca85edf8db1cb137e6b4266db54564e92584b40.jpg'),(639,43,2,0,'images/jy_ppp/xuni/43/945494eef01f3a290248aabb9f25bc315d607cc6.jpg'),(640,43,2,0,'images/jy_ppp/xuni/43/a2a1cd11728b4710d9e982b9c5cec3fdfd032384.jpg'),(641,44,2,0,'images/jy_ppp/xuni/44/945494eef01f3a29d7249fc09f25bc315d607cd4.jpg'),(642,44,2,0,'images/jy_ppp/xuni/44/ac8f8c5494eef01fc3f852cbe6fe9925bd317dd4.jpg'),(643,44,2,0,'images/jy_ppp/xuni/44/b751f3deb48f8c54633f8f213c292df5e1fe7fd4.jpg'),(644,44,2,0,'images/jy_ppp/xuni/44/bfefce1b9d16fdfa5c808ce0b28f8c5495ee7bd4.jpg'),(645,44,2,0,'images/jy_ppp/xuni/44/e5faaf51f3deb48f7a85ebd0f61f3a292cf578d4.jpg'),(646,45,2,0,'images/jy_ppp/xuni/45/393fb80e7bec54e7a9aeeb6bbf389b504fc26a01.png'),(647,45,2,0,'images/jy_ppp/xuni/45/63ec54e736d12f2e18475f1549c2d56285356801.png'),(648,45,2,0,'images/jy_ppp/xuni/45/a00e7bec54e736d18f517d7d9d504fc2d5626901.png'),(649,46,2,0,'images/jy_ppp/xuni/46/1246f21fbe096b6316c822270a338744eaf8acf0.jpg'),(650,46,2,0,'images/jy_ppp/xuni/46/ea1fbe096b63f6248a8c45748144ebf81b4ca3f0.jpg'),(651,47,2,0,'images/jy_ppp/xuni/47/393fb80e7bec54e789d68b1dbf389b504fc26aff.jpg'),(652,47,2,0,'images/jy_ppp/xuni/47/6bf082025aafa40f7b705fdead64034f78f0197a.jpg'),(653,48,2,0,'images/jy_ppp/xuni/48/024c510fd9f9d72a4e85216ad22a2834359bbbe7.jpg'),(654,48,2,0,'images/jy_ppp/xuni/48/14338744ebf81a4c7ad3ddbed12a6059242da6e7.jpg'),(655,48,2,0,'images/jy_ppp/xuni/48/490fd9f9d72a60590af1d06d2e34349b023bbae7.jpg'),(656,48,2,0,'images/jy_ppp/xuni/48/73600c338744ebf830905548dff9d72a6159a7e7.jpg'),(657,48,2,0,'images/jy_ppp/xuni/48/9f44ebf81a4c510ff525d36d6659252dd52aa5e7.jpg'),(658,49,2,0,'images/jy_ppp/xuni/49/05950a7b02087bf488c6e69bf4d3572c11dfcf9e.jpg'),(659,49,2,0,'images/jy_ppp/xuni/49/8516fdfaaf51f3de45540f1692eef01f3b2979da.jpg'),(660,49,2,0,'images/jy_ppp/xuni/49/ead3572c11dfa9ec03c9e06564d0f703908fc1d9.jpg'),(661,5,2,0,'images/jy_ppp/xuni/5/3034349b033b5bb5e1b6048930d3d539b600bc67.jpg'),(662,50,2,0,'images/jy_ppp/xuni/50/5934970a304e251ffcf6e08fa186c9177f3e5347.jpg'),(663,50,2,0,'images/jy_ppp/xuni/50/8f0a304e251f95cabbf496c1cf177f3e67095247.jpg'),(664,50,2,0,'images/jy_ppp/xuni/50/b0d3fd1f4134970a5772145893cad1c8a7865d47.jpg'),(665,51,2,0,'images/jy_ppp/xuni/51/b0d3fd1f4134970a5a3c0b5893cad1c8a7865d7d.jpg'),(666,51,2,0,'images/jy_ppp/xuni/51/e51f4134970a304e4e6dbb8dd7c8a786c9175c7d.jpg'),(667,52,2,0,'images/jy_ppp/xuni/52/14f431adcbef760964f084e828dda3cc7dd99ec9.jpg'),(668,52,2,0,'images/jy_ppp/xuni/52/29adcbef76094b369c69069aa5cc7cd98c109dc9.jpg'),(669,52,2,0,'images/jy_ppp/xuni/52/d3ef76094b36acaf1f1b8b8b7ad98d1000e99cc9.jpg'),(670,53,2,0,'images/jy_ppp/xuni/53/7481800a19d8bc3e75a2ffbf848ba61ea8d34519.jpg'),(671,53,2,0,'images/jy_ppp/xuni/53/8482d158ccbf6c81419dd59dba3eb13533fa4019.jpg'),(672,53,2,0,'images/jy_ppp/xuni/53/abde9c82d158ccbfac164c4f1fd8bc3eb1354119.jpg'),(673,53,2,0,'images/jy_ppp/xuni/53/c958ccbf6c81800adb4f707bb73533fa828b4719.jpg'),(674,54,2,0,'images/jy_ppp/xuni/54/14d7912397dda144680bd3bcb4b7d0a20cf486ba.jpg'),(675,54,2,0,'images/jy_ppp/xuni/54/9d35e5dde71190ef95f92dd1c81b9d16fdfa60ba.jpg'),(676,55,2,0,'images/jy_ppp/xuni/55/0dce36d3d539b6000c3a32c0ef50352ac75cb7d4.png'),(677,55,2,0,'images/jy_ppp/xuni/55/cd39b6003af33a87d1993d6dc05c10385243b5d4.png'),(678,56,2,0,'images/jy_ppp/xuni/56/1b4f78f0f736afc38eb2ee10b519ebc4b745120d.png'),(679,57,2,0,'images/jy_ppp/xuni/57/8a45d688d43f8794d66f3c59d41b0ef41bd53a30.jpg'),(680,57,2,0,'images/jy_ppp/xuni/57/ce88d43f8794a4c20eb3935c08f41bd5ad6e3930.jpg'),(681,58,2,0,'images/jy_ppp/xuni/58/7ad0f703918fa0ec69b1e079209759ee3d6ddb54.jpg'),(682,58,2,0,'images/jy_ppp/xuni/58/7b2762d0f703918fc0a7b9be573d269759eec454.jpg'),(683,58,2,0,'images/jy_ppp/xuni/58/ef03918fa0ec08fa337697d35fee3d6d55fbda54.jpg'),(684,59,2,0,'images/jy_ppp/xuni/59/9f44ebf81a4c510fea392a096659252dd42aa520.jpg'),(685,59,2,0,'images/jy_ppp/xuni/59/f3f81a4c510fd9f9e3ea9d7a232dd42a2834a420.jpg'),(686,6,2,0,'images/jy_ppp/xuni/6/2cec872bd40735faea973b0b9e510fb30e240814.jpg'),(687,6,2,0,'images/jy_ppp/xuni/6/342a8c82d158ccbfbff4c08819d8bc3eb0354128.jpg'),(688,6,2,0,'images/jy_ppp/xuni/6/55ef1ef41bd5ad6edd9e115881cb39dbb7fd3c14.jpg'),(689,6,2,0,'images/jy_ppp/xuni/6/d62e91cb39dbb6fd573c90940924ab18962b3714.jpg'),(690,6,2,0,'images/jy_ppp/xuni/6/fb2d9d1001e93901874af88c7bec54e737d19628.jpg'),(691,6,2,0,'images/jy_ppp/xuni/6/ff04e736afc37931290ff39bebc4b74542a91114.jpg'),(692,60,2,0,'images/jy_ppp/xuni/60/16f41bd5ad6eddc4c6bba2883fdbb6fd52663360.jpg'),(693,60,2,0,'images/jy_ppp/xuni/60/651ed21b0ef41bd5380ffe8757da81cb39db3d60.jpg'),(694,60,2,0,'images/jy_ppp/xuni/60/ca1b0ef41bd5ad6e4ba5729987cb39dbb6fd3c60.jpg'),(695,61,2,0,'images/jy_ppp/xuni/61/de5c10385343fbf20f141a57b67eca8065388f8e.jpg'),(696,62,2,0,'images/jy_ppp/xuni/62/6bf082025aafa40f350fadabad64034f79f019fe.png'),(697,62,2,0,'images/jy_ppp/xuni/62/b54bd11373f08202265bf2494dfbfbedaa641bfe.png'),(698,62,2,0,'images/jy_ppp/xuni/62/c91373f082025aafd9fb1dbdfdedab64024f1afe.png'),(699,63,2,0,'images/jy_ppp/xuni/63/1f0828381f30e924327ddce949086e061c95f709.jpg'),(700,63,2,0,'images/jy_ppp/xuni/63/862f070828381f3060c0cd71ac014c086f06f009.jpg'),(701,63,2,0,'images/jy_ppp/xuni/63/b98b87d6277f9e2f81ec5dd01a30e924b999f309.jpg'),(702,64,2,0,'images/jy_ppp/xuni/64/1b3b5bb5c9ea15ce3c77e400b0003af33a87b219.jpg'),(703,64,2,0,'images/jy_ppp/xuni/64/2c9b033b5bb5c9ea1c6a07ead339b6003af3b319.jpg'),(704,65,2,0,'images/jy_ppp/xuni/65/1f0828381f30e924df063e394a086e061d95f71c.jpg'),(705,65,2,0,'images/jy_ppp/xuni/65/7481800a19d8bc3e4895a4c2848ba61ea8d3451d.jpg'),(706,65,2,0,'images/jy_ppp/xuni/65/8516fdfaaf51f3de69131b6c92eef01f3a297911.jpg'),(707,65,2,0,'images/jy_ppp/xuni/65/bbcc7cd98d1001e9ff61b907be0e7bec54e7975d.jpg'),(708,65,2,0,'images/jy_ppp/xuni/65/f3f81a4c510fd9f94db4f761232dd42a2834a413.jpg'),(709,66,2,0,'images/jy_ppp/xuni/66/1246f21fbe096b63ed4265480a338744ebf8ac4a.jpg'),(710,66,2,0,'images/jy_ppp/xuni/66/63cb0a46f21fbe097105f80c6d600c338744ad4a.jpg'),(711,67,2,0,'images/jy_ppp/xuni/67/8f0a304e251f95ca014f6ca4cf177f3e6709526e.jpg'),(712,67,2,0,'images/jy_ppp/xuni/67/ab19ebc4b74543a9943a04de18178a82b90114fa.jpg'),(713,67,2,0,'images/jy_ppp/xuni/67/f8fe9925bc315c6087e395fd8bb1cb13495477aa.jpg'),(714,68,2,0,'images/jy_ppp/xuni/68/5f10b912c8fcc3ce70fe06459445d688d43f208e.jpg'),(715,68,2,0,'images/jy_ppp/xuni/68/a112c8fcc3cec3fd48006803d088d43f8794278e.jpg'),(716,68,2,0,'images/jy_ppp/xuni/68/d0fcc3cec3fdfc0327462cced23f8794a4c2268e.jpg'),(717,69,2,0,'images/jy_ppp/xuni/69/1124ab18972bd4072b4f40ea7d899e510fb30918.jpg'),(718,69,2,0,'images/jy_ppp/xuni/69/4a66d0160924ab188b9e722033fae6cd7b890b18.jpg'),(719,7,2,0,'images/jy_ppp/xuni/7/1c5f9f2f0708283842db68b0b899a9014d08f164.jpg'),(720,7,2,0,'images/jy_ppp/xuni/7/1e3f94cad1c8a78637ddfeaa6709c93d71cf50bb.jpg'),(721,7,2,0,'images/jy_ppp/xuni/7/5c29c83d70cf3bc79bcc7948d100baa1cc112a61.jpg'),(722,7,2,0,'images/jy_ppp/xuni/7/8faf8d5494eef01fe4a55179e0fe9925bd317dfd.jpg'),(723,7,2,0,'images/jy_ppp/xuni/7/9a64ac345982b2b763168d6031adcbef77099bad.jpg'),(724,70,2,0,'images/jy_ppp/xuni/70/8482d158ccbf6c815161a59eba3eb13533fa4076.jpg'),(725,70,2,0,'images/jy_ppp/xuni/70/abde9c82d158ccbfbcea3c4c1fd8bc3eb1354176.jpg'),(726,70,2,0,'images/jy_ppp/xuni/70/c958ccbf6c81800acbb30078b73533fa828b4776.jpg'),(727,71,2,0,'images/jy_ppp/xuni/71/57c2d5628535e5dd4ebc52d670c6a7efce1b6223.jpg'),(728,71,2,0,'images/jy_ppp/xuni/71/83504fc2d56285354d70252896ef76c6a7ef6323.jpg'),(729,71,2,0,'images/jy_ppp/xuni/71/cd628535e5dde7113a42b4ffa1efce1b9d166123.jpg'),(730,72,2,0,'images/jy_ppp/xuni/72/asd234sdfdsf.jpg'),(731,72,2,0,'images/jy_ppp/xuni/72/bvjbhkihoudfgdw.jpg'),(732,72,2,0,'images/jy_ppp/xuni/72/tyutyiyuouiouio.jpg'),(733,72,2,0,'images/jy_ppp/xuni/72/uhy8iczxzfesr34.jpg'),(734,72,2,0,'images/jy_ppp/xuni/72/vbncjnczxkczxjgdsafwq.jpg'),(735,72,2,0,'images/jy_ppp/xuni/72/xcjgkhdfghdfkhgfgh.jpg'),(736,72,2,0,'images/jy_ppp/xuni/72/zxcnzxnfndgdfgk.jpg'),(737,73,2,0,'images/jy_ppp/xuni/73/218732qh4hsdaf.jpg'),(738,73,2,0,'images/jy_ppp/xuni/73/28sadyufsudfhdsfh.jpg'),(739,73,2,0,'images/jy_ppp/xuni/73/87dasugdgashf.jpg'),(740,73,2,0,'images/jy_ppp/xuni/73/asd8932jdsafhsd.jpg'),(741,73,2,0,'images/jy_ppp/xuni/73/ausd6rw34rhwezxbc.jpg'),(742,73,2,0,'images/jy_ppp/xuni/73/jj54345retvxsdf.jpg'),(743,73,2,0,'images/jy_ppp/xuni/73/sadwq87324234.jpg'),(744,74,2,0,'images/jy_ppp/xuni/74/2ed12f2eb9389b5057e09a258335e5dde7116ead.jpg'),(745,74,2,0,'images/jy_ppp/xuni/74/4ce736d12f2eb9388c720085d3628535e5dd6fad.jpg'),(746,74,2,0,'images/jy_ppp/xuni/74/4dfbb2fb43166d22ab1617e2402309f79052d267.jpg'),(747,75,2,0,'images/jy_ppp/xuni/75/22f8bd3eb13533fa7082248aa8d3fd1f41345b7a.jpg'),(748,75,2,0,'images/jy_ppp/xuni/75/441e6609c93d70cf38361ea9f8dcd100bba12b61.jpg'),(749,75,2,0,'images/jy_ppp/xuni/75/57a1810a19d8bc3e413cb16e828ba61ea8d3457a.jpg'),(750,75,2,0,'images/jy_ppp/xuni/75/883c8601a18b87d67e941fbb070828381e30fd64.jpg'),(751,75,2,0,'images/jy_ppp/xuni/75/9d3ea9d3fd1f41346003b2da251f95cad1c85e7a.jpg'),(752,76,2,0,'images/jy_ppp/xuni/76/883c8601a18b87d679f8e2a3070828381e30fdf0.jpg'),(753,76,2,0,'images/jy_ppp/xuni/76/9471f2deb48f8c5448628c933a292df5e1fe7ffd.jpg'),(754,76,2,0,'images/jy_ppp/xuni/76/aeead0c8a786c91780f4e69dc93d70cf3ac757bb.jpg'),(755,76,2,0,'images/jy_ppp/xuni/76/bb2a18d8bc3eb135c2f3001fa61ea8d3fd1f447a.jpg'),(756,76,2,0,'images/jy_ppp/xuni/76/bc21a08b87d6277fc1a87b8428381f30e824fcf0.jpg'),(757,77,2,0,'images/jy_ppp/xuni/77/c3fcd000baa1cd117cf53b9cb912c8fcc2ce2dee.jpg'),(758,77,2,0,'images/jy_ppp/xuni/77/c8feb58f8c5494ee2d8646a52df5e0fe98257e82.jpg'),(759,77,2,0,'images/jy_ppp/xuni/77/c8feb58f8c5494ee2d9346a52df5e0fe98257efd.jpg'),(760,77,2,0,'images/jy_ppp/xuni/77/f79f6d81800a19d8533733a133fa828ba61e467a.jpg'),(761,78,2,0,'images/jy_ppp/xuni/78/6b1cb522g9074917214a6&690.jpg'),(762,78,2,0,'images/jy_ppp/xuni/78/6b1cb522g907497a7efeb&690.jpg'),(763,79,2,0,'images/jy_ppp/xuni/79/6b1cb522g9074a56a6961&690.jpg'),(764,79,2,0,'images/jy_ppp/xuni/79/6b1cb522g9074a5b6ad07&690.jpg'),(765,8,2,0,'images/jy_ppp/xuni/8/11f790529822720ec125828e7dcb0a46f31fabdf.jpg'),(766,8,2,0,'images/jy_ppp/xuni/8/38a4462309f7905253f4274a0af3d7ca7acbd5df.jpg'),(767,8,2,0,'images/jy_ppp/xuni/8/5e2309f790529822bed859b7d1ca7bcb0b46d4df.jpg'),(768,80,2,0,'images/jy_ppp/xuni/80/6b1cb522g9074919fdfd9&690.jpg'),(769,80,2,0,'images/jy_ppp/xuni/80/6b1cb522g907496b3d07f&690.jpg'),(770,81,2,0,'images/jy_ppp/xuni/81/b54bd11373f08202f0768c494dfbfbedaa641bdb.jpg'),(771,81,2,0,'images/jy_ppp/xuni/81/c943ad4bd11373f02bdb72e9a20f4bfbfaed04db.jpg'),(772,82,2,0,'images/jy_ppp/xuni/82/asdweyt8678342234.jpg'),(773,82,2,0,'images/jy_ppp/xuni/82/njghju675234sdsXa.jpg'),(774,83,2,0,'images/jy_ppp/xuni/83/2ed3d539b6003af34b2b2715332ac65c1038b636.jpg'),(775,83,2,0,'images/jy_ppp/xuni/83/xcfgrtyrwr345456zcsddfgfghghjyui787fghfg.jpg'),(776,84,2,0,'images/jy_ppp/xuni/84/4-150F6205644.jpg'),(777,84,2,0,'images/jy_ppp/xuni/84/4-150F6205645.jpg'),(778,84,2,0,'images/jy_ppp/xuni/84/4-150F6205A1.jpg'),(779,84,2,0,'images/jy_ppp/xuni/84/4-150F6205A3.jpg'),(780,85,2,0,'images/jy_ppp/xuni/85/1-150FG25938.jpg'),(781,85,2,0,'images/jy_ppp/xuni/85/1-150FG25940.jpg'),(782,85,2,0,'images/jy_ppp/xuni/85/1-150FG25946.jpg'),(783,85,2,0,'images/jy_ppp/xuni/85/1-150FG25953.jpg'),(784,86,2,0,'images/jy_ppp/xuni/86/4-150F6204Z0.jpg'),(785,86,2,0,'images/jy_ppp/xuni/86/4-150F6204Z1.jpg'),(786,87,2,0,'images/jy_ppp/xuni/87/1-150F6140648.jpg'),(787,87,2,0,'images/jy_ppp/xuni/87/1-150F6140A5.jpg'),(788,87,2,0,'images/jy_ppp/xuni/87/1-150F6140A9.jpg'),(789,88,2,0,'images/jy_ppp/xuni/88/1-150F5110T0.jpg'),(790,88,2,0,'images/jy_ppp/xuni/88/1-150F5110T2.jpg'),(791,88,2,0,'images/jy_ppp/xuni/88/1-150F5110T5.jpg'),(792,89,2,0,'images/jy_ppp/xuni/89/1-1505210S00gfg5-50.jpg'),(793,89,2,0,'images/jy_ppp/xuni/89/1-1505ertert210S007.jpg'),(794,89,2,0,'images/jy_ppp/xuni/89/1-1505sdf210S003.jpg'),(795,89,2,0,'images/jy_ppp/xuni/89/1-1505sdfxv210S005.jpg'),(796,89,2,0,'images/jy_ppp/xuni/89/1-150cvbcvb5210S006.jpg'),(797,9,2,0,'images/jy_ppp/xuni/9/4a66d0160924ab18fbcd824033fae6cd7a890be9.jpg'),(798,9,2,0,'images/jy_ppp/xuni/9/57c2d5628535e5ddf37ec7a870c6a7efce1b6272.jpg'),(799,9,2,0,'images/jy_ppp/xuni/9/63f40ad162d9f2d3e5424698afec8a136327cc72.jpg'),(800,90,2,0,'images/jy_ppp/xuni/90/1-1505fdbcvnb1FP540.jpg'),(801,91,2,0,'images/jy_ppp/xuni/91/1-1505150K151-50.jpg'),(802,91,2,0,'images/jy_ppp/xuni/91/1-1505150K152.jpg'),(803,92,2,0,'images/jy_ppp/xuni/92/1-1505130KZ5-50.jpg'),(804,92,2,0,'images/jy_ppp/xuni/92/1-1505130KZ5.jpg'),(805,92,2,0,'images/jy_ppp/xuni/92/1-1505130KZ7.jpg'),(806,92,2,0,'images/jy_ppp/xuni/92/1-1505130KZ8.jpg'),(807,93,2,0,'images/jy_ppp/xuni/93/1-1505120Kfghfgh928-50.jpg'),(808,93,2,0,'images/jy_ppp/xuni/93/1-150512sdxz0K926.jpg'),(809,94,2,0,'images/jy_ppp/xuni/94/1-1505110K918-50.jpg'),(810,94,2,0,'images/jy_ppp/xuni/94/1-1505110K918.jpg'),(811,94,2,0,'images/jy_ppp/xuni/94/1-1505110K922.jpg'),(812,95,2,0,'images/jy_ppp/xuni/95/1-15050ZzxcvQ910-50.jpg'),(813,96,2,0,'images/jy_ppp/xuni/96/1-15050PI4fdfd57.jpg'),(814,96,2,0,'images/jy_ppp/xuni/96/1-15050PIzxzc501.jpg'),(815,96,2,0,'images/jy_ppp/xuni/96/1-15050dfsadfPI458.jpg'),(816,96,2,0,'images/jy_ppp/xuni/96/1-15050xcvxcvPI459.jpg'),(817,97,2,0,'images/jy_ppp/xuni/97/1-15050Gfhfgh02R2.jpg'),(818,97,2,0,'images/jy_ppp/xuni/97/1-15050Gzxczxc02R4-50.jpg'),(819,97,2,0,'images/jy_ppp/xuni/97/1-1505asdasd0G02R5.jpg'),(820,98,2,0,'images/jy_ppp/xuni/98/1-1505060Q302.jpg'),(821,98,2,0,'images/jy_ppp/xuni/98/1-1505060Q303-50.jpg'),(822,98,2,0,'images/jy_ppp/xuni/98/1-1505060Q303.jpg'),(823,98,2,0,'images/jy_ppp/xuni/98/1-1505060Q304.jpg'),(824,98,2,0,'images/jy_ppp/xuni/98/1-1505060Q305.jpg'),(825,99,2,0,'images/jy_ppp/xuni/99/1-1505050Q101.jpg'),(826,99,2,0,'images/jy_ppp/xuni/99/1-1505050Q107.jpg');
/*!40000 ALTER TABLE `ims_jy_ppp_xunithumb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jy_ppp_zhaohu`
--

DROP TABLE IF EXISTS `ims_jy_ppp_zhaohu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jy_ppp_zhaohu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT '0' COMMENT 'ForOrder',
  `name` varchar(255) NOT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '批次ID,0为第一级',
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0ForDeleted1ForExists',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=242 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jy_ppp_zhaohu`
--

LOCK TABLES `ims_jy_ppp_zhaohu` WRITE;
/*!40000 ALTER TABLE `ims_jy_ppp_zhaohu` DISABLE KEYS */;
INSERT INTO `ims_jy_ppp_zhaohu` VALUES (1,1,0,'可以接受比你年龄小很多的女生吗？',0,'',1),(2,1,0,'接受',1,'我接受比我年龄小很多的女生，我觉得你很合适。',1),(3,1,0,'需要考虑',1,'我需要考虑年龄比我小比较多的女生，我觉得你很合适。',1),(4,1,0,'不接受',1,'我不接受年龄比我小比较多的女生，我觉得你很合适。',1),(5,1,0,'你喜欢女生穿什么样的内衣？',0,'',1),(6,1,0,'黑色蕾丝',5,'我喜欢女生穿着黑色蕾丝材质的内衣，会很性感~',1),(7,1,0,'白色蕾丝',5,'我喜欢女生穿着白色蕾丝材质的内衣，会很有趣~',1),(8,1,0,'卡通色彩',5,'我喜欢女生穿着卡通色彩的内衣，会很有趣~',1),(9,1,0,'其他',5,'我喜欢女生穿着其他材质的内衣，会很有趣~',1),(10,1,0,'你喜欢看哪个国家（地区）的A片？',0,'',1),(11,1,0,'岛国',10,'岛国',1),(12,1,0,'欧美',10,'欧美',1),(13,1,0,'香港',10,'香港',1),(14,1,0,'国内',10,'国内',1),(15,1,0,'会不会觉得女生胸太大了不好看，影响美感？',0,'',1),(16,1,0,'完全不影响',15,'女生胸太大了完全不影响美感，你是哪种？',1),(17,1,0,'有点影响',15,'女生胸太大了有点影响美感，你是哪种？',1),(18,1,0,'很影响',15,'女生胸太大了很影响美感，你是哪种？',1),(19,1,0,'对方的身材和相貌你更在乎哪个？',0,'',1),(20,1,0,'身材',19,'我还是比较看重身材的哈~',1),(21,1,0,'样貌',19,'我还是比较看重样貌的哈~',1),(22,1,0,'都',19,'我身材和样貌都是很在意的哈~',1),(23,1,0,'爱爱喜欢开灯还是关灯？',0,'',1),(24,1,0,'开灯',23,'开灯',1),(25,1,0,'关灯',23,'关灯',1),(26,1,0,'黑丝袜和白丝袜你更喜欢女生穿哪个?',0,'',1),(27,1,0,'黑丝袜',26,'我觉得女生穿黑丝袜会比较好看，你平时会穿吗？',1),(28,1,0,'网袜',26,'你觉得女生穿网袜会比较好看，你平时会穿吗？',1),(29,1,0,'白丝袜',26,'我觉得女生穿白丝袜比较好看，你平时会穿吗？',1),(30,1,0,'其他',26,'我觉得女生穿其他会比较好看，你平时会穿吗？',1),(31,1,0,'你最想尝试的爱爱场所？',0,'',1),(32,1,0,'旅馆',31,'旅馆',1),(33,1,0,'车',31,'车',1),(34,1,0,'户外',31,'户外',1),(35,1,0,'公司',31,'公司',1),(36,1,0,'你看过日本的女明星演的电影多吗？',0,'',1),(37,1,0,'比较多',36,'我看过的日本女明星的电影比较多，你会介意？',1),(38,1,0,'不太多',36,'我看过的日本女明星的电影不太多，你会介意？',1),(39,1,0,'没看过',36,'我看过的日本女明星的电影没看过，你会介意？',1),(40,1,0,'你认为一周性爱的频率怎么比较好？',0,'',1),(41,1,0,'1次',40,'我觉得一周性爱一次比较合适，你觉得呢？',1),(42,1,0,'3次',40,'我觉得一周性爱三次比较合适，你觉得呢？',1),(43,1,0,'7次',40,'我觉得一周性爱七次比较合适，你觉得呢？',1),(44,1,0,'不一定',40,'我觉得一周性爱次数可不能确定哦，你觉得呢？',1),(45,1,0,'你认为第一次约会最理想的场所在哪？',0,'',1),(46,1,0,'公园',45,'我希望第一次可以在公园约会，那里比较可以深入理解对方。',1),(47,1,0,'咖啡馆',45,'我希望第一次可以在咖啡馆约会，那里比较可以深入理解对方。',1),(48,1,0,'电影院',45,'我希望第一次可以在电影院约会，那里比较可以深入理解对方。',1),(49,1,0,'如家',45,'我希望第一次可以在如家约会，那里比较可以深入理解对方。',1),(50,1,0,'可以接受比你年龄大一点点的女生吗？',0,'',1),(51,1,0,'接受',50,'我接受年龄比我大一点的女生，我觉得你很合适。',1),(52,1,0,'需要考虑',50,'我需要考虑年龄比我大一点的女生，我觉得你很合适。',1),(53,1,0,'不接受',50,'我不接受年龄比我大一点的女生，我觉得你很合适。',1),(54,1,0,'你觉得第一次约会可不可以去喝酒？',0,'',1),(55,1,0,'可以',54,'第一次约会的时候可以喝酒，红酒还是很不错的！',1),(56,1,0,'你会跟另一半坦白你的性经历么？',0,'',1),(57,1,0,'完全可以说',56,'完全可以说',1),(58,1,0,'会有所保留',56,'会有所保留',1),(59,1,0,'不喜欢提',56,'不喜欢提',1),(60,1,0,'你觉得带我回家的时候你爸妈会喜欢我吗？',0,'',1),(61,1,0,'很喜欢',60,'我觉得我如果带你回家我的父母对你很喜欢。',1),(62,1,0,'比较喜欢',60,'我觉的我如果带你回家喔的父母对你比较喜欢~',1),(63,1,0,'一般般',60,'我觉得我如果带你回家喔的父母对你一般般',1),(64,1,0,'约会时你希望女伴的穿着是什么路线？',0,'',1),(65,1,0,'性感火辣',64,'我希望咱们第一次见面时对方穿的性感火辣，比较符合我的口味~',1),(66,1,0,'稳重得体',64,'我希望咱们第一次见面时对方穿的稳重得体，比较符合我的口味~',1),(67,1,0,'可爱俏皮',64,'我希望咱们第一次见面时对方穿的可爱俏皮，比较符合我的口味~',1),(68,1,0,'你可以理解女生约会之前必须洗头这件事吗？',0,'',1),(69,1,0,'可以理解',68,'女生约会之前必须洗头这件事我可以理解，你出门前会洗头吗？要多久？',1),(70,1,0,'有点理解',68,'女生约会前都会洗头这件事我有点理解，你出门钱会洗头吗？要多久？',1),(71,1,0,'不能理解',68,'女生约会前都会洗头这件事我不能理解，你出门钱会洗头吗？要多久？',1),(72,1,0,'你觉得一个人最性感的时候是？',0,'',1),(73,1,0,'刚洗完澡',72,'刚洗完澡',1),(74,1,0,'运动出汗',72,'运动出汗',1),(75,1,0,'穿性感衣服',72,'穿性感衣服',1),(76,1,0,'认真做事',72,'认真做事',1),(77,1,0,'你觉得泷泽萝拉和范冰冰谁计较漂亮？',0,'',1),(78,1,0,'范冰冰',77,'我觉得范冰冰很漂亮，你也很漂亮~',1),(79,1,0,'两个都',77,'我觉得两个都很漂亮，你也很漂亮~',1),(80,1,0,'泷泽萝拉',77,'我觉得泷泽萝拉很漂亮，你也很漂亮~',1),(81,1,0,'你觉着一下哪种脱单途径希望更大？',0,'',1),(82,1,0,'相亲',81,'相亲',1),(83,1,0,'社交网络',81,'社交网络',1),(84,1,0,'朋友介绍',81,'朋友介绍',1),(85,1,0,'其他',81,'其他',1),(86,1,0,'确定交往后发现性生活不和谐怎么办？',0,'',1),(87,1,0,'严重就分手',86,'严重就分手',1),(88,1,0,'看其他条件',86,'看其他条件',1),(89,1,0,'尽量解决',86,'尽量解决',1),(90,1,0,'不太介意',86,'不太介意',1),(91,1,0,'听不太懂',86,'听不太懂',1),(92,1,0,'如果我们在不同城市，你会愿意我来找你吗？',0,'',1),(93,1,0,'十分愿意',92,'我会十分愿意让你来找我，我可以来找你吗？',1),(94,1,0,'比较愿意',92,'我会愿意让你来找我，我可以来找你吗？',1),(95,1,0,'不太愿意',92,'我不太愿意让你来找我，我可以来找你吗？',1),(96,1,0,'会不会觉得女生穿高跟鞋很好看？',0,'',1),(97,1,0,'很好看',96,'我觉得女生穿高跟鞋会很好看，你平时喜欢穿吗？',1),(98,1,0,'一般般',96,'我觉得女生穿高跟鞋会一般般，你平时喜欢穿吗？',1),(99,1,0,'不好看',96,'我觉得女生穿高跟鞋会不好看，你平时喜欢穿吗？',1),(100,1,0,'如果去旅行我走累了，你愿意背我走吗？',0,'',1),(101,1,0,'很愿意',100,'旅行的时候如果你走累了，我很愿意背着你走。',1),(102,1,0,'愿意',100,'旅行的时候如果你走累了，我愿意背着你走。',1),(103,1,0,'可以考虑',100,'旅行的时候如果你走累了，我可以考虑背着你走。',1),(104,1,0,'不能',100,'旅行的时候如果你走累了，我不能背着你走。',1),(105,1,0,'你觉得你可以把我抱起来吗？',0,'',1),(106,1,0,'很轻松',105,'我估计把你抱起来很轻松，你喜欢是公主抱还是新娘抱？',1),(107,1,0,'有可能',105,'我估计把你抱起来有可能，你喜欢是公主还是新娘抱？',1),(108,1,0,'有难度',105,'我估计把你抱起来有难度，你喜欢是公主抱还是新娘抱？',1),(109,1,0,'有没有被人欺骗过感情？',0,'',1),(110,1,0,'有过',109,'有过',1),(111,1,0,'没有过',109,'没有过',1),(112,1,0,'你觉得你的哪个部位最敏感？',0,'',1),(113,1,0,'五官',112,'我的五官比较敏感，不能轻易碰哦~你有哪些敏感部位呀？',1),(114,1,0,'胸部',112,'我的胸部比较敏感，不能轻易碰哦~你有哪些敏感部位呀？',1),(115,1,0,'腿部',112,'我的腿部比较敏感，不能轻易碰哦~你有哪些敏感部位呀？',1),(116,1,0,'其他',112,'我的其他比较敏感，不能轻易碰哦~你有哪些敏感部位呀？',1),(117,1,0,'可以接受女朋友夏天的时候穿热裤出门吗？',0,'',1),(118,1,0,'完全接受',117,'我完全接受女朋友穿着比较短的裤子出门，你平时穿吗？',1),(119,1,0,'需要考虑',117,'我需要考虑女朋友穿的比较短的裤子出门，你平时喜欢吗？',1),(120,1,0,'不能接受',117,'我不能接受女朋友穿着比较短的裤子出门，你平时喜欢穿吗？',1),(121,1,0,'你觉得第一次约会的时间应该是？',0,'',1),(122,1,0,'早上',121,'我希望咱们第一次约会是在早上，这样可以更好的了解对方',1),(123,1,0,'下午',121,'我希望咱们第一次约会是在下午，这样可以更好的了解对方～',1),(124,1,0,'晚上',121,'我希望咱们第一次约会是在晚上，这样可以更好的了解对方',1),(125,1,0,'半夜',121,'我希望咱们第一次约会是在半夜，这样可以更好的了解对方',1),(126,1,0,'你觉得约会几次后才适合和女生发生“亲密行为”？',0,'',1),(127,1,0,'一次',126,'我认为在第一次次约会后才适合和女生发生“亲密关系”，你觉得那？',1),(128,1,0,'三次',126,'我认为在第三次次约会后才适合和女生发生“亲密关系”，你觉得那？',1),(129,1,0,'十次',126,'我认为在十次次约会后才适合和女生发生“亲密关系”，你觉得那？',1),(130,1,0,'看情况',54,'第一次约会的时候看情况喝酒，红酒还是很不错的哟~',1),(131,1,0,'不可以',54,'第一次约会的时候不可以喝酒，不过红酒还是不错的喔',1),(132,1,0,'可以接受在C罩杯以下的女孩子吗？',0,'',1),(133,1,0,'完全接受',132,'我对于C罩杯的女孩子完全接受，你是哪一种？',1),(134,1,0,'需要考虑',132,'我对于c罩杯的女孩子需要考虑，你是哪一种？',1),(135,1,0,'不能接受',132,'我对于c罩杯的女孩子不能接受，你是哪一种？',1),(136,1,0,'第一次约会在酒吧好不好',0,'',1),(137,1,0,'当然可以',136,'第一次约会当然可以去酒吧，我怕你喝醉喔。',1),(138,1,0,'需要考虑',136,'第一次约会需要考虑去酒吧，我怕你喝醉喔。',1),(139,1,0,'不可以',136,'第一次约会不考虑去酒吧，我怕你喝醉喔。',1),(140,1,0,'如果要带我去旅行，你会带我去那个地方？',0,'',1),(141,1,0,'我的家乡',140,'我想要带女生去我家乡旅行，这样可以增进两个人的感情',1),(142,1,0,'海边',140,'我想要带女生去海边旅行，这样可以增进两个人的感情～',1),(143,1,0,'国外',140,'我想要带女生去国外旅行，这样可以增进两个人的感情～',1),(144,1,0,'高原',140,'我想要带女生去高原旅行，这样可以增进两个人的感情～',1),(145,1,0,'你觉得泷泽萝拉和范冰冰谁比较漂亮？',0,'',1),(146,1,0,'范冰冰',145,'我觉得范冰冰很漂亮，你也很漂亮～',1),(147,1,0,'两个都',145,'我觉得两个都很漂亮，你也很漂亮～',1),(148,1,0,'泷泽萝拉',145,'我觉得泷泽萝拉很漂亮，你也很漂亮～',1),(149,1,0,'你觉得女生约会时应不应该化妆？',0,'',1),(150,1,0,'必须要',149,'我觉得女生约会必需要化妆，但是你不化妆也很漂亮',1),(151,1,0,'有时可以',149,'我觉得女生约会有时可以化妆，但是你不化妆也很漂亮～',1),(152,1,0,'不需要',149,'我觉得女生约会不需要化妆，但是你不化妆也很漂亮～',1),(153,1,0,'约会时你希望女伴的穿着是什么路线？',0,'',1),(154,1,0,'性感火辣',153,'我希望咱们第一次见面时对方穿的性感火辣，比较符合我的口味～',1),(155,1,0,'稳重得体',153,'我希望咱们第一次见面时对方穿的稳重得体，比较符合我的口味～',1),(156,1,0,'可爱俏皮',153,'我希望咱们第一次面对对方穿的可爱俏皮，比较符合我的口味～',1),(162,1,0,'你觉得我头发扎起来好看还是放下来？',0,'',1),(163,1,0,'扎起来',162,'我觉得你扎起来很好看，我很喜欢',1),(164,1,0,'放下来',162,'我觉得你放下来很好看，我很喜欢',1),(165,1,0,'两种都',162,'我觉得你两种都很好看，我很喜欢',1),(166,1,0,'比较喜欢哪种风格的女生？',0,'',1),(167,1,0,'可爱甜美',166,'我比较喜欢可爱甜美的女生，我觉得你很符合～',1),(168,1,0,'成熟抚媚',166,'我比较喜欢成熟抚媚的女生，我觉得你很符合～',1),(169,1,0,'性感火辣',166,'我比较喜欢性感火辣的女生，我觉得你很符合～',1),(170,1,0,'如果我希望你在大街上马上吻我，你会愿意吗？',0,'',1),(171,1,0,'很愿意',170,'我很愿意在大街上吻你，你会有什么反应？',1),(172,1,0,'如果去旅行我走累了，你愿意背我走吗？',0,'',1),(173,1,0,'很愿意',172,'旅行的时候如果你走累了，我很愿意背着你走。',1),(174,1,0,'愿意',172,'旅行的时候如果你走累了，我愿意背着你走。',1),(175,1,0,'可以考虑',172,'旅行的时候如果你走累了，我可以考虑背着你走。',1),(176,1,0,'不能',172,'旅行的时候如果你走累了，我不能背着你走。',1),(177,1,0,'第一次约会去灯光比较暗的电影院你觉得怎么样？',0,'',1),(178,1,0,'很不错',177,'我觉得第一次约会去灯光比较暗的电影院很不错，你会不会害怕？',1),(179,1,0,'没感觉',177,'我觉得第一次约会去灯光比较暗的电影院没感觉，你会不会害怕？',1),(180,1,0,'不太好',177,'我觉得第一次约会去灯光比较暗的电影院不太好，你会不会害怕？',1),(181,1,0,'第一次约会可以接受的亲密程度是？',0,'',1),(182,1,0,'牵手',181,'第一次约会如果女生同意的话，我可以接受的亲密程度时牵手，你可以吗？',1),(183,1,0,'接吻',181,'第一次约会如果女生同意的话，我可以接受的亲密程度时接吻，你可以吗？',1),(184,1,0,'拥抱',181,'第一次约会如果女生同意的话，我可以接受的亲密程度时拥抱，你可以吗？',1),(185,1,0,'其他',181,'第一次约会如果女生同意的话，我可以接受的亲密程度时其他，你可以吗？',1),(186,1,0,'如果约会时我穿了小护士装，你的反应会是什么？',0,'',1),(187,1,0,'非常兴奋',186,'看到约会对象穿小护士装，我会觉得非常兴奋你都喜欢穿什么？',1),(188,1,0,'都可以吧',186,'看到约会对象穿小护士装，我会觉得都可以，你都喜欢穿什么？',1),(189,1,0,'不太开心',186,'看到约会对象穿小护士装，我会觉得不太开心，你都喜欢穿什么？',1),(190,1,0,'你会带女生去哪种地方共度良宵？',0,'',1),(191,1,0,'高档酒店',190,'如果女生愿意，我会带女生去高档酒店共度良宵，你觉得可以吗？',1),(192,1,0,'快捷酒店',190,'如果女生愿意，我会带女生去快捷酒店共度良宵，你觉得可以吗？',1),(193,1,0,'自己家',190,'如果女生愿意，我会带女生去自己家共度良宵，你觉得可以吗？',1),(194,1,0,'约会时候你觉得谈论什么话题比较好？',0,'',1),(195,1,0,'情感经历',194,'我觉得约会的时候两个人谈谈情感经历比较有意思',1),(196,1,0,'约会经历',194,'我觉得约会的时候两个人谈谈约会经历比较有意思',1),(197,1,0,'生活趣事',194,'我觉得约会的时候两个人谈谈生活趣事比较有意思',1),(198,1,0,'其他',194,'我觉得约会的时候两个人谈谈其他比较有意思',1),(200,1,0,'你觉得那里最有魅力能电到我阿？',0,'',1),(201,1,0,'眼睛',200,'我觉得我眼睛比较有魅力，呵呵，不如我们先认识下吧~',1),(202,1,0,'鼻梁',200,'我觉得我鼻梁比较有魅力，呵呵，不如我们先认识下吧~',1),(203,1,0,'手',200,'我觉得我手比较有魅力，呵呵，不如我们先认识下吧~',1),(204,1,0,'笑容',200,'我觉得我笑容比较有魅力，呵呵，不如我们先认识下吧~',1),(205,1,0,'嘴唇',200,'我觉得我嘴唇比较有魅力，呵呵，不如我们先认识下吧~',1),(206,1,0,'胸部',200,'我觉得我胸部比较有魅力，呵呵，不如我们先认识下吧~',1),(207,1,0,'可以接受女朋友把第一次留到新婚之夜的想法吗？',0,'',1),(208,1,0,'完全接受',207,'我完全接受女生吧第一次留在新婚之夜的想法',1),(209,1,0,'需要考虑',207,'我需要考虑女生吧第一次留在新婚之夜的想法',1),(210,1,0,'不能接受',207,'我不能接受女生吧第一次留在新婚之夜的想法',1),(213,1,0,'你会喜欢爱撒娇的女生吗？',0,'',1),(214,1,0,'很喜欢',213,'我很喜欢爱撒娇的女生，你是什么类型的？',1),(215,1,0,'可以接受',213,'我可以接受爱撒娇的女生，你是什么类型的？',1),(216,1,0,'不喜欢',213,'我不喜欢爱撒娇的女生，你是什么类型的？',1),(219,1,0,'现在是在租房还是有自己的房子？我去会不会不方便？',0,'',1),(220,1,0,'单独租房',219,'我现在是单独租房，很欢迎你来！',1),(221,1,0,'住自己房子',219,'我现在是住自己房子，很欢迎你来！',1),(222,1,0,'合租',219,'我现在是和别人合租房子，很欢迎你来！',1),(223,1,0,'以前有过几次感情经历？',0,'',1),(224,1,0,'零次',223,'我以前有过零次感情经历，但是这次我想要一段认真的感情。',1),(225,1,0,'不到三次',223,'我以前有过不到三次情经历，但是这次我想要一段认真的感情。',1),(226,1,0,'不到五次',223,'我以前有过不到五次经历，但是这次我想要一段认真的感情。',1),(227,1,0,'五次以上',223,'我以前有过五次以上经历，但是这次我想要一段认真的感情。',1),(228,1,0,'比较愿意',170,'我比较愿意在大街上吻你，你会有什么反应？',1),(229,1,0,'不太愿意',170,'我不太愿意在大街上吻你，你会有什么反应？',1),(230,1,0,'你是快捷酒店的会员吗？',0,'',1),(231,1,0,'普通会员',230,'我目前是普通会员，可以认识一下你吗？',1),(232,1,0,'白金会员',230,'我目前是白金会员，可以认识一下你吗？',1),(233,1,0,'非会员',230,'我目前是非会员，可以认识一下你吗？',1),(234,1,0,'你愿意和我先这里交个朋友吗？',0,'',1),(235,1,0,'当然愿意',234,'我当然愿意和你交朋友',1),(236,1,0,'可以接受',234,'我可以接受和你交朋友~',1),(237,1,0,'不太愿意',234,'我不太愿意和你交朋友！',1),(238,1,0,'约会时你觉得天气最好是？',0,'',1),(239,1,0,'晴空万里',238,'第一次约会时希望的天空晴空万里，这样很有情调！',1),(240,1,0,'阴雨绵绵',238,'第一次约会时希望的天空阴雨绵绵，这样很有情调！',1),(241,1,0,'月黑风高',238,'第一次约会时希望的天空月黑风高，这样很有情调！',1);
/*!40000 ALTER TABLE `ims_jy_ppp_zhaohu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_cash_record`
--

DROP TABLE IF EXISTS `ims_mc_cash_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_cash_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `fee` decimal(10,2) unsigned NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `credit1` int(10) unsigned NOT NULL,
  `credit1_fee` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `cash` decimal(10,2) unsigned NOT NULL,
  `return_cash` decimal(10,2) unsigned NOT NULL,
  `final_cash` decimal(10,2) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `trade_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_cash_record`
--

LOCK TABLES `ims_mc_cash_record` WRITE;
/*!40000 ALTER TABLE `ims_mc_cash_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_cash_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_chats_record`
--

DROP TABLE IF EXISTS `ims_mc_chats_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_chats_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `openid` varchar(32) NOT NULL,
  `msgtype` varchar(15) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `openid` (`openid`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_chats_record`
--

LOCK TABLES `ims_mc_chats_record` WRITE;
/*!40000 ALTER TABLE `ims_mc_chats_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_chats_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_credits_recharge`
--

DROP TABLE IF EXISTS `ims_mc_credits_recharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_credits_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `tid` varchar(64) NOT NULL,
  `transid` varchar(30) NOT NULL,
  `fee` varchar(10) NOT NULL,
  `type` varchar(15) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `backtype` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid_uid` (`uniacid`,`uid`),
  KEY `idx_tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_credits_recharge`
--

LOCK TABLES `ims_mc_credits_recharge` WRITE;
/*!40000 ALTER TABLE `ims_mc_credits_recharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_credits_recharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_credits_record`
--

DROP TABLE IF EXISTS `ims_mc_credits_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_credits_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `uniacid` int(11) NOT NULL,
  `credittype` varchar(10) NOT NULL,
  `num` decimal(10,2) NOT NULL,
  `operator` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `remark` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_credits_record`
--

LOCK TABLES `ims_mc_credits_record` WRITE;
/*!40000 ALTER TABLE `ims_mc_credits_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_credits_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_fans_groups`
--

DROP TABLE IF EXISTS `ims_mc_fans_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_fans_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groups` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_fans_groups`
--

LOCK TABLES `ims_mc_fans_groups` WRITE;
/*!40000 ALTER TABLE `ims_mc_fans_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_fans_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_fans_tag_mapping`
--

DROP TABLE IF EXISTS `ims_mc_fans_tag_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_fans_tag_mapping` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fanid` int(11) unsigned NOT NULL,
  `tagid` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mapping` (`fanid`,`tagid`),
  KEY `fanid_index` (`fanid`),
  KEY `tagid_index` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_fans_tag_mapping`
--

LOCK TABLES `ims_mc_fans_tag_mapping` WRITE;
/*!40000 ALTER TABLE `ims_mc_fans_tag_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_fans_tag_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_groups`
--

DROP TABLE IF EXISTS `ims_mc_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `isdefault` tinyint(4) NOT NULL,
  PRIMARY KEY (`groupid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_groups`
--

LOCK TABLES `ims_mc_groups` WRITE;
/*!40000 ALTER TABLE `ims_mc_groups` DISABLE KEYS */;
INSERT INTO `ims_mc_groups` VALUES (1,1,'默认会员组',0,1);
/*!40000 ALTER TABLE `ims_mc_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_handsel`
--

DROP TABLE IF EXISTS `ims_mc_handsel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_handsel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `touid` int(10) unsigned NOT NULL,
  `fromuid` varchar(32) NOT NULL,
  `module` varchar(30) NOT NULL,
  `sign` varchar(100) NOT NULL,
  `action` varchar(20) NOT NULL,
  `credit_value` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`touid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_handsel`
--

LOCK TABLES `ims_mc_handsel` WRITE;
/*!40000 ALTER TABLE `ims_mc_handsel` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_handsel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_mapping_fans`
--

DROP TABLE IF EXISTS `ims_mc_mapping_fans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_mapping_fans` (
  `fanid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `groupid` varchar(30) NOT NULL,
  `salt` char(8) NOT NULL,
  `follow` tinyint(1) unsigned NOT NULL,
  `followtime` int(10) unsigned NOT NULL,
  `unfollowtime` int(10) unsigned NOT NULL,
  `tag` varchar(1000) NOT NULL,
  `updatetime` int(10) unsigned DEFAULT NULL,
  `unionid` varchar(64) NOT NULL,
  PRIMARY KEY (`fanid`),
  KEY `acid` (`acid`),
  KEY `uniacid` (`uniacid`),
  KEY `nickname` (`nickname`),
  KEY `updatetime` (`updatetime`),
  KEY `uid` (`uid`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_mapping_fans`
--

LOCK TABLES `ims_mc_mapping_fans` WRITE;
/*!40000 ALTER TABLE `ims_mc_mapping_fans` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_mapping_fans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_mapping_ucenter`
--

DROP TABLE IF EXISTS `ims_mc_mapping_ucenter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_mapping_ucenter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `centeruid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_mapping_ucenter`
--

LOCK TABLES `ims_mc_mapping_ucenter` WRITE;
/*!40000 ALTER TABLE `ims_mc_mapping_ucenter` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_mapping_ucenter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_mass_record`
--

DROP TABLE IF EXISTS `ims_mc_mass_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_mass_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groupname` varchar(50) NOT NULL,
  `fansnum` int(10) unsigned NOT NULL,
  `msgtype` varchar(10) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `group` int(10) NOT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `cron_id` int(10) unsigned NOT NULL,
  `sendtime` int(10) unsigned NOT NULL,
  `finalsendtime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_mass_record`
--

LOCK TABLES `ims_mc_mass_record` WRITE;
/*!40000 ALTER TABLE `ims_mc_mass_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_mass_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_member_address`
--

DROP TABLE IF EXISTS `ims_mc_member_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_member_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(50) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `province` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `district` varchar(32) NOT NULL,
  `address` varchar(512) NOT NULL,
  `isdefault` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uinacid` (`uniacid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_member_address`
--

LOCK TABLES `ims_mc_member_address` WRITE;
/*!40000 ALTER TABLE `ims_mc_member_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_member_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_member_fields`
--

DROP TABLE IF EXISTS `ims_mc_member_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_member_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_fieldid` (`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_member_fields`
--

LOCK TABLES `ims_mc_member_fields` WRITE;
/*!40000 ALTER TABLE `ims_mc_member_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_member_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_member_property`
--

DROP TABLE IF EXISTS `ims_mc_member_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_member_property` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `property` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_member_property`
--

LOCK TABLES `ims_mc_member_property` WRITE;
/*!40000 ALTER TABLE `ims_mc_member_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_member_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_members`
--

DROP TABLE IF EXISTS `ims_mc_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(8) NOT NULL,
  `groupid` int(11) NOT NULL,
  `credit1` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `credit3` decimal(10,2) unsigned NOT NULL,
  `credit4` decimal(10,2) unsigned NOT NULL,
  `credit5` decimal(10,2) unsigned NOT NULL,
  `credit6` decimal(10,2) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `groupid` (`groupid`),
  KEY `uniacid` (`uniacid`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_members`
--

LOCK TABLES `ims_mc_members` WRITE;
/*!40000 ALTER TABLE `ims_mc_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_oauth_fans`
--

DROP TABLE IF EXISTS `ims_mc_oauth_fans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_oauth_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oauth_openid` varchar(50) NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_oauthopenid_acid` (`oauth_openid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_oauth_fans`
--

LOCK TABLES `ims_mc_oauth_fans` WRITE;
/*!40000 ALTER TABLE `ims_mc_oauth_fans` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_oauth_fans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_menu_event`
--

DROP TABLE IF EXISTS `ims_menu_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_menu_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `picmd5` varchar(32) NOT NULL,
  `openid` varchar(128) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `picmd5` (`picmd5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_menu_event`
--

LOCK TABLES `ims_menu_event` WRITE;
/*!40000 ALTER TABLE `ims_menu_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_menu_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mobilenumber`
--

DROP TABLE IF EXISTS `ims_mobilenumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mobilenumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mobilenumber`
--

LOCK TABLES `ims_mobilenumber` WRITE;
/*!40000 ALTER TABLE `ims_mobilenumber` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mobilenumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_modules`
--

DROP TABLE IF EXISTS `ims_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_modules` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `version` varchar(15) NOT NULL,
  `ability` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `settings` tinyint(1) NOT NULL,
  `subscribes` varchar(500) NOT NULL,
  `handles` varchar(500) NOT NULL,
  `isrulefields` tinyint(1) NOT NULL,
  `issystem` tinyint(1) unsigned NOT NULL,
  `target` int(10) unsigned NOT NULL,
  `iscard` tinyint(3) unsigned NOT NULL,
  `permissions` varchar(5000) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `wxapp_support` tinyint(1) NOT NULL,
  `app_support` tinyint(1) NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_modules`
--

LOCK TABLES `ims_modules` WRITE;
/*!40000 ALTER TABLE `ims_modules` DISABLE KEYS */;
INSERT INTO `ims_modules` VALUES (1,'basic','system','基本文字回复','1.0','和您进行简单对话','一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,2),(2,'news','system','基本混合图文回复','1.0','为你提供生动的图文资讯','一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,2),(3,'music','system','基本音乐回复','1.0','提供语音、音乐等音频类回复','在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,2),(4,'userapi','system','自定义接口回复','1.1','更方便的第三方接口设置','自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,2),(5,'recharge','system','会员中心充值模块','1.0','提供会员充值功能','','WeEngine Team','http://www.we7.cc/',0,'','',0,1,0,0,'','',1,2),(6,'custom','system','多客服转接','1.0.0','用来接入腾讯的多客服系统','','WeEngine Team','http://bbs.we7.cc',0,'a:0:{}','a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}',1,1,0,0,'','',1,2),(7,'images','system','基本图片回复','1.0','提供图片回复','在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,2),(8,'video','system','基本视频回复','1.0','提供图片回复','在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,2),(9,'voice','system','基本语音回复','1.0','提供语音回复','在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,2),(10,'chats','system','发送客服消息','1.0','公众号可以在粉丝最后发送消息的48小时内无限制发送消息','','WeEngine Team','http://www.we7.cc/',0,'','',0,1,0,0,'','',1,2),(11,'wxcard','system','微信卡券回复','1.0','微信卡券回复','微信卡券回复','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,2),(12,'jy_ppp','business','粉丝啪啪啪','5.2','粉丝啪啪啪','微赢网络粉丝啪啪','微赢QQ:76020694','http://weiwincms.taobao.com/',0,'a:0:{}','a:1:{i:0;s:4:\"text\";}',1,0,0,0,'a:0:{}','F',1,2);
/*!40000 ALTER TABLE `ims_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_modules_bindings`
--

DROP TABLE IF EXISTS `ims_modules_bindings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_modules_bindings` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) NOT NULL,
  `entry` varchar(10) NOT NULL,
  `call` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `do` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `direct` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `displayorder` tinyint(255) unsigned NOT NULL,
  PRIMARY KEY (`eid`),
  KEY `idx_module` (`module`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_modules_bindings`
--

LOCK TABLES `ims_modules_bindings` WRITE;
/*!40000 ALTER TABLE `ims_modules_bindings` DISABLE KEYS */;
INSERT INTO `ims_modules_bindings` VALUES (1,'jy_ppp','cover','','缘分首页','index','',0,'','',0),(2,'jy_ppp','cover','','信箱','mail','',0,'','',0),(3,'jy_ppp','cover','','个人中心','geren','',0,'','',0),(4,'jy_ppp','cover','','附近','luck','',0,'','',0),(5,'jy_ppp','cover','','帮助中心','help','',0,'','',0),(6,'jy_ppp','cover','','安全中心','safe','',0,'','',0),(7,'jy_ppp','cover','','店员中心','dycenter','',0,'','',0),(8,'jy_ppp','menu','','基本设置','setting','',0,'','',0),(9,'jy_ppp','menu','','价格设置','price','',0,'','',0),(10,'jy_ppp','menu','','帮助中心','help','',0,'','',0),(11,'jy_ppp','menu','','安全中心','safe','',0,'','',0),(12,'jy_ppp','menu','','反馈管理','feedback','',0,'','',0),(13,'jy_ppp','menu','','相册审核','thumb','',0,'','',0),(14,'jy_ppp','menu','','打招呼','zhaohu','',0,'','',0),(15,'jy_ppp','menu','','工作人员','dianyuan','',0,'','',0),(16,'jy_ppp','menu','','虚拟用户相册','xunithumb','',0,'','',0),(17,'jy_ppp','menu','','添加虚拟用户','xuni','',0,'','',0),(18,'jy_ppp','menu','','分配虚拟用户','fenpei','',0,'','',0),(19,'jy_ppp','menu','','用户管理','member','',0,'','',0),(20,'jy_ppp','menu','','财务报表','caiwu','',0,'','',0),(21,'jy_ppp','menu','','统计分析','stat','',0,'','',0),(22,'jy_ppp','menu','','回复库','hf','',0,'','',0),(23,'jy_ppp','menu','','消息库','msg','',0,'','',0),(24,'jy_ppp','menu','','消息中心','xinxi','',0,'','',0),(25,'jy_ppp','menu','','虚拟充值记录','xuni_pay','',0,'','',0),(26,'jy_ppp','menu','','信封图片','mailui','',0,'','',0),(27,'jy_ppp','menu','','渠道管理','qrcode','',0,'','',0),(28,'jy_ppp','menu','','昵称库管理','nickname','',0,'','',0),(29,'jy_ppp','menu','','回复后回复库','hf2','',0,'','',0);
/*!40000 ALTER TABLE `ims_modules_bindings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_modules_plugin`
--

DROP TABLE IF EXISTS `ims_modules_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_modules_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `main_module` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `main_module` (`main_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_modules_plugin`
--

LOCK TABLES `ims_modules_plugin` WRITE;
/*!40000 ALTER TABLE `ims_modules_plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_modules_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_modules_recycle`
--

DROP TABLE IF EXISTS `ims_modules_recycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_modules_recycle` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `modulename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `modulename` (`modulename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_modules_recycle`
--

LOCK TABLES `ims_modules_recycle` WRITE;
/*!40000 ALTER TABLE `ims_modules_recycle` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_modules_recycle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_music_reply`
--

DROP TABLE IF EXISTS `ims_music_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_music_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url` varchar(300) NOT NULL,
  `hqurl` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_music_reply`
--

LOCK TABLES `ims_music_reply` WRITE;
/*!40000 ALTER TABLE `ims_music_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_music_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_news_reply`
--

DROP TABLE IF EXISTS `ims_news_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_news_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `parent_id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(64) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `media_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_news_reply`
--

LOCK TABLES `ims_news_reply` WRITE;
/*!40000 ALTER TABLE `ims_news_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_news_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_profile_fields`
--

DROP TABLE IF EXISTS `ims_profile_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_profile_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `unchangeable` tinyint(1) NOT NULL,
  `showinregister` tinyint(1) NOT NULL,
  `field_length` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_profile_fields`
--

LOCK TABLES `ims_profile_fields` WRITE;
/*!40000 ALTER TABLE `ims_profile_fields` DISABLE KEYS */;
INSERT INTO `ims_profile_fields` VALUES (1,'realname',1,'真实姓名','',0,1,1,1,0),(2,'nickname',1,'昵称','',1,1,0,1,0),(3,'avatar',1,'头像','',1,0,0,0,0),(4,'qq',1,'QQ号','',0,0,0,1,0),(5,'mobile',1,'手机号码','',0,0,0,0,0),(6,'vip',1,'VIP级别','',0,0,0,0,0),(7,'gender',1,'性别','',0,0,0,0,0),(8,'birthyear',1,'出生生日','',0,0,0,0,0),(9,'constellation',1,'星座','',0,0,0,0,0),(10,'zodiac',1,'生肖','',0,0,0,0,0),(11,'telephone',1,'固定电话','',0,0,0,0,0),(12,'idcard',1,'证件号码','',0,0,0,0,0),(13,'studentid',1,'学号','',0,0,0,0,0),(14,'grade',1,'班级','',0,0,0,0,0),(15,'address',1,'邮寄地址','',0,0,0,0,0),(16,'zipcode',1,'邮编','',0,0,0,0,0),(17,'nationality',1,'国籍','',0,0,0,0,0),(18,'resideprovince',1,'居住地址','',0,0,0,0,0),(19,'graduateschool',1,'毕业学校','',0,0,0,0,0),(20,'company',1,'公司','',0,0,0,0,0),(21,'education',1,'学历','',0,0,0,0,0),(22,'occupation',1,'职业','',0,0,0,0,0),(23,'position',1,'职位','',0,0,0,0,0),(24,'revenue',1,'年收入','',0,0,0,0,0),(25,'affectivestatus',1,'情感状态','',0,0,0,0,0),(26,'lookingfor',1,' 交友目的','',0,0,0,0,0),(27,'bloodtype',1,'血型','',0,0,0,0,0),(28,'height',1,'身高','',0,0,0,0,0),(29,'weight',1,'体重','',0,0,0,0,0),(30,'alipay',1,'支付宝帐号','',0,0,0,0,0),(31,'msn',1,'MSN','',0,0,0,0,0),(32,'email',1,'电子邮箱','',0,0,0,0,0),(33,'taobao',1,'阿里旺旺','',0,0,0,0,0),(34,'site',1,'主页','',0,0,0,0,0),(35,'bio',1,'自我介绍','',0,0,0,0,0),(36,'interest',1,'兴趣爱好','',0,0,0,0,0);
/*!40000 ALTER TABLE `ims_profile_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_qrcode`
--

DROP TABLE IF EXISTS `ims_qrcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `extra` int(10) unsigned NOT NULL,
  `qrcid` bigint(20) NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `model` tinyint(1) unsigned NOT NULL,
  `ticket` varchar(250) NOT NULL,
  `url` varchar(256) NOT NULL,
  `expire` int(10) unsigned NOT NULL,
  `subnum` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_qrcid` (`qrcid`),
  KEY `uniacid` (`uniacid`),
  KEY `ticket` (`ticket`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_qrcode`
--

LOCK TABLES `ims_qrcode` WRITE;
/*!40000 ALTER TABLE `ims_qrcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_qrcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_qrcode_stat`
--

DROP TABLE IF EXISTS `ims_qrcode_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_qrcode_stat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `qrcid` bigint(20) unsigned NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_qrcode_stat`
--

LOCK TABLES `ims_qrcode_stat` WRITE;
/*!40000 ALTER TABLE `ims_qrcode_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_qrcode_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_rule`
--

DROP TABLE IF EXISTS `ims_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `containtype` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_rule`
--

LOCK TABLES `ims_rule` WRITE;
/*!40000 ALTER TABLE `ims_rule` DISABLE KEYS */;
INSERT INTO `ims_rule` VALUES (1,0,'城市天气','userapi',255,1,''),(2,0,'百度百科','userapi',255,1,''),(3,0,'即时翻译','userapi',255,1,''),(4,0,'今日老黄历','userapi',255,1,''),(5,0,'看新闻','userapi',255,1,''),(6,0,'快递查询','userapi',255,1,''),(7,1,'个人中心入口设置','cover',0,1,''),(8,1,'微擎团队入口设置','cover',0,1,'');
/*!40000 ALTER TABLE `ims_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_rule_keyword`
--

DROP TABLE IF EXISTS `ims_rule_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_rule_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_content` (`content`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_rule_keyword`
--

LOCK TABLES `ims_rule_keyword` WRITE;
/*!40000 ALTER TABLE `ims_rule_keyword` DISABLE KEYS */;
INSERT INTO `ims_rule_keyword` VALUES (1,1,0,'userapi','^.+天气$',3,255,1),(2,2,0,'userapi','^百科.+$',3,255,1),(3,2,0,'userapi','^定义.+$',3,255,1),(4,3,0,'userapi','^@.+$',3,255,1),(5,4,0,'userapi','日历',1,255,1),(6,4,0,'userapi','万年历',1,255,1),(7,4,0,'userapi','黄历',1,255,1),(8,4,0,'userapi','几号',1,255,1),(9,5,0,'userapi','新闻',1,255,1),(10,6,0,'userapi','^(申通|圆通|中通|汇通|韵达|顺丰|EMS) *[a-z0-9]{1,}$',3,255,1),(11,7,1,'cover','个人中心',1,0,1),(12,8,1,'cover','首页',1,0,1);
/*!40000 ALTER TABLE `ims_rule_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_article`
--

DROP TABLE IF EXISTS `ims_site_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `iscommend` tinyint(1) NOT NULL,
  `ishot` tinyint(1) unsigned NOT NULL,
  `pcate` int(10) unsigned NOT NULL,
  `ccate` int(10) unsigned NOT NULL,
  `template` varchar(300) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `edittime` int(10) NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `credit` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_iscommend` (`iscommend`),
  KEY `idx_ishot` (`ishot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_article`
--

LOCK TABLES `ims_site_article` WRITE;
/*!40000 ALTER TABLE `ims_site_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_category`
--

DROP TABLE IF EXISTS `ims_site_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `parentid` int(10) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `icon` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `ishomepage` tinyint(1) NOT NULL,
  `icontype` tinyint(1) unsigned NOT NULL,
  `css` varchar(500) NOT NULL,
  `multiid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_category`
--

LOCK TABLES `ims_site_category` WRITE;
/*!40000 ALTER TABLE `ims_site_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_multi`
--

DROP TABLE IF EXISTS `ims_site_multi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `site_info` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `bindhost` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `bindhost` (`bindhost`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_multi`
--

LOCK TABLES `ims_site_multi` WRITE;
/*!40000 ALTER TABLE `ims_site_multi` DISABLE KEYS */;
INSERT INTO `ims_site_multi` VALUES (1,1,'微擎团队',1,'',1,'');
/*!40000 ALTER TABLE `ims_site_multi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_nav`
--

DROP TABLE IF EXISTS `ims_site_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `section` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `position` tinyint(4) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(500) NOT NULL,
  `css` varchar(1000) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `categoryid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_nav`
--

LOCK TABLES `ims_site_nav` WRITE;
/*!40000 ALTER TABLE `ims_site_nav` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_page`
--

DROP TABLE IF EXISTS `ims_site_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `params` longtext NOT NULL,
  `html` longtext NOT NULL,
  `multipage` longtext NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `goodnum` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_page`
--

LOCK TABLES `ims_site_page` WRITE;
/*!40000 ALTER TABLE `ims_site_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_slide`
--

DROP TABLE IF EXISTS `ims_site_slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `displayorder` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_slide`
--

LOCK TABLES `ims_site_slide` WRITE;
/*!40000 ALTER TABLE `ims_site_slide` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_store_create_account`
--

DROP TABLE IF EXISTS `ims_site_store_create_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_store_create_account` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `type` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_store_create_account`
--

LOCK TABLES `ims_site_store_create_account` WRITE;
/*!40000 ALTER TABLE `ims_site_store_create_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_store_create_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_store_goods`
--

DROP TABLE IF EXISTS `ims_site_store_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_store_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `title` varchar(100) NOT NULL,
  `module` varchar(50) NOT NULL,
  `account_num` int(10) NOT NULL,
  `wxapp_num` int(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `unit` varchar(15) NOT NULL,
  `slide` varchar(1000) NOT NULL,
  `category_id` int(10) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `synopsis` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `module_group` int(10) NOT NULL,
  `api_num` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module` (`module`),
  KEY `category_id` (`category_id`),
  KEY `price` (`price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_store_goods`
--

LOCK TABLES `ims_site_store_goods` WRITE;
/*!40000 ALTER TABLE `ims_site_store_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_store_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_store_order`
--

DROP TABLE IF EXISTS `ims_site_store_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_store_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` varchar(28) NOT NULL,
  `goodsid` int(10) NOT NULL,
  `duration` int(10) NOT NULL,
  `buyer` varchar(50) NOT NULL,
  `buyerid` int(10) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `changeprice` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `endtime` int(15) NOT NULL,
  `wxapp` int(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goodid` (`goodsid`),
  KEY `buyerid` (`buyerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_store_order`
--

LOCK TABLES `ims_site_store_order` WRITE;
/*!40000 ALTER TABLE `ims_site_store_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_store_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_styles`
--

DROP TABLE IF EXISTS `ims_site_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_styles`
--

LOCK TABLES `ims_site_styles` WRITE;
/*!40000 ALTER TABLE `ims_site_styles` DISABLE KEYS */;
INSERT INTO `ims_site_styles` VALUES (1,1,1,'微站默认模板_gC5C');
/*!40000 ALTER TABLE `ims_site_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_styles_vars`
--

DROP TABLE IF EXISTS `ims_site_styles_vars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_styles_vars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `variable` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_styles_vars`
--

LOCK TABLES `ims_site_styles_vars` WRITE;
/*!40000 ALTER TABLE `ims_site_styles_vars` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_styles_vars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_templates`
--

DROP TABLE IF EXISTS `ims_site_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `version` varchar(64) NOT NULL,
  `description` varchar(500) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `sections` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_templates`
--

LOCK TABLES `ims_site_templates` WRITE;
/*!40000 ALTER TABLE `ims_site_templates` DISABLE KEYS */;
INSERT INTO `ims_site_templates` VALUES (1,'default','微站默认模板','','由微擎提供默认微站模板套系','微擎团队','http://we7.cc','1',0);
/*!40000 ALTER TABLE `ims_site_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_stat_fans`
--

DROP TABLE IF EXISTS `ims_stat_fans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_stat_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `new` int(10) unsigned NOT NULL,
  `cancel` int(10) unsigned NOT NULL,
  `cumulate` int(10) NOT NULL,
  `date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`date`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_fans`
--

LOCK TABLES `ims_stat_fans` WRITE;
/*!40000 ALTER TABLE `ims_stat_fans` DISABLE KEYS */;
INSERT INTO `ims_stat_fans` VALUES (1,1,0,0,0,'20171119'),(2,1,0,0,0,'20171118'),(3,1,0,0,0,'20171117'),(4,1,0,0,0,'20171116'),(5,1,0,0,0,'20171115'),(6,1,0,0,0,'20171114'),(7,1,0,0,0,'20171113'),(8,1,0,0,0,'20180502'),(9,1,0,0,0,'20180501'),(10,1,0,0,0,'20180430'),(11,1,0,0,0,'20180429'),(12,1,0,0,0,'20180428'),(13,1,0,0,0,'20180427'),(14,1,0,0,0,'20180426'),(15,1,0,0,0,'20180606'),(16,1,0,0,0,'20180605'),(17,1,0,0,0,'20180604'),(18,1,0,0,0,'20180603'),(19,1,0,0,0,'20180602'),(20,1,0,0,0,'20180601'),(21,1,0,0,0,'20180531'),(22,1,0,0,0,'20180608'),(23,1,0,0,0,'20180607'),(24,1,0,0,0,'20180614'),(25,1,0,0,0,'20180613'),(26,1,0,0,0,'20180612'),(27,1,0,0,0,'20180611'),(28,1,0,0,0,'20180610'),(29,1,0,0,0,'20180609'),(30,1,0,0,0,'20180617'),(31,1,0,0,0,'20180616'),(32,1,0,0,0,'20180615'),(33,1,0,0,0,'20180618'),(34,1,0,0,0,'20180712'),(35,1,0,0,0,'20180711'),(36,1,0,0,0,'20180710'),(37,1,0,0,0,'20180709'),(38,1,0,0,0,'20180708'),(39,1,0,0,0,'20180707'),(40,1,0,0,0,'20180706');
/*!40000 ALTER TABLE `ims_stat_fans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_stat_keyword`
--

DROP TABLE IF EXISTS `ims_stat_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_stat_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` varchar(10) NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_keyword`
--

LOCK TABLES `ims_stat_keyword` WRITE;
/*!40000 ALTER TABLE `ims_stat_keyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_stat_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_stat_msg_history`
--

DROP TABLE IF EXISTS `ims_stat_msg_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_stat_msg_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_msg_history`
--

LOCK TABLES `ims_stat_msg_history` WRITE;
/*!40000 ALTER TABLE `ims_stat_msg_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_stat_msg_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_stat_rule`
--

DROP TABLE IF EXISTS `ims_stat_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_stat_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_rule`
--

LOCK TABLES `ims_stat_rule` WRITE;
/*!40000 ALTER TABLE `ims_stat_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_stat_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_stat_visit`
--

DROP TABLE IF EXISTS `ims_stat_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_stat_visit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `module` varchar(100) NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `module` (`module`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_visit`
--

LOCK TABLES `ims_stat_visit` WRITE;
/*!40000 ALTER TABLE `ims_stat_visit` DISABLE KEYS */;
INSERT INTO `ims_stat_visit` VALUES (1,1,'wesite',230,20180503),(2,1,'wesite',308,20180606),(3,1,'wesite',366,20180607),(4,1,'wesite',446,20180608),(5,1,'wesite',465,20180609),(6,1,'wesite',43,20180610),(7,1,'wesite',13,20180613),(8,1,'wesite',295,20180614),(9,1,'wesite',953,20180615),(10,1,'wesite',219,20180617),(11,1,'wesite',770,20180618),(12,1,'wesite',478,20180619),(13,1,'wesite',222,20180620),(14,1,'wesite',63,20180621),(15,1,'wesite',87,20180622),(16,1,'wesite',130,20180623),(17,1,'wesite',50,20180624),(18,1,'wesite',30,20180625),(19,1,'wesite',14,20180626),(20,1,'wesite',136,20180627),(21,1,'wesite',83,20180628),(22,1,'wesite',2,20180629),(23,1,'wesite',90,20180630),(24,1,'wesite',1012,20180701),(25,1,'wesite',132,20180702),(26,1,'wesite',22,20180703),(27,1,'wesite',39,20180705),(28,1,'wesite',1,20180709),(29,1,'wesite',45,20180712),(30,1,'wesite',36,20180713),(31,1,'wesite',17,20180729),(32,1,'wesite',28,20190711);
/*!40000 ALTER TABLE `ims_stat_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_account`
--

DROP TABLE IF EXISTS `ims_uni_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_account` (
  `uniacid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `default_acid` int(10) unsigned NOT NULL,
  `rank` int(10) DEFAULT NULL,
  `title_initial` varchar(1) NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_account`
--

LOCK TABLES `ims_uni_account` WRITE;
/*!40000 ALTER TABLE `ims_uni_account` DISABLE KEYS */;
INSERT INTO `ims_uni_account` VALUES (1,-1,'微擎团队','一个朝气蓬勃的团队',1,0,'W');
/*!40000 ALTER TABLE `ims_uni_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_account_group`
--

DROP TABLE IF EXISTS `ims_uni_account_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_account_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `groupid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_account_group`
--

LOCK TABLES `ims_uni_account_group` WRITE;
/*!40000 ALTER TABLE `ims_uni_account_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_account_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_account_menus`
--

DROP TABLE IF EXISTS `ims_uni_account_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_account_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `menuid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `sex` tinyint(3) unsigned NOT NULL,
  `group_id` int(10) NOT NULL,
  `client_platform_type` tinyint(3) unsigned NOT NULL,
  `area` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `menuid` (`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_account_menus`
--

LOCK TABLES `ims_uni_account_menus` WRITE;
/*!40000 ALTER TABLE `ims_uni_account_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_account_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_account_modules`
--

DROP TABLE IF EXISTS `ims_uni_account_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_account_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `settings` text NOT NULL,
  `shortcut` tinyint(1) unsigned NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_account_modules`
--

LOCK TABLES `ims_uni_account_modules` WRITE;
/*!40000 ALTER TABLE `ims_uni_account_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_account_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_account_users`
--

DROP TABLE IF EXISTS `ims_uni_account_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_account_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `role` varchar(255) NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_memberid` (`uid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_account_users`
--

LOCK TABLES `ims_uni_account_users` WRITE;
/*!40000 ALTER TABLE `ims_uni_account_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_account_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_group`
--

DROP TABLE IF EXISTS `ims_uni_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `modules` varchar(15000) NOT NULL,
  `templates` varchar(5000) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_group`
--

LOCK TABLES `ims_uni_group` WRITE;
/*!40000 ALTER TABLE `ims_uni_group` DISABLE KEYS */;
INSERT INTO `ims_uni_group` VALUES (1,0,'体验套餐服务','N;','N;',0);
/*!40000 ALTER TABLE `ims_uni_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_settings`
--

DROP TABLE IF EXISTS `ims_uni_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_settings` (
  `uniacid` int(10) unsigned NOT NULL,
  `passport` varchar(200) NOT NULL,
  `oauth` varchar(100) NOT NULL,
  `jsauth_acid` int(10) unsigned NOT NULL,
  `uc` varchar(500) NOT NULL,
  `notify` varchar(2000) NOT NULL,
  `creditnames` varchar(500) NOT NULL,
  `creditbehaviors` varchar(500) NOT NULL,
  `welcome` varchar(60) NOT NULL,
  `default` varchar(60) NOT NULL,
  `default_message` varchar(2000) NOT NULL,
  `payment` text NOT NULL,
  `stat` varchar(300) NOT NULL,
  `default_site` int(10) unsigned DEFAULT NULL,
  `sync` tinyint(3) unsigned NOT NULL,
  `recharge` varchar(500) NOT NULL,
  `tplnotice` varchar(1000) NOT NULL,
  `grouplevel` tinyint(3) unsigned NOT NULL,
  `mcplugin` varchar(500) NOT NULL,
  `exchange_enable` tinyint(3) unsigned NOT NULL,
  `coupon_type` tinyint(3) unsigned NOT NULL,
  `menuset` text NOT NULL,
  `statistics` varchar(100) NOT NULL,
  `bind_domain` varchar(200) NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_settings`
--

LOCK TABLES `ims_uni_settings` WRITE;
/*!40000 ALTER TABLE `ims_uni_settings` DISABLE KEYS */;
INSERT INTO `ims_uni_settings` VALUES (1,'a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}','a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}',0,'a:1:{s:6:\"status\";i:0;}','a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}','a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}','a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}','','','','a:5:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}s:4:\"line\";a:2:{s:7:\"message\";s:16:\"4543545454354343\";s:6:\"switch\";b:0;}}','',1,0,'','',0,'',0,0,'','','');
/*!40000 ALTER TABLE `ims_uni_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_verifycode`
--

DROP TABLE IF EXISTS `ims_uni_verifycode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_verifycode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `verifycode` varchar(6) NOT NULL,
  `total` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_verifycode`
--

LOCK TABLES `ims_uni_verifycode` WRITE;
/*!40000 ALTER TABLE `ims_uni_verifycode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_verifycode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_userapi_cache`
--

DROP TABLE IF EXISTS `ims_userapi_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_userapi_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_userapi_cache`
--

LOCK TABLES `ims_userapi_cache` WRITE;
/*!40000 ALTER TABLE `ims_userapi_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_userapi_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_userapi_reply`
--

DROP TABLE IF EXISTS `ims_userapi_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_userapi_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `description` varchar(300) NOT NULL,
  `apiurl` varchar(300) NOT NULL,
  `token` varchar(32) NOT NULL,
  `default_text` varchar(100) NOT NULL,
  `cachetime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_userapi_reply`
--

LOCK TABLES `ims_userapi_reply` WRITE;
/*!40000 ALTER TABLE `ims_userapi_reply` DISABLE KEYS */;
INSERT INTO `ims_userapi_reply` VALUES (1,1,'\"城市名+天气\", 如: \"北京天气\"','weather.php','','',0),(2,2,'\"百科+查询内容\" 或 \"定义+查询内容\", 如: \"百科姚明\", \"定义自行车\"','baike.php','','',0),(3,3,'\"@查询内容(中文或英文)\"','translate.php','','',0),(4,4,'\"日历\", \"万年历\", \"黄历\"或\"几号\"','calendar.php','','',0),(5,5,'\"新闻\"','news.php','','',0),(6,6,'\"快递+单号\", 如: \"申通1200041125\"','express.php','','',0);
/*!40000 ALTER TABLE `ims_userapi_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users`
--

DROP TABLE IF EXISTS `ims_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `founder_groupid` tinyint(4) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `joindate` int(10) unsigned NOT NULL,
  `joinip` varchar(15) NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL,
  `lastip` varchar(15) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `register_type` tinyint(3) NOT NULL,
  `openid` varchar(50) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users`
--

LOCK TABLES `ims_users` WRITE;
/*!40000 ALTER TABLE `ims_users` DISABLE KEYS */;
INSERT INTO `ims_users` VALUES (1,0,1,0,'admin','5cfe01f12eb38a707fbbd95c214008e875773384','e3df4bed',0,0,1525335210,'',1596493593,'223.149.25.104','',0,0,0,'');
/*!40000 ALTER TABLE `ims_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_failed_login`
--

DROP TABLE IF EXISTS `ims_users_failed_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_failed_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `username` varchar(32) NOT NULL,
  `count` tinyint(1) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip_username` (`ip`,`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_failed_login`
--

LOCK TABLES `ims_users_failed_login` WRITE;
/*!40000 ALTER TABLE `ims_users_failed_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_failed_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_founder_group`
--

DROP TABLE IF EXISTS `ims_users_founder_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_founder_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `maxsubaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  `maxwxapp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_founder_group`
--

LOCK TABLES `ims_users_founder_group` WRITE;
/*!40000 ALTER TABLE `ims_users_founder_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_founder_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_group`
--

DROP TABLE IF EXISTS `ims_users_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `maxsubaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  `maxwxapp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_group`
--

LOCK TABLES `ims_users_group` WRITE;
/*!40000 ALTER TABLE `ims_users_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_invitation`
--

DROP TABLE IF EXISTS `ims_users_invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_invitation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `fromuid` int(10) unsigned NOT NULL,
  `inviteuid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_invitation`
--

LOCK TABLES `ims_users_invitation` WRITE;
/*!40000 ALTER TABLE `ims_users_invitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_permission`
--

DROP TABLE IF EXISTS `ims_users_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(100) NOT NULL,
  `permission` varchar(10000) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_permission`
--

LOCK TABLES `ims_users_permission` WRITE;
/*!40000 ALTER TABLE `ims_users_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_profile`
--

DROP TABLE IF EXISTS `ims_users_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `edittime` int(10) NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `fakeid` varchar(30) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  `workerid` varchar(64) NOT NULL,
  `is_send_mobile_status` tinyint(3) NOT NULL,
  `send_expire_status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_profile`
--

LOCK TABLES `ims_users_profile` WRITE;
/*!40000 ALTER TABLE `ims_users_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_video_reply`
--

DROP TABLE IF EXISTS `ims_video_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_video_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_video_reply`
--

LOCK TABLES `ims_video_reply` WRITE;
/*!40000 ALTER TABLE `ims_video_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_video_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_voice_reply`
--

DROP TABLE IF EXISTS `ims_voice_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_voice_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_voice_reply`
--

LOCK TABLES `ims_voice_reply` WRITE;
/*!40000 ALTER TABLE `ims_voice_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_voice_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_wechat_attachment`
--

DROP TABLE IF EXISTS `ims_wechat_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_wechat_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `media_id` varchar(255) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `model` varchar(25) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `module_upload_dir` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `media_id` (`media_id`),
  KEY `acid` (`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_wechat_attachment`
--

LOCK TABLES `ims_wechat_attachment` WRITE;
/*!40000 ALTER TABLE `ims_wechat_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wechat_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_wechat_news`
--

DROP TABLE IF EXISTS `ims_wechat_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_wechat_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned DEFAULT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `thumb_media_id` varchar(60) NOT NULL,
  `thumb_url` varchar(255) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `digest` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_source_url` varchar(200) NOT NULL,
  `show_cover_pic` tinyint(3) unsigned NOT NULL,
  `url` varchar(200) NOT NULL,
  `displayorder` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `attach_id` (`attach_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_wechat_news`
--

LOCK TABLES `ims_wechat_news` WRITE;
/*!40000 ALTER TABLE `ims_wechat_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wechat_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_wxapp_general_analysis`
--

DROP TABLE IF EXISTS `ims_wxapp_general_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_wxapp_general_analysis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `session_cnt` int(10) NOT NULL,
  `visit_pv` int(10) NOT NULL,
  `visit_uv` int(10) NOT NULL,
  `visit_uv_new` int(10) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `stay_time_uv` varchar(10) NOT NULL,
  `stay_time_session` varchar(10) NOT NULL,
  `visit_depth` varchar(10) NOT NULL,
  `ref_date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `ref_date` (`ref_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_wxapp_general_analysis`
--

LOCK TABLES `ims_wxapp_general_analysis` WRITE;
/*!40000 ALTER TABLE `ims_wxapp_general_analysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wxapp_general_analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_wxapp_versions`
--

DROP TABLE IF EXISTS `ims_wxapp_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_wxapp_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `version` varchar(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `modules` varchar(1000) NOT NULL,
  `design_method` tinyint(1) NOT NULL,
  `template` int(10) NOT NULL,
  `quickmenu` varchar(2500) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `version` (`version`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_wxapp_versions`
--

LOCK TABLES `ims_wxapp_versions` WRITE;
/*!40000 ALTER TABLE `ims_wxapp_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wxapp_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_wxcard_reply`
--

DROP TABLE IF EXISTS `ims_wxcard_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_wxcard_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  `success` varchar(255) NOT NULL,
  `error` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_wxcard_reply`
--

LOCK TABLES `ims_wxcard_reply` WRITE;
/*!40000 ALTER TABLE `ims_wxcard_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wxcard_reply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-04  6:27:48