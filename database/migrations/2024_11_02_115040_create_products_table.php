<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('full_title');
            $table->text('text');
            $table->text('description');
            $table->string('image');
            $table->string('video');
            $table->float('price');
            $table->integer('type_id');
            $table->integer('category_id');
            $table->integer('garranty');
            $table->integer('stock');
            $table->boolean('hasStock');
            $table->integer('discount')->default(0);
            $table->boolean('is_publish');
            $table->integer('reviews')->default(0);
            $table->integer('shipping');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
