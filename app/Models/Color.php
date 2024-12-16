<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Color extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'product_id'
    ];

    public function color_images()
    {
        return $this->hasMany(ColorImage::class, 'color_id', 'id');
    }
}
