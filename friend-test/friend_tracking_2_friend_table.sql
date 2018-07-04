CREATE DATABASE  `friend_tracking_2`;
USE `friend_tracking_2`;
DROP TABLE IF EXISTS `friend_table`;
Create table `friend_table`(
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `birthday` varchar(50) NOT NULL,
  `school` varchar(50) NOT NULL,
  `cellphone` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'single',
  PRIMARY KEY (`id`,`cellphone`)
);

LOCK TABLES `friend_table` WRITE;

INSERT INTO `friend_table` VALUES (1,'Tung','05/20/1999','TSU','N/A','single'),
(2,'Thao','04/12/1998','TSU','N/A','single'),
(3,'Thu','11/23/1998','TSU ','+1 360-473-7534','single');

ALTER TABLE `friend_table` ENABLE KEYS ;
UNLOCK TABLES;
