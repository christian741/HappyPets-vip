<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;
    public function providers()
    {
        return $this->belongsTo(Provider::class)->withTimestamps();
    }
}
