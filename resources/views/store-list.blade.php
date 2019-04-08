<style>
    .search-form {
        width: 150px;
        margin: 10px 0 0 20px;
        border-radius: 3px;
        float: left;
    }
</style>

<div class="search-form" onclick="return false;" pjax-container>
    <select name="store_id" class="form-control input-sm" onchange="changeAuthStore(this)">
        <option value="1029" {{$right_store_id==1029?'selected':''}} >[1029] 福星店</option>
        <option value="1030" {{$right_store_id==1030?'selected':''}} >[1030] 前往而店</option>
        <option value="1031" {{$right_store_id==1031?'selected':''}} >[1031] 阿斯顿发店</option>
    </select>
    <input type="hidden" name="right_store_id" value="{{$right_store_id}}" />
</div>

<script type="text/javascript">
    function changeAuthStore(that) {
        let url = '/admin/auth/store';
        let data = {
            _token: LA.token,
            store_id: that.value,
        };
        console.log('robotyang debug data =', data);

        $.ajax({
            method: 'post',
            url: url,
            data: data,
            success: function (result) {
                console.log('robotyang debug result =', result);
                location.reload();
                // toastr.success('切换成功');
            },
            error: function (jqXHR, textStatus, errorThrown) { ////https://www.cnblogs.com/hangaozu/p/9008310.html
                console.log('robotyang debug jqXHR =', jqXHR);
                console.log('robotyang debug textStatus =', textStatus);
                console.log('robotyang debug errorThrown =', errorThrown);

                toastr.error(`[${errorThrown}] ${jqXHR.responseText}`);
            }
        });
    }
</script>