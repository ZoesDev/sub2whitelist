DROP TABLE IF EXISTS `whitelist`;

CREATE TABLE `whitelist` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `channel` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `minecraft_account` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

