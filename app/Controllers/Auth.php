<?php

namespace App\Controllers;

use App\Models\UserModel;
use CodeIgniter\Controller;

class Auth extends BaseController
{
    public function login()
    {
        return view('login');
    }

    public function authenticate()
    {
        $username = $this->request->getPost('username');
        $password = (string) $this->request->getPost('password');

        if (empty($username) || empty($password)) {
            return redirect()->to('/auth/login')->with('error', 'Username dan password harus diisi');
        }

        $userModel = new UserModel();
        $user = $userModel->where('username', $username)->first();

        if (!$user) {
            return redirect()->to('/auth/login')->with('error', 'Login gagal. Username tidak ditemukan.');
        }

        //if (!password_verify($password, $user['password'])) {
        //     return redirect()->to('/auth/login')->with('error', 'Login gagal. Periksa kembali password Anda');
        // }

        $session = session();
        $session->set('user_id', $user['id']);
        $session->set('username', $user['username']);
        $session->set('hak_akses', $user['hak_akses']);

        return redirect()->to('/dashboard');
    }


    public function logout()
    {
        $session = session();
        $session->remove('user_id');
        $session->remove('username');
        $session->remove('hak_akses');

        return redirect()->to('/auth/login');
    }
}
