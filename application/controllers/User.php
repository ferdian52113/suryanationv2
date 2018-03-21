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
        print_r($_FILES['userfile']['name']);exit();
        if (isset($_FILES['userfile']['name'])&&!empty($_FILES['userfile']['name'])) {
            $config['upload_path']   = './uploads/fotoUser/';
            $config['allowed_types'] = 'jpg|png|bmp';
            $config['max_size']      = '3000';
            $config['overwrite']     = TRUE;
            
            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            
            if (!$this->upload->do_upload()) {
                 $data['error'] = array(
                    'error' => $this->upload->display_errors()
                );
                $message       = "Perubahan gagal dilakukan, gambar tidak mendukung";
                echo "<script type='text/javascript'>alert('$message');</script>";

                $data['pegawai']=$this->mdl->listPegawai();

                $this->load->view('pegawai', $data);
            } else {
                $upload_data = $this->upload->data();
                $file_name   = $upload_data['file_name'];

                $dataPegawai = array(
                    'username'      => $this->input->post('username'),
                    'password'      => $this->input->post('password'),
                    'nama'          => $this->input->post('nama'),
                    'jabatan'       => $this->input->post('jabatan'),
                    'nomorTelepon'  => $this->input->post('nomorTelepon'),
                    'email'         => $this->input->post('email'),
                    'fotoUser'      => $file_name,
                );

                //print_r($dataPegawai);exit();
                $this->mdl->updateData('idUser', $idUser, 'tblm_user', $dataPegawai);
                redirect('user/pegawai');
            }
        } else {
            $dataPegawai = array(
                'username'      => $this->input->post('username'),
                'password'      => $this->input->post('password'),
                'nama'          => $this->input->post('nama'),
                'jabatan'       => $this->input->post('jabatan'),
                'nomorTelepon'  => $this->input->post('nomorTelepon'),
                'email'         => $this->input->post('email'),
            );

            //print_r($dataPegawai);exit();
            $this->mdl->updateData('idUser', $idUser, 'tblm_user', $dataPegawai);
            redirect('user/pegawai');
        }
    }

    public function createPegawai() {
        if (isset($_FILES['userfile']['name'])&&!empty($_FILES['userfile']['name'])) {
            $config['upload_path']   = './uploads/fotoUser/';
            $config['allowed_types'] = 'jpg|png|bmp';
            $config['max_size']      = '3000';
            $config['overwrite']     = TRUE;
            
            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            
            if (!$this->upload->do_upload()) {
                 $data['error'] = array(
                    'error' => $this->upload->display_errors()
                );
                $message       = "Perubahan gagal dilakukan, gambar tidak mendukung";
                echo "<script type='text/javascript'>alert('$message');</script>";

                $data['pegawai']=$this->mdl->listPegawai();

                $this->load->view('pegawai', $data);
            } else {
                $upload_data = $this->upload->data();
                $file_name   = $upload_data['file_name'];

                $dataPegawai = array(
                    'username'          => $this->input->post('username'),
                    'password'          => $this->input->post('password'),
                    'nama'              => $this->input->post('nama'),
                    'jabatan'           => $this->input->post('jabatan'),
                    'level'             => '0',
                    'nomorTelepon'      => $this->input->post('nomorTelepon'),
                    'email'             => $this->input->post('email'),
                    'fotoUser'          => $file_name,
                    'dateCreated'       => date("Y-m-d H:i:s"),
                );
                //print_r($dataPegawai);exit();
                $this->mdl->insertData('tblm_user', $dataPegawai);
                redirect('user/pegawai');
            }
        } else {
            $dataPegawai = array(
                'username'          => $this->input->post('username'),
                'password'          => $this->input->post('password'),
                'nama'              => $this->input->post('nama'),
                'jabatan'           => $this->input->post('jabatan'),
                'level'             => '0',
                'nomorTelepon'      => $this->input->post('nomorTelepon'),
                'email'             => $this->input->post('email'),
                'dateCreated'       => date("Y-m-d H:i:s"),
            );

            //print_r($dataPegawai);exit();
            $this->mdl->insertData('tblm_user', $dataPegawai);
            redirect('user/pegawai');
        }
    }

    public function deletePegawai($idUser) {
        $this->mdl->deleteData('idUser', $idUser, 'tblm_user');
        $message = "Data pegawai berhasil dihapus";
        echo "<script type='text/javascript'>alert('$message');
        window.location.href='".base_url("user/pegawai")."';</script>";
    }


}