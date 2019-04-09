<?php

use App\Admin\Extensions\Popover;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid\Column;

/**
 * Laravel-admin - admin builder based on Laravel.
 * @author z-song <https://github.com/z-song>
 *
 * 在这个页面可以扩展或者移除你的组件，或者引入前端资源
 *
 * Bootstraper for Admin.
 *
 * Here you can remove builtin form field:
 * Encore\Admin\Form::forget(['map', 'editor']);
 *
 * Or extend custom form field:
 * Encore\Admin\Form::extend('php', PHPEditor::class);
 *
 * Or require js and css assets:
 * Admin::css('/packages/prettydocs/css/styles.css');
 * Admin::js('/packages/prettydocs/js/main.js');
 *
 */

Admin::navbar(function (\Encore\Admin\Widgets\Navbar $navbar) {
    $right_store_id = session('right_store_id');
    $navbar->left(view('store-list', ['right_store_id' => $right_store_id]));
});

Form::forget(['map', 'editor']);

Column::extend('popover', Popover::class);