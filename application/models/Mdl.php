<?php
/* 
 * File Name: employee_model.php
 */
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class mdl extends CI_Model {
    function __construct() {
        // Call the Model constructor
        parent::__construct();

    }

    public function checkAccount($username,$password) {
        
        $sql   = "SELECT * from user where username ='" . $username . "' and password = '$password'";
        $query = $this->db->query($sql);
        
        
        if ($query->num_rows() == 1) {
            return $query->result();
        } else {
            return false;
        }
    }

    public function insertData($table, $data) {
        $this->db->insert($table, $data);
    }
    
    public function updateData($param, $value, $table, $data) {
        $this->db->where($param, $value);
        $this->db->update($table, $data);
    }
    
    public function deleteData($param, $value, $table) {
        $this->db->where($param, $value);
        $this->db->delete($table);
    }

    public function updateData2($where, $table, $data) {
        $this->db->where($where);
        $this->db->update($table, $data);
    }

}