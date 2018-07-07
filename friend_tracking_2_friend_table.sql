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

INSERT INTO `friend_table` VALUES (1,'Sarah','05/20/1999','Harvard','N/A','single'),
(2,'Thao','04/12/1998','MIT','N/A','single'),
(3,'Brandon','04/28/1998','Yale','+ 203-974-7300','single'),
(4,'Thu','11/23/1998','Princeton ','+1 609-258-3000','single');

ALTER TABLE `friend_table` ENABLE KEYS ;
UNLOCK TABLES;

select * from friend_tracking_2.friend_table;