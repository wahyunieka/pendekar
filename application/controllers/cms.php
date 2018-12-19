<?php
class Cms extends CI_Controller {

	var $crud;
	var $assetPath = 'assets/uploads/files';

	function __construct()
	{
		parent::__construct();

		$timezone = @date_default_timezone_get();
        if (!isset($timezone) || $timezone == '') {
            $timezone = @ini_get('date.timezone');
        }
        if (!isset($timezone) || $timezone == '') {
            $timezone = 'UTC';
        }
        date_default_timezone_set($timezone); 
		
		/* Standard Libraries */
		$this->load->database();
		$this->load->helper('url');
		/* ------------------ */	
		
		$this->load->library('grocery_CRUD');
		$this->crud = new grocery_CRUD();
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
	function school_management(){

		$this->crud->set_table('tm_school');
		$this->crud->set_subject('School');
		$this->crud->set_field_upload('file_url', $this->assetPath);

		// menampilkan gambar di list
		$this->crud->callback_column('file_url', array($this, '_transformIMG'));
		
		// menampilkan text editor saat add dan edit
		//$this->crud->change_field_type('visi','text');
		//$this->crud->change_field_type('misi','text');

		// mengganti nama kolom di list
		$this->crud->display_as('name_school','Nama Sekolah')->display_as('file_url','Logo');

		// menampilkan kolom yang ada di list
		$this->crud->columns($this->config->item('column_sekolah'));

		// menampilkan kolom yang boleh di add dan edit
		$this->crud->add_fields($this->config->item('column_sekolah'));
		$this->crud->edit_fields($this->config->item('column_sekolah'));

		$output = $this->crud->render();
		$this->_example_output($output);
	}

	function _transformIMG($value, $row) {
		$img = "<div class='thumbnail span1'><img width='30%' src='" . base_url($this->assetPath) . "/" . $value . "' /></div>";
		return($img);
	}
		
	function teacher_management(){

		$this->crud->set_table('tm_teachers');
		$this->crud->set_subject('Teacher');

		// menampilkan kolom yang ada di list
		$this->crud->columns($this->config->item('column_teacher'));
		
		// menampilkan kolom yang boleh di add dan edit
		$this->crud->add_fields($this->config->item('column_teacher'));
		$this->crud->edit_fields($this->config->item('column_teacher'));

		$output = $this->crud->render();
		$this->_example_output($output);
	}
 
	function students_management(){
		
		$this->crud->set_table('tm_students');
		$this->crud->set_subject('Students');

		// menampilkan kolom yang ada di list
		$this->crud->columns($this->config->item('column_student'));

		// menampilkan kolom yang boleh di add dan edit
		$this->crud->add_fields($this->config->item('column_student'));
		$this->crud->edit_fields($this->config->item('column_student'));
		
		$output = $this->crud->render();
	
		$this->_example_output($output);
			
	}

	function mapel_management(){
		
			
		$this->crud->set_table('tm_subjects');
		$this->crud->set_subject('Subjects');

		// menampilkan kolom yang ada di list
		$this->crud->columns($this->config->item('column_subject'));
		// mengganti nama kolom di list
		$this->crud->display_as('nama_mapel','Nama Mata Pelajaran');
		// menampilkan kolom yang boleh di add dan edit
		$this->crud->add_fields($this->config->item('column_subject'));
		$this->crud->edit_fields($this->config->item('column_subject'));
			
		$output = $this->crud->render();
		
		$this->_example_output($output);
	}
		

	function schedule_management(){
			
		$this->crud->set_table('tx_schedule');
		$this->crud->set_subject('Schedules');

		// menampilkan kolom yang ada di list
		$this->crud->columns($this->config->item('column_schedule'));
		// menampilkan kolom yang boleh di add dan edit
		$this->crud->add_fields($this->config->item('column_schedule'));
		$this->crud->edit_fields($this->config->item('column_schedule'));

		// dropdown tahun ajaran
		$this->crud->display_as('id_tahun_ajaran','Tahun Ajaran');
		$this->crud->set_relation('id_tahun_ajaran','tp_school_year','{description}', null, 'id_tahun_ajaran');

		// dropdown ruang kelas
		$this->crud->display_as('id_class','Ruang Kelas');
		$this->crud->set_relation('id_class','tm_class','{nama_ruang_kelas}', null, 'id_class');

		// dropdown guru
		$this->crud->display_as('peg_id','Guru Pengajar');
		$this->crud->set_relation('peg_id','tm_teachers','{nama_depan} {nama_tengah} {nama_belakang}', null, 'peg_id');

		// dropdown mata pelajaran
		$this->crud->display_as('mid','Mata Pelajaran');
		$this->crud->set_relation('mid','tm_subjects','{nama_mapel}', null, 'mid');

		$this->crud->display_as('tgl','Tanggal');

		$this->crud->change_field_type('jam_mulai','time');

		$output = $this->crud->render();
		
		$this->_example_output($output);
		
    }
		

	function parents_management(){
			
		$this->crud->set_table('tm_parents');
		$this->crud->set_subject('Parents');
		
		$output = $this->crud->render();

		$this->_example_output($output);
	}

	function contact_management(){
		
		$this->crud->set_table('tm_contact');
		$this->crud->set_subject('Contact');

		$output = $this->crud->render();
	
		$this->_example_output($output);
	}
}