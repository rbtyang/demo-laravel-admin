<?php

namespace App\Admin\Controllers;

use App\Helpers\UtilHelper;
use App\Http\Controllers\Controller;
use App\Models\UomModel;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class UomController extends Controller
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
        $store = UtilHelper::getRightStore();
        $grid = new Grid(new UomModel);

        $grid->id('Id');
        $grid->store_id('Store id');
        $grid->name('Name');
        $grid->need_to_weigh('Need to weigh');
        $grid->memo('Memo');
        $grid->created_at('Created at');
        $grid->updated_at('Updated at');

        $grid->model()->where('store_id', $store->id);

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
        $show = new Show(UomModel::findOrFail($id));

        $show->id('Id');
        $show->store_id('Store id');
        $show->name('Name');
        $show->need_to_weigh('Need to weigh');
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
        $store = UtilHelper::getRightStore();
        $form = new Form(new UomModel);

        $form->text('store_id', 'Store id')->readOnly()->value($store->id);
        $form->text('name', 'Name');
        $form->switch('need_to_weigh', 'Need to weigh');
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
