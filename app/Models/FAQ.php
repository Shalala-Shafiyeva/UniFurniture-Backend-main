<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FAQ extends Model
{
    public function option()
    {
        return $this->hasOne(Option::class, 'id', 'option_id');
    }
}
