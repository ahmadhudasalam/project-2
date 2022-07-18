<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Faskes extends CI_Controller
{
    public function index()
    {
        $this->load->model('faskes_model', 'faskes');
        $list_faskes = $this->faskes->getAll();

        $data['list_faskes'] = $list_faskes;
        $this->load->view('layout/header');
        $this->load->view('layout/sidebar');
        $this->load->view('faskes/index', $data);
        $this->load->view('layout/footer');
    }

    public function create()
    {
        $this->load->model('faskes_model', 'faskes');

        $config['upload_path']          = './dist/img';
        $config['allowed_types']        = 'gif|jpg|png|PNG';
        $config['max_size']             = 10000;
        $config['max_width']            = 10000;
        $config['max_height']           = 10000;

        $this->load->library('upload', $config);
        $datainfo = array();
        $files = $_FILES;
        $cpt = count($_FILES['userfile']['name']);
        for ($i = 0; $i < $cpt; $i++) {
            $_FILES['userfile']['name'] = $files['userfile']['name'][$i];
            $_FILES['userfile']['type'] = $files['userfile']['type'][$i];
            $_FILES['userfile']['tmp_name'] = $files['userfile']['tmp_name'][$i];
            $_FILES['userfile']['error'] = $files['userfile']['error'][$i];
            $_FILES['userfile']['size'] = $files['userfile']['size'][$i];

            $this->upload->do_upload('userfile');
            $datainfo[] = $this->upload->data();
        }

        // $data = array(
        //     'id' => 'default',
        //     'nama' => $this->input->post('nama'),
        //     'alamat' => $this->input->post('alamat'),
        //     'latlong' => $this->input->post('latlong'),
        //     'jenis_id' => $this->input->post('jenis_id'),
        //     'deskripsi' => $this->input->post('deskripsi'),
        //     'skor_rating' => $this->input->post('skor_rating'),
        //     'foto1' => $datainfo[0]['file_name'],
        //     'foto2' => $datainfo[1]['file_name'],
        //     'foto3' => $datainfo[2]['file_name'],
        //     'kecamatan_id' => $this->input->post('kecamatan_id'),
        //     'website' => $this->input->post('website'),
        //     'jumlah_dokter' => $this->input->post('jumlah_dokter'),
        //     'jumlah_pegawai' => $this->input->post('jumlah_pegawai'),
        // );

        // $this->db->insert('faskes', $data);

        $_nama = $this->input->post('nama');
        $_alamat = $this->input->post('alamat');
        $_latlong = $this->input->post('latlong');
        $_jenis_id = $this->input->post('jenis_id');
        $_deskripsi = $this->input->post('deskripsi');
        $_skor_rating = $this->input->post('skor_rating');
        $_foto1 = $datainfo[0]['file_name'];
        $_foto2 = $datainfo[1]['file_name'];
        $_foto3 = $datainfo[2]['file_name'];
        $_kecamatan_id = $this->input->post('kecamatan_id');
        $_website = $this->input->post('website');
        $_jumlah_dokter = $this->input->post('jumlah_dokter');
        $_jumlah_pegawai = $this->input->post('jumlah_pegawai');

        $data_faskes[] = $_nama;
        $data_faskes[] = $_alamat;
        $data_faskes[] = $_latlong;
        $data_faskes[] = $_jenis_id;
        $data_faskes[] = $_deskripsi;
        $data_faskes[] = $_skor_rating;
        $data_faskes[] = $_foto1;
        $data_faskes[] = $_foto2;
        $data_faskes[] = $_foto3;
        $data_faskes[] = $_kecamatan_id;
        $data_faskes[] = $_website;
        $data_faskes[] = $_jumlah_dokter;
        $data_faskes[] = $_jumlah_pegawai;

        $this->faskes->create($data_faskes);

        redirect(base_url() . 'index.php/faskes/');
    }

    public function read()
    {
        $this->load->model('faskes_model', 'faskes');
        $list_faskes = $this->faskes->getAll();
        $_id = $this->input->get('id');

        $data['list_faskes'] = $list_faskes;
        $data['faskes'] = $this->faskes->findById($_id);

        $this->load->view('layout/header');
        $this->load->view('layout/sidebar');
        $this->load->view('faskes/read', $data);
        $this->load->view('layout/footer');
    }

    public function update()
    {
        $this->load->model('faskes_model', 'faskes');

        $config['upload_path']          = './dist/img';
        $config['allowed_types']        = 'gif|jpg|png';
        $config['max_size']             = 10000;
        $config['max_width']            = 10000;
        $config['max_height']           = 10000;

        $this->load->library('upload', $config);
        $datainfo = array();
        $files = $_FILES;
        $cpt = count($_FILES['userfile']['name']);
        for ($i = 0; $i < $cpt; $i++) {
            $_FILES['userfile']['name'] = $files['userfile']['name'][$i];
            $_FILES['userfile']['type'] = $files['userfile']['type'][$i];
            $_FILES['userfile']['tmp_name'] = $files['userfile']['tmp_name'][$i];
            $_FILES['userfile']['error'] = $files['userfile']['error'][$i];
            $_FILES['userfile']['size'] = $files['userfile']['size'][$i];

            $this->upload->do_upload('userfile');
            $datainfo[] = $this->upload->data();
        }

        // $data = array(
        //     'nama' => $this->input->post('nama'),
        //     'alamat' => $this->input->post('alamat'),
        //     'latlong' => $this->input->post('latlong'),
        //     'jenis_id' => $this->input->post('jenis_id'),
        //     'deskripsi' => $this->input->post('deskripsi'),
        //     'skor_rating' => $this->input->post('skor_rating'),
        //     'foto1' => $datainfo[0]['file_name'],
        //     'foto2' => $datainfo[1]['file_name'],
        //     'foto3' => $datainfo[2]['file_name'],
        //     'kecamatan_id' => $this->input->post('kecamatan_id'),
        //     'website' => $this->input->post('website'),
        //     'jumlah_dokter' => $this->input->post('jumlah_dokter'),
        //     'jumlah_pegawai' => $this->input->post('jumlah_pegawai'),
        // );

        // $this->db->where('id', $_id_update);
        // $this->db->update('faskes', $data);

        $_id_update = $this->input->post('idedit');
        $_nama = $this->input->post('nama');
        $_alamat = $this->input->post('alamat');
        $_latlong = $this->input->post('latlong');
        $_jenis_id = $this->input->post('jenis_id');
        $_deskripsi = $this->input->post('deskripsi');
        $_skor_rating = $this->input->post('skor_rating');
        $_foto1 = $datainfo[0]['file_name'];
        $_foto2 = $datainfo[1]['file_name'];
        $_foto3 = $datainfo[2]['file_name'];
        $_kecamatan_id = $this->input->post('kecamatan_id');
        $_website = $this->input->post('website');
        $_jumlah_dokter = $this->input->post('jumlah_dokter');
        $_jumlah_pegawai = $this->input->post('jumlah_pegawai');

        $data_faskes[] = $_nama;
        $data_faskes[] = $_alamat;
        $data_faskes[] = $_latlong;
        $data_faskes[] = $_jenis_id;
        $data_faskes[] = $_deskripsi;
        $data_faskes[] = $_skor_rating;
        $data_faskes[] = $_foto1;
        $data_faskes[] = $_foto2;
        $data_faskes[] = $_foto3;
        $data_faskes[] = $_kecamatan_id;
        $data_faskes[] = $_website;
        $data_faskes[] = $_jumlah_dokter;
        $data_faskes[] = $_jumlah_pegawai;
        $data_faskes[] = $_id_update;

        $this->faskes->update($data_faskes);

        redirect(base_url() . 'index.php/faskes/');
    }


    public function insert()
    {
        $this->load->model('jenisfaskes_model', 'jenisfaskes');
        $list_jenisfaskes = $this->jenisfaskes->getAll();
        $data['list_jenisfaskes'] = $list_jenisfaskes;

        $this->load->model('kecamatan_model', 'kecamatan');
        $list_kecamatan = $this->kecamatan->getAll();
        $data['list_kecamatan'] = $list_kecamatan;

        $this->load->view('layout/header');
        $this->load->view('layout/sidebar');
        $this->load->view('faskes/create', $data);
        $this->load->view('layout/footer');
    }

    public function edit()
    {
        $this->load->model('jenisfaskes_model', 'jenisfaskes');
        $list_jenisfaskes = $this->jenisfaskes->getAll();
        $data['list_jenisfaskes'] = $list_jenisfaskes;

        $this->load->model('kecamatan_model', 'kecamatan');
        $list_kecamatan = $this->kecamatan->getAll();
        $data['list_kecamatan'] = $list_kecamatan;

        $_id = $this->input->get('id');
        $this->load->model('faskes_model', 'faskes');
        $faskes_update = $this->faskes->findById($_id);

        $data['faskes_update'] = $faskes_update;
        $this->load->view('layout/header');
        $this->load->view('layout/sidebar');
        $this->load->view('faskes/update', $data);
        $this->load->view('layout/footer');
    }

    public function delete()
    {
        $_id = $this->input->get('id');
        $this->load->model('faskes_model', 'faskes');
        $this->faskes->delete($_id);
        redirect(base_url('index.php/faskes/'));
    }
}
