<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Surya Sumatera | Administration</title>

    <link href="<?php echo base_url();?>assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url();?>assets/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="<?php echo base_url();?>assets/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="<?php echo base_url();?>assets/css/animate.css" rel="stylesheet">
    <link href="<?php echo base_url();?>assets/css/style.css" rel="stylesheet">

    <link href="<?php echo base_url();?>assets/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
    <style type="text/css">
        input[type="file"] {
            display: none;
        }

        .custom-file-upload {
            border: 1px solid #ccc;
            display: inline-block;
            padding: 6px 12px;
            cursor: pointer;
        }
    </style>
</head>

<body>

    <div id="wrapper">

    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <?php include('akunlogin.php') ?>
                <?php include('sidebar.php') ?>
            </ul>

        </div>
    </nav>

        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
        </div>
            <!-- <ul class="nav navbar-top-links navbar-right">
                <li>
                    <span class="m-r-sm text-muted welcome-message">Selamat Datang Victoriavici.</span>
                </li>
                <li>
                    <a href="login.html">
                        <i class="fa fa-sign-out"></i> Log out
                    </a>
                </li>
            </ul> -->

        </nav>
        </div>
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Administration</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="<?php echo base_url();?>user/administration">Beranda</a>
                        </li>
                        <li class="active">
                            <strong>Pegawai</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">
                </div>
            </div>
        <div class="wrapper wrapper-content animated fadeInRight">
            <div>
                <a class="btn btn-xs btn-primary" href="#" data-toggle="modal" data-target="#tambahPegawai">
                        <i class="fa fa-pencil"><span style="font-family: 'open sans'"><strong> TAMBAH PEGAWAI</strong></span></i>
                </a><br><br>
            </div>
            <div class="row">
            <?php foreach ($pegawai as $p) : ?>
                <?php
                    $idUser         = $p->idUser;
                if($this->input->post('is_submitted')){
                    $username       = $set_value('username');
                    $password       = $set_value('password');
                    $nama           = $set_value('nama');
                    $jabatan        = $set_value('jabatan');
                    $level          = $set_value('level');
                    $nomorTelepon   = $set_value('nomorTelepon');
                    $email          = $set_value('email');
                    $dateCreated    = $set_value('dateCreated');
                }
                else {
                    $username       = $p->username;
                    $password       = $p->password;
                    $nama           = $p->nama;
                    $jabatan        = $p->jabatan;
                    $level          = $p->level;
                    $nomorTelepon   = $p->nomorTelepon;
                    $email          = $p->email;
                    $dateCreated    = $p->dateCreated;
                }
                ?>
                <div class="col-lg-4">
                <div class="contact-box">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img class="img-circle m-t-xs img-responsive" <?php if ($p->fotoUser!=NULL){?> src="<?php echo base_url();?>uploads/fotoUser/<?php echo $p->fotoUser?>" <?php } else { ?> src="<?php echo base_url();?>assets/img/profile_small.jpg" <?php } ?> alt="Image" style="display:block; margin:auto;">
                            <div class="m-t-xs font-bold"><?php echo $p->jabatan?></div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><strong><?php echo $p->nama?></strong></h3>
                        <p><small>Bergabung pada <?php echo $dateCreated ?></small></p>
                        <p><i class="fa fa-phone"></i><?php echo " ".$p->nomorTelepon?></p>
                        <p><i class="fa fa-envelope-square"></i><?php echo " ".$p->email?></p>
                        <address>
                            <a href="#" data-toggle="modal" data-target="#update<?php echo $p->idUser;?>" class="btn btn-xs btn-warning" >Edit</a>
                            <a href="<?php echo base_url('user/deletePegawai/' . $idUser) ?>" class="btn btn-xs btn-danger" onclick="return confirm('Apakah anda yakin akan menghapus data pegawai ini?')">Delete</a>
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!-- Modal -->
            <div class="modal fade" id="update<?php echo $idUser;?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
              <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Edit Pegawai</h4>
                  </div>
                  <div class="modal-body">
                    <?php echo form_open_multipart('user/editPegawai/'.$idUser)?>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="text-center">
                                <img class="img-circle m-t-lg img-responsive" <?php if ($p->fotoUser!=NULL){?> src="<?php echo base_url();?>uploads/fotoUser/<?php echo $p->fotoUser?>" <?php } else { ?> src="<?php echo base_url();?>assets/img/profile_small.jpg" <?php } ?> alt="Image" style="display:block; margin:auto;">
                                <br>
                                <label for="file-upload" class="custom-file-upload">
                                    <i class="fa fa-cloud-upload"></i> Ubah Gambar
                                </label>
                                <input id="file-upload" type="file" name="userfile" />
                                <!-- <a href="#" data-toggle="modal" data-target="#ubahGambar<?php echo $p->idUser;?>" class="btn btn-xs btn-default" >Ubah Foto</a> -->
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Nama Lengkap</label>
                                <input type="text" name= "nama"  class="form-control" required value="<?= $nama?>">
                            </div>
                            <div class="form-group">
                                <label>Username</label>
                                <input type="text" name= "username" class="form-control" required value="<?= $username?>">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="text" name= "password"  class="form-control" required value="<?= $password?>">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Jabatan</label>
                                <select id="jabatan" class="form-control"  name="jabatan">
                                    <option value="Admin Produksi" <?php if ($jabatan=="Admin Produksi"){?> selected <?php } ?>>Admin Produksi</option>
                                    <option value="Admin Sales" <?php if ($jabatan=="Admin Sales"){?> selected <?php } ?>>Admin Sales</option>
                                    <option value="Admin Finance" <?php if ($jabatan=="Admin Finance"){?> selected <?php } ?>>Admin Finance</option>
                                    <option value="Staf Sales" <?php if ($jabatan=="Staf Sales"){?> selected <?php } ?>>Staf Sales</option>
                                    <option value="Staf Finance" <?php if ($jabatan=="Staf Finance"){?> selected <?php } ?>>Staf Finance</option>
                                    <option value="Staf Desain" <?php if ($jabatan=="Staf Desain"){?> selected <?php } ?>>Staf Desain</option>
                                    <option value="Staf Lilin" <?php if ($jabatan=="Staf Lilin"){?> selected <?php } ?>>Staf Lilin</option>
                                    <option value="Staf Gips" <?php if ($jabatan=="Staf Gips"){?> selected <?php } ?>>Staf Gips</option>
                                    <option value="Staf Gosok" <?php if ($jabatan=="Staf Gosok"){?> selected <?php } ?>>Staf Gosok</option>
                                    <option value="Staf Cor" <?php if ($jabatan=="Staf Cor"){?> selected <?php } ?>>Staf Cor</option>
                                    <option value="Staf Boom" <?php if ($jabatan=="Staf Boom"){?> selected <?php } ?>>Staf Boom</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>No Telepon</label>
                                <input type="number" name= "nomorTelepon"  class="form-control" value="<?= $nomorTelepon?>" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="text" name= "email"  class="form-control" value="<?= $email?>">
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-primary" type="submit">Save changes</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                    <?php echo form_close()?> 
                  </div>
                </div>
              </div>
            </div>
            <!-- End of Modal -->
            <?php endforeach;?>
        </div>
        </div>
        
        <div class="footer">
            <div>
                <strong>Copyright</strong> Surya Sumatera &copy; <?php echo date('Y')?>
            </div>
        </div>

        </div>
        </div>


    <!-- Mainly scripts -->
    <script src="<?php echo base_url();?>assets/js/jquery-2.1.1.js"></script>
    <script src="<?php echo base_url();?>assets/js/bootstrap.min.js"></script>
    <script src="<?php echo base_url();?>assets/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="<?php echo base_url();?>assets/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="<?php echo base_url();?>assets/js/inspinia.js"></script>
    <script src="<?php echo base_url();?>assets/js/plugins/pace/pace.min.js"></script>

    <!-- FooTable -->
    <script src="<?php echo base_url();?>assets/js/plugins/footable/footable.all.min.js"></script>
    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function() {

            $('.footable').footable();
            $('.footable2').footable();

        });

    </script>
</body>

</html>
