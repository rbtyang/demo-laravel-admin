<?php

namespace Tests\Unit;

use App\Models\CategoryModel;
use Encore\Admin\Controllers\Dashboard;
use Tests\TestCase;

class ExampleTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */
    public function testBasicTest()
    {
        $this->assertTrue(true);
    }

    public function testDashboard()
    {
        $exts = Dashboard::extensions();

        $this->assertTrue(true);
    }

    public function testCategoryTree()
    {
        $tree = CategoryModel::tree();

        $this->assertTrue(true);
    }
}
