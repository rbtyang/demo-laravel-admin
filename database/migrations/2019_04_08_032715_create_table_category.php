<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableCategory extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('category', function (Blueprint $table) {
            /*必填项*/
            $table->increments('id');
            $table->integer('store_id')->comment('所属门店id');
            $table->string('name')->comment('名称');
            $table->integer('parent_gid')->comment('上级id');
            /*选填项*/
            $table->timestamps();
            /*索引项*/
            $table->unique(['store_id', 'name']);
            $table->index('store_id');
            $table->index('parent_gid');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('category');
    }
}
