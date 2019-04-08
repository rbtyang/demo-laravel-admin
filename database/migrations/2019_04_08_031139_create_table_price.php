<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTablePrice extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::create('price', function (Blueprint $table) {
            /*必填项*/
            $table->increments('id')->comment('id');
            $table->integer('store_id')->comment('所属门店id');
            $table->string('name')->comment('商品销售名称');
            $table->integer('store_stock_id')->comment('所属库存商品id');
            $table->integer('uom_id')->comment('销售单位id');
            $table->integer('price')->comment('现价/售价');
            $table->integer('price_client')->comment('销售单位id');
            $table->tinyInteger('status')->comment('商品库存状态: 0下架, 1上架');
            /*选填项*/
            $table->timestamps();
            /*索引项*/
            $table->index('store_id');
            $table->index('store_stock_id');
            $table->index('uom_id');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down()
    {
        Schema::dropIfExists('price');
    }
}
