INSERT INTO `settings` VALUES(NULL, 1, 'bookkeeping', 'enabled', 'TRUE');

CREATE TABLE `money_account_types` (
  `name` varchar(15) DEFAULT NULL,
  `type` enum('debit','credit') DEFAULT NULL
  /* add other descriptive columns like friendly name, description */
);

CREATE TABLE `money_accounts` ( /* use SI categories instead */
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `account_type` enum('asset','liability','income','expense','equity') NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`account_id`),
  KEY `user` (`user_id`)
);

CREATE TABLE `money_transactions` ( /* use SI activity instead */
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
);

CREATE TABLE `money_journal` (
  `journal_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `debit` decimal(10,2) DEFAULT NULL,
  `credit` decimal(10,2) DEFAULT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`journal_id`),
  KEY `user_date` (`transaction_id`,`date`),
  KEY `user_account` (`transaction_id`,`account_id`)
);