<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Bus_41518110070 extends CI_Controller {
	function __construct(){
	parent::__construct();
		$this->load->model('getkod_model_41518110070');
		date_default_timezone_set("Asia/Jakarta");
	}
	public function index(){
	$data['title'] = "List Bus";
	$data['bus'] = $this->db->query("SELECT * FROM tbl_bus_41518110070 ORDER BY nama_bus asc")->result_array();
	// die(print_r($data));
	$this->load->view('backend/bus', $data);	
	}
	public function viewbus($id=''){
		$data['title'] = "View Bus";
		$data['bus'] = $this->db->query("SELECT * FROM tbl_bus_41518110070 WHERE kd_bus = '".$id."'")->row_array();
		// die(print_r($data));
		$this->load->view('backend/view_bus', $data);
	}
	public function tambahbus(){
		$kode = $this->getkod_model_41518110070->get_kodbus();
		$data = array(
			'kd_bus' => $kode,
			'nama_bus' => $this->input->post('nama_bus'),
			'plat_bus'		 => $this->input->post('plat_bus'),
			'kapasitas_bus'		 => $this->input->post('seat'),
			'status_bus'			=> '1'
			 );
		$this->db->insert('tbl_bus_41518110070', $data);
		$this->session->set_flashdata('message', 'swal("Berhasil", "Data Bus Di Simpan", "success");');
		redirect('backend/bus_41518110070');
	}

}