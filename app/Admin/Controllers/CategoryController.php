<?php

namespace App\Admin\Controllers;

use App\Helpers\UtilHelper;
use App\Http\Controllers\Controller;
use App\Models\CategoryModel;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Encore\Admin\Tree;

class CategoryController extends Controller
{
    use HasResourceActions;

    /**
     * Index interface.
     *
     * @param Content $content
     *
     * @return Content
     */
    public function index(Content $content)
    {
        $store = UtilHelper::getRightStore();

        $categoryTree = CategoryModel::tree(function (Tree $tree) use ($store) {
            $tree->query(function (CategoryModel $queryModel) use ($store) {
                return $queryModel->where('store_id', $store->id);
            });
        });

        return $content
            ->header('Index')
            ->description('description')
            ->body($categoryTree);
    }

    /**
     * Show interface.
     *
     * @param mixed $id
     * @param Content $content
     *
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
     *
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
     *
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
        $store = UtilHelper::getRightStore();
        $grid = new Grid(new CategoryModel());

        $grid->id('Id');
        $grid->store_id('Store id');
        $grid->name('Name');
        $grid->parent_id('Parent id');
        $grid->sort('Sort');
        $grid->updated_at('Updated at');
        $grid->created_at('Created at');

        $grid->model()->where('store_id', $store->id);

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     *
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(CategoryModel::findOrFail($id));

        $show->id('Id');
        $show->store_id('Store id');
        $show->name('Name');
        $show->parent_id('Parent id');
        $show->sort('Sort');
        $show->updated_at('Updated at');
        $show->created_at('Created at');

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $store = UtilHelper::getRightStore();
        $form = new Form(new CategoryModel());

        $categoryOptions = CategoryModel::selectOptions(function (CategoryModel $queryModel) use ($store) {
            return $queryModel->where('store_id', $store->id);
        });

        $form->text('store_id', 'Store id')->readOnly()->value($store->id);
        $form->text('name', 'Name');
        $form->select('parent_id', 'Parent id')->options($categoryOptions);
        $form->number('sort', 'Sort')->default(0);

        return $form;
    }
}
