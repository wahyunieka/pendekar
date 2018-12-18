<?php
class Baru extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		/* Standard Libraries */
		$this->load->database();
		$this->load->helper('url');
		/* ------------------ */	
		
		$this->load->library('grocery_CRUD');	
	}
	
	function _example_output($output = null)
	{
		$this->load->view('Home.php',$output);	
	}
	
	function offices()
	{
		$output = $this->grocery_crud->render();

		$this->_example_output($output);
	}
	
	function index()
	{
		$this->_example_output((object)array('output' => '' , 'js_files' => array() , 'css_files' => array()));
	}
	function school_management()
	{
			$crud = new grocery_CRUD();

			$crud->set_table('school');
			$crud->set_subject('school');
			$crud->set_relation('id_sekolah','teacher','peg_id');
			$crud->required_fields('gallery');
			$crud->set_field_upload('file_url','assets/uploads/files');

			$output = $crud->render();

			$this->_example_output($output);
	
		}
		
	function teacher_management()
		{
			$crud = new grocery_CRUD();

			$crud->set_table('teacher');
			$crud->set_subject('teacher');
			$crud->set_relation('peg_id','mapel','mid');
			

			$output = $crud->render();
			$this->_example_output($output);
		}
 
		

	function students_management()
		{
			$crud = new grocery_CRUD();
			$crud->set_table('students');
			$crud->set_subject('students');
			$crud->set_relation('nis','mapel','mid');
			
			


			$output = $crud->render();
		
			$this->_example_output($output);
			
		}

	function mapel_management()
		{
		
			$crud = new grocery_CRUD();
			$crud->set_table('mapel');
			$crud->set_subject('mapel');
			$crud->set_relation('mid','schedule', 'sid');
			
			$output = $crud->render();
		
			$this->_example_output($output);
		}
		

	function schedule_management()
		{
			$crud = new grocery_CRUD();
			
			$crud->set_table('schedule');
			$crud->set_subject('schedule');
			$crud->set_relation('sid','events', 'id_events');
			$output = $crud->render();
			
			$this->_example_output($output);
		
    
		}
		

	function parents_management()
		{
			$crud = new grocery_CRUD();

			$crud->set_table('parents');
			$crud->set_subject('parent');
			$crud->set_relation('id_parents','students','nis');
			
			$output = $crud->render();

			$this->_example_output($output);
		}
	function contact_management()
		{
			$crud = new grocery_CRUD();
			$crud->set_table('contact');
			$crud->set_subject('contact');
			$crud->set_relation('cid','parents','nama');



			$output = $crud->render();
		
			$this->_example_output($output);
		}
	}