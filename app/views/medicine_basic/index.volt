<div class="page-header">
    <h3>
        Search medicine basic
    </h3>
</div>

{{ content() }}

{{ form("medicine_basic/search", "method":"post", "autocomplete" : "off", "class" : "form-horizontal") }}

<div class="form-group">
    <label for="fieldId" class="col-sm-2 control-label">Id</label>
    <div class="col-sm-10">
        {{ text_field("id", "type" : "numeric", "class" : "form-control", "id" : "fieldId") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldCode" class="col-sm-2 control-label">Code</label>
    <div class="col-sm-10">
        {{ text_field("code", "size" : 30, "class" : "form-control", "id" : "fieldCode") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldName" class="col-sm-2 control-label">Name</label>
    <div class="col-sm-10">
        {{ text_field("name", "size" : 30, "class" : "form-control", "id" : "fieldName") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldUnit" class="col-sm-2 control-label">Unit</label>
    <div class="col-sm-10">
        {{ select("unit_code", unit, "using":["code","name"], "useEmpty":true, "emptyText":"Select...", "class" : "form-control", "id" : "fieldUnit") }}
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
    <label for="fieldManufactory" class="col-sm-2 control-label">Manufactory</label>
    <div class="col-sm-10">
        {{ text_field("manufactory", "size" : 30, "class" : "form-control", "id" : "fieldManufactory") }}
    </div>
</div>


<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        {{ submit_button('Search', 'class': 'btn btn-default') }}
    </div>
</div>

</form>
