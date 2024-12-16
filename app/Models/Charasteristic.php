<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Charasteristic extends Model
{
    use HasFactory;
    protected $fillable = ['characteristic', 'product_id'];
}
