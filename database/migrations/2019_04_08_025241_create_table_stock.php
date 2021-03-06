<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableStock extends Migration
{
    /**
     * Run the 商品库存信息 migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stock', function (Blueprint $table) {
            /*必填项*/
            $table->increments('id')->comment('id');
            $table->integer('store_id')->comment('所属门店id');
            $table->string('name')->comment('商品库存名称');
            $table->string('memory_code')->comment('助记码'); //自动根据商品名称生成首拼
            $table->integer('stock_uom_id')->comment('库存单位id');
            $table->string('stock_uom_name')->comment('库存单位名称');
            $table->decimal('inv', 8, 3)->comment('实际库存/库存数量: 单位kg'); //选填
            $table->integer('category_id')->comment('商品类别id');
            $table->tinyInteger('status')->comment('商品库存状态: 0下架, 1上架, 2实效');
            /*选填项*/
            $table->decimal('stock_price', 8, 2)->comment('库存单价/库存成本: 单位元');
            $table->string('barcode')->comment('商品编码/第三方编码');
            $table->string('memo')->comment('商品备注');
            $table->timestamps();
            /*索引项*/
            $table->index('store_id');
            $table->index('stock_uom_id');
            $table->index('category_id');
        });
    }

    /**
     * Reverse the 商品库存信息 migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('stock');
    }
}
