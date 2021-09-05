<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sell extends Model
{
    use HasFactory;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'product_id',
        'observation',
        'price',
        'price_debt',
        'quantity',
        'debt',
        'typePaid'
       
    ];
    public function products()
    {
        return $this->hasMany(Product::class)->withTimestamps();
    }
}
