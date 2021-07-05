<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Provider extends Model
{
    use HasFactory;
    public function products()
    {
        return $this->hasMany(Product::class)->withTimestamps();
    }
    public function orders()
    {
        return $this->hasMany(Order::class)->withTimestamps();
    }
}
