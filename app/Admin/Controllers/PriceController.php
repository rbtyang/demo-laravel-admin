<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\PriceModel;
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
        $grid->stock_id('Store stock id');
        $grid->sale_uom_id('Uom id');
        $grid->price('Price');
        $grid->client_price('Price client');
        $grid->status('Status');
        $grid->created_at('Created at');
        $grid->updated_at('Updated at');

        return $grid;
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
        $show->stock_id('Store stock id');
        $show->sale_uom_id('Uom id');
        $show->price('Price');
        $show->client_price('Price client');
        $show->status('Status');
        $show->created_at('Created at');
        $show->updated_at('Updated at');

        return $show;
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
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new PriceModel);

        $form->number('store_id', 'Store id');
        $form->text('name', 'Name');
        $form->number('stock_id', 'Store stock id');
        $form->number('sale_uom_id', 'Uom id');
        $form->number('price', 'Price');
        $form->number('client_price', 'Price client');
        $form->switch('status', 'Status');

        return $form;
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
}
