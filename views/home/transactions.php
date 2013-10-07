<h3>Transactions</h3>

<?php foreach ($transactions as $transaction): ?>

  <?= $transaction->description ?>
  <?= $transaction->note ?>
  <?= $transaction->date_created ?>

  <?php foreach ($journal as $entry): ?>
    <?php if ($entry->transaction_id == $transaction->transaction_id): ?>
      <br>
      <?= $entry->journal_id ?>, <?= $entry->user_id ?>, <?= $entry->transaction_id ?>, <?= $entry->account_id ?><br>
      <?= $entry->date ?><br>
      <?= $entry->debit ?><br>
      <?= $entry->credit ?><br>
      <?= $entry->note ?><br>
     
    <?php endif; ?>
  <?php endforeach; ?>

  <hr>
  
<?php endforeach; ?>

