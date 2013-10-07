<h3>Account Types</h3>

<form name="add_account" id="add_account" method="POST">

  <select id="account_types" name="account_types">
  <?php foreach ($account_types as $type): ?>
    <option value="<?= $type->type ?>"><?= $type->name ?></option>
  <?php endforeach; ?>
  </select>
  
  <select id="accounts" name="accounts">
  <?php foreach ($accounts as $account): ?>
    <option value="<?= $account->account_type ?>"><?= $account->account_name ?></option>
  <?php endforeach; ?>
  </select>
  
  <p><label>Account Name</label><br>
  <input type="text" name="account_name" placeholder="Office Rent"></p>

  <p><input type="submit" value="Add Account"></p>

</form>