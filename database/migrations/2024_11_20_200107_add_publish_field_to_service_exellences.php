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
        Schema::table('exellence_services', function (Blueprint $table) {
            $table->boolean("is_publish")->default(false)->after('image');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('exellence_services', function (Blueprint $table) {
            $table->dropComumn('is_publish');
        });
    }
};
