-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: lostarkpvp
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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `ClassCode` int NOT NULL,
  `ClassName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ClassCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hit`
--

DROP TABLE IF EXISTS `hit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hit` (
  `HitCode` int NOT NULL,
  `HitName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`HitCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hit`
--

LOCK TABLES `hit` WRITE;
/*!40000 ALTER TABLE `hit` DISABLE KEYS */;
INSERT INTO `hit` VALUES (1,'약경직'),(2,'강경직');
/*!40000 ALTER TABLE `hit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `JobCode` int DEFAULT NULL,
  `JobName` varchar(45) NOT NULL,
  `ClassCode` int DEFAULT NULL,
  PRIMARY KEY (`JobName`),
  KEY `ClassCode` (`ClassCode`),
  CONSTRAINT `job_ibfk_1` FOREIGN KEY (`ClassCode`) REFERENCES `class` (`ClassCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (NULL,'건슬링어',NULL),(NULL,'기공사',NULL),(NULL,'기상술사',NULL),(NULL,'데모닉',NULL),(NULL,'데빌헌터',NULL),(NULL,'도화가',NULL),(NULL,'디스트로이어',NULL),(NULL,'리퍼',NULL),(NULL,'바드',NULL),(NULL,'배틀마스터',NULL),(NULL,'버서커',NULL),(NULL,'블래스터',NULL),(NULL,'블레이드',NULL),(NULL,'서머너',NULL),(NULL,'소서리스',NULL),(NULL,'소울이터',NULL),(NULL,'스카우터',NULL),(NULL,'스트라이커',NULL),(NULL,'슬레이어',NULL),(NULL,'아르카나',NULL),(NULL,'워로드',NULL),(NULL,'인파이터',NULL),(NULL,'창술사',NULL),(NULL,'호크아이',NULL),(NULL,'홀리나이트',NULL);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `Num` int NOT NULL AUTO_INCREMENT,
  `Contents` varchar(500) DEFAULT NULL,
  `Me` varchar(45) DEFAULT NULL,
  `You` varchar(45) DEFAULT NULL,
  `SkillName1` varchar(600) DEFAULT NULL,
  `SkillName2` varchar(45) DEFAULT NULL,
  `SkillName3` varchar(45) DEFAULT NULL,
  `SkillName4` varchar(45) DEFAULT NULL,
  `SkillName5` varchar(45) DEFAULT NULL,
  `id` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Num`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (88,'디스트로이어의[러닝 크래쉬][어스 이터]를[카운터 스피어]로 막는다','워로드','디스트로이어','러닝 크래쉬','어스 이터','카운터 스피어',NULL,NULL,'삭제하지마','asdf'),(92,'디스트로이어의[러닝 크래쉬][어스 이터]를[카운터 스피어]로 막는다','워로드','디스트로이어','러닝 크래쉬','어스 이터','카운터 스피어',NULL,NULL,'심리전고수','aaaa'),(93,'[마운틴 크래쉬][숄더 차지][윈드 블레이드]','버서커','워로드','마운틴 크래쉬','숄더 차지','윈드 블레이드',NULL,NULL,'apple','1111'),(94,'[갈고리 사슬][대쉬 어퍼 파이어][방패 돌진]','워로드','워로드','갈고리 사슬','대쉬 어퍼 파이어','방패 돌진',NULL,NULL,'zzz','1111'),(95,'[갈고리 사슬][대쉬 어퍼 파이어][방패 돌진]','인파이터','인파이터','갈고리 사슬','대쉬 어퍼 파이어','방패 돌진',NULL,NULL,'1111','aaaa'),(96,'[마운틴 크래쉬][마운틴 크래쉬][마운틴 크래쉬]','인파이터','워로드','마운틴 크래쉬','마운틴 크래쉬','마운틴 크래쉬',NULL,NULL,'1111','1234'),(97,'[갈고리 사슬][갈고리 사슬]','디스트로이어','리퍼','갈고리 사슬','갈고리 사슬',NULL,NULL,NULL,'심리전고수','123'),(99,'[어스 이터][어스 이터]','디스트로이어','리퍼','어스 이터','어스 이터',NULL,NULL,NULL,'심리전고수','123'),(101,'[러닝 크래쉬][러닝 크래쉬][러닝 크래쉬]','워로드','워로드','러닝 크래쉬','러닝 크래쉬','러닝 크래쉬',NULL,NULL,'심리전고수','aaaa'),(103,'[점핑 스매쉬][어스 이터][러닝 크래쉬]','디스트로이어','리퍼','점핑 스매쉬','어스 이터','러닝 크래쉬',NULL,NULL,'심리전고수','1234'),(104,'[방패 돌진][방패 돌진][방패 돌진]','디스트로이어','리퍼','방패 돌진','방패 돌진','방패 돌진',NULL,NULL,'심리전고수','1234'),(105,'아르카나의 [댄싱 오브 스파인플][다크 리저렉션]를 [카운터 스피어]로 막는다','워로드','아르카나','댄싱 오브 스파인플','다크 리저렉션','카운터 스피어',NULL,NULL,'심리전고수','1111'),(106,'[마리린]이 소환되면 [정의 집행]으로 카운터','홀리나이트','서머너','마리린','정의 집행',NULL,NULL,NULL,'apple','1111');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `JobCode` int DEFAULT NULL,
  `SkillName` varchar(45) NOT NULL,
  `SkillEx` varchar(500) DEFAULT NULL,
  `DefHit` varchar(45) DEFAULT NULL,
  `AttHit` varchar(45) DEFAULT NULL,
  `SkillImg` varchar(200) DEFAULT NULL,
  `JobName` varchar(45) DEFAULT NULL,
  `TripodName1` varchar(200) DEFAULT NULL,
  `TripodEx1` varchar(200) DEFAULT NULL,
  `TripodName2` varchar(200) DEFAULT NULL,
  `TripodEx2` varchar(200) DEFAULT NULL,
  `TripodName3` varchar(200) DEFAULT NULL,
  `TripodEx3` varchar(200) DEFAULT NULL,
  `TripodName4` varchar(200) DEFAULT NULL,
  `TripodEx4` varchar(200) DEFAULT NULL,
  `TripodName5` varchar(200) DEFAULT NULL,
  `TripodEx5` varchar(200) DEFAULT NULL,
  `TripodName6` varchar(200) DEFAULT NULL,
  `TripodEx6` varchar(200) DEFAULT NULL,
  `TripodName7` varchar(200) DEFAULT NULL,
  `TripodEx7` varchar(200) DEFAULT NULL,
  `TripodName8` varchar(200) DEFAULT NULL,
  `TripodEx8` varchar(200) DEFAULT NULL,
  `SkillThumb` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`SkillName`),
  KEY `JobCode` (`JobCode`),
  KEY `job_ibfk_1_idx` (`JobName`),
  CONSTRAINT `skill_job` FOREIGN KEY (`JobName`) REFERENCES `job` (`JobName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (NULL,'갈고리 사슬','갈고리 사슬을 길게 뻗어 83의 피해를 주고 적중된 적을 자신의 앞으로 끌어오며 94의 피해를 준다.','','','/images/3-1701531461694.gif','워로드',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/3Tja-1701531461695.png'),(NULL,'다크 리저렉션','지정한 위치에 카드를 던져 마법진을 소환해 93, 93, 739의 [암] 속성 피해를 주고 3.0초간 공포를 건다.','','','/images/5-1702210004689.gif','아르카나',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/5-1702210004691.png'),(NULL,'대쉬 어퍼 파이어','3m 전진하며 창을 쳐올려 85의 피해를 주고 상대를 공중에 띄운다. 추가 입력을 통해 포격 공격을 하여 337의 피해를 준다.','','','/images/1-1701531352174.gif','워로드',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/1Tja-1701531352176.png'),(NULL,'댄싱 오브 스파인플','지정한 방향으로 3초 동안 11m 이동하며 지속적으로 카드를 뿌려 63의 피해를 6회 주고, 마지막에 252의 피해를 준다. 이동하는 도중 스킬을 다시 한번 사용하면 처음 스킬을 사용했던 위치로 되돌아 간다.','','','/images/3-1702209923206.gif','아르카나',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/3-1702209923208.png'),(NULL,'돌진','순간적으로 6m 거리를 돌진하여 검으로 찔러 556의 피해를 준다.','','','/images/1-1702209433190.gif','홀리나이트',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/1-1702209433192.png'),(NULL,'러닝 크래쉬','홀딩 시 전방으로 질주하여 적에게 부딪혀 7회 걸쳐 총 372 피해를 주고 홀딩 완료 또는 키 입력을 때는 순간 중력에너지가 폭발하며 124의 피해를 주며 적중된 적을 띄워 올린다','','','/images/2-1701530796761.gif','디스트로이어',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/2Tja-1701530796764.png'),(NULL,'레이네의 가호','레이네의 가호를 받아 5초간 최대 생명력의 21%까지 피해를 흡수하는 보호막을 생성한다.','','','/images/4-1702210182481.gif','서머너',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/4-1702210182482.png'),(NULL,'리듬 벅샷','하프를 강하게 당겨 음표를 터트려 명중된 적에게 432의 피해를 주고 날려보낸다.','','','/images/5-1702210763631.gif','바드',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/5-1702210763634.png'),(NULL,'마리린','마리린을 소환한다. 마리린은 20초 동안 주변의 적들을 공격하며 기본 공격 시 144의 피해를 준다.','','','/images/2-1702210122440.gif','서머너',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/2-1702210122443.png'),(NULL,'마운틴 크래쉬','한 발을 강하게 바닥으로 내리쳐 반경 4m 내의 적에게 198의 [토] 속성 피해를 주고, 3.0초간 지진 상태로 만든다.','','','/images/2-1701531216332.gif','버서커',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/2Tja-1701531216333.png'),(NULL,'방출된 의지','돌풍을 날려 232의 피해를 주고 넘어뜨린다.','','','/images/5-1702210206819.gif','서머너',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/5-1702210206821.png'),(NULL,'방패 돌진','방패로 전방을 방어하며 빠르게 돌진한다. 돌진 공격 중에는 매 타격마다 51의 피해를 준다.','','','/images/2-1701531391021.gif','워로드',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/2Tja-1701531391024.png'),(NULL,'숄더 차지','지정된 방향으로 7m 돌진하며 경로상의 적들에게 총 151의 피해를 준다.','','','/images/1-1701531147796.gif','버서커',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/1Tja-1701531147797.png'),(NULL,'수호의 연주','하프를 연주해 자신 및 24m 범위 내에 있는 파티원의 받는 피해를 8초간 20% 감소시킨다.','','','/images/4-1702210738187.gif','바드',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/4-1702210738189.png'),(NULL,'슈르디','작은 빛의 정령 슈르디를 소환한다. 슈르디는 20초 동안 캐릭터와 함께 이동하며 주변의 적들을 공격하고 128의 피해를 준다.','','','/images/3-1702210155700.gif','서머너',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/3-1702210155701.png'),(NULL,'스트림 오브 엣지','지정한 위치에 5초간 2개의 차원문을 열어 차원문과 차원문 사이에 위치한 적에게 총 22의 피해를 15회에 걸쳐 준다.','','','/images/4-1702209959618.gif','아르카나',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/4-1702209959621.png'),(NULL,'스파이럴 엣지','지정한 방향으로 도약해 7m 이동 중 카드를 날려 130의 피해를 준다.','','','/images/2-1702209887953.gif','아르카나',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/2-1702209887954.png'),(NULL,'신의 분노','자신의 무기에 신성한 번개의 기운을 떨어뜨려 주변에 1,011의 피해를 준다.','','','/images/3-1702209553516.gif','홀리나이트',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/3-1702209553517.png'),(NULL,'어스 이터','해머를 앞에서 뒤쪽으로 넘기면서 뒤쪽의 땅을 치며 적에게 피해를 285주고, 그대로 해머를 횡으로 휘두르면서 몸 전체를 회전시키면 바위 파편들이 해머에 붙어서 따라온다. 총 3회 회전하며 첫 번째 회전에서는 62의 피해를 두 번째 회전에서는 79의 피해를 세 번째 회전에서는 97의 피해를 준다. 한번 회전할 때마다 해머의 높이가 점점 올라가고, 세 번째 회전한 뒤 그대로 전방을 내려치면 바위 파편이 뒤따르면서 341의 피해를 준다.','','','/images/4-1701530974490.gif','디스트로이어',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/4Tja-1701530974493.png'),(NULL,'언리미티드 셔플','지정한 위치에 여러 장의 카드가 날아다녀 106의 피해를 총 6회 주고 적을 공중에 띄우며 45 피해를 주고 땅으로 내려찍으며 226의 피해를 준다.','','','/images/1-1702209847363.gif','아르카나',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/1-1702209847368.png'),(NULL,'윈드 블레이드','	대검을 휘두르며 이동하면서 583의 피해를 준다. 이동 중 모험가 및 일반 몬스터와 충돌이 무시된다.','','','/images/4-1701531294924.gif','버서커',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/4-1701531294925.png'),(NULL,'음파 진동','지정한 위치에 있는 적에게 273의 피해를 주고 공중에 띄우고, 지면으로 내리 꽂아 683의 피해를 주고, 잔류물이 남아 3초간 102의 피해를 4회 준다.','','','/images/1-1702210557419.gif','바드',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/1-1702210557424.png'),(NULL,'인듀어 페인','제자리에서 포효하면 주변 반경 6m 내의 적들에게 494의 피해를 준다. 스킬 사용 시 4초 동안 피격이상에 면역되고 받는 피해 15% 감소하며, 특정 보스 등급 이상에게 피격 시 발생하는 페널티 게이지가 50%감소한다. 공격 적중 시 중력 코어 3개를 획득한다.','','','/images/5-1701531016498.gif','디스트로이어',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/5Tja-1701531016501.png'),(NULL,'전류 방출','응축된 전류 구체를 날려 59의 [뇌] 속성 피해를 준 뒤, 최대 135의 [뇌] 속성 피해를 주는 전류 지대를 1초간 생성한다.','','','/images/1-1702210078939.gif','서머너',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/1-1702210078941.png'),(NULL,'점핑 스매쉬','크게 도약하여 10m 내 지정된 위치를 해머로 내려쳐 321의 피해를 준다. 공격 적중 시 중력 코어 2개를 획득한다.','','','/images/1-1701530749586.gif','디스트로이어',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/1ì¸-1701530749592.png'),(NULL,'정의 집행','검을 한손으로 들고 빠르게 제자리에서 회전하며 적에게 총 880의 피해를 주고 무수한 참격을 날려 375의 피해를 준다.','','','/images/5-1702209658850.gif','홀리나이트',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/5-1702209658853.png'),(NULL,'질주 베기','자세를 고쳐잡고 빠르게 질주한다. 질주 종료 시 검을 휘둘러 적에게 836의 피해를 주고 공중에 띄운다.','','','/images/2-1702209485130.gif','홀리나이트',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/2-1702209485134.png'),(NULL,'집행자의 검','양손으로 검을 쥐고 빠르게 올려쳐 363의 피해를 주며 공중에 띄우고 카운터 어택이 가능하다. 추가 입력을 하면 검에 힘을 모아 크게 돌려 베며 내려쳐 546의 피해를 주며 땅으로 내리꽂는다.','','','/images/4-1702209620396.gif','홀리나이트',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/4-1702209620398.png'),(NULL,'카운터 스피어','방패로 전방을 2초간 방어하며, 자신의 최대 생명력의 100% 만큼 적의 공격을 막아낼 수 있다. 이때 1초 안에 적의 공격을 방어하면 강력하게 반격하여 767의 피해를 주고 날려버린다.','','','/images/4-1701531494686.gif','워로드',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/4-1701531494688.png'),(NULL,'템페스트 슬래쉬','지정한 방향으로 약 4m가량 돌진하며 대검을 휘둘러 적에게 184의 피해를 주고 공중으로 띄운다. 콤보 입력 시 검을 쥐고 회전하여 129, 129의 피해를 준 후 295의 피해를 주며 내려찍는다.','','','/images/3-1701531260716.gif','버서커',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/3-1701531260719.png'),(NULL,'파워 숄더','몸을 움츠리고 전방으로 해머를 앞세워 5m 가량 돌진하며 4회 걸쳐 총 81 피해를 준다. 이후 콤보 입력 시 두 손으로 해머를 들어 올리며 239 피해를 주며 적중된 적을 띄워 ','','','/images/3-1701530878393.gif','디스트로이어',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/3Tja-1701530878396.png'),(NULL,'폭풍의 서곡','강렬한 음으로 폭풍을 불러내 주변에 368의 피해를 주고 3.0초간 기절시킨다.','','','/images/2-1702210591631.gif','바드',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/2-1702210591635.png'),(NULL,'행진곡','하프를 연주하며, 매 초 가장 가까운 적을 추적하는 음표를 소환해 77의 피해를 주고 이동 속도를 2초간 50% 감소시킨다.','','','/images/3-1702210701511.gif','바드',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/images/3-1702210701515.png');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tripod`
--

DROP TABLE IF EXISTS `tripod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tripod` (
  `TripodCode` int NOT NULL,
  `SkillName` varchar(45) NOT NULL,
  `TripodName` varchar(45) DEFAULT NULL,
  `TripodEx` varchar(500) DEFAULT NULL,
  `TripodOX` int DEFAULT NULL,
  PRIMARY KEY (`TripodCode`,`SkillName`),
  KEY `tripod_ibfk_1_idx` (`SkillName`),
  CONSTRAINT `tripod_ibfk_1` FOREIGN KEY (`SkillName`) REFERENCES `skill` (`SkillName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tripod`
--

LOCK TABLES `tripod` WRITE;
/*!40000 ALTER TABLE `tripod` DISABLE KEYS */;
/*!40000 ALTER TABLE `tripod` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-10 21:56:30
