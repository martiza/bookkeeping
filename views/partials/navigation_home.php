<h2 class="content_title"><img src="<?= $modules_assets ?>bookkeeping_32.png"> Bookkeeping</h2>
<ul class="content_navigation">
	<?= navigation_list_btn('home/bookkeeping', 'Recent') ?>
	<?= navigation_list_btn('home/bookkeeping/transactions', 'Transactions') ?>
	<?php if ($logged_user_level_id <= 2) echo navigation_list_btn('home/bookkeeping/journal', 'Journal', $this->uri->segment(4)) ?>
	<?php if ($logged_user_level_id <= 2) echo navigation_list_btn('home/bookkeeping/accounts', 'Accounts', $this->uri->segment(4)) ?>
</ul>