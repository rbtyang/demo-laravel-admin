<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ExampleModel extends Model
{
//    protected $connection = 'report'; //数据库连接 (rep 库的表，请取消注释)

    protected $table = 'example'; //表名

//    protected $fillable = [ // 可以被批量赋值的字段列表    白名单
//        'id',
//        'name',
//        'created_at',
//        'updated_at',
//        'active',
//        'memo',
//    ];

//    protected $hidden = [
//
//    ];

//    use SoftDeletes;                  // 是否使用软删除

//    protected $dates = ['deleted_at'];    // 软删除使用的字段名

//    public $timestamps = false;       // 模型是否需要时间戳

//    protected $dateFormat = 'U';      // 模型日期存储格式

    /* 常量声明 *************************************************/

//    const ACTIVE_VALID = 1; //已激活

//    const ACTIVE_INVALID = 2; //未激活

    /* 构造器 *************************************************/

//    function __construct($attrs=[])
//    {
//        parent::__construct($attrs);
//    }

    /* 访问器、修改器*************************************************/

//    /**
//     * 访问器: 示例
//     * @param $value
//     * @return string
//     */
//    public function getFirstNameAttribute($value)
//    {
//        return ucfirst($value);
//    }
//
//    /**
//     * 修改器: 示例
//     * @param $value
//     */
//    public function setFirstNameAttribute($value)
//    {
//        $this->attributes['first_name'] = strtolower($value);
//    }
//
//    /**
//     * 访问器: 示例
//     * @param $value
//     * @return string
//     */
//    public function getFKPointProductRelatedLineIdAttribute($value)
//    {
//        $value = json_decode($value, true);
//        return $value;
//    }
//
//    /**
//     * 修改器: 示例
//     * @param $value
//     */
//    public function setFKPointProductRelatedLineIdAttribute($value)
//    {
//        if (is_array($value)) {
//            $value = json_encode($value);
//        }
//        $this->attributes['FK_point_product_related_line_id'] = $value;
//    }

    /* 关联关系*************************************************/

//    /**
//     * 一对一: 示例
//     * @return \Illuminate\Database\Eloquent\Relations\HasOne
//     */
//    public function staff()
//    {
//        return $this->hasOne(StaffModel::class, 'gid', 'FK_staff_gid');
//    }
//
//    /**
//     * 一对多: 示例
//     * @return \Illuminate\Database\Eloquent\Relations\HasMany
//     */
//    public function address()
//    {
//        return $this->hasMany(AddressModel::class, 'FK_example_gid', 'gid');
//    }
//
//    /**
//     * PhotoModel 里 获取所有拥有的imageable模型: 示例
//     */
//    public function imageable()
//    {
//        return $this->morphTo();
//    }
//
//    /**
//     * StaffModel 里 获取所有职员照片: 示例
//     */
//    public function photos()
//    {
//        return $this->morphMany('App\PhotoModel', 'imageable');
//    }
//
//    /**
//     * ProductModel 里 获取所有产品照片: 示例
//     */
//    public function photos()
//    {
//        return $this->morphMany('App\PhotoModel', 'imageable');
//    }

    /* 作用域*************************************************/

//    /**
//     * 根据用户状态的查询作用域: 示例
//     * @return \Illuminate\Database\Eloquent\Builder
//     */
//    public function scopeActive($query, $status)
//    {
//        if (!empty($status)) {
//            return $query->where('active', '=', $status);
//        } else {
//            return $query;
//        }
//    }

}
