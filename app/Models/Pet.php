<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pet extends Model
{
    use HasFactory;
    protected $table = 'pets';
    protected $primaryKey = 'id';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'namepet',
        'cellphone',
        'raza',
        'age',
        'genere',
        'address',
        'observations',
        'vacunes',
        'desparasitation',
        'esterilization'
    ];
    
    public function scopeName($query, $name){
        if($name){
            return $query->orWhere('name','ILIKE',"%$name%");
        }
    }
    public function users()
    {
        return $this->belongsToMany(User::class)->withTimestamps();
    }
    public function typePets()
    {
        return $this->belongsTo(TypePets::class)->withTimestamps();
    }
}
