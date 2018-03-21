<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {
    
    function __construct() {
        parent::__construct();
        
        $this->load->helper('text');
        $this->load->helper('form');
        $this->load->model('mdl');
        $this->load->library('image_lib');
        $this->load->library('form_validation');
        
    }
    
    public function index() {

        if (isset($this->session->userdata['logged_in'])) {

            redirect('PO/pilihPO');

        } else {
            $this->load->view('login_view');    
        }

        
    }

    public function proseslogin() {
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        
        $status = $this->mdl->checkAccount($username,$password);

        if ($status != FALSE) {
            $session_data = array(
                'username' => $status[0]->username,
                'nama' => $status[0]->nama,
                'level' => $status[0]->level,
                'iduser' => $status[0]->idUser,
            );

            $this->session->set_userdata('logged_in', $session_data);
            
            redirect('PO/pilihPO');
        } else {
            $data['err'] = 'ada';
            $this->load->view('login_view', $data);
        }
    }

    public function logout() {
        
        $sess_array = array(
            'email' => ''
        );
        $this->session->unset_userdata('logged_in', $sess_array);
        redirect('Main');
    }

    
    
}
