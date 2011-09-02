Accounts
========

The `accounts` table holds a list of the user's accounts. There are five main types of accounts,
asset, liability, income, expense, and equity. You can read more about the account types and how
they are handled on the [Debits and Credits](http://en.wikipedia.org/wiki/Debits_and_credits#Elements) Wikipedia article.

The accounts are affected in a positive or negative way, depending on their type.

<table>
	<tbody>
		<tr>
			<th>ACCOUNT TYPE</th>
			<th colspan="2">DEBIT</th>
			<th colspan="2">CREDIT</th>
		</tr>
		<tr>
			<td>Asset</td>
			<td width="20">+</td><td>Deposit</td>
			<td width="20">-</td><td>Withdrawal</td>
		</tr>
		<tr>
			<td>Liability</td>
			<td>-</td><td>Decrease</td>
			<td>+</td><td>Increase</td>
		</tr>
		<tr>
			<td>Income</td>
			<td>-</td><td>Charge</td>
			<td>+</td><td>Income</td>
		</tr>
		<tr>
			<td>Expense</td>
			<td>+</td><td>Expense</td>
			<td>-</td><td>Rebate</td>
		</tr>
		<tr>
			<td>Equity</td>
			<td>-</td><td>Decrease</td>
			<td>+</td><td>Increase</td>
		</tr>
	</tbody>
</table>


Examples of Double-Entry Accounting
===================================

*A business pays rent with cash:*  
you increase rent (expense) by recording a debit transaction, and decrease cash (asset) by recording a credit transaction.

*A business receives cash for a sale:*  
 cyou increase cash (asset) by recording a debit transaction, and increase sales (income) by recording a credit transaction.

*A business buys equipment with cash:*  
You increase equipment (asset) by recording a debit transaction, and decrease cash (asset) by recording a credit transaction.

*A business borrows with a cash loan:*  
You increase cash (asset) by recording a debit transaction, and increase loan (liability) by recording a credit transaction.

*A business pays salaries with cash:*  
you increase salary (expenses) by recording a debit transaction, and decrease cash (asset) by recording a credit transaction.


Transactions and Journal Entries
================================

The actual journal entries are written to the `journal` table. There will typically be two entries in this table for
each transaction you want to enter. For example, if you are entering a charge from your hosting company, you would end up
with one record increasing the Hosting (Expense) account, and one record decreasing the Bank (Asset) account.

These two records are linked into one "transaction" by referencing the same record in the `transactions` table. This is 
purely organizational and does not reflect an accounting practice.

This lets us allow for entering "split" transactions that are all linked to a single entity. You may encounter a split transaction
if you accept payments via PayPal since they charge a transaction fee. For example, if you sold an item for $15 and were 
charged $0.74 by PayPal, this would be entered as follows:

* Increase the Sales account by $15 (insert a credit of $15 to the Sales account)
* Increase the Cash account by $14.26 (insert a debit of $14.26 to the Cash account)
* Increase the Fees account by $0.74 (insert a debit of $0.74 to the Fees account)


Further Reading About Double-Entry Accounting
=============================================

http://en.wikipedia.org/wiki/Debits_and_credits

http://en.wikipedia.org/wiki/Accounts_receivable
