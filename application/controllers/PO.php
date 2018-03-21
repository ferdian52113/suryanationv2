<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PO extends CI_Controller
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
    
    
    public function pilihPO()
    {
        
        if (!(isset($this->session->userdata['logged_in']))) {
            
            redirect('Main');
            
        } else {
            $data['listCustomer'] = $this->mdl->listCustomer();
            $this->load->view('pilihPO', $data);
        }
        
    }
    
    public function createPO($kategori, $idCustomer)
    {
        
        if (!(isset($this->session->userdata['logged_in']))) {
            
            redirect('Main');
            
        } else {
            
            if ($kategori == 701) {
                
                if ($idCustomer == '0') {
                    
                    $data['idc'] = 0;
                    
                } else {
                    
                    $data['customer'] = $this->mdl->getCustomer($idCustomer);
                    $data['idc']      = 1;
                    
                }
                
                $data['pegawai']    = $this->mdl->getPegawaiByLevel(1);
                $data['poTerakhir'] = $this->mdl->getLastPO();
                $data['kategori']   = $kategori;
                $data['idcust']     = $idCustomer;
                $this->load->view('createPOTempahan', $data);
                
            }

            if ($kategori == 702) {
                
                if ($idCustomer == '0') {
                    
                    $data['idc'] = 0;
                    
                } else {
                    
                    $data['customer'] = $this->mdl->getCustomer($idCustomer);
                    $data['idc']      = 1;
                    
                }
                
                $data['pegawai']    = $this->mdl->getPegawaiByLevel(1);
                $data['poTerakhir'] = $this->mdl->getLastPO();
                $data['listProduk'] = $this->mdl->listProdukDetail();
                $data['kategori']   = $kategori;
                $data['idcust']     = $idCustomer;
                $this->load->view('createPOMassal', $data);
                
            }
            
        }
        
    }
    
    public function convertPO()
    {
        $idCustomer = $this->input->post('idCustomer');
        $kategori   = $this->input->post('kategori');
        redirect('PO/createPO/' . $kategori . '/' . $idCustomer);
    }
    
    public function tambahPO()
    {
        $kategori = $this->input->post('kategori');
        $idcust   = $this->input->post('idcust');

        
        
        $config['upload_path']   = './uploads/gambarProduk/';
        $config['allowed_types'] = 'jpg|png|bmp';
        $config['max_size']      = '7000';
        $config['overwrite']     = TRUE;
        
        $this->load->library('upload', $config);
        $this->upload->initialize($config);
        
        if (!$this->upload->do_upload()) {
            $data['error'] = array(
                'error' => $this->upload->display_errors()
            );
            $message       = "Gambar tidak mendukung";
            echo "<script type='text/javascript'>alert('$message');</script>";
            $data['pegawai']    = $this->mdl->getPegawaiByLevel(1);
            $data['poTerakhir'] = $this->mdl->getLastPO();
            $data['kategori']   = $kategori;
            $data['idcust']     = $idcust;
            
            if ($idcust == '0') {
                
                $data['idc'] = 0;
                
            } else {
                
                $data['customer'] = $this->mdl->getCustomer($idcust);
                $data['idc']      = 1;
                
            }
            $this->load->view('createPOTempahan', $data);
            
        } else {
            
            $upload_data = $this->upload->data();
            $file_name   = $upload_data['file_name'];
            
            $this->form_validation->set_message('is_unique', '<br>%s sudah ada');
            $this->form_validation->set_rules('nomorPO', 'Nomor PO', 'is_unique[tblt_poheader.nomorPO]');
            $this->form_validation->set_rules('kodeProduk', 'Kode Produk', 'is_unique[tblm_produkheader.kodeProduk]');
            
            if ($this->form_validation->run() == FALSE) {
                
                $data['pegawai']    = $this->mdl->getPegawaiByLevel(1);
                $data['poTerakhir'] = $this->mdl->getLastPO();
                $data['kategori']   = $kategori;
                $data['idcust']     = $idcust;
                
                if ($idcust == '0') {
                    
                    $data['idc'] = 0;
                    
                } else {
                    
                    $data['customer'] = $this->mdl->getCustomer($data['idcust']);
                    $data['idc']      = 1;
                    
                }
                
                $this->load->view('createPOTempahan', $data);
                
            } else {

                if ($this->input->post('namaBatu')==NULL) {
                    $namaProduk=$this->input->post('namaCustomer').'-'.$this->input->post('nomorPO');
                } else {
                    $namaProduk=$this->input->post('namaCustomer').'-'.$this->input->post('nomorPO').'-'.$this->input->post('namaBatu');
                };

                $data = array(
                    'kodeProduk'        => $this->input->post('kodeProduk'),
                    'namaProduk'        => $namaProduk,
                    'jenisProduk'       => $this->input->post('jenisProduk'),
                    'idKategoriProduksi'       => $this->input->post('kategori'),
                    'dateCreated'   => date("Y-m-d H:i:s"),

                );

                $idp = $this->mdl->insertDataGetLast('tblm_produkheader',$data);

                $data = array(
                    'idProdukHeader'    => $idp,
                    'bahan'             => $this->input->post('bahan'),
                    'kadarBahan'        => $this->input->post('kadarBahan'),
                    'namaBatu'          => $this->input->post('namaBatu'),
                    'beratBatu'         => $this->input->post('beratBatu'),
                    'ukuran'            => $this->input->post('ukuranJari'),
                    'berlian'           => $this->input->post('berlian'),
                    'krumWarna'         => $this->input->post('krumWarna'),
                    'tipeIkatan'        => $this->input->post('tipeIkatan'),
                    'model'             => $this->input->post('model'),
                    'beratBerlian'      => $this->input->post('beratBerlian'),
                    'hargaBerlian'      => $this->input->post('hargaBerlian'),
                    'batuZirkon'        => $this->input->post('batuZirkon'),
                    'jumlahBatuZirkon'  => $this->input->post('jumlahBatuZirkon'),
                    'hargaBatuZirkon'   => $this->input->post('hargaBatuZirkon'),
                    'hargaKrumWarna'    => $this->input->post('hargaKrumWarna'),
                    'keteranganKrum'    => $this->input->post('keteranganKrum'),
                    'dateCreated'   => date("Y-m-d H:i:s"),
                );

                $this->mdl->insertData('tblm_produkdetail',$data);

                $data = array(
                    
                    'namaCustomer'        => $this->input->post('namaCustomer'),
                    'nomorTelepon'        => $this->input->post('nomorTelepon'),
                
                );

                $idc = $this->mdl->insertDataGetLast('tblm_customer',$data);

                $data = array(
                    'nomorPO'           => $this->input->post('nomorPO'),
                    'idProdukHeader'          => $idp,
                    'idCustomer'        => $idc,
                    'idSalesPerson'     => $this->input->post('idSalesPerson'),
                    'tanggalMasuk'      => $this->input->post('tanggalMasuk'),
                    'tanggalPenyelesaian'    => $this->input->post('tanggalEstimasiPenyelesaian'),
                    'dateCreated'   => date("Y-m-d H:i:s"),
                    'kuantitas'         => $this->input->post('kuantitas'),
                    'idKategoriProduksi'       => $this->input->post('kategori'),
                    
                    
                );

                $idpo = $this->mdl->insertDataGetLast('tblt_poheader',$data);

                $data = array(
                    
                    'idPOHeader'    => $idpo,
                    'hargaBahan'        => $this->input->post('hargaBahan'),
                    'upah'              => $this->input->post('upah'),
                    'datangEmas'        => $this->input->post('datangEmas'),
                    'hargaDatangEmas'   => $this->input->post('hargaDatangEmas'),
                    
                    'metode'            => $this->input->post('metode'),
                    'panjar'            => $this->input->post('panjar'),
                    'kadarDatangEmas'   => $this->input->post('kadarDatangEmas'),
                    'budget'            => $this->input->post('budget'),
                    'datangBerlian'     => $this->input->post('datangBerlian'),
                    'jumlahDatangBerlian' => $this->input->post('jumlahDatangBerlian'),
                    'upahPasangBerlian' => $this->input->post('upahPasangBerlian'),
                    'tipeCustomer'      => $this->input->post('tipeCustomer'),
                    'pekerjaanTambahan' => $this->input->post('pekerjaanTambahan'),
                    'keteranganTambahan'=> $this->input->post('keteranganTambahan'),
                    'biayaTambahan'     => $this->input->post('biayaTambahan'),
                    'dateCreated'   => date("Y-m-d H:i:s"),

                );

                $this->mdl->insertData('tblt_podetail',$data);

                $data = array(
                    
                    'idProdukHeader'        => $idp,
                    'gambar'              => $file_name,
                    'jenisGambar'        => 'Sample',
                
                );

                $this->mdl->insertData('tblt_gambarproduk',$data);

                $message = "PO telah berhasil dibuat";
                echo "<script type='text/javascript'>alert('$message');window.location.href='" . base_url("PO/list") . "';</script>";
                
            }
        }
        
        
    }

    public function tambahPOMassal()
    {
        $kategori = $this->input->post('kategori');
        $idcust   = $this->input->post('idcust');

        
        
        $config['upload_path']   = './uploads/gambarProduk/';
        $config['allowed_types'] = 'jpg|png|bmp';
        $config['max_size']      = '7000';
        $config['overwrite']     = TRUE;
        
        $this->load->library('upload', $config);
        $this->upload->initialize($config);
        
        if (!$this->upload->do_upload()) {
            $data['error'] = array(
                'error' => $this->upload->display_errors()
            );
            $message       = "Gambar tidak mendukung";
            echo "<script type='text/javascript'>alert('$message');</script>";
            $data['pegawai']    = $this->mdl->getPegawaiByLevel(1);
            $data['poTerakhir'] = $this->mdl->getLastPO();
            $data['kategori']   = $kategori;
            $data['idcust']     = $idcust;
            
            if ($idcust == '0') {
                
                $data['idc'] = 0;
                
            } else {
                
                $data['customer'] = $this->mdl->getCustomer($idcust);
                $data['idc']      = 1;
                
            }
            $this->load->view('createPOMassal', $data);
            
        } else {
            
            $upload_data = $this->upload->data();
            $file_name   = $upload_data['file_name'];
            
            $this->form_validation->set_message('is_unique', '<br>%s sudah ada');
            $this->form_validation->set_rules('nomorPO', 'Nomor PO', 'is_unique[tblt_poheader.nomorPO]');
            $this->form_validation->set_rules('kodeProduk', 'Kode Produk', 'is_unique[tblm_produkheader.kodeProduk]');
            
            if ($this->form_validation->run() == FALSE) {
                
                $data['pegawai']    = $this->mdl->getPegawaiByLevel(1);
                $data['poTerakhir'] = $this->mdl->getLastPO();
                $data['kategori']   = $kategori;
                $data['idcust']     = $idcust;
                
                if ($idcust == '0') {
                    
                    $data['idc'] = 0;
                    
                } else {
                    
                    $data['customer'] = $this->mdl->getCustomer($data['idcust']);
                    $data['idc']      = 1;
                    
                }
                
                $this->load->view('createPOMassal', $data);
                
            } else {

                if ($this->input->post('namaBatu')==NULL) {
                    $namaProduk=$this->input->post('namaCustomer').'-'.$this->input->post('nomorPO');
                } else {
                    $namaProduk=$this->input->post('namaCustomer').'-'.$this->input->post('nomorPO').'-'.$this->input->post('namaBatu');
                };

                $data = array(
                    'kodeProduk'        => $this->input->post('kodeProduk'),
                    'namaProduk'        => $namaProduk,
                    'jenisProduk'       => $this->input->post('jenisProduk'),
                    'idKategoriProduksi'       => $this->input->post('kategori'),
                    'dateCreated'   => date("Y-m-d H:i:s"),

                );

                $idp = $this->mdl->insertDataGetLast('tblm_produkheader',$data);

                $data = array(
                    'idProdukHeader'    => $idp,
                    'bahan'             => $this->input->post('bahan'),
                    'kadarBahan'        => $this->input->post('kadarBahan'),
                    'ukuran'            => $this->input->post('ukuranJari'),
                    'krumWarna'         => $this->input->post('krumWarna'),
                    'model'             => $this->input->post('model'),
                    'keteranganKrum'    => $this->input->post('keteranganKrum'),
                    'dateCreated'   => date("Y-m-d H:i:s"),
                );

                $this->mdl->insertData('tblm_produkdetail',$data);

                $data = array(
                    
                    'namaCustomer'        => $this->input->post('namaCustomer'),
                    'nomorTelepon'        => $this->input->post('nomorTelepon'),
                
                );

                $idc = $this->mdl->insertDataGetLast('tblm_customer',$data);

                $data = array(
                    'nomorPO'           => $this->input->post('nomorPO'),
                    'idProdukHeader'          => $idp,
                    'idCustomer'        => $idc,
                    'idSalesPerson'     => $this->input->post('idSalesPerson'),
                    'tanggalMasuk'      => $this->input->post('tanggalMasuk'),
                    'tanggalPenyelesaian'    => $this->input->post('tanggalEstimasiPenyelesaian'),
                    'dateCreated'   => date("Y-m-d H:i:s"),
                    'berat'         => $this->input->post('berat'),
                    'idKategoriProduksi'       => $this->input->post('kategori'),
                    
                    
                );

                $idpo = $this->mdl->insertDataGetLast('tblt_poheader',$data);

                $data = array(
                    
                    'idPOHeader'    => $idpo,
                    'hargaBahan'        => $this->input->post('hargaBahan'),
                    'upah'              => $this->input->post('upah'),
                    'datangEmas'        => $this->input->post('datangEmas'),
                    'panjar'            => $this->input->post('panjar'),
                    'kadarDatangEmas'   => $this->input->post('kadarDatangEmas'),
                    'tipeCustomer'      => $this->input->post('tipeCustomer'),
                    'pekerjaanTambahan' => $this->input->post('pekerjaanTambahan'),
                    'keteranganTambahan'=> $this->input->post('keteranganTambahan'),
                    'dateCreated'   => date("Y-m-d H:i:s"),

                );

                $this->mdl->insertData('tblt_podetail',$data);

                $data = array(
                    
                    'idProdukHeader'        => $idp,
                    'gambar'              => $file_name,
                    'jenisGambar'        => 'Sample',
                
                );

                $this->mdl->insertData('tblt_gambarproduk',$data);

                $message = "PO telah berhasil dibuat";
                echo "<script type='text/javascript'>alert('$message');window.location.href='" . base_url("PO/list") . "';</script>";
                
            }
        }
        
        
    }

    public function listPO() {

        $data['listPO'] = $this->mdl->getListPO();
        $this->load->view('listPO',$data);

    }

    public function invoice($idPOHeader) {
        $data["dataPO"] = $this->mdl->getPO($idPOHeader);
        $this->load->view('invoicePO',$data);
    }

    public function printPO($idPOHeader) {
        $data["dataPO"] = $this->mdl->getPO($idPOHeader);
        $this->load->view('printPO',$data);
    }

    public function cariProduk() {
        $kodeProduk = $this->input->post('kodeProduk');
        $data['produk'] = $this->mdl->findProdukDetail($kodeProduk);
        echo json_encode($data['produk']);
    }
    
}