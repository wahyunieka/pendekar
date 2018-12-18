<?php
	class Menu_model extends CI_Model {

		
		function __construct()
		{
			// Call the Model constructor
			parent::__construct();
			$CI 							= & get_instance();  //get instance, access the CI superobject
		}
		function getMenu($filter = null,$limit = null){
			$session		= $this->session->userdata('user_data');
			
			$isiSession		= '';
			$filter			= "";
			if($session){
				foreach($session as $row_left=>$row_right){
					$isiSession[$row_left]	= $row_right;
				}
			}
			$this->db->select('a.*');
			$this->db->from('M_menu a');
			if($filter){
				$operator		= "";
				foreach($filter as $row_left=>$row_right){
					if(($row_right) || ($row_right == 0)){
						if(is_numeric($row_right)){
							$this->db->where($row_left, $this->db->escape_str($row_right));
						}
						else if(is_array($row_right)){
							$row_right		= implode(',',$row_right);
							$this->db->where_in($row_left,$row_right);
						} else {
							$this->db->like($row_left, $this->db->escape_like_str($row_right));
						}
					}
				}
			}
			$this->db->order_by('a.parent_id,a.no_urut', 'ASC');
			$query			= $this->db->get();
			$data			= $query->result_array();
			if($data){
				return $data;
			} else {
				return false;
				}
		}
	}
?>