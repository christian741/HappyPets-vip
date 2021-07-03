<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pet extends Model
{
    use HasFactory;
    
    public function users()
    {
        return $this->belongsToMany(User::class)->withTimestamps();
    }
    public function typePets()
    {
        return $this->belongsToMany(TypePets::class)->withTimestamps();
    }
}
