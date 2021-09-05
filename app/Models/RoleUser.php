<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RoleUser extends Model
{
    protected $table = 'role_user';
    use HasFactory;
    public function users()
    {
        return $this->hasMany(User::class)->withTimestamps();
    }
    public function roles()
    {
        return $this->hasMany(Role::class)->withTimestamps();
    }
}