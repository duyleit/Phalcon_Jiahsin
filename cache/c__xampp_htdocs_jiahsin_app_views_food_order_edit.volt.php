<div class="page-header">
    <h3>
        Cập Nhật Suất Ăn
    </h3>
</div>

<?= $this->getContent() ?>

<?= $this->tag->form(['food_order/save', 'method' => 'post', 'autocomplete' => 'off', 'class' => 'form-horizontal']) ?>

<div class="form-group">
    <label for="fieldFoodOrderDeptId" class="col-sm-2 control-label">Bộ Phận: </label>
    <div class="col-sm-5">
        <?= $this->tag->select(['foodorderdeptId', $foodorderdept, 'using' => ['id', 'name'], 'required' => 'required', 'useEmpty' => true, 'class' => 'form-control', 'id' => 'fieldFoodOrderDeptId', 'disabled' => 'disabled']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldDate" class="col-sm-2 control-label">Ngày Đặt: </label>
    <div class="col-sm-5">
        <?= $this->tag->textField(['date', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'id' => 'fieldDate', 'readonly' => 'readonly']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldNguoiDat" class="col-sm-2 control-label">Người Đặt: </label>
    <div class="col-sm-5">
        <?= $this->tag->textField(['nguoidat', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'id' => 'fieldNguoiDat', 'readonly' => 'readonly']) ?>
    </div>
</div>


<div class="form-group">
    <label for="fieldComManTrua" class="col-sm-2 control-label">Cơm Mặn Trưa: </label>
    <div class="col-sm-2">
        <?= $this->tag->textField(['commantrua', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'id' => 'fieldComManTrua']) ?>
    </div>
</div>
<div class="form-group">
    <label for="fieldPhuManTrua" class="col-sm-2 control-label">Phụ Mặn Trưa: </label>
    <div class="col-sm-2">
        <?= $this->tag->textField(['phumantrua', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'id' => 'fieldPhuManTrua']) ?>
    </div>
</div>
<div class="form-group">
    <label for="fieldComChayTrua" class="col-sm-2 control-label">Cơm Chay Trưa: </label>
    <div class="col-sm-2">
        <?= $this->tag->textField(['comchaytrua', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'id' => 'fieldComChayTrua']) ?>
    </div>
</div>
<div class="form-group">
    <label for="fieldChaoTrua" class="col-sm-2 control-label">Cháo Trưa: </label>
    <div class="col-sm-2">
        <?= $this->tag->textField(['chaotrua', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'id' => 'fieldChaoTrua']) ?>
    </div>
</div>
<div class="form-group">
    <label for="fieldPhuChayTrua" class="col-sm-2 control-label">Phụ Chay Trưa: </label>
    <div class="col-sm-2">
        <?= $this->tag->textField(['phuchaytrua', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'id' => 'fieldPhuChayTrua']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldComManChieu" class="col-sm-2 control-label">Cơm Mặn Chiều: </label>
    <div class="col-sm-2">
        <?= $this->tag->textField(['commanchieu', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'id' => 'fieldComManChieu']) ?>
    </div>
</div>
<div class="form-group">
    <label for="fieldPhuManChieu" class="col-sm-2 control-label">Phụ Mặn Chiều: </label>
    <div class="col-sm-2">
        <?= $this->tag->textField(['phumanchieu', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'id' => 'fieldPhuManChieu']) ?>
    </div>
</div>
<div class="form-group">
    <label for="fieldPhuChayChieu" class="col-sm-2 control-label">Phụ Chay Chiều: </label>
    <div class="col-sm-2">
        <?= $this->tag->textField(['phuchaychieu', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'id' => 'fieldPhuChayChieu']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldManSuatDem" class="col-sm-2 control-label">Mặn Suất Đêm: </label>
    <div class="col-sm-2">
        <?= $this->tag->textField(['mansuatdem', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'id' => 'fieldManSuatDem']) ?>
    </div>
</div>
<div class="form-group">
    <label for="fieldChaySuatDem" class="col-sm-2 control-label">Chay Suất Đêm: </label>
    <div class="col-sm-2">
        <?= $this->tag->textField(['chaysuatdem', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'id' => 'fieldChaySuatDem']) ?>
    </div>
</div>


<div class="form-group">
    <label for="fieldDonBanRieng" class="col-sm-2 control-label">Dọn Bàn Riêng: </label>
    <div class="col-sm-2">
        <?= $this->tag->textField(['donbanrieng', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'id' => 'fieldDonBanRieng']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldAnBuffet" class="col-sm-2 control-label">Ăn Buffet: </label>
    <div class="col-sm-2">
        <?= $this->tag->textField(['anbuffet', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'id' => 'fieldAnBuffet']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldGhiChu" class="col-sm-2 control-label">Ghi Chú: </label>
    <div class="col-sm-7">
        <?= $this->tag->textArea(['ghichu', 'cols' => '30', 'rows' => '4', 'class' => 'form-control', 'id' => 'fieldGhiChu']) ?>
    </div>
</div>





<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <?= $this->tag->submitButton(['Update', 'class' => 'btn btn-default']) ?>
    </div>
</div>


</form>

