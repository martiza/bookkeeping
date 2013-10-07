<?php

class Money_account_types_model extends CI_Model
{
    
    function __construct()
    {
        parent::__construct();
    }
    
    function get_money_account_types()
    {
   		$this->db->select('*');
   		$this->db->from('money_account_types');    
   		return $this->db->get()->result();	
    }
    
}