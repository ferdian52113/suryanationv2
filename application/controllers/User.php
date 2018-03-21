<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {
    
    function __construct() {
        parent::__construct();
        
        $this->load->helper('text');
        $this->load->helper('form');
        $this->load->model('mdl');
        $this->load->library('image_lib');
        $this->load->library('form_validation');
        
    }
    

    public function pegawai() {

        if (!(isset($this->session->userdata['logged_in']))) {

            redirect('Main');

        } else {
            $data['pegawai']=$this->mdl->listPegawai(); 
            $this->load->view('pegawai',$data);  
        }

    }

    public function editPegawai($idUser) {
        $dataPegawai = array(
            'username'    => $this->input->post('username'),
            'password'   => $this->input->post('password'),
            'nama'   => $this->input->post('nama'),
            'jabatan'     => $this->input->post('jabatan'),
            'phone'             => $this->input->post('phone'),
            'email'             => $this->input->post('email'),
        );
        //print_r($dataPegawai);exit();
        $this->mdl->updateData('idUser', $idUser, 'user', $dataPegawai);
        redirect('user/pegawai');
    }


}