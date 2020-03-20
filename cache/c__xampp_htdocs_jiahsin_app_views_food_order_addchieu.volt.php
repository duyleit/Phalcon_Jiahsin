
<?= $this->getContent() ?>
<div class="col-md-8">

    


        
        
            
                
                
                    
                    
                
            

            
                
                
                    
                    
                
            

            
                
                
                    
                    
                
            

            
                
                
                    
                    
                
            
        

        
        
            
            
        
        
            
            
        
    
    <h3>
        <div style="margin-left:170px ;color:orangered">  Suất Ăn Chiều </div>
    </h3>
<form method="POST" action="addchieu" class="form-horizontal">

    <div class="form-group">
        <label for="fieldFoodOrderDeptId" class="col-sm-3 control-label">Bộ Phận: </label>
        <div class="col-sm-5">
            <?= $this->tag->select(['foodorderdeptId', $foodorderdept, 'using' => ['id', 'name'], 'required' => 'required', 'useEmpty' => true, 'class' => 'form-control', 'id' => 'fieldFoodOrderDeptId']) ?>
        </div>
    </div>

    <div class="form-group">
        <label for="fieldDate" class="col-sm-3 control-label">Ngày Đặt: </label>
        <div class="col-sm-5">
            <?= $this->tag->textField(['date', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'id' => 'fieldDate']) ?>
        </div>
    </div>

    <div class="form-group">
        <label for="fieldComManChieu" class="col-sm-3 control-label">Cơm Mặn Chiều: </label>
        <div class="col-sm-2">
            <?= $this->tag->textField(['commanchieu', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'value' => 0, 'id' => 'fieldComManChieu']) ?>
        </div>
    </div>
    <div class="form-group">
        <label for="fieldPhuManChieu" class="col-sm-3 control-label">Phụ Mặn Chiều: </label>
        <div class="col-sm-2">
            <?= $this->tag->textField(['phumanchieu', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'value' => 0, 'id' => 'fieldPhuManChieu']) ?>
        </div>
    </div>
    <div class="form-group">
        <label for="fieldPhuChayChieu" class="col-sm-3 control-label">Phụ Chay Chiều: </label>
        <div class="col-sm-2">
            <?= $this->tag->textField(['phuchaychieu', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'value' => 0, 'id' => 'fieldPhuChayChieu']) ?>
        </div>
    </div>

    <div class="form-group">
        <label for="fieldGhiChu" class="col-sm-3 control-label">Ghi Chú: </label>
        <div class="col-sm-7">
            <?= $this->tag->textArea(['ghichu', 'cols' => '30', 'rows' => '4', 'class' => 'form-control', 'id' => 'fieldGhiChu']) ?>
        </div>
    </div>


    <div class="form-group">
        <div class="col-sm-offset-3 col-sm-10">
            <?= $this->tag->submitButton(['Add', 'class' => 'btn btn-default']) ?>
        </div>
    </div>

</form>
</div>
<div class="col-sm-4">
    <h3>
        <div style="margin-left:120px; color:orangered">  Thực Đơn Mỗi Ngày  </div>
    </h3>

    <div>
        <img src="<?= $this->url->get('img/food_order/menu.png') ?>" alt=""></img>
    </div>


</div>


