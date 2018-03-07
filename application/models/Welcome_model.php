<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome_model extends CI_MODEL {

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
	public function existeUsuarioModel($data)
	{

				$email    = $data["email"];
				$password = $data["password"];

$resultado=$this->db->query("SELECT 
							CONCAT_WS(' ',nombre,apellido) as nombre,correo,contrasena 
							 FROM app_user 
							 WHERE correo='".$email ."' 
							 AND contrasena='".$password."' 
				 			");



			if($resultado->num_rows()>0){
					foreach ($resultado->result() as $row)
					{
					$resultado= $row->nombre;
					}
				return $resultado;
			}else{
				return false;
			}
	}
}
