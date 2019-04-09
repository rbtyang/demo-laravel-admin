<?php
/**
 * Created by PhpStorm.
 * User: rbt
 * Date: 19-4-4
 * Time: 下午6:39
 */

namespace App\Admin\Extensions;

use Encore\Admin\Admin;

class Popover
{
    public function display($placement = 'left')
    {
        return 'hahahah';
        Admin::script("$('[data-toggle=\"popover\"]').popover()");

        return <<<EOT
            <button type="button"
                class="btn btn-secondary"
                title="popover"
                data-container="body"
                data-toggle="popover"
                data-placement="$placement"
                data-content="{$this->value}"
                >弹出提示
            </button>
EOT;

    }
}