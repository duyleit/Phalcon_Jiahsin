

<div class="page-header">
    <h3>
        Create Category
    </h3>
</div>

<?= $this->getContent() ?>

<?= $this->tag->form(['categories/create', 'method' => 'post', 'autocomplete' => 'off', 'class' => 'form-horizontal']) ?>


<div class="form-group">
    <label for="fieldName" class="col-sm-2 control-label">Name</label>
    <div class="col-sm-10">
        <?= $this->tag->textField(['name', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'id' => 'fieldName']) ?>
    </div>
</div>




<div class="form-group">
    <label for="fieldslug" class="col-sm-2 control-label">Slug</label>
    <div class="col-sm-10">
        <?= $this->tag->textField(['slug', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'id' => 'fieldSlug']) ?>
    </div>
</div>

<div class="form-group">
    <div class="col-sm-offset   -2 col-sm-10">
        <?= $this->tag->submitButton(['Save', 'class' => 'btn btn-default']) ?>
    </div>
</div>

</form>

