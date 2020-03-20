{{ content() }}
  <div class="page-header">

       <h3>
          Tìm Kiếm Suất Đặt Thức Ăn
      </h3>
      {#<div class="button-group">#}
          {#<label  class="segment-item"><input type="radio"  name="chk_group" checked="true" value="1" onclick="document.location.href='addtrua'"> Trưa</label><br />#}
          {#<label  class="segment-item"><input type="radio"  name="chk_group" value="2" onclick="document.location.href='addchieu'"> Chiều</label><br />#}
          {#<label  class="segment-item"><input type="radio"  name="chk_group" value="3" onclick="document.location.href='adddem'"> Đêm</label><br />#}
          {#<label  class="segment-item"><input type="radio"  name="chk_group" value="4" onclick="document.location.href='addcomkhach'"> Cơm Khách</label><br />#}
      {#</div>#}
      {#<hr>#}
      {#<div>#}
          {#<p style="color: red; font-size: large"> Lưu Ý:</p>#}
          {#<p> Bộ phận nào không ăn cơm vui lòng nhập số 0 vào đúng vị trí của bộ phần mình và ghi chú cắt cơm ở dòng ghi chú.Đối với các bộ phận không báo cơm đúng thời gian quy định nhà ăn sẽ không phục vụ phần cơm của bộ phận đó.</p>#}

      {#</div>#}

      <form method="POST" action="/jiahsin/food_order/search" class="form-horizontal">

          <div class="form-group">
              <label for="fieldFoodOrderDeptId" class="col-sm-2 control-label">Bộ Phận: </label>
              <div class="col-sm-4">
                  {{ select("foodorderdeptId", foodorderdept, "using":["id","name"], "useEmpty":true, "class" : "form-control", "id" : "fieldFoodOrderDeptId") }}
              </div>
          </div>

          <div class="form-group">
              <label for="fieldDate" class="col-sm-2 control-label">Ngày Đặt: </label>
              <div class="col-sm-4">
                  {{ text_field("date", "size" : 30, "required":"required", "class" : "form-control", "id" : "fieldDate") }}
              </div>
          </div>

          <div class="form-group">
              <label for="fieldNguoiDat" class="col-sm-2 control-label">Người Đặt: </label>
              <div class="col-sm-4">
                  {{ text_field("nguoidat", "size" : 30, "class" : "form-control","id" : "fieldNguoiDat") }}
              </div>
          </div>

          <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                  {#{{ submit_button('Tìm kiếm', 'class': 'btn btn-default') }}#}
                  <input type="button" value="Tìm kiếm">
              </div>
          </div>
      </form>


  </div>
