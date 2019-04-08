<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

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
            $table->integer('uom_id')->comment('库存单位id');
            $table->integer('inv_real')->comment('实际库存/库存数量'); //选填
            $table->integer('category_id')->comment('商品类别id');
            $table->tinyInteger('status')->comment('商品库存状态: 0下架, 1上架');
            /*选填项*/
            $table->integer('price_stock')->comment('库存单价/库存成本');
            $table->string('third_party_id')->comment('商品编码/第三方编码');
            $table->string('memo')->comment('商品备注');
            $table->timestamps();
            /*索引项*/
            $table->index('store_id');
            $table->index('uom_id');
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
