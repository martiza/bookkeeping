<?php
class Home extends Dashboard_Controller
{
  function __construct()
  {
    parent::__construct();

    $this->load->config('config');
    
    $this->load->model('money_account_types_model');
    $this->load->model('money_accounts_model');    
    $this->load->model('money_journal_model');
    $this->load->model('money_transactions_model');

		$this->data['page_title'] = 'Bookkeeping';
	}
	
	function transactions()
	{
	  $this->data['transactions']  = $this->money_transactions_model->get_money_transactions();
	  $this->data['journal']       = $this->money_journal_model->get_money_journal();
		$this->data['sub_title']     = 'Transactions';
    $this->data['shown_transactions'] = array();
	
		$this->render('dashboard_wide');
	}


	function journal()
	{
		$this->data['sub_title'] = 'Journal';
	
		$this->render('dashboard_wide');
	}
	
	function accounts()
	{
	  $this->data['account_types'] = $this->money_account_types_model->get_money_account_types();
	  $this->data['accounts']      = $this->money_accounts_model->get_money_accounts();
	
	
		$this->data['sub_title'] = 'Accounts';
	
		$this->render('dashboard_wide');
	}	

}