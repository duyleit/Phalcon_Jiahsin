
<div class="page-header">
    <h3>
        Create medicine stock
    </h3>
</div>

<?= $this->getContent() ?>

<?= $this->tag->form(['medicine_stock/create', 'method' => 'post', 'autocomplete' => 'off', 'class' => 'form-horizontal']) ?>

<div class="form-group">
    <label for="fieldUserCode" class="col-sm-2 control-label">User Add</label>
    <div class="col-sm-10">
        <?= $this->tag->textField(['user_code', 'type' => 'numeric', 'readonly' => true, 'class' => 'form-control', 'id' => 'fieldUserCode']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldNameMedicineAutoComplete" class="col-sm-2 control-label">Name</label>
    <div class="col-sm-10">
        <?= $this->tag->textField(['name', 'size' => 30, 'class' => 'form-control', 'id' => 'fieldNameMedicineAutoComplete']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldQuantity" class="col-sm-2 control-label">Quantity</label>
    <div class="col-sm-10">
        <?= $this->tag->textField(['quantity', 'type' => 'numeric', 'class' => 'form-control', 'id' => 'fieldQuantity']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldPrice" class="col-sm-2 control-label">Price</label>
    <div class="col-sm-10">
        <?= $this->tag->textField(['price', 'type' => 'numeric', 'class' => 'form-control', 'id' => 'fieldPrice']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldMfgDate" class="col-sm-2 control-label">Mfg Date</label>
    <div class="col-sm-10">
        <?= $this->tag->textField(['mfg_date', 'type' => 'date', 'class' => 'form-control', 'id' => 'fieldMfgDate']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldExpDate" class="col-sm-2 control-label">Exp Date</label>
    <div class="col-sm-10">
        <?= $this->tag->textField(['exp_date', 'type' => 'date', 'class' => 'form-control', 'id' => 'fieldExpDate']) ?>
    </div>
</div>

<!--div class="form-group">
    <label for="fieldMinStock" class="col-sm-2 control-label">Min Stock</label>
    <div class="col-sm-10">
        <?= $this->tag->textField(['min_stock', 'type' => 'numeric', 'class' => 'form-control', 'id' => 'fieldMinStock']) ?>
    </div>
</div-->

<div class="form-group">
    <label for="fieldForbidden" class="col-sm-2 control-label">Forbidden</label>
    <div class="col-sm-10">
        <?= $this->tag->selectStatic(['forbidden', ['0' => 'No', '1' => 'Yes'], 'class' => 'form-control', 'id' => 'fieldForbidden']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldSpecial" class="col-sm-2 control-label">Special</label>
    <div class="col-sm-10">
        <?= $this->tag->textField(['special', 'size' => 30, 'class' => 'form-control', 'id' => 'fieldSpecial']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldNote" class="col-sm-2 control-label">Note</label>
    <div class="col-sm-10">
        <?= $this->tag->textField(['note', 'size' => 30, 'class' => 'form-control', 'id' => 'fieldNote']) ?>
    </div>
</div>


<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <?= $this->tag->submitButton(['Save', 'class' => 'btn btn-default']) ?>
    </div>
</div>

</form>
