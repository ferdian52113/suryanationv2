<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SPK extends CI_Controller
{
    
    function __construct()
    {
        parent::__construct();
        
        $this->load->helper('text');
        $this->load->helper('form');
        $this->load->model('mdl');
        $this->load->library('image_lib');
        $this->load->library('form_validation');
        
    }
    
    
    public function pilihSPK()
    {
        
        if (!(isset($this->session->userdata['logged_in']))) {
            
            redirect('Main');
            
        } else {
            
            $data['s'] = $this->mdl->getSales();
            $this->load->view('statprod_view',$data);

        }
        
    }
}