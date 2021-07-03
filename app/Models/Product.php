<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'description',
        'price',
        'quantity',
        'total_price',
        'photo',
        'types_products_id'
    ];

    public function typesProduct()
    {
        return $this->belongsTo(TypesProduct::class)->withTimestamps();
    }

    public function sells()
    {
        return $this->belongsTo(Sell::class)->withTimestamps();
    }
}
