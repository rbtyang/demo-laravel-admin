<?php
/**
 * Created by PhpStorm.
 * User: rbt
 * Date: 19-4-8
 * Time: 下午7:00
 */

namespace App\Helpers;

use App\Models\StoreModel;
use App\Helpers\ConstHelper;

class UtilHelper
{
    /**
     * @return StoreModel $store
     */
    public static function getRightStore()
    {
        $right_store_id = session(ConstHelper::SESSION_RIGHT_STORE_ID);
        $store = new StoreModel();
        $store->id = $right_store_id;
        return $store;
    }
}