<?php
class Home extends Dashboard_Controller
{
    function __construct()
    {
        parent::__construct();

		$this->load->config('config');

		$this->data['page_title'] = 'Module Template';
	}
	
	function transactions()
	{
		$this->data['sub_title'] = 'Transactions';
	
		$this->render('dashboard_wide');
	}


	function journal()
	{
		$this->data['sub_title'] = 'Journal';
	
		$this->render('dashboard_wide');
	}
	
	function accounts()
	{
		$this->data['sub_title'] = 'Accounts';
	
		$this->render('dashboard_wide');
	}	

}