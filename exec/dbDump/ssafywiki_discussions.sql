-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: database-ssafywiki.cnbro2eo1odc.ap-northeast-2.rds.amazonaws.com    Database: ssafywiki
-- ------------------------------------------------------
-- Server version	8.0.33

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `discussions`
--

DROP TABLE IF EXISTS `discussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discussions` (
  `discussion_id` bigint NOT NULL AUTO_INCREMENT,
  `discussion_content` varchar(255) NOT NULL,
  `discussion_created_at` timestamp NULL DEFAULT NULL,
  `discussion_modified_at` timestamp NULL DEFAULT NULL,
  `document_id` bigint NOT NULL,
  `discussion_user_id` bigint NOT NULL,
  PRIMARY KEY (`discussion_id`),
  KEY `FKt949og1i646rsts794bpcljyt` (`document_id`),
  KEY `FK61stykilorlnouiktsq7xnjj5` (`discussion_user_id`),
  CONSTRAINT `FK61stykilorlnouiktsq7xnjj5` FOREIGN KEY (`discussion_user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKt949og1i646rsts794bpcljyt` FOREIGN KEY (`document_id`) REFERENCES `documents` (`docs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=416 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussions`
--

LOCK TABLES `discussions` WRITE;
/*!40000 ALTER TABLE `discussions` DISABLE KEYS */;
INSERT INTO `discussions` VALUES (1,'?','2023-11-10 10:02:59','2023-11-10 10:02:59',1,24),(2,'안녕','2023-11-10 10:03:00','2023-11-10 10:03:00',1,24),(3,'안녕하세요~~','2023-11-10 12:29:11','2023-11-10 12:29:11',1,36),(4,'수정중','2023-11-10 16:37:45','2023-11-10 16:37:45',1,24),(5,'하이용','2023-11-10 16:48:24','2023-11-10 16:48:24',1,24),(6,'redirect URL 수정되었습니당','2023-11-13 11:56:30','2023-11-13 11:56:30',22,24),(7,'우왕 ~','2023-11-13 15:07:29','2023-11-13 15:07:29',27,54),(8,'너무 심심하네요...','2023-11-13 16:26:53','2023-11-13 16:26:53',21,56),(9,'싸피위키 조아요~~','2023-11-13 16:55:42','2023-11-13 16:55:42',1,58),(10,'ㅎㅇㅎㅇ','2023-11-13 17:05:07','2023-11-13 17:05:07',36,41),(11,'안녕하세요','2023-11-13 17:06:29','2023-11-13 17:06:29',1,59),(12,'우와 ','2023-11-13 17:06:33','2023-11-13 17:06:33',1,59),(14,'무서워요','2023-11-13 17:09:12','2023-11-13 17:09:12',1,24),(15,'안되요','2023-11-13 17:09:22','2023-11-13 17:09:22',1,46),(16,'옐로카드1','2023-11-13 17:09:24','2023-11-13 17:09:24',1,24),(17,'제 문서도 작성해주세요','2023-11-13 17:09:32','2023-11-13 17:09:32',1,59),(18,'마이페이지에서 작성할 수 있어용','2023-11-13 17:09:43','2023-11-13 17:09:43',1,24),(19,'회원가입할떄 자동생성 안했나요...','2023-11-13 17:09:51','2023-11-13 17:09:51',1,56),(20,'ㅠㅠ','2023-11-13 17:10:02','2023-11-13 17:10:02',1,56),(21,'마이페이지 가서','2023-11-13 17:10:06','2023-11-13 17:10:06',1,46),(22,'생성가능합니다','2023-11-13 17:10:10','2023-11-13 17:10:10',1,46),(23,'검색창에 본인 이름 치면 생성버튼 나와요...','2023-11-13 17:10:40','2023-11-13 17:10:40',1,56),(24,'와 플래다~','2023-11-13 17:17:53','2023-11-13 17:17:53',36,58),(25,'마이페이지에서 본인 이름 옆 버튼 누르면 본인 이름 + 학번으로 자동으로 문서 생성해줘요!!','2023-11-13 17:30:14','2023-11-13 17:30:14',1,24),(26,'안녕하세요 싸피위키 개발자 김광표입니다!!~','2023-11-13 17:40:08','2023-11-13 17:40:08',36,41),(27,'siuuuuuu','2023-11-13 21:46:47','2023-11-13 21:46:47',1,37),(28,'논란 siuuu','2023-11-13 21:48:21','2023-11-13 21:48:21',33,37),(29,'ㅎㅇ','2023-11-13 21:48:52','2023-11-13 21:48:52',35,37),(30,'와 점점 멋져진다!','2023-11-14 10:17:15','2023-11-14 10:17:15',1,38),(31,'좋은 아침입니다.','2023-11-14 10:49:00','2023-11-14 10:49:00',1,59),(32,'굿몬잉','2023-11-14 10:50:15','2023-11-14 10:50:15',1,61),(33,'헉 너무 귀여워요','2023-11-14 11:20:10','2023-11-14 11:20:10',40,59),(34,'햄하린','2023-11-14 11:20:17','2023-11-14 11:20:17',40,59),(35,'양불회 말실수 모음집 만들어주세요','2023-11-14 11:20:53','2023-11-14 11:20:53',44,59),(36,'최동우 논란 파일 테라바이트 가지고 있습니다. 즉시 공유 가능','2023-11-14 11:23:39','2023-11-14 11:23:39',44,65),(37,'햄할 뽀렙','2023-11-14 11:23:55','2023-11-14 11:23:55',40,65),(38,'자현냥이 안녕','2023-11-14 11:24:18','2023-11-14 11:24:18',43,65),(39,'문서 기여좀 해줘잉','2023-11-14 11:27:13','2023-11-14 11:27:13',1,35),(40,'와..','2023-11-14 11:39:52','2023-11-14 11:39:52',36,35),(41,'와?','2023-11-14 11:40:09','2023-11-14 11:40:09',39,35),(42,'정말 설명이 잘되어있군요!','2023-11-14 11:43:01','2023-11-14 11:43:01',46,35),(43,'싸탈하고싶어요~','2023-11-14 11:45:59','2023-11-14 11:45:59',47,58),(44,'햄토리 기여워용','2023-11-14 11:49:12','2023-11-14 11:49:12',40,58),(45,'감사합니다^^','2023-11-14 11:50:44','2023-11-14 11:50:44',46,46),(46,'SIUUUUUUUU','2023-11-14 11:52:15','2023-11-14 11:52:15',33,46),(47,'싸탈 기원 1일ㄹ차','2023-11-14 11:54:00','2023-11-14 11:54:00',47,58),(48,'토익 점수 800인가여?','2023-11-14 12:03:08','2023-11-14 12:03:08',21,58),(49,'800 뭐야? 3대 800? 키가 800? 몸무..?','2023-11-14 12:12:03','2023-11-14 12:12:03',21,38),(50,'롤접고 알고푸세요','2023-11-14 12:18:26','2023-11-14 12:18:26',36,68),(51,'1','2023-11-14 12:36:07','2023-11-14 12:36:07',49,24),(52,'킹현덕 왔다감','2023-11-14 12:42:52','2023-11-14 12:42:52',33,70),(53,'근쨩','2023-11-14 12:48:18','2023-11-14 12:48:18',29,70),(54,'밥먹으러 가자','2023-11-14 12:48:26','2023-11-14 12:48:26',29,70),(55,'hiyo','2023-11-14 15:38:01','2023-11-14 15:38:01',1,73),(56,'찐 학번을 입력하셧군여','2023-11-14 15:52:04','2023-11-14 15:52:04',52,58),(57,'토론토론','2023-11-14 16:49:29','2023-11-14 16:49:29',54,63),(58,'싸피위키가 돌아왔습니닷','2023-11-14 17:29:50','2023-11-14 17:29:50',1,58),(59,'1등!','2023-11-14 17:31:32','2023-11-14 17:31:32',56,63),(60,'ㅋㅋㅋㅋ','2023-11-14 17:31:57','2023-11-14 17:31:57',1,24),(61,'돌아와 커피 이벤트','2023-11-14 17:35:02','2023-11-14 17:35:02',55,63),(62,'심규렬 일해라','2023-11-14 17:35:58','2023-11-14 17:35:58',1,76),(63,'2등!','2023-11-14 17:38:35','2023-11-14 17:38:35',56,58),(64,'싸피위키 화이팅!','2023-11-14 17:45:37','2023-11-14 17:45:37',56,75),(65,'어림도 없지 누구냣 !!','2023-11-14 17:48:20','2023-11-14 17:48:20',27,58),(66,'카와이 근짱','2023-11-14 17:49:13','2023-11-14 17:49:13',29,63),(67,'어림도 없','2023-11-14 17:50:19','2023-11-14 17:50:19',49,58),(68,'어림도 없지 누구냣 !!','2023-11-14 17:50:22','2023-11-14 17:50:22',49,58),(69,'카와이 근짱','2023-11-14 17:52:46','2023-11-14 17:52:46',59,63),(70,'랜덤문서 ~~~ 많관부','2023-11-14 20:31:48','2023-11-14 20:31:48',1,24),(71,'랜덤 문서로 나온 첫 번쨰 문서다','2023-11-14 20:32:04','2023-11-14 20:32:04',59,24),(72,'hnkjnkjn','2023-11-15 08:41:52','2023-11-15 08:41:52',61,63),(73,'저두 서울 갈래용','2023-11-15 11:51:42','2023-11-15 11:51:42',62,60),(74,'하이라이트 보러 가자','2023-11-15 11:53:52','2023-11-15 11:53:52',62,78),(75,'현덕 데이는 뭐 하는 날인가요?','2023-11-15 14:51:49','2023-11-15 14:51:49',33,58),(76,'싸피 레이스 기대돼용~~','2023-11-15 14:53:28','2023-11-15 14:53:28',65,58),(77,'다은이바봉','2023-11-15 14:54:25','2023-11-15 14:54:25',62,65),(78,'싸피위키 재밋당','2023-11-15 14:54:54','2023-11-15 14:54:54',1,58),(79,'벌써 11기라니..','2023-11-15 14:56:59','2023-11-15 14:56:59',70,63),(80,'감자 사진도 올려줘요~~','2023-11-15 14:57:23','2023-11-15 14:57:23',40,63),(81,'어림도 없지 부활했습니다 ^^','2023-11-15 14:57:41','2023-11-15 14:57:41',27,63),(82,'근짱은 슬릭백을 10분간 출 수 있다','2023-11-15 14:58:05','2023-11-15 14:58:05',59,63),(83,'호쿤 누구냇','2023-11-15 15:08:32','2023-11-15 15:08:32',27,58),(84,'김승연 싸탈가자ㅏㅏ','2023-11-15 15:14:58','2023-11-15 15:14:58',27,83),(85,'고9마9워','2023-11-15 15:16:51','2023-11-15 15:16:51',1,84),(86,'넌 누구냐','2023-11-15 15:18:50','2023-11-15 15:18:50',77,58),(87,'슬릭백~~','2023-11-15 15:19:18','2023-11-15 15:19:18',78,58),(88,'킹치만 롤도 다이아인걸..','2023-11-15 15:20:20','2023-11-15 15:20:20',36,58),(89,'ㅎㅇ','2023-11-15 15:20:44','2023-11-15 15:20:44',77,79),(90,'싸탈 기원 2일차','2023-11-15 15:22:57','2023-11-15 15:22:57',27,58),(91,'난 누구냐','2023-11-15 15:23:01','2023-11-15 15:23:01',1,79),(92,'누구세요','2023-11-15 15:25:57','2023-11-15 15:25:57',1,58),(93,'우와~~ 삼성의 딸!!','2023-11-15 15:27:06','2023-11-15 15:27:06',27,39),(94,'EE','2023-11-15 15:27:19','2023-11-15 15:27:19',1,81),(95,'스크루지를 아세용 ? ㅠㅠ','2023-11-15 15:34:35','2023-11-15 15:34:35',80,60),(96,'스크루지... ','2023-11-15 15:34:52','2023-11-15 15:34:52',1,78),(97,'너가 내 ⭐이다...','2023-11-15 15:35:30','2023-11-15 15:35:30',1,78),(98,'김승연 멋있다아 ㅠㅠ','2023-11-15 15:35:44','2023-11-15 15:35:44',27,60),(99,'푸른피 ㄷㄷ','2023-11-15 15:35:46','2023-11-15 15:35:46',27,79),(100,'동또농.. 슬릭백..','2023-11-15 15:37:12','2023-11-15 15:37:12',79,58),(101,'우리조 다 T가 분명해~~','2023-11-15 15:39:57','2023-11-15 15:39:57',9,58),(102,'Mbti t인가요?','2023-11-15 15:40:23','2023-11-15 15:40:23',33,58),(103,'이건 뭐죠?','2023-11-15 15:40:46','2023-11-15 15:40:46',81,58),(104,'최영은 메롱','2023-11-15 15:40:55','2023-11-15 15:40:55',9,60),(105,'또동또도동','2023-11-15 15:40:59','2023-11-15 15:40:59',80,58),(106,'스크루지가 좋다면','2023-11-15 15:42:32','2023-11-15 15:42:32',80,78),(107,'⭐⭐⭐⭐⭐','2023-11-15 15:42:38','2023-11-15 15:42:38',80,78),(108,'혹시 어떻게 제목없이 글을 쓰신거죠..?','2023-11-15 15:44:08','2023-11-15 15:44:08',81,39),(109,'⭐⭐⭐⭐⭐','2023-11-15 15:47:22','2023-11-15 15:47:22',80,65),(110,'스크루지를 아세연~ ? ','2023-11-15 15:47:27','2023-11-15 15:47:27',80,65),(111,'더 지니어스 스포해주세요~!','2023-11-15 15:48:17','2023-11-15 15:48:17',27,87),(112,'홈리스고 궁금하네요..ㅎㅎ','2023-11-15 15:59:17','2023-11-15 15:59:17',21,78),(113,'시즌 4 우승자는 바로..!!!','2023-11-15 16:09:49','2023-11-15 16:09:49',27,58),(114,'https://ssafywiki.info/res/content/84/%EC%9D%B4%EC%83%81%ED%9B%88','2023-11-15 16:10:17','2023-11-15 16:10:17',84,86),(115,'https://ssafywiki.info/res/content/84/%EC%9D%B4%EC%83%81%ED%9B%88','2023-11-15 16:10:21','2023-11-15 16:10:21',1,86),(116,'이상훈 문서 삭제해주세요..','2023-11-15 16:10:25','2023-11-15 16:10:25',1,88),(117,'신고 넣었습니다','2023-11-15 16:10:32','2023-11-15 16:10:32',1,88),(118,'왜 계속 되돌리는거에요 ㅋㅋㅋㅋ','2023-11-15 16:12:49','2023-11-15 16:12:49',84,39),(119,'누가 되돌리는데요 계속 ㅋㅋㅋㅋ','2023-11-15 16:12:50','2023-11-15 16:12:50',84,24),(120,'우리 형 돌아가게 놔둬줘','2023-11-15 16:14:35','2023-11-15 16:14:35',84,90),(121,'휴~ 편안~','2023-11-15 16:15:06','2023-11-15 16:15:06',84,88),(122,'감사합니다!','2023-11-15 16:15:17','2023-11-15 16:15:17',1,88),(123,'안되에에에에','2023-11-15 16:15:24','2023-11-15 16:15:24',84,90),(124,'아','2023-11-15 16:15:35','2023-11-15 16:15:35',84,86),(125,'팀장님','2023-11-15 16:15:37','2023-11-15 16:15:37',84,86),(126,'팀장님','2023-11-15 16:15:38','2023-11-15 16:15:38',84,86),(127,'아','2023-11-15 16:15:39','2023-11-15 16:15:39',84,86),(128,'이상훈 돌려줘요','2023-11-15 16:15:42','2023-11-15 16:15:42',84,86),(129,'이상훈 돌려줘','2023-11-15 16:16:21','2023-11-15 16:16:21',84,91),(130,'돌려줘어어어','2023-11-15 16:16:36','2023-11-15 16:16:36',84,90),(131,'위키 기능의 재미를','2023-11-15 16:16:37','2023-11-15 16:16:37',84,92),(132,'잃어버렸네요..','2023-11-15 16:16:50','2023-11-15 16:16:50',84,92),(133,'재미도 없어라..','2023-11-15 16:16:55','2023-11-15 16:16:55',84,92),(134,'ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ','2023-11-15 16:17:09','2023-11-15 16:17:09',84,86),(135,'??','2023-11-15 16:17:11','2023-11-15 16:17:11',84,91),(136,'상훈이 말이 맞다','2023-11-15 16:17:22','2023-11-15 16:17:22',84,86),(137,'나무위키가 즐거운 이유가 뭔지 다시한번 생각해주세요','2023-11-15 16:17:28','2023-11-15 16:17:28',84,92),(138,'상훈이도 돌려달래요','2023-11-15 16:17:28','2023-11-15 16:17:28',84,91),(139,'운영자님','2023-11-15 16:17:29','2023-11-15 16:17:29',84,92),(140,'상훈 쨩 말이 맞지','2023-11-15 16:17:33','2023-11-15 16:17:33',84,90),(141,'다시 돌려주세요','2023-11-15 16:17:34','2023-11-15 16:17:34',84,91),(142,'상훈이 본인 등판했습니다 팀장님','2023-11-15 16:17:38','2023-11-15 16:17:38',84,86),(143,'도라이냐고','2023-11-15 16:17:38','2023-11-15 16:17:38',84,88),(144,'누구야','2023-11-15 16:17:39','2023-11-15 16:17:39',84,88),(145,'진짜','2023-11-15 16:17:40','2023-11-15 16:17:40',84,88),(146,'ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ','2023-11-15 16:17:41','2023-11-15 16:17:41',84,88),(147,'이렇게 강압적인 위키가','2023-11-15 16:17:44','2023-11-15 16:17:44',84,92),(148,'위키입니까?','2023-11-15 16:17:46','2023-11-15 16:17:46',84,92),(149,'옳소','2023-11-15 16:17:49','2023-11-15 16:17:49',84,91),(150,'민주주의를 돌려줘!','2023-11-15 16:17:51','2023-11-15 16:17:51',84,86),(151,'이럴거면 법전을 만들지','2023-11-15 16:17:56','2023-11-15 16:17:56',84,92),(152,'ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ','2023-11-15 16:17:59','2023-11-15 16:17:59',84,88),(153,'ㅋㅋㅋㅋㅋ','2023-11-15 16:18:01','2023-11-15 16:18:01',84,46),(154,'위키를 왜 쓰겠습니까 운영자님','2023-11-15 16:18:01','2023-11-15 16:18:01',84,92),(155,'이게 나라냐!','2023-11-15 16:18:02','2023-11-15 16:18:02',84,86),(156,'뉘셔','2023-11-15 16:18:02','2023-11-15 16:18:02',84,88),(157,'이럴거면 파전을 만들지','2023-11-15 16:18:03','2023-11-15 16:18:03',84,91),(158,'아냐','2023-11-15 16:18:05','2023-11-15 16:18:05',84,88),(159,'아니','2023-11-15 16:18:07','2023-11-15 16:18:07',84,88),(160,'이상훈 누구야','2023-11-15 16:18:08','2023-11-15 16:18:08',84,88),(161,'풀어주십쇼','2023-11-15 16:18:18','2023-11-15 16:18:18',84,92),(162,'누가 진짜죠?','2023-11-15 16:18:24','2023-11-15 16:18:24',84,46),(163,'본인이 간곡히 부탁하네..','2023-11-15 16:18:27','2023-11-15 16:18:27',84,86),(164,'제가 진짜죠','2023-11-15 16:18:28','2023-11-15 16:18:28',84,88),(165,'그냥 즐겁게','2023-11-15 16:18:29','2023-11-15 16:18:29',84,92),(166,'T.T','2023-11-15 16:18:30','2023-11-15 16:18:30',84,86),(167,'즐기도록','2023-11-15 16:18:31','2023-11-15 16:18:31',84,92),(168,'ㅋㅋㅋㅋㅋㅋㅋㅋ','2023-11-15 16:18:31','2023-11-15 16:18:31',84,88),(169,'아니','2023-11-15 16:18:33','2023-11-15 16:18:33',84,88),(170,'두고 싶습니다','2023-11-15 16:18:34','2023-11-15 16:18:34',84,92),(171,'저 도라이','2023-11-15 16:18:34','2023-11-15 16:18:34',84,88),(172,'역시 상훈이','2023-11-15 16:18:36','2023-11-15 16:18:36',84,86),(173,'이상훈 누구야','2023-11-15 16:18:37','2023-11-15 16:18:37',84,88),(174,'쿨하다!','2023-11-15 16:18:37','2023-11-15 16:18:37',84,86),(175,'싫은척 하는거까지가','2023-11-15 16:18:42','2023-11-15 16:18:42',84,92),(176,'미식인 조용히해','2023-11-15 16:18:43','2023-11-15 16:18:43',84,88),(177,'훈하다 상쿨이!','2023-11-15 16:18:45','2023-11-15 16:18:45',84,86),(178,'리액션의','2023-11-15 16:18:45','2023-11-15 16:18:45',84,92),(179,'이상훈이 진짜야','2023-11-15 16:18:45','2023-11-15 16:18:45',84,91),(180,'완성이라고요','2023-11-15 16:18:48','2023-11-15 16:18:48',84,92),(181,'ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ','2023-11-15 16:18:50','2023-11-15 16:18:50',84,88),(182,'ㅗㅗ','2023-11-15 16:18:51','2023-11-15 16:18:51',84,88),(183,'돌려줘요 이상훈문서','2023-11-15 16:18:54','2023-11-15 16:18:54',84,91),(184,'신고도 일종의 퍼포먼스','2023-11-15 16:19:00','2023-11-15 16:19:00',84,86),(185,'그럴리가;','2023-11-15 16:19:03','2023-11-15 16:19:03',84,88),(186,'싸피위키는 그의 무대','2023-11-15 16:19:08','2023-11-15 16:19:08',84,86),(187,'진짜 신고한거임','2023-11-15 16:19:08','2023-11-15 16:19:08',84,88),(188,'관리자에게 보여주려고 신고한거임','2023-11-15 16:19:10','2023-11-15 16:19:10',84,91),(189,';;','2023-11-15 16:19:11','2023-11-15 16:19:11',84,88),(190,'그만','2023-11-15 16:19:12','2023-11-15 16:19:12',84,88),(191,'SSAFY인들이 가꾸어 나가는 공간','2023-11-15 16:19:14','2023-11-15 16:19:14',84,92),(192,'하아','2023-11-15 16:19:15','2023-11-15 16:19:15',84,90),(193,'싸피위키의','2023-11-15 16:19:17','2023-11-15 16:19:17',84,92),(194,'대문글','2023-11-15 16:19:19','2023-11-15 16:19:19',84,92),(195,'나 다시 돌려줘여','2023-11-15 16:19:21','2023-11-15 16:19:21',84,90),(196,'ㅋㅋㅋㅋㅋ','2023-11-15 16:19:21','2023-11-15 16:19:21',84,24),(197,'첫번째가','2023-11-15 16:19:22','2023-11-15 16:19:22',84,92),(198,'SSAFY인들이 가꾸어 나가는 공간','2023-11-15 16:19:23','2023-11-15 16:19:23',84,92),(199,'인데','2023-11-15 16:19:24','2023-11-15 16:19:24',84,92),(200,'진짜 이상훈 등판했다','2023-11-15 16:19:27','2023-11-15 16:19:27',84,86),(201,'ㄷㄷㄷ','2023-11-15 16:19:29','2023-11-15 16:19:29',84,86),(202,'이건 저희가 가꾸어가는 공간이','2023-11-15 16:19:29','2023-11-15 16:19:29',84,92),(203,'내 글 어디갔노','2023-11-15 16:19:31','2023-11-15 16:19:31',84,90),(204,'누구야','2023-11-15 16:19:31','2023-11-15 16:19:31',84,88),(205,'아니지 않나요?','2023-11-15 16:19:32','2023-11-15 16:19:32',84,92),(206,'안녕하세요','2023-11-15 16:19:33','2023-11-15 16:19:33',84,93),(207,'다 나가','2023-11-15 16:19:34','2023-11-15 16:19:34',84,88),(208,'ㅠㅠ','2023-11-15 16:19:34','2023-11-15 16:19:34',84,92),(209,'돌려드리겠습니다..','2023-11-15 16:19:35','2023-11-15 16:19:35',84,24),(210,'아냐','2023-11-15 16:19:37','2023-11-15 16:19:37',84,88),(211,'진짜 이상훈입니다','2023-11-15 16:19:37','2023-11-15 16:19:37',84,93),(212,'좋아아','2023-11-15 16:19:39','2023-11-15 16:19:39',84,90),(213,'아닝','2023-11-15 16:19:39','2023-11-15 16:19:39',84,88),(214,'이상훈이상해','2023-11-15 16:19:39','2023-11-15 16:19:39',84,91),(215,'감사합니다','2023-11-15 16:19:40','2023-11-15 16:19:40',84,92),(216,'ㅁㄴㄴ','2023-11-15 16:19:40','2023-11-15 16:19:40',84,88),(217,'ㄴ','2023-11-15 16:19:40','2023-11-15 16:19:40',84,88),(218,'ㄴ','2023-11-15 16:19:41','2023-11-15 16:19:41',84,88),(219,'ㄴ','2023-11-15 16:19:41','2023-11-15 16:19:41',84,88),(220,'ㄴ','2023-11-15 16:19:41','2023-11-15 16:19:41',84,88),(221,'ㄴ','2023-11-15 16:19:41','2023-11-15 16:19:41',84,88),(222,'ㄴ','2023-11-15 16:19:41','2023-11-15 16:19:41',84,88),(223,'ㄴ','2023-11-15 16:19:41','2023-11-15 16:19:41',84,88),(224,'ㄴ','2023-11-15 16:19:42','2023-11-15 16:19:42',84,88),(225,'ㄴ','2023-11-15 16:19:42','2023-11-15 16:19:42',84,88),(226,'ㄴ','2023-11-15 16:19:42','2023-11-15 16:19:42',84,88),(227,'그동안 속아서 미안해 상훈아','2023-11-15 16:19:43','2023-11-15 16:19:43',84,86),(228,'?','2023-11-15 16:19:43','2023-11-15 16:19:43',84,93),(229,'ㅋㅋㅋㅋㅋㅋㅋ','2023-11-15 16:19:43','2023-11-15 16:19:43',84,90),(230,'ㄱㄱㄱㄱㄱ','2023-11-15 16:19:45','2023-11-15 16:19:45',84,90),(231,'도배하지마세요 LSH','2023-11-15 16:19:45','2023-11-15 16:19:45',84,91),(232,'홍보 열심히 하겠습니다','2023-11-15 16:19:47','2023-11-15 16:19:47',84,92),(233,'LSH 나가세요','2023-11-15 16:19:47','2023-11-15 16:19:47',84,93),(234,'진짜 상훈이 말을 들어봅시다!','2023-11-15 16:19:47','2023-11-15 16:19:47',84,86),(235,'여기서라도','2023-11-15 16:19:53','2023-11-15 16:19:53',84,92),(236,'다 나가','2023-11-15 16:19:53','2023-11-15 16:19:53',84,88),(237,'인플루언서','2023-11-15 16:19:55','2023-11-15 16:19:55',84,92),(238,'그럼 세명의 상훈이가','2023-11-15 16:19:56','2023-11-15 16:19:56',84,86),(239,'야 여기','2023-11-15 16:19:56','2023-11-15 16:19:56',84,88),(240,'LSH 누구여','2023-11-15 16:19:57','2023-11-15 16:19:57',84,90),(241,'투표를 해서','2023-11-15 16:19:57','2023-11-15 16:19:57',84,86),(242,'하고 싶습니다','2023-11-15 16:19:57','2023-11-15 16:19:57',84,92),(243,'다수결로','2023-11-15 16:19:58','2023-11-15 16:19:58',84,86),(244,'김성인 강동윤','2023-11-15 16:19:59','2023-11-15 16:19:59',84,88),(245,'결정하죠?','2023-11-15 16:19:59','2023-11-15 16:19:59',84,86),(246,'니네 있나?','2023-11-15 16:20:03','2023-11-15 16:20:03',84,88),(247,'나가','2023-11-15 16:20:04','2023-11-15 16:20:04',84,88),(248,'자자','2023-11-15 16:20:07','2023-11-15 16:20:07',84,86),(249,'이상훈남 저거','2023-11-15 16:20:09','2023-11-15 16:20:09',84,88),(250,'삼 상훈','2023-11-15 16:20:09','2023-11-15 16:20:09',84,86),(251,'투표기능','2023-11-15 16:20:11','2023-11-15 16:20:11',84,92),(252,'있나요?','2023-11-15 16:20:12','2023-11-15 16:20:12',84,92),(253,'찬성 반대','2023-11-15 16:20:12','2023-11-15 16:20:12',84,86),(254,'퀴즈풀떄 한거잖아','2023-11-15 16:20:12','2023-11-15 16:20:12',84,88),(255,'나가','2023-11-15 16:20:13','2023-11-15 16:20:13',84,88),(256,'투표는','2023-11-15 16:20:15','2023-11-15 16:20:15',84,86),(257,'LSH는 나가','2023-11-15 16:20:15','2023-11-15 16:20:15',84,91),(258,'P:ON에서','2023-11-15 16:20:18','2023-11-15 16:20:18',84,86),(259,'다 나가','2023-11-15 16:20:18','2023-11-15 16:20:18',84,88),(260,'하시면 됩니다','2023-11-15 16:20:20','2023-11-15 16:20:20',84,86),(261,'팍씨','2023-11-15 16:20:22','2023-11-15 16:20:22',84,88),(262,'홍보','2023-11-15 16:20:22','2023-11-15 16:20:22',84,92),(263,'에반데요?','2023-11-15 16:20:24','2023-11-15 16:20:24',84,92),(264,'내가 이상훈이다 접어','2023-11-15 16:20:25','2023-11-15 16:20:25',84,93),(265,'이상한이상훈','2023-11-15 16:20:31','2023-11-15 16:20:31',84,56),(266,'접어','2023-11-15 16:20:34','2023-11-15 16:20:34',84,90),(267,'다 나가','2023-11-15 16:20:51','2023-11-15 16:20:51',84,88),(268,'아니','2023-11-15 16:20:58','2023-11-15 16:20:58',84,88),(269,'제가 나온 UCC 업로드 하고싶은데 싸피위키에서 비디오 업로드 지원하나요?','2023-11-15 16:20:59','2023-11-15 16:20:59',84,93),(270,'와 이상훈위키','2023-11-15 16:20:59','2023-11-15 16:20:59',84,91),(271,'램-ㄴ]','2023-11-15 16:21:00','2023-11-15 16:21:00',84,88),(272,'왜 돌아ㅇㅁㄴ야','2023-11-15 16:21:00','2023-11-15 16:21:00',84,88),(273,'와 역시','2023-11-15 16:21:00','2023-11-15 16:21:00',84,86),(274,'ㅇㄹ]ㅁ','2023-11-15 16:21:01','2023-11-15 16:21:01',84,88),(275,'ㄴㅇㄻ','2023-11-15 16:21:01','2023-11-15 16:21:01',84,88),(276,'ㄴㅇㅀㅎㅁ','2023-11-15 16:21:01','2023-11-15 16:21:01',84,88),(277,'ㅇㄹ휴,ㅏㄴ리ㅡ','2023-11-15 16:21:02','2023-11-15 16:21:02',84,88),(278,'예아','2023-11-15 16:21:03','2023-11-15 16:21:03',84,90),(279,'민주주의는 승리한다!','2023-11-15 16:21:04','2023-11-15 16:21:04',84,86),(280,'제가 나온 UCC 업로드 하고싶은데 싸피위키에서 비디오 업로드 지원하나요?','2023-11-15 16:21:10','2023-11-15 16:21:10',84,93),(281,'2:1로 상훈의 승이다','2023-11-15 16:21:12','2023-11-15 16:21:12',84,86),(282,'원합니다 !','2023-11-15 16:21:16','2023-11-15 16:21:16',84,86),(283,'이상훈 해명해','2023-11-15 16:21:16','2023-11-15 16:21:16',84,91),(284,'ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ','2023-11-15 16:21:18','2023-11-15 16:21:18',84,88),(285,'패드립','2023-11-15 16:21:18','2023-11-15 16:21:18',84,91),(286,'진자','2023-11-15 16:21:20','2023-11-15 16:21:20',84,88),(287,'비디오 링크 업로드 가능하지 않나요?','2023-11-15 16:21:22','2023-11-15 16:21:22',84,90),(288,'도라이들이네','2023-11-15 16:21:22','2023-11-15 16:21:22',84,88),(289,'고아객체는...','2023-11-15 16:21:24','2023-11-15 16:21:24',84,92),(290,'ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ','2023-11-15 16:21:24','2023-11-15 16:21:24',84,88),(291,'죄송합니다','2023-11-15 16:21:27','2023-11-15 16:21:27',84,92),(292,'고아객체는 ','2023-11-15 16:21:29','2023-11-15 16:21:29',84,88),(293,'gif로 올리면 가능할거에요','2023-11-15 16:21:29','2023-11-15 16:21:29',84,24),(294,'제 영상 올려도 될까요?','2023-11-15 16:21:31','2023-11-15 16:21:31',84,90),(295,'감쟈합니다.','2023-11-15 16:21:34','2023-11-15 16:21:34',84,90),(296,'진 나가','2023-11-15 16:21:39','2023-11-15 16:21:39',84,88),(297,'ㅖ','2023-11-15 16:21:40','2023-11-15 16:21:40',84,91),(298,'다 나가','2023-11-15 16:21:40','2023-11-15 16:21:40',84,88),(299,'운영이 아주 야무지네요','2023-11-15 16:21:41','2023-11-15 16:21:41',84,90),(300,'그만 나가','2023-11-15 16:21:42','2023-11-15 16:21:42',84,88),(301,'싸피 에서 쓸수있는 상훈티콘 모음 올려주시면 감사하겠습니다','2023-11-15 16:21:43','2023-11-15 16:21:43',84,93),(302,'하지만 권은비 직캠은','2023-11-15 16:21:44','2023-11-15 16:21:44',84,92),(303,'다나가','2023-11-15 16:21:45','2023-11-15 16:21:45',84,88),(304,'진실입니다','2023-11-15 16:21:46','2023-11-15 16:21:46',84,92),(305,'사과할 생각','2023-11-15 16:21:48','2023-11-15 16:21:48',84,92),(306,'202팀, 최우수 드립니다.','2023-11-15 16:21:49','2023-11-15 16:21:49',84,86),(307,'없습니다','2023-11-15 16:21:49','2023-11-15 16:21:49',84,92),(308,'나가','2023-11-15 16:21:50','2023-11-15 16:21:50',84,88),(309,'다나가','2023-11-15 16:21:51','2023-11-15 16:21:51',84,88),(310,'다나까','2023-11-15 16:21:57','2023-11-15 16:21:57',84,56),(311,'권은비 좋습니다','2023-11-15 16:21:59','2023-11-15 16:21:59',84,90),(312,'권은비 같은 여자가 이상형입니다','2023-11-15 16:21:59','2023-11-15 16:21:59',84,92),(313,'권은비 문서도 작성 부탁드립니다','2023-11-15 16:22:09','2023-11-15 16:22:09',84,24),(314,'이상형일순 있잖아요..','2023-11-15 16:22:13','2023-11-15 16:22:13',84,92),(315,'정확히 파란 옷 입은 권은비라고 합니다','2023-11-15 16:22:18','2023-11-15 16:22:18',84,86),(316,'정정 부탁드립니다 상훈님들','2023-11-15 16:22:23','2023-11-15 16:22:23',84,86),(317,'파란옷이','2023-11-15 16:22:24','2023-11-15 16:22:24',84,92),(318,'레전드거든요','2023-11-15 16:22:26','2023-11-15 16:22:26',84,92),(319,'물따는 장면 보셨나요? 운영자님?','2023-11-15 16:22:35','2023-11-15 16:22:35',84,92),(320,'문서 반달 그만하세요','2023-11-15 16:22:43','2023-11-15 16:22:43',84,56),(321,'여러분','2023-11-15 16:23:27','2023-11-15 16:23:27',84,86),(322,'이상훈','2023-11-15 16:23:28','2023-11-15 16:23:28',84,86),(323,'돌아왔습니다','2023-11-15 16:23:30','2023-11-15 16:23:30',84,86),(324,'이상훈문서 왜 삭제됐죠','2023-11-15 16:23:32','2023-11-15 16:23:32',84,91),(325,'돌아왔습니다','2023-11-15 16:23:36','2023-11-15 16:23:36',84,92),(326,'오','2023-11-15 16:23:36','2023-11-15 16:23:36',84,91),(327,'죄송합니다','2023-11-15 16:23:37','2023-11-15 16:23:37',84,92),(328,'감사합니다','2023-11-15 16:23:39','2023-11-15 16:23:39',84,91),(329,'돌아왔어요','2023-11-15 16:23:41','2023-11-15 16:23:41',84,90),(330,'잘못 눌렀어요','2023-11-15 16:23:41','2023-11-15 16:23:41',84,92),(331,'감사합니다','2023-11-15 16:23:42','2023-11-15 16:23:42',84,93),(332,'히히','2023-11-15 16:23:44','2023-11-15 16:23:44',84,92),(333,'호호','2023-11-15 16:23:47','2023-11-15 16:23:47',84,93),(334,'히힝','2023-11-15 16:23:48','2023-11-15 16:23:48',84,90),(335,'헉','2023-11-15 16:24:07','2023-11-15 16:24:07',84,91),(336,'여러분','2023-11-15 16:24:13','2023-11-15 16:24:13',84,86),(337,'스타 찍어주세요','2023-11-15 16:24:15','2023-11-15 16:24:15',84,86),(338,'와 뭐임','2023-11-15 16:24:17','2023-11-15 16:24:17',84,91),(339,'저기..','2023-11-15 16:24:26','2023-11-15 16:24:26',84,92),(340,'그','2023-11-15 16:24:27','2023-11-15 16:24:27',84,92),(341,'파란옷으로','2023-11-15 16:24:29','2023-11-15 16:24:29',84,92),(342,'올려주시지 ㅠㅠ','2023-11-15 16:24:32','2023-11-15 16:24:32',84,92),(343,'ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ','2023-11-15 16:25:07','2023-11-15 16:25:07',84,90),(344,'이상훈이','2023-11-15 16:25:33','2023-11-15 16:25:33',84,86),(345,'권은비 사진 올린후로','2023-11-15 16:25:36','2023-11-15 16:25:36',84,86),(346,'삭제를 안하고 있습니다 여러분','2023-11-15 16:25:40','2023-11-15 16:25:40',84,86),(347,'gg','2023-11-15 16:25:41','2023-11-15 16:25:41',84,88),(348,'직접올린건가요','2023-11-15 16:25:41','2023-11-15 16:25:41',84,91),(349,'ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ','2023-11-15 16:25:44','2023-11-15 16:25:44',84,88),(350,'ㄷㄷ','2023-11-15 16:25:45','2023-11-15 16:25:45',84,91),(351,'사진을 보며 함박웃음','2023-11-15 16:25:52','2023-11-15 16:25:52',84,91),(352,'zzzzzzzzzzzz','2023-11-15 16:26:03','2023-11-15 16:26:03',84,94),(353,'?','2023-11-15 16:26:28','2023-11-15 16:26:28',84,92),(354,'잠시','2023-11-15 16:27:07','2023-11-15 16:27:07',84,93),(355,'집중','2023-11-15 16:27:09','2023-11-15 16:27:09',84,93),(356,'상훈이가 할말있대 얘들아','2023-11-15 16:27:20','2023-11-15 16:27:20',84,86),(357,'아니','2023-11-15 16:27:23','2023-11-15 16:27:23',84,92),(358,'이거 왜 채팅','2023-11-15 16:27:27','2023-11-15 16:27:27',84,92),(359,'저장이 안되나요','2023-11-15 16:27:29','2023-11-15 16:27:29',84,92),(360,'고장 난거 같은데','2023-11-15 16:27:33','2023-11-15 16:27:33',84,92),(361,'그러게요','2023-11-15 16:27:36','2023-11-15 16:27:36',84,91),(362,'고쳐줘 이상훈','2023-11-15 16:27:43','2023-11-15 16:27:43',84,91),(363,'고쳐줘요 관리자님','2023-11-15 16:27:43','2023-11-15 16:27:43',84,86),(364,'고장 문의 이상훈 개인MM 부탁드립니다','2023-11-15 16:27:43','2023-11-15 16:27:43',84,93),(365,'유료결제 하시면 저장해드립니다.','2023-11-15 16:27:46','2023-11-15 16:27:46',84,56),(366,'여러분 스타 찍어주세요','2023-11-15 16:27:56','2023-11-15 16:27:56',84,86),(367,'홍보도 부탁드립니다','2023-11-15 16:27:58','2023-11-15 16:27:58',84,86),(368,'저 꿈이 비오입니다','2023-11-15 16:28:07','2023-11-15 16:28:07',84,92),(369,'카우링 스타~','2023-11-15 16:28:09','2023-11-15 16:28:09',84,92),(370,'다들 열심히 홍보 부탁드립니다','2023-11-15 16:28:17','2023-11-15 16:28:17',84,92),(371,'일자알햇다','2023-11-15 17:08:46','2023-11-15 17:08:46',84,91),(372,'여러분의 성화로 픽스했습니다!','2023-11-15 17:13:49','2023-11-15 17:13:49',84,24),(373,'채팅 픽스완료','2023-11-15 17:14:13','2023-11-15 17:14:13',1,24),(374,'!!','2023-11-15 17:50:12','2023-11-15 17:50:12',84,24),(375,'관리자K 누구...?','2023-11-15 17:58:20','2023-11-15 17:58:20',84,88),(376,'개미는 뚠뚠 오늘도 뚠뚠','2023-11-16 09:11:43','2023-11-16 09:11:43',1,61),(377,'개미는 뚠뚠 오늘도 뚠뚠','2023-11-16 09:12:22','2023-11-16 09:12:22',76,61),(378,'마약팀..ㄷㄷ.ㄷ.','2023-11-16 09:28:43','2023-11-16 09:28:43',73,58),(379,'열시미 일을 하네','2023-11-16 09:53:58','2023-11-16 09:53:58',1,58),(380,'뽑아줘','2023-11-16 09:54:19','2023-11-16 09:54:19',69,58),(381,'감자 키우시나요?','2023-11-16 09:54:43','2023-11-16 09:54:43',40,58),(382,'관리자님 이거 못삭제하게 하면 안되나요','2023-11-16 14:05:38','2023-11-16 14:05:38',84,98),(383,'500원입니다.','2023-11-16 14:06:09','2023-11-16 14:06:09',84,56),(384,'승연이한테 송금하겠습니다.','2023-11-16 14:06:18','2023-11-16 14:06:18',84,98),(385,'아...','2023-11-16 14:06:28','2023-11-16 14:06:28',84,56),(386,'어 500원이면 되ㅏ나요?','2023-11-16 14:10:02','2023-11-16 14:10:02',84,86),(387,'계좌 불러주시죠','2023-11-16 14:10:07','2023-11-16 14:10:07',84,86),(388,'관리자님','2023-11-16 14:10:08','2023-11-16 14:10:08',84,91),(389,'구희영문서 없애주세요','2023-11-16 14:10:11','2023-11-16 14:10:11',84,91),(390,'저도 접근못하는','2023-11-16 14:10:14','2023-11-16 14:10:14',84,91),(391,'private','2023-11-16 14:10:17','2023-11-16 14:10:17',84,91),(392,'관리자님','2023-11-16 14:11:49','2023-11-16 14:11:49',84,86),(393,'존경합니다','2023-11-16 14:11:53','2023-11-16 14:11:53',84,86),(394,'관리자님','2023-11-16 14:12:09','2023-11-16 14:12:09',84,86),(395,'관리자님','2023-11-16 14:12:11','2023-11-16 14:12:11',84,86),(396,'LSH 탈퇴시켜주세요','2023-11-16 14:12:16','2023-11-16 14:12:16',84,86),(397,'LSH 블랙리스트','2023-11-16 14:12:28','2023-11-16 14:12:28',84,91),(398,'등록해주세요','2023-11-16 14:12:30','2023-11-16 14:12:30',84,91),(399,'반달 그만 해 주세요....','2023-11-16 14:15:16','2023-11-16 14:15:16',84,56),(400,'헉 ㄷㄷ','2023-11-16 14:20:26','2023-11-16 14:20:26',59,58),(401,'돌아온 LSH','2023-11-16 14:26:25','2023-11-16 14:26:25',98,91),(402,'아 두근두근 기대하면서 들어왔는데','2023-11-16 14:38:40','2023-11-16 14:38:40',99,35),(403,'전여친이랑 800일에 헤어졌답니다','2023-11-16 14:42:21','2023-11-16 14:42:21',21,35),(404,'구희영 (0959108) 문서 지웠습니다. 새로 생성해주세요 !!!','2023-11-16 14:43:52','2023-11-16 14:43:52',84,24),(405,'ㅋㅋㅋㅋ','2023-11-16 14:46:05','2023-11-16 14:46:05',99,58),(406,'프라이빗 문서를 테스트해보앗습니다','2023-11-16 14:46:13','2023-11-16 14:46:13',99,58),(407,'앗 뭐야','2023-11-16 19:31:05','2023-11-16 19:31:05',99,39),(408,'논란 억울합니다','2023-11-16 19:32:43','2023-11-16 19:32:43',9,39),(409,'하항','2023-11-16 22:58:17','2023-11-16 22:58:17',1,101),(410,'siu','2023-11-16 23:03:03','2023-11-16 23:03:03',1,37),(411,'siu','2023-11-16 23:03:49','2023-11-16 23:03:49',59,37),(412,'오오','2023-11-16 23:04:54','2023-11-16 23:04:54',56,37),(413,'안녕하세요','2023-11-16 23:05:43','2023-11-16 23:05:43',33,37),(414,'장점이 너무 많은 부울경캠','2023-11-17 00:14:32','2023-11-17 00:14:32',13,24),(415,'고생했습니다???','2023-11-17 11:37:55','2023-11-17 11:37:55',1,63);
/*!40000 ALTER TABLE `discussions` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-17 11:44:31