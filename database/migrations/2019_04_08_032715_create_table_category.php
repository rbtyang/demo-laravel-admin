<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

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
            $table->integer('parent_id')->comment('上级id');
            /*选填项*/
            $table->tinyInteger('sort')->comment('排序值: 越小越靠前');
            $table->timestamps();
            /*索引项*/
            $table->unique(['store_id', 'name']);
            $table->index('store_id');
            $table->index('parent_id');
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
