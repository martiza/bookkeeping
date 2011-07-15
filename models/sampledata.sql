INSERT INTO `money_accounts` (`account_id`,`user_id`,`account_type`,`account_type2`,`account_name`)
VALUES
	(1, 1, 'asset', 'bank', 'Checking'),
	(2, 1, 'liability', 'liability', 'Accounts Payable'),
	(3, 1, 'asset', 'income', 'Accounts Receivable'),
	(4, 1, 'expense', 'expense', 'Hosting'),
	(5, 1, 'income', 'income', 'Consulting');

INSERT INTO `money_transactions` (`transaction_id`,`user_id`,`description`,`note`,`date_created`)
VALUES
	(1, 1, 'Linode', '', '2011-07-14 15:24:21'),
	(2, 1, 'Linode', '', '2011-07-14 15:25:11'),
	(3, 1, 'Happy Frog Apps', 'Invoice #1030', '2011-07-14 15:26:49'),
	(4, 1, 'Check from Happy Frog Apps', 'Invoice #1030', '2011-07-14 15:40:11');

INSERT INTO `money_journal` (`journal_id`,`user_id`,`transaction_id`,`account_id`,`date`,`debit`,`credit`,`description`,`note`)
VALUES
	(1, 1, 1, 4, '2011-05-31', 19.95, NULL, '', 'charged for hosting, increase the Hosting account (debit)'),
	(2, 1, 1, 1, '2011-05-31', NULL, 19.95, '', 'paid for hosting from bank, decrease bank account (credit)'),
	(3, 1, 2, 4, '2011-06-30', 19.95, NULL, '', 'charged for hosting, increase the Hosting account (debit)'),
	(4, 1, 2, 1, '2011-06-30', NULL, 19.95, '', 'paid for hosting from bank, decrease bank account (credit)'),
	(5, 1, 3, 3, '2011-07-05', 840.00, NULL, '', 'sent customer an invoice, increase accounts receivable (debit)'),
	(6, 1, 3, 5, '2011-07-05', NULL, 840.00, '', 'sent customer invoice, increase consulting account (credit)'),
	(7, 1, 4, 3, '2011-07-09', NULL, 840.00, '', 'received check from customer, decrease accounts receivable (credit)'),
	(8, 1, 4, 1, '2011-07-10', 840.00, NULL, '', 'deposited check in bank account, increase bank account (debit)');
