<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TypesProduct extends Model
{
    use HasFactory;
    protected $table = 'types_products';
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
    public function products()
    {
        return $this->hasMany(Product::class)->withTimestamps();
    }
}
