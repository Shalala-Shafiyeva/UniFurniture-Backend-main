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
        Schema::table('basket_products', function (Blueprint $table) {
            $table->string('product_color');
            $table->string('color_image');
            
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('basket_products', function (Blueprint $table) {
            $table->dropColumn('product_color', 'color_image');
        });
    }
};
