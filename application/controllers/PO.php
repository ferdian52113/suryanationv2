<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PO extends CI_Controller {
    
    function __construct() {
        parent::__construct();
        
        $this->load->helper('text');
        $this->load->helper('form');
        $this->load->model('mdl');
        $this->load->library('image_lib');
        $this->load->library('form_validation');
        
    }
    

    public function pilihPO() {

        if (!(isset($this->session->userdata['logged_in']))) {

            redirect('Main');

        } else {
            $data['listCustomer'] = $this->mdl->listCustomer();
            $this->load->view('pilihPO',$data);    
        }

    }

    public function createPO($kategori,$idCustomer) {

        if (!(isset($this->session->userdata['logged_in']))) {

            redirect('Main');

        } else {
            
            if($kategori == 'tempahan') {

                if($idCustomer == '0') {

                    $data['idc'] = 0;

                } else {

                    $data['customer'] = $this->mdl->getCustomer($idCustomer);
                    $data['idc'] = 1;

                }

                $data['pegawai'] = $this->mdl->listPegawaiSales();
                $data['poTerakhir'] = $this->mdl->poTerakhir();
                $this->load->view('user/createPurchaseOrder',$data);

            }

        }

    }

}