<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $table = 'products';
    protected $primaryKey = 'id';

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
        'total_price_proovedor',
        'ganancy',
        'photo',
        'percentaje',
        'price_sell',
        'types_products_id'
    ];

    public function scopeName($query, $name){
        if($name){
            return $query->where('name','ILIKE',"%$name%");
        }
    }

    public function typesProduct()
    {
        return $this->belongsTo(TypesProduct::class)->withTimestamps();
    }

    public function providers()
    {
        return $this->belongsTo(Provider::class)->withTimestamps();
    }

    public function sells()
    {
        return $this->belongsTo(Sell::class)->withTimestamps();
    }
}
