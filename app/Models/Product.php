<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'full_title',
        'text',
        'description',
        'image',
        'video',
        'price',
        'type_id',
        'category_id',
        'garranty',
        'stock',
        'hasStock',
        'discount',
        'is_publish',
        'reviews',
        'shipping',
    ];

    public function category()
    {
        return $this->hasOne(Category::class, 'id', 'category_id');
    }

    public function type()
    {
        return $this->hasOne(Type::class, 'id', 'type_id');
    }

    public function characteristics()
    {
        return $this->hasMany(Charasteristic::class, 'product_id', 'id');
    }

    public function colors(){
        return $this->hasMany(Color::class, 'product_id', 'id');
    }

    public function reviews(){
        return $this->hasMany(ProductView::class, 'product_id', 'id');
    }
}
