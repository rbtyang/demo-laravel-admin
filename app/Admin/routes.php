<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {
    $router->get('/', 'HomeController@index');
    $router->any('auth/store/', 'AuthController@store');

    $router->resource('demo/users', UserController::class);
    $router->resource('product/uom', UomController::class);
    $router->resource('product/category', CategoryController::class);
    $router->resource('product/stock', StockController::class);
    $router->resource('product/price', PriceController::class);
});
