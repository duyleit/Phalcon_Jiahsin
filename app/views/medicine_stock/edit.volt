
<div class="page-header">
    <h3>
        Edit medicine stock
    </h3>
</div>

{{ content() }}

{{ form("medicine_stock/save", "method":"post", "autocomplete" : "off", "class" : "form-horizontal") }}

<div class="form-group">
    <label for="fieldUserCode" class="col-sm-2 control-label">User Edit</label>
    <div class="col-sm-10">
        {{ text_field("user_code", "type" : "numeric", "readonly":true, "class" : "form-control", "id" : "fieldUserCode") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldCode" class="col-sm-2 control-label">Code</label>
    <div class="col-sm-10">
        {{ text_field("code", "size" : 30, "class" : "form-control", "id" : "fieldCode") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldNameMedicineAutoComplete" class="col-sm-2 control-label">Name</label>
    <div class="col-sm-10">
        {{ text_field("name", "size" : 30, "class" : "form-control", "id" : "fieldNameMedicineAutoComplete") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldUnit" class="col-sm-2 control-label">Unit</label>
    <div class="col-sm-10">
        {{ select("unit_code", unit, "using":["code","name"], "class" : "form-control", "id" : "fieldUnit") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldQuantity" class="col-sm-2 control-label">Quantity</label>
    <div class="col-sm-10">
        {{ text_field("quantity", "type" : "numeric", "class" : "form-control", "id" : "fieldQuantity") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldPrice" class="col-sm-2 control-label">Price</label>
    <div class="col-sm-10">
        {{ text_field("price", "type" : "numeric", "class" : "form-control", "id" : "fieldPrice") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldAmount" class="col-sm-2 control-label">Amount</label>
    <div class="col-sm-10">
        {{ text_field("amount", "type" : "numeric", "class" : "form-control", "id" : "fieldAmount") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldSpecification" class="col-sm-2 control-label">Specification</label>
    <div class="col-sm-10">
        {{ text_field("specification", "size" : 30, "class" : "form-control", "id" : "fieldSpecification") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldApprovalNo" class="col-sm-2 control-label">Approval No.</label>
    <div class="col-sm-10">
        {{ text_field("approval_no", "size" : 30, "class" : "form-control", "id" : "fieldApprovalNo") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldMfgDate" class="col-sm-2 control-label">Mfg Date</label>
    <div class="col-sm-10">
        {{ text_field("mfg_date", "type" : "date", "class" : "form-control", "id" : "fieldMfgDate") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldExpDate" class="col-sm-2 control-label">Exp Date</label>
    <div class="col-sm-10">
        {{ text_field("exp_date", "type" : "date", "class" : "form-control", "id" : "fieldExpDate") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldForbidden" class="col-sm-2 control-label">Forbidden</label>
    <div class="col-sm-10">
        {{ select_static("forbidden", ['0':'No','1':'Yes'], "class" : "form-control", "id" : "fieldForbidden") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldSpecial" class="col-sm-2 control-label">Special</label>
    <div class="col-sm-10">
        {{ text_field("special", "size" : 30, "class" : "form-control", "id" : "fieldSpecial") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldManufactory" class="col-sm-2 control-label">Manufactory</label>
    <div class="col-sm-10">
        {{ text_field("manufactory", "size" : 30, "class" : "form-control", "id" : "fieldManufactory") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldNote" class="col-sm-2 control-label">Note</label>
    <div class="col-sm-10">
        {{ text_field("note", "size" : 30, "class" : "form-control", "id" : "fieldNote") }}
    </div>
</div>


{{ hidden_field("id") }}

<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        {{ submit_button('Send', 'class': 'btn btn-default') }}
    </div>
</div>

</form>
