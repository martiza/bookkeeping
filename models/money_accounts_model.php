<?php

class Money_accounts_model extends CI_Model
{
    
    function __construct()
    {
        parent::__construct();
    }
    
    function get_money_accounts()
    {
   		$this->db->select('*');
   		$this->db->from('money_accounts');    
   		return $this->db->get()->result();	
    }
    
}