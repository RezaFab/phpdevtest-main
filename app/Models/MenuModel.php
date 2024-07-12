<?php

namespace App\Models;

use CodeIgniter\Model;

class MenuModel extends Model
{
    protected $table = 'menus';

    public function getUserMenus($userId)
    {
        $db = db_connect();
        $builder = $db->table('user_menus');
        $builder->select('menus.id, menus.title, menus.url, menus.icon');
        $builder->join('menus', 'user_menus.menu_id = menus.id');
        $builder->where('user_menus.user_id', $userId);

        $query = $builder->get();
        return $query->getResultArray();
    }
}
