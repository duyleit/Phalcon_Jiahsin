<?= $this->getContent() ?>
  <div class="page-header">

       <h3>
          Tìm Kiếm Suất Đặt Thức Ăn
      </h3>
      
          
          
          
          
      
      
      
          
          

      

      <form method="POST" action="/jiahsin/food_order/search" class="form-horizontal">

          <div class="form-group">
              <label for="fieldFoodOrderDeptId" class="col-sm-2 control-label">Bộ Phận: </label>
              <div class="col-sm-4">
                  <?= $this->tag->select(['foodorderdeptId', $foodorderdept, 'using' => ['id', 'name'], 'useEmpty' => true, 'class' => 'form-control', 'id' => 'fieldFoodOrderDeptId']) ?>
              </div>
          </div>

          <div class="form-group">
              <label for="fieldDate" class="col-sm-2 control-label">Ngày Đặt: </label>
              <div class="col-sm-4">
                  <?= $this->tag->textField(['date', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'id' => 'fieldDate']) ?>
              </div>
          </div>

          <div class="form-group">
              <label for="fieldNguoiDat" class="col-sm-2 control-label">Người Đặt: </label>
              <div class="col-sm-4">
                  <?= $this->tag->textField(['nguoidat', 'size' => 30, 'class' => 'form-control', 'id' => 'fieldNguoiDat']) ?>
              </div>
          </div>

          <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                  
                  <input type="button" value="Tìm kiếm">
              </div>
          </div>
      </form>


  </div>
