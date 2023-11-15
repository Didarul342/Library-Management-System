DROP TABLE IF EXISTS `authors`;

CREATE TABLE `authors` (
  `idauthor` int(11) NOT NULL AUTO_INCREMENT,
  `author_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idauthor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

LOCK TABLES `authors` WRITE;

INSERT INTO `authors` VALUES (1,'Mahmoud Ahmed'),(2,'sayed'),(3,'ali');

UNLOCK TABLES;

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(45) DEFAULT NULL,
  `book_description` varchar(100) DEFAULT NULL,
  `book_code` varchar(45) DEFAULT NULL,
  `book_category` varchar(30) DEFAULT NULL,
  `book_author` varchar(30) DEFAULT NULL,
  `book_publisher` varchar(30) DEFAULT NULL,
  `book_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

LOCK TABLES `book` WRITE;

INSERT INTO `book` VALUES (2,'space travel','space travel 3','002','Sport','Mahmoud Ahmed','Ahmed Ali',120),(3,'python coding','python tutorials','003','Gaming','sayed','maati',50),(4,'python programming','this is a book for python','004','Drama','Mahmoud Ahmed','Ahmed Ali',50),(5,'pyqt library system','a real project with pyqt5','005','Drama','sayed','ahmed',200),(6,'pyqt5 project','build a library system','006','Gaming','Mahmoud Ahmed','Ahmed Ali',40);

UNLOCK TABLES;

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `idcategory` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

LOCK TABLES `category` WRITE;

INSERT INTO `category` VALUES (1,'Gaming'),(2,'Drama'),(3,'Sport'),(4,'Cooking');

UNLOCK TABLES;

DROP TABLE IF EXISTS `clients`;

CREATE TABLE `clients` (
  `idclients` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(45) DEFAULT NULL,
  `client_email` varchar(45) DEFAULT NULL,
  `client_nationalid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idclients`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

LOCK TABLES `clients` WRITE;

INSERT INTO `clients` VALUES (2,'mahmoud','mahmoud@gmail.com','2123213124'),(3,'ahmed','ahmed@gmail.com','21232674676'),(4,'jack','jack22@gmail.com','123142423'),(5,'john33','john33@gmail.com','4534636346');

UNLOCK TABLES;

DROP TABLE IF EXISTS `dayoperations`;

CREATE TABLE `dayoperations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(45) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `client` varchar(45) DEFAULT NULL,
  `to` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `dayoperations` WRITE;

INSERT INTO `dayoperations` VALUES (1,'space','Retrieve',4,'2019-01-08',NULL,NULL),(2,'python','Retrieve',4,'2019-01-09','mahmoud',NULL);

UNLOCK TABLES;

DROP TABLE IF EXISTS `publisher`;

CREATE TABLE `publisher` (
  `idpublisher` int(11) NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpublisher`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

LOCK TABLES `publisher` WRITE;

INSERT INTO `publisher` VALUES (1,'Ahmed Ali'),(2,'amal'),(3,'maati'),(4,'ahmed'),(5,'sayed');

UNLOCK TABLES;

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `idusers` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) DEFAULT NULL,
  `user_email` varchar(45) DEFAULT NULL,
  `user_password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;

INSERT INTO `users` VALUES (1,'mahmoud ahmed','pythondeveloper6@gmail.com','12345'),(2,'ahmed2','ahmed10@gmail.com','1234');

UNLOCK TABLES;
