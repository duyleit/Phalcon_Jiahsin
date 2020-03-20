
{#{{ content() }}#}
<div class="col-sm-8">
    <h3>
        <div style="margin-left:170px ;color:orangered">  Suất Ăn Cơm Khách </div>
    </h3>
<form method="POST" action="addcomkhach" class="form-horizontal">

    <div class="form-group">
        <label for="fieldFoodOrderDeptId" class="col-sm-3 control-label">Bộ Phận: </label>
        <div class="col-sm-5">
            {{ select("foodorderdeptId", foodorderdept, "using":["id","name"], "required":"required", "useEmpty":true, "class" : "form-control", "id" : "fieldFoodOrderDeptId") }}
        </div>
    </div>

    <div class="form-group">
        <label for="fieldDate" class="col-sm-3 control-label">Ngày Đặt: </label>
        <div class="col-sm-5">
            {{ text_field("date", "size" : 30, "required":"required", "class" : "form-control", "id" : "fieldDate") }}
        </div>
    </div>

    <div class="form-group">
        <label for="fieldDonBanRieng" class="col-sm-3 control-label">Dọn Bàn Riêng: </label>
        <div class="col-sm-2">
            {{ text_field("donbanrieng", "size" : 30, "required":"required", "class" : "form-control","value":0 ,"id" : "fieldDonBanRieng") }}
        </div>
    </div>

    <div class="form-group">
        <label for="fieldAnBuffet" class="col-sm-3 control-label">Ăn Buffet: </label>
        <div class="col-sm-2">
            {{ text_field("anbuffet", "size" : 30, "required":"required", "class" : "form-control","value":0 ,"id" : "fieldAnBuffet") }}
        </div>
    </div>

    <div class="form-group">
        <label for="fieldGhiChu" class="col-sm-3 control-label">Ghi Chú: </label>
        <div class="col-sm-7">
            {{ text_area("ghichu", "cols": "30", "rows": "4", "class" : "form-control", "id" : "fieldGhiChu") }}
        </div>
    </div>


    <div class="form-group">
        <div class="col-sm-offset-3 col-sm-10">
            {{ submit_button('Add', 'class': 'btn btn-default') }}
        </div>
    </div>

</form>

</div>
<div class="col-sm-4">
    <h3>
        <div style="margin-left:120px; color:orangered">  Thực Đơn Mỗi Ngày  </div>
    </h3>

    <div>
        <img src="{{ url('img/food_order/menu.png')}}" alt=""></img>
    </div>


</div>


