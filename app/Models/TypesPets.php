<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TypesPets extends Model
{
    use HasFactory;
    protected $table = 'types_pets';
    protected $primaryKey = 'id';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'description'
    ];
    public function pets()
    {
        return $this->hasMany(Pet::class)->withTimestamps();
    }
}
