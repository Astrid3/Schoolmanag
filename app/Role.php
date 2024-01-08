<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Role extends Model

{
    protected $table = "roles";
    public function roles(){
		return $this->belongsTo('Modules\RolePermission\Entities\InfixRole', 'role_id', 'id');
	} //
}
