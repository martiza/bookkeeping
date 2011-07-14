CREATE TABLE `money_accounts` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `account_type` enum('income','expense','bank','equity','creditcard','loan') NOT NULL,
  `account_name` varchar(100) DEFAULT '',
  PRIMARY KEY (`account_id`),
  KEY `user` (`user_id`)
);

CREATE TABLE `txn` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`transaction_id`),
  KEY `user_date` (`user_id`,`date`),
  KEY `user_account` (`user_id`,`account_id`)
);

