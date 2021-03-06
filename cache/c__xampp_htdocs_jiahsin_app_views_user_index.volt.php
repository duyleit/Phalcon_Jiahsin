<div class="page-header">
    <h3>
        User Advanced Search
    </h3>
</div>

<?= $this->getContent() ?>

<?= $this->tag->form(['user/search', 'method' => 'post', 'autocomplete' => 'off', 'class' => 'form-horizontal']) ?>

<div class="form-group">
    <label for="fieldCode" class="col-sm-2 control-label">User Code</label>
    <div class="col-sm-10">
        <?= $this->tag->textField(['code', 'size' => 30, 'class' => 'form-control', 'id' => 'fieldCode']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldFullname" class="col-sm-2 control-label">Fullname</label>
    <div class="col-sm-10">
        <?= $this->tag->textField(['fullname', 'size' => 30, 'class' => 'form-control', 'id' => 'fieldFullname']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldRoleCode" class="col-sm-2 control-label">Role</label>
    <div class="col-sm-10">
        <?= $this->tag->select(['role_code', $role, 'using' => ['code', 'name'], 'useEmpty' => true, 'emptyText' => 'Select...', 'class' => 'form-control', 'id' => 'fieldRoleCode']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldComCode" class="col-sm-2 control-label">Company</label>
    <div class="col-sm-10">
        <?= $this->tag->select(['com_code', $company, 'using' => ['code', 'name'], 'useEmpty' => true, 'emptyText' => 'Select...', 'class' => 'form-control', 'id' => 'fieldComCode']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldDeptCode" class="col-sm-2 control-label">Department</label>
    <div class="col-sm-10">
        <?= $this->tag->select(['dept_code', $department, 'using' => ['code', 'name'], 'useEmpty' => true, 'emptyText' => 'Select...', 'class' => 'form-control', 'id' => 'fieldDeptCode']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldPosiCode" class="col-sm-2 control-label">Position</label>
    <div class="col-sm-10">
        <?= $this->tag->select(['posi_code', $position, 'using' => ['code', 'name'], 'useEmpty' => true, 'emptyText' => 'Select...', 'class' => 'form-control', 'id' => 'fieldPosiCode']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldEmail" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
        <?= $this->tag->textField(['email', 'size' => 30, 'class' => 'form-control', 'id' => 'fieldEmail']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldPhoneExtend" class="col-sm-2 control-label">Phone Extend</label>
    <div class="col-sm-10">
        <?= $this->tag->textField(['phone_extend', 'size' => 30, 'class' => 'form-control', 'id' => 'fieldPhoneExtend']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldAbout" class="col-sm-2 control-label">About</label>
    <div class="col-sm-10">
        <?= $this->tag->textArea(['about', 'cols' => '30', 'rows' => '4', 'class' => 'form-control', 'id' => 'fieldAbout']) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldStatus" class="col-sm-2 control-label">Status</label>
    <div class="col-sm-10">
        <?= $this->tag->selectStatic(['status', ['1' => 'Active', '0' => 'Disable'], 'useEmpty' => true, 'emptyText' => 'Select...', 'class' => 'form-control', 'id' => 'fieldStatus']) ?>
    </div>
</div>


<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <?= $this->tag->submitButton(['Search', 'class' => 'btn btn-default']) ?>
    </div>
</div>

</form>
