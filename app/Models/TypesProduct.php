<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TypesProduct extends Model
{
    use HasFactory;
    public function products()
    {
        return $this->hasMany(Product::class)->withTimestamps();
    }
}
