<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Basket extends Model
{
    public function basketProducts()
    {
        return $this->hasMany(BasketProduct::class, 'basket_id', 'id');
    }
}
