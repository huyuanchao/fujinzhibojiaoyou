-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: daxiu
-- ------------------------------------------------------
-- Server version	5.7.26-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID编号',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '管理名称',
  `pass` varchar(200) NOT NULL DEFAULT '' COMMENT '管理密码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daxiu`
--

DROP TABLE IF EXISTS `daxiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daxiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` varchar(1000) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `hit` varchar(255) DEFAULT NULL,
  `diqu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daxiu`
--

LOCK TABLES `daxiu` WRITE;
/*!40000 ALTER TABLE `daxiu` DISABLE KEYS */;
/*!40000 ALTER TABLE `daxiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdan`
--

DROP TABLE IF EXISTS `dingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID缂栧彿',
  `ddh` varchar(100) NOT NULL DEFAULT '' COMMENT '璁㈠崟鍙',
  `ddzt` varchar(1000) NOT NULL DEFAULT '' COMMENT '璁㈠崟鐘舵?',
  `money` varchar(100) NOT NULL DEFAULT '' COMMENT '璁㈠崟閲戦?',
  `des` varchar(100) NOT NULL DEFAULT '' COMMENT '璁㈠崟绫诲瀷',
  `pid` varchar(1000) NOT NULL DEFAULT '' COMMENT '鎺ㄥ箍ID',
  `uid` varchar(1000) NOT NULL DEFAULT '' COMMENT '鎺ㄥ箍UID',
  `shijian` varchar(100) NOT NULL DEFAULT '' COMMENT '璁㈠崟鏃堕棿',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdan`
--

LOCK TABLES `dingdan` WRITE;
/*!40000 ALTER TABLE `dingdan` DISABLE KEYS */;
/*!40000 ALTER TABLE `dingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kllist`
--

DROP TABLE IF EXISTS `kllist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kllist` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID缂栧彿',
  `ddh` varchar(100) NOT NULL DEFAULT '' COMMENT '璁㈠崟鍙',
  `ddzt` varchar(1000) NOT NULL DEFAULT '' COMMENT '璁㈠崟鐘舵?',
  `money` varchar(100) NOT NULL DEFAULT '' COMMENT '璁㈠崟閲戦?',
  `des` varchar(100) NOT NULL DEFAULT '' COMMENT '璁㈠崟绫诲瀷',
  `pid` varchar(1000) NOT NULL DEFAULT '' COMMENT '鎺ㄥ箍ID',
  `uid` varchar(1000) NOT NULL DEFAULT '' COMMENT '鎺ㄥ箍UID',
  `shijian` varchar(100) NOT NULL DEFAULT '' COMMENT '璁㈠崟鏃堕棿',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kllist`
--

LOCK TABLES `kllist` WRITE;
/*!40000 ALTER TABLE `kllist` DISABLE KEYS */;
/*!40000 ALTER TABLE `kllist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pl`
--

DROP TABLE IF EXISTS `pl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID缂栧彿',
  `pic` varchar(1000) NOT NULL DEFAULT '' COMMENT '澶村儚',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pl`
--

LOCK TABLES `pl` WRITE;
/*!40000 ALTER TABLE `pl` DISABLE KEYS */;
INSERT INTO `pl` VALUES (1,'pl/1.jpg'),(2,'pl/2.jpg'),(3,'pl/3.jpg'),(4,'pl/4.jpg'),(5,'pl/5.jpg'),(6,'pl/6.jpg'),(7,'pl/7.jpg'),(8,'pl/8.jpg'),(9,'pl/9.jpg'),(10,'pl/10.jpg'),(11,'pl/11.jpg'),(12,'pl/12.jpg'),(13,'pl/13.jpg'),(14,'pl/14.jpg'),(15,'pl/15.jpg'),(16,'pl/16.jpg'),(17,'pl/17.jpg'),(18,'pl/18.jpg'),(19,'pl/19.jpg'),(20,'pl/20.jpg'),(21,'pl/21.jpg'),(22,'pl/22.jpg'),(23,'pl/23.jpg'),(24,'pl/24.jpg'),(25,'pl/25.jpg'),(26,'pl/26.jpg'),(27,'pl/27.jpg'),(28,'pl/28.jpg'),(29,'pl/29.jpg'),(30,'pl/30.jpg'),(31,'pl/31.jpg'),(32,'pl/32.jpg'),(33,'pl/33.jpg'),(34,'pl/34.jpg'),(35,'pl/35.jpg'),(36,'pl/36.jpg'),(37,'pl/37.jpg'),(38,'pl/38.jpg'),(39,'pl/39.jpg'),(40,'pl/40.jpg');
/*!40000 ALTER TABLE `pl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tzurl`
--

DROP TABLE IF EXISTS `tzurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tzurl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tzurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tzurl`
--

LOCK TABLES `tzurl` WRITE;
/*!40000 ALTER TABLE `tzurl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tzurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uboip`
--

DROP TABLE IF EXISTS `uboip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uboip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jb` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `tx` varchar(255) DEFAULT NULL,
  `ms` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uboip`
--

LOCK TABLES `uboip` WRITE;
/*!40000 ALTER TABLE `uboip` DISABLE KEYS */;
INSERT INTO `uboip` VALUES (2,'0','127.0.0.1','1032226','12','娓稿?');
/*!40000 ALTER TABLE `uboip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubotj`
--

DROP TABLE IF EXISTS `ubotj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubotj` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID缂栧彿',
  `pid` varchar(100) NOT NULL DEFAULT '' COMMENT '鎺ㄥ箍涓籌D',
  `uid` varchar(1000) NOT NULL DEFAULT '' COMMENT '鎺ㄥ箍瀛怚D',
  `pidmoney` varchar(1000) NOT NULL DEFAULT '' COMMENT '涓籌D閲戦?',
  `uidmoney` varchar(1000) NOT NULL DEFAULT '' COMMENT '瀛怚D閲戦?',
  `shijian` varchar(100) NOT NULL DEFAULT '' COMMENT '鏃ユ湡',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubotj`
--

LOCK TABLES `ubotj` WRITE;
/*!40000 ALTER TABLE `ubotj` DISABLE KEYS */;
/*!40000 ALTER TABLE `ubotj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubouid`
--

DROP TABLE IF EXISTS `ubouid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubouid` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID缂栧彿',
  `user` varchar(50) NOT NULL DEFAULT '' COMMENT '鐢ㄦ埛鍚',
  `pass` varchar(32) NOT NULL DEFAULT '' COMMENT '鐢ㄦ埛瀵嗙爜',
  `userid` varchar(100) NOT NULL DEFAULT '' COMMENT '鐢ㄦ埛ID',
  `pid` varchar(100) NOT NULL DEFAULT '' COMMENT '涓籌D',
  `fc` varchar(50) NOT NULL DEFAULT '' COMMENT '鍒嗘垚姣斾緥',
  `pay` varchar(200) NOT NULL DEFAULT '' COMMENT '鏀舵?濮撳悕',
  `kahao` varchar(200) NOT NULL DEFAULT '' COMMENT '鏀舵?鍗″彿',
  `qq` varchar(20) NOT NULL DEFAULT '' COMMENT '鑱旂郴QQ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubouid`
--

LOCK TABLES `ubouid` WRITE;
/*!40000 ALTER TABLE `ubouid` DISABLE KEYS */;
/*!40000 ALTER TABLE `ubouid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubouser`
--

DROP TABLE IF EXISTS `ubouser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubouser` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID缂栧彿',
  `user` varchar(50) NOT NULL DEFAULT '' COMMENT '鐢ㄦ埛鍚',
  `pass` varchar(32) NOT NULL DEFAULT '' COMMENT '鐢ㄦ埛瀵嗙爜',
  `qq` varchar(12) NOT NULL DEFAULT '' COMMENT '鑱旂郴QQ',
  `tel` varchar(12) NOT NULL DEFAULT '' COMMENT '鑱旂郴鐢佃瘽',
  `alipayname` varchar(200) NOT NULL DEFAULT '' COMMENT '鏀舵?濮撳悕',
  `alipay` varchar(200) NOT NULL DEFAULT '' COMMENT '鏀舵?璐﹀彿',
  `userid` varchar(100) NOT NULL DEFAULT '' COMMENT '鐢ㄦ埛ID',
  `fencheng` varchar(50) NOT NULL DEFAULT '' COMMENT '鍒嗘垚姣斾緥',
  `kl` varchar(255) DEFAULT NULL COMMENT '鎵ｉ噺璧峰?',
  `kl2` varchar(255) DEFAULT NULL COMMENT '鎵ｉ噺杩樺師鍙傛暟',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubouser`
--

LOCK TABLES `ubouser` WRITE;
/*!40000 ALTER TABLE `ubouser` DISABLE KEYS */;
/*!40000 ALTER TABLE `ubouser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubozb`
--

DROP TABLE IF EXISTS `ubozb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubozb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` varchar(1000) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `hit` varchar(255) DEFAULT NULL,
  `diqu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubozb`
--

LOCK TABLES `ubozb` WRITE;
/*!40000 ALTER TABLE `ubozb` DISABLE KEYS */;
INSERT INTO `ubozb` VALUES (135,'img/rQa3oWHuqgqmTJjcBD6EYllozIRkot36SiwRJ0Wv0CB5T93bMfaCpQJZ0lEMAPBiYM6U38FT5AhQ88O0IH3soRfy6Sh1TjxDO0ge.jpg','爱是陪伴','http://yq2.bysunto.com/002.mp4','2652','抚顺市'),(131,'img/2ZKhySG1iF1K9aRRN7mxGEPhFd0r4ZmxS9ysIHc0YuSl3Ig7lip3kJcwr6ReCJKGkjqx5Rh2N6n0E2VtYGESblmGW037J7tLaZ9Q.jpg','洛阳妹子，有小哥哥保护么','http://yq2.bysunto.com/002.mp4','2735','杭州市'),(132,'img/VVJVpNd8l3DxVuryXdQYs5i84ChktmipzZ9GR6wujtoZTVob5VFUgRRVoNOdJ3ttV6WnurxEKX6obcq8AviZ0rx5AHewgMvkRAle.jpg','孪生姐妹','http://yq2.bysunto.com/002.mp4','1463','运城市'),(133,'img/olKHVqbKdbFpmsZms29yI5X1cDrYVTh1xkadfgpSDsqo1iQu4NAo8feN295QRHssY12mL16RcYtXY8JCZwhexxN37xbbkOTaKAM6.jpg','西安唱歌主播','http://yq2.bysunto.com/002.mp4','3306','辽源市'),(134,'img/DZ3ec3mBDsvbZjNcYjgkPLMSdZk0WaQKQqb7xj4MOJU9ItHVfkCil34NlPeGGdKRhZsZVQuvjMHbo15xl00JN3aVeGhzpWmsmZT5.jpg','卖身还债了解下','http://yq2.bysunto.com/002.mp4','3250','通化市'),(130,'img/oISvarsKHoPsRiCHjtXDFqgL7fEpZVH1W3cqDk8MzYREbgqymceOy5qxvRf21G49zsqFUjCZkLFg9pgKRgjDGiCgQB2Tbzojmrf6.jpg',' 然后 九月见','http://yq2.bysunto.com/002.mp4','3512','杭州市'),(129,'img/tovA7RhuQZZMguFg0g3R9Wb8ZRiRNVfwqHp5jQh9yrQBoKP6rSCgCjSwiPcbtUxneQEbBr37YaYrD4ROEguvwHwpA7RXrHkxIqGK.jpg','想你时你在闹海','http://yq2.bysunto.com/002.mp4','4562','运城市'),(128,'img/bZH2lvXbobxCtFICP9eyVboLpRn25sHFH2D23nJv6czALrQ8XrcEFzLVpZsXAIuxxdAtJLfIMy2Rnmnt7vGzU0Y7taA8U8o3Xpr4.jpg','广东妹子了解一下','http://yq2.bysunto.com/002.mp4','4023','包头市'),(127,'img/UABWyBcrtwIs9mjSEVmUTfXTbX9S5ZpiykvaryByD9NWT7liMlKpHQ6g7VdP9yjkiNMpsQBOnWBOhBlr5cZBLTDhXVWloOh1YLT6.jpg','想找个房管呀','http://yq2.bysunto.com/002.mp4','2411','天津市'),(126,'img/o0tRH52WaqZtXnnzsfItJWeB7C6QXcyq0Q7SUn1LaWvSQ2yvWQMoLISfqDeScVmnLtIEGReYlwEoBVKqU5kohZuLJSHzfaEEyJq9.jpg','新人，求守护','http://yq2.bysunto.com/002.mp4','3619','承德市'),(125,'img/yZI5WP5pc4OPPkUgsmOyih6lplL4rjHXWlZmU9vTt5yaoEhcmZmOccHLeEJvOtbpl9Kh5KIJMm8PtGo9ENAqoQrpkPOoAtAgMsAw.jpg','一周年快乐','http://yq2.bysunto.com/002.mp4','3910','忻州市'),(124,'img/k6rdlhIdsWaWHAEovzOz2fNFv5XSOPLMTYalQwVyP2bnnXcbCrmq3KPj1NVASd2AkSBROAbtLtNfST1lfFdE8b802dGNlYuaiDhk.jpg','什么时候能遇见你','http://yq2.bysunto.com/002.mp4','4926','鄂尔多斯市'),(123,'img/ndZgte2My2rR54mOiF0BlMJPisPlGUs2Rs6zy0dOE3elmUDy4jBvYfzLRqqzdAQs4fbzaIERn16UtaTR5d4COH8zy9Dj9JHuumTK.jpg','妈妈咪呀~好久不见','http://yq2.bysunto.com/002.mp4','2682','杭州市'),(121,'img/6swKtQpNQb3NrYWP1Z4OhFff4BHC9B8rFQ8KepdNDAXzmhabOazEDpjf3ALpIIgoNguS9N0O8A5cg60UYY0OR71jDcWxbEavce4W.jpg','云烟成雨','http://yq2.bysunto.com/002.mp4','1487','秦皇岛市'),(120,'img/3SKsojUw33rwupy3dDOFaMzyCRwymbVgeEG7zIo07f1du5kL5htPiKuYc2dL3Htyr8H91JddTaYfrS9GBbzga2sVX25fuDaEANLk.jpg','新主播 求订阅','http://yq2.bysunto.com/002.mp4','1917','深圳市'),(119,'img/7xemSIS65AzOaFf94yx4YaYVW05uafvJGnAbM0SHqZ10kPToT14ATp9YT7IpMe93lvGNjYpFvdYo4zRkY3USMJmUQj2C6AC8M1Yi.jpg','与我共度 才不算辜负','http://yq2.bysunto.com/002.mp4','2525','呼和浩特市'),(118,'img/D3vcGrqsNNuPlydHsObLhVi8rycMEAx5JSFFVGVPchV8xC7LEi6fCkHlqr84WjBDkJSSv0IJhEDs34T5W05sXgiuQph0OP4UMEQZ.jpg','公会战决赛求助力','http://yq2.bysunto.com/002.mp4','1200','吕梁市'),(117,'img/94KWVYCX9hB969kbQOeks3CsU2SW3E35UfzhwShacOoKYfMKx2lRt6rVPlrIkzFlOnWEKLAKb2WY3LEXwKNwHJUauF3sk0aV9fRM.jpg','此主播距离你50米','http://yq2.bysunto.com/002.mp4','3677','阜新市'),(116,'img/dzRoj6fW6eQVutjwNHqJXU7YygS3fZuPMD2dp2YeKn7NkRUNV8m0RYN9fVFoVtbMtgclrw9SnBCNLXUbGR90E5EwF3LtbNpVb7OQ.jpg','月底了坚持坚持','http://yq2.bysunto.com/002.mp4','2942','锦州市'),(115,'img/aJ76h5tbXErX1UJEyAZYy5Jeqic1Di7e3gfiCo2reUUyX9URNCmKSahMop2w3Ds1Y3ZWPVhxpJrtJtsSKbVha4kPxIQ31P4pn9OO.jpg','表演的主播了解下','http://yq2.bysunto.com/002.mp4','3486','杭州市'),(114,'img/lduLm0bVQaGNuiE3i4E5eea7KHeciTcBd6wibnRSOoTfPtVXEuxPCTwJSYpaTofQr2WOGEVYIhvl3ucOA4mmq62iodfhHFF0hWcX.jpg','一只野生阿珂','http://yq2.bysunto.com/002.mp4','3138','重庆市'),(113,'img/ow26MaeTsMaEejOoDRFsb7GN7zmaKLpHC8dWJI5esjV00mugnrCcqRhk06wG9Y0uuaqrRrkSBT7c6EY4nY3S6jZsD0EftNGCXu6H.jpg',' 我生病了 求安慰','http://yq2.bysunto.com/002.mp4','2352','张家口市'),(136,'img/TsuL00kVqMcwTMnoUqOHAUFLU8dZqc5WKv64obGyM4Vb2zXGnCa3LxVsio9hLAFTYZ32midYigu44twIKTCBvzEdzlYt9NS5tY6R.jpg','我可以喜欢你吗','http://yq2.bysunto.com/002.mp4','4247','鞍山市'),(137,'img/kXuoOYsfYOu9zZIyixnsmG4rLsHx3ZTA2slDfKi9le17GyBzm7KwQL2sHY5Kg0p8BZxGKWozBWCUuZBTHbqfzhuV6JJaCCCTulnW.jpg','滴滴滴 来打卡','http://yq2.bysunto.com/002.mp4','3145','抚顺市'),(138,'img/aPrw2YU4p1wIXiKuSAa5Qd67ArAU1QMwPqBV9w6ULFfNTchcu5QwYY8zsnIjirxm8uynkIHoQrz0A9kE1yUolkojV49X86Ls5W51.jpg','mua~抽空来抱抱我','http://yq2.bysunto.com/002.mp4','1830','秦皇岛市'),(139,'img/Va4cDN2wOHCuA8OubFSmJolLUYUFzG0eQ14YVWgVNVujydjkBeDYPY5ARU04mtlZQRtOyg47RYIt6ZOy8DviIn8LKz86C6gHrooC.jpg','电竞刘亦菲','http://yq2.bysunto.com/002.mp4','1162','巴彦淖尔市'),(140,'img/wZcqtZ4hHmFZLEULgptPnTWQzBvXL68I3fbRXemfK6rWqn0RUeWjoTkachmHeoJkfFe6khNjN28BLduRUCOcJgbrxKskfjCQHZVz.jpg','电竞刘亦菲','http://yq2.bysunto.com/002.mp4','3188','晋城市'),(141,'img/WGgKCFeDlxcst4MdB47NJRoGmXBAIIeUz91SvpmXU90OIQUJazfypZX1b06eIBz3jq3rjMWPh09Y7hDI1NF8rN25k0py1M4C2UDo.jpg',' 想要一个千元榜','http://yq2.bysunto.com/002.mp4','2692','包头市'),(142,'img/0pTbB8KPHbmcPIUlVf8TMnZ61DdMo364rt4KpjooaMVVr0H0hBgSa762ol6l7E3QuWNPzIC4egmNn3zHcWZS1T6G7KcLHgJfPuHc.jpg','别把我弄丢了','http://yq2.bysunto.com/002.mp4','2951','巴彦淖尔市'),(143,'img/Gf3dpkvspQHAndyUfeuo6YETCbpdYCt1LNsD5TatgmonuJLUznlPEF2fKCCdnYAz7s6kzo3MzvPpUNwuONWk8tdyvcITItvj2IAA.jpg',' 坏总我错了','http://yq2.bysunto.com/002.mp4','1576','杭州市'),(144,'img/HPVvesVhY8QU8yqPAbg6kTBODsHiSpnSLNJ3kNQc4utOmt7NSzcBJGk9rCuqaR28us9fC0eYsbLWHLNb5C3OXRcDnc24enRcUoFw.jpg',' 靠点歌吃饭的主播','http://yq2.bysunto.com/002.mp4','3550','温州市'),(145,'img/wLvT297puXgdMv2h9MsUPklySOT1x3TVjuViXQLykjIp6eN9D46o9T9P4SHbHLHwzFUAODyGHy6pmt0ksONfaNPVqimLxecZJ96J.jpg',' 一见仙子误终生','http://yq2.bysunto.com/002.mp4','4234','廊坊市'),(146,'img/0TeudbPFsi2MI9VwegsLb1HNVEpIGIi9581pOdwGovf7FMbQcOWqKH6wJQrlq1wBfWyaqV77gTkKghXtbklBsDuR9DKIQe9UQEJ4.jpg','影娱佳妹','http://yq2.bysunto.com/002.mp4','4361','营口市'),(147,'img/zUiPUC1f51k2nnObiPkcG0jy8Jos9Rx4torDq59JRgoP7CNRv2nYiQZxeNPk34UFO2crt949j3xjfFQtcqbgaWoc8ZVHQO0vACa8.jpg','去广西 一起吗','http://yq2.bysunto.com/002.mp4','1039','杭州市'),(148,'img/9N4R7pgUTRQwQ8jH5ftoILrfmWUf0xZsqO9VJZhZVo0p9mlWhoDPzJISbnPzuxihcdpPX9mUR8LWp7Z3YTVtKlkFCUATIWhKijog.jpg',' 卡牌子点歌哟','http://yq2.bysunto.com/002.mp4','2756','长沙市'),(149,'img/0aWHNAzSfGiFf2L9fOGnBKcVM0epiixt77tY90gtAm4lUwsBPllk0UIvKskPzGzdTVX7e2eSEx7kX8wOMqQQxJeCS8G53VsQ1Hiv.jpg','求凑榜','http://yq2.bysunto.com/002.mp4','4370','太原市'),(150,'img/ACNdE5OjoBeayY0gmqGqm6Lj2Dd6QI3rBkDJIDa8kH0CluEat3zPCoJACoPSgkjZiMzpL3yYTbZqVsqjuSauleu1Ahpp2MTs8olV.jpg','我们一起学猪叫','http://yq2.bysunto.com/002.mp4','2113','郑州市'),(151,'img/5EbXkdtLqqAtK6TqHl1Ew0dzzX4ZRzcjDxkkgl9aGs4wC2Tev2PkMI63Wm4BMgYGCNO0l13wnvECLsJ6BYEO6aUMTDze8kvMD1f2.jpg','欢迎大哥来坐坐','http://yq2.bysunto.com/002.mp4','4598','大连市'),(152,'img/2XEcs58C3xqmlsVDBRuGyOFV0aWwKA2LJChDOlEM0HMaZWMbFiHAlI148jROL4Eole2kFL9UqKLLEPFX8eSWFTaV1LGrp7RjgnHq.jpg','进来我采访你一下','http://yq2.bysunto.com/002.mp4','3806','朝阳市'),(153,'img/Y8Pu7uV6VTP9XsrhIWtKqS8Ui953vLLgS6sFa4W1fr618Zxg75MI8WzRqmPlVUMch8G9VDdNz90iMW5tserYDf7wrOUo3OKJ4toc.jpg','生日快乐啊','https://www.youtube.com/embed/CZvL3TpEhXU?ecver=1','2099','合肥市'),(154,'img/WM8nxPIz3kS5LAcaUcwbwzTPjU3HdFdbcjupvSmWnXg97beCiVbxfwsT2ExL2eowW2r2uezh24z3RmZ6JJh3LKWSpX4eULuxPo0C.jpg','早安 午安 晚安','http://yq2.bysunto.com/002.mp4','3210','大同市'),(155,'img/NgXhw4uIzlPSi5AAdW6tT5RcubBfhbKpkdNqWf3wuNv4tDcPgxHJZzEtFqpWIXFNd3SchdBdlN2mUPVtPyaZyMJ3AESUNsejlZf7.jpg','无数个我','http://yq2.bysunto.com/002.mp4','3249','杭州市'),(156,'img/0rhNrlqMMAKsPfSMHXPkYSU8Gn4mEJJuX0MeU27de4Bz4FxT9fNKEZ7HREnrkwgN5cSpwp5EcDqxNIKPxma8hc0m81hidstqVCPU.jpg','别闹 赶紧进来','http://yq2.bysunto.com/002.mp4','1699','杭州市'),(157,'img/6YZ8sYkXLXdPxKVojf3BYUwRxHa45SOIqViszAEqLQLRBwQttTDKK0vpadpVgS0SRfODEdlX6bZ2curQl7cdtbfUozYXs2bJYcew.jpg','杨胖胖从心开始','http://yq2.bysunto.com/002.mp4','4422','杭州市'),(158,'img/JiwHasJKav955pH7nkADXrnU5FNGK6ytNg3HO5gpncvvsGaBs0ND901NOaXwsDH1mCKJ2PRUBqRneCrdjGoQaAvzMXKugTnlvdy9.jpg','闪闪发光-十七','http://yq2.bysunto.com/002.mp4','2650','阜新市'),(159,'img/o2ckuVZq6KL04yAYgxxxFGcj5WzWQCdteZCxrsmq1fATu9EPK4AZU67pYflBuSwf8mO6MI3eE4YRppRK5MAdrGzAjnmnPiicCyZ6.jpg',' 迷茫的灯塔','http://yq2.bysunto.com/002.mp4','3994','温州市'),(160,'img/EZc4HFVF1Mqu3RzFBTkYQmVXW4eRqRyKVTpN9MChF8uMBqFmzIfDg5faHlMtB6LRTqKYgyXtIKXueqoogxr8EMsi9prih9Ccup4o.jpg','萝莉音了解一下','http://yq2.bysunto.com/002.mp4','3437','绍兴市'),(161,'img/4NyOSA5P3SVRMvtsMcwCBNaM1ZPE688W7MBxZqYzDEGYAUQYxOOY9B0gksrLQLCJ33CcaY3ClAuuaqtlv0kKWdMsZmsk6kXgPqd2.jpg','何以解忧唯有暴富','http://yq2.bysunto.com/002.mp4','2339','杭州市'),(162,'img/Z4hiKhLNRZbOqxhLSSnzvKrDEIvit9VZMJp4sWfNrkEQzPTQlYqUYkH6rbOwdLsDtR9LZw7of7cudm5gPLJlMfbIq3doz1kdoRDq.jpg','新主播','http://yq2.bysunto.com/002.mp4','3435','吉林市'),(163,'img/4o0zHa9DGSmH7cf0VJlALdzT5Ba9etifE6Hec2gjCKa9jKrJrl2GaxqdH4p8mPVQCEb1GMwye9xMKjJUZK7sJCPIMdQJPqpNaG4A.jpg','影娱大美','http://yq2.bysunto.com/002.mp4','1832','常州市'),(164,'img/ZARAPVpj9kd4U0H0DOJh9i8eGqIWXCcSmS9PAbpxsXE3EcaNUttBp1okVRVpHgLjdgPzH7VhSNhyWF6Wz6Ob01vdcvlWGcKLfcBO.jpg','新人求撩','http://yq2.bysunto.com/002.mp4','4018','鞍山市');
/*!40000 ALTER TABLE `ubozb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubozf`
--

DROP TABLE IF EXISTS `ubozf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubozf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money1` varchar(1000) NOT NULL,
  `money2` varchar(1000) NOT NULL,
  `money3` varchar(255) DEFAULT NULL,
  `money4` varchar(255) DEFAULT NULL,
  `money5` varchar(255) DEFAULT NULL,
  `daxiu1` varchar(255) DEFAULT NULL,
  `daxiu2` varchar(255) DEFAULT NULL,
  `zhibo1` varchar(255) DEFAULT NULL,
  `zhibo2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubozf`
--

LOCK TABLES `ubozf` WRITE;
/*!40000 ALTER TABLE `ubozf` DISABLE KEYS */;
INSERT INTO `ubozf` VALUES (1,'','','','','','40','40','40','39');
/*!40000 ALTER TABLE `ubozf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wzpeizhi`
--

DROP TABLE IF EXISTS `wzpeizhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wzpeizhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID缂栧彿',
  `gb` varchar(20) DEFAULT NULL COMMENT '绔欑偣寮?叧',
  `tip` varchar(1000) DEFAULT NULL COMMENT '绔欑偣寮?叧鎻忚堪',
  `pc` varchar(20) DEFAULT NULL COMMENT 'PC鎵撳紑鏂瑰紡閫夋嫨',
  `pctip` varchar(1000) DEFAULT NULL COMMENT 'PC鍏抽棴鎻愮ず',
  `kl` varchar(255) DEFAULT NULL COMMENT '鎵ｉ噺鍔熻兘 1涓哄叧闂?0寮?惎',
  `tz` varchar(255) DEFAULT NULL,
  `pcurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wzpeizhi`
--

LOCK TABLES `wzpeizhi` WRITE;
/*!40000 ALTER TABLE `wzpeizhi` DISABLE KEYS */;
INSERT INTO `wzpeizhi` VALUES (1,'0','缃戠珯鍏抽棴','0','鏃犺祫婧','0','1','http://www.baidu.com');
/*!40000 ALTER TABLE `wzpeizhi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-11 12:01:54
