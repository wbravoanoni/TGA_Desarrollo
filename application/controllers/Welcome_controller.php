<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome_controller extends CI_Controller {


	function __construct()
{
	parent::__construct();
	$this->load->model('Welcome_model');
}
	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$this->load->view('welcome_message');
	}

	public function existeUsuarioController(){

			$data["email"]    = $_POST["email"];
			$data["password"] = $_POST["password"];
				
		$valor=$this->Welcome_model->existeUsuarioModel($data);

			if($valor===true){
				redirect("Welcome_controller/Home");
			}else{
				echo "El usuario no existe";
			}
	}

	public function Home(){
				$this->load->view("layout/head.php");
				$this->load->view("layout/navbar.php");	
				$this->load->view("home_view.php");
				$this->load->view("layout/footer.php");
	}
}
