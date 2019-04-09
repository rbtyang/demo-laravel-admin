<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\StockModel;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class StockController extends Controller
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
        $grid = new Grid(new StockModel);

        $grid->id('Id');
        $grid->store_id('Store id');
        $grid->name('Name');
        $grid->memory_code('Memory code');
        $grid->uom_id('Uom id');
        $grid->inv_real('Inv real');
        $grid->category_id('Category id');
        $grid->status('Status');
        $grid->price_stock('Price stock');
        $grid->third_party_id('Third party id');
        $grid->memo('Memo');
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
        $show = new Show(StockModel::findOrFail($id));

        $show->id('Id');
        $show->store_id('Store id');
        $show->name('Name');
        $show->memory_code('Memory code');
        $show->uom_id('Uom id');
        $show->inv_real('Inv real');
        $show->category_id('Category id');
        $show->status('Status');
        $show->price_stock('Price stock');
        $show->third_party_id('Third party id');
        $show->memo('Memo');
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
        $form = new Form(new StockModel);

        $form->number('store_id', 'Store id');
        $form->text('name', 'Name');
        $form->text('memory_code', 'Memory code');
        $form->number('uom_id', 'Uom id');
        $form->number('inv_real', 'Inv real');
        $form->number('category_id', 'Category id');
        $form->switch('status', 'Status');
        $form->number('price_stock', 'Price stock');
        $form->text('third_party_id', 'Third party id');
        $form->text('memo', 'Memo');

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
