<?php

namespace Tests\Unit;

use Encore\Admin\Controllers\Dashboard;
use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

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
        $dsb = Dashboard::extensions();
    }
}
