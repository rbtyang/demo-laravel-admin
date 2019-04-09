<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

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
            $table->integer('stock_id')->comment('所属库存商品id');
            $table->integer('sale_uom_id')->comment('销售单位id');
            $table->string('sale_uom_name')->comment('销售单位名称');
            $table->decimal('price', 8, 2)->comment('现价/售价: 单位元');
            $table->decimal('client_price', 8, 2)->comment('销售单位id: 单位元');
            $table->tinyInteger('status')->comment('商品库存状态: 0下架, 1上架, 2失效');
            /*选填项*/
            $table->timestamps();
            /*索引项*/
            $table->index('store_id');
            $table->index('stock_id');
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
