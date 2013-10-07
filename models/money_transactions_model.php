<?php

class Money_transactions_model extends CI_Model
{
    
    function __construct()
    {
        parent::__construct();
    }
    
    function get_money_transactions()
    {
   		$this->db->select('*');
   		$this->db->from('money_transactions');
   		return $this->db->get()->result();	
    }
    
}