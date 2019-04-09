<?php

namespace App\Admin\Controllers;

use Encore\Admin\Controllers\AuthController as BaseAuthController;
use Exception;

class AuthController extends BaseAuthController
{
    public function store()
    {
        try {
            $reqData = request();
            session(['right_store_id' => $reqData['store_id']]);

            return response(null);
//            return response()->json($reqData);
        } catch (Exception $e) {
            return response($e->getMessage(), 400);
        }
    }

}
