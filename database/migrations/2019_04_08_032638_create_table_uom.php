<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableUom extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('uom', function (Blueprint $table) {
            /*必填项*/
            $table->increments('id')->comment('id');
            $table->integer('store_id')->comment('所属门店id');
            $table->string('name')->comment('名称');
            $table->tinyInteger('need_to_weigh')->comment('是否称重: 0否, 1是');
            /*选填项*/
            $table->string('memo')->comment('备注');
            $table->timestamps();
            /*索引项*/
            $table->unique(['store_id', 'name']);
            $table->index('store_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uom');
    }
}
