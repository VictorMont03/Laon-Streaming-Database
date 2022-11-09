-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: laon
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
-- Table structure for table `films-categories`
--

DROP TABLE IF EXISTS `films-categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films-categories` (
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(45) DEFAULT NULL,
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films-categories`
--

LOCK TABLES `films-categories` WRITE;
/*!40000 ALTER TABLE `films-categories` DISABLE KEYS */;
INSERT INTO `films-categories` VALUES ('Ação','acao',1),('Aventura','aventura',2),('Terror','terror',3),('Suspense','suspense',4),('Comédia','comedia',5);
/*!40000 ALTER TABLE `films-categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `films_categories_relation`
--

DROP TABLE IF EXISTS `films_categories_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films_categories_relation` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `film_id` int unsigned DEFAULT NULL,
  `category_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1_film_category_idx` (`category_id`),
  KEY `FK2_film_category_idx` (`film_id`),
  CONSTRAINT `FK1_film_category` FOREIGN KEY (`category_id`) REFERENCES `films-categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK2_film_category` FOREIGN KEY (`film_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films_categories_relation`
--

LOCK TABLES `films_categories_relation` WRITE;
/*!40000 ALTER TABLE `films_categories_relation` DISABLE KEYS */;
INSERT INTO `films_categories_relation` VALUES (6,5,5),(7,5,2),(8,4,1),(9,4,2),(10,4,5),(11,6,3),(12,6,4),(13,11,1),(14,11,2);
/*!40000 ALTER TABLE `films_categories_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `original_title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `link_trailer` varchar(255) DEFAULT NULL,
  `release_year` int DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `genre` json DEFAULT NULL,
  `cast` mediumtext,
  `awards` mediumtext,
  `director` varchar(45) DEFAULT NULL,
  `rating` varchar(50) DEFAULT NULL,
  `synopsis` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (4,'Adão Negro','Black Adam','black-adam','https://cinearaujo.com.br/filmes/filme3225_cp.jpg','https://youtu.be/I3CpaqCK9B0',2022,'2h 06min',NULL,'Dwayne Johnson, Sarah Shahi, Viola Davis','','Jaume Collet-Serra','8.9','Adão Negro é o filme solo do anti-herói, baseado no personagem em quadrinhos Black Adam (Dwayne Johnson) da DC Comics, grande antagonista de Shazam!, tendo no longa, sua história de origem explorada, e revelando seu passado de escravo no país Kahndaq. Nascido no Egito Antigo, o anti-herói tem super força, velocidade, resistência, capacidade de voar e de disparar raios. Alter ego de Teth-Adam e filho do faraó Ramsés II, Adão Negro foi consumido por poderes mágicos e transformado em um feiticeiro. Grande inimigo de Shazam! nas HQs, apesar dele acreditar em seu pontecial e, inclusive, oferecê-lo como um guerreiro do bem, Adão Negro acaba usando suas habilidades especiais para o mal. O anti-herói em busca de redenção ou um herói que se tornou vilão, pode ser capaz de destruir tudo o que estiver pela frente - ou de encontrar seu caminho.'),(5,'One Piece Film RED','One Piece Film RED','one-piece-film-red','https://cinearaujo.com.br/filmes/filme3240_cp.jpg','https://www.youtube.com/watch?v=JvqcaQJgr-A',2022,'1h 55min',NULL,'Mayumi Tanaka, Shûichi Ikeda, Hiroaki Hirata','','Gorô Taniguchi','imdb: 9.5','Em ONE PIECE FILM RED todos conhecerão Uta, a cantora mais amada do planeta, cuja voz foi descrita como de outro mundo. Ela é conhecida por esconder sua própria identidade ao se apresentar. Agora, pela primeira vez, Uta se revelará ao mundo em um show ao vivo.Com a Marinha assistindo de perto, o local se enche de fãs de Uta - incluindo piratas animados e os Chapéus de Palha liderados por Luffy, que vieram para curtir sua performance - todos aguardam ansiosamente a voz que o mundo inteiro estava esperando. A história começa com a chocante revelação de que ela é a enigmática filha de Shanks'),(6,'A Luz do Demônio','Prey For The Devil','prey-for-the-devil','https://cinearaujo.com.br/filmes/filme3233_cp.jpg','https://www.youtube.com/watch?v=0C_qLS1HcVU',2022,'1h 33min',NULL,'Virginia Madsen, Colin Salmon, Jacqueline Byers','','Daniel Stamm','imdb: 7.5','Em A Luz do Demônio, as ocorrências de possessão demoníaca aumentaram nesses últimos anos, de acordo com o Vaticano. Para ajudar a combater o crescente números de casos, a Igreja decidiu abrir uma escola voltada a treinar padres aptos para praticar exorcismos. A Irmã Ann está entre os alunos da escola, e, apesar dela ser uma das únicas mulheres na escola, ela acredita que seu destino é realizar exorcismos. Quando um professor sente seu dom especial, permite que ela seja a primeira freira a estudar e dominar o ritual. Sua própria alma estará em perigo, pois as forças demoníacas que ela luta contra, revelam uma conexão misteriosa com seu passado traumático.'),(11,'Avatar: O Caminho da Água','Avatar: The Way of Water','avatar-the-way-of-water','https://cinearaujo.com.br/filmes/filme3232_f21.jpg','https://www.youtube.com/watch?v=fMdb0nGsICE',2022,'3h 01min',NULL,'Sam Worthington, Zoe Saldana, Sigourney Weaver','','James Cameron','imdb: 9.8','Em Avatar: O Caminho da Água, sequência de Avatar (2009), após dez anos da primeira batalha de Pandora entre os Na\'vi e os humanos, Jake Sully (Sam Worthington) vive pacificamente com sua família e sua tribo. Ele e Ney\'tiri formaram uma família e estão fazendo de tudo para ficarem juntos, devido a problemas conjugais e papéis que cada um tem que exercer dentro da tribo. No entanto, eles devem sair de casa e explorar as regiões de Pandora, indo para o mar e fazendo pactos com outros Na\'vi da região. Quando uma antiga ameaça ressurge, Jake deve travar uma guerra difícil contra os humanos novamente. Mesmo com dificuldade, Jake acaba fazendo novos aliados - alguns dos quais já vivem entre os Na\'vi e outros com novos avatares. Mesmo com uma guerra em curso, Jake e Ney\'tiri terão que fazer de tudo para ficarem juntos e cuidar da família e de sua tribo.');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `EMAIL` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'Eduarda','dudinha1@gmail.com','$2b$10$Ps1MBL6.LbcJZYBijk45WuGNX9D5./gSKZQQzD576BDvMW8lrBSdO',1),(4,'Victor','victor@gmail.com','$2b$10$lvvcmlDZCOTx4xG9Hz3tKu5LGSTPKFm7g/YZ4ysm1QSlR/s/4MyQG',2),(6,'Duarte','duarte@gmail.com','$2b$10$TlGkjSXDIEAnENSpeJBQ8OG2FjEN2a1CzMjWm/UIBTBk/rwLUsZRq',1),(7,'Teste','teste@gmail.com','$2b$10$6jpM79PWBtcv5E0VYGAeUuMR9klHHfFVxDIl321p2XlLBvXE0yQQC',2),(8,'Teste','teste12@gmail.com','$2b$10$sg5.QPye7Q4H1Pvjwo8xPOA8mchmKQX4SnJyPQCK/sPMWSFVI39RK',2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-09 13:57:35
