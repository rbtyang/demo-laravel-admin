<?php

namespace App\Admin\Controllers;

use App\Models\PriceModel;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class PriceController extends Controller
{
    use HasResourceActions;

    /**
     * Index interface.
     *
     * @param Content $content
     * @return Content
     */
    public function index(Content $content)
    {
        return $content
            ->header('Index')
            ->description('description')
            ->body($this->grid());
    }

    /**
     * Show interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function show($id, Content $content)
    {
        return $content
            ->header('Detail')
            ->description('description')
            ->body($this->detail($id));
    }

    /**
     * Edit interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function edit($id, Content $content)
    {
        return $content
            ->header('Edit')
            ->description('description')
            ->body($this->form()->edit($id));
    }

    /**
     * Create interface.
     *
     * @param Content $content
     * @return Content
     */
    public function create(Content $content)
    {
        return $content
            ->header('Create')
            ->description('description')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new PriceModel);

        $grid->id('Id');
        $grid->store_id('Store id');
        $grid->name('Name');
        $grid->store_stock_id('Store stock id');
        $grid->uom_id('Uom id');
        $grid->price('Price');
        $grid->price_client('Price client');
        $grid->status('Status');
        $grid->created_at('Created at');
        $grid->updated_at('Updated at');

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(PriceModel::findOrFail($id));

        $show->id('Id');
        $show->store_id('Store id');
        $show->name('Name');
        $show->store_stock_id('Store stock id');
        $show->uom_id('Uom id');
        $show->price('Price');
        $show->price_client('Price client');
        $show->status('Status');
        $show->created_at('Created at');
        $show->updated_at('Updated at');

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new PriceModel);

        $form->number('store_id', 'Store id');
        $form->text('name', 'Name');
        $form->number('store_stock_id', 'Store stock id');
        $form->number('uom_id', 'Uom id');
        $form->number('price', 'Price');
        $form->number('price_client', 'Price client');
        $form->switch('status', 'Status');

        return $form;
    }
}
