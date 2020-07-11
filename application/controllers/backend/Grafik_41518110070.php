<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Grafik_41518110070 extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('model_grafik');
    }

    Public function lihat_grafik_batang(){
        $data['data_tujuan'] = $this->model_grafik->qry_jumlah_tujuan();
        $this->load->view('backend/laporan/laporan_grafik',$data);
    }

    Public function lihat_grafik_pie(){
        $data['data_tujuan'] = $this->model_grafik->qry_jumlah_tujuan();
        $this->load->view('backend/laporan/laporan_grafik_pie',$data);
    }
}