<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ServiceHairdress extends Model
{
    use HasFactory;

    protected $table = 'service_hairdress';
    protected $primaryKey = 'id';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'services'
    ];
    public function pets()
    {
        return $this->hasMany(Pet::class)->withTimestamps();
    }
}
