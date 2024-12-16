<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Option extends Model
{
    public function faqs()
    {
        return $this->hasMany(Faq::class);
    }

    public function publish_faqs()
    {
        return $this->hasMany(Faq::class, 'option_id', 'id')->where('is_active', 1);
    }
}
