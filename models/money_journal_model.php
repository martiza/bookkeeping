<?php

class Money_journal_model extends CI_Model
{
    
    function __construct()
    {
        parent::__construct();
    }
    
    function get_money_journal()
    {
   		$this->db->select('*');
   		$this->db->from('money_journal');    
   		return $this->db->get()->result();	
    }
    
}