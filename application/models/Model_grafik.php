<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Model_grafik extends CI_Model{

   function qry_jumlah_tujuan() {
      $data = $this->db->query("
      SELECT tbl_jadwal_41518110070.wilayah_jadwal as tujuan, COUNT(tbl_order_41518110070.kd_jadwal) as jumlah
      FROM tbl_order_41518110070
      LEFT JOIN tbl_jadwal_41518110070
      ON tbl_order_41518110070.kd_jadwal = tbl_jadwal_41518110070.kd_jadwal
      WHERE tbl_order_41518110070.status_order=2  
      GROUP BY tujuan");
      return $data->result();
   }
   
} 