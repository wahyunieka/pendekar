<?php
Class Data extends CI_Controller {
    function __construct() {   

        parent::__construct();  

        $this->load->database();       
        $this->load->helper('url');  

        $this->load->library('grocery_CRUD');    }

    function index() {        
        echo"<h1>Welcome to the school</h1>"

    }
       public function sekolah() {       
               
         $crud = new grocery_CRUD();                  
         $crud->set_table('sekolah');       
         $output =  $crud->render();
         $this
         
         echo"<pre>";
         print_r($output);
         echo"</pre>";
         die();

}