
<div class="page-header">
    <h3>
        Create medicine basic
    </h3>
</div>

<?= $this->getContent() ?>

<?= $this->tag->form(['medicine_basic/create', 'method' => 'post', 'autocomplete' => 'off', 'class' => 'form-horizontal']) ?>

<div class="form-group">
    <label for="fieldCode" class="col-sm-2 control-label">Code</label>
    <div class="col-sm-10">
        <?= $this->tag->textField(['code', 'size' => 30, 'class' => 'form-control', 'id' => 'fieldCode']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldName" class="col-sm-2 control-label">Name</label>
    <div class="col-sm-10">
        <?= $this->tag->textField(['name', 'size' => 30, 'class' => 'form-control', 'id' => 'fieldName']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldUnit" class="col-sm-2 control-label">Unit</label>
    <div class="col-sm-10">
        <?= $this->tag->select(['unit_code', $unit, 'using' => ['code', 'name'], 'required' => 'required', 'useEmpty' => true, 'emptyText' => 'Select...', 'class' => 'form-control', 'id' => 'fieldUnit']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldSpecification" class="col-sm-2 control-label">Specification</label>
    <div class="col-sm-10">
        <?= $this->tag->textField(['specification', 'size' => 30, 'class' => 'form-control', 'id' => 'fieldSpecification']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldApprovalNo" class="col-sm-2 control-label">Approval No.</label>
    <div class="col-sm-10">
        <?= $this->tag->textField(['approval_no', 'size' => 30, 'class' => 'form-control', 'id' => 'fieldApprovalNo']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldManufactory" class="col-sm-2 control-label">Manufactory</label>
    <div class="col-sm-10">
        <?= $this->tag->textField(['manufactory', 'size' => 30, 'class' => 'form-control', 'id' => 'fieldManufactory']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldMinStock" class="col-sm-2 control-label">Min Stock</label>
    <div class="col-sm-10">
        <?= $this->tag->numericField(['min_stock', 'type' => 'numeric', 'class' => 'form-control', 'id' => 'fieldMinStock']) ?>
    </div>
</div>

<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <?= $this->tag->submitButton(['Save', 'class' => 'btn btn-default']) ?>
    </div>
</div>

</form>
