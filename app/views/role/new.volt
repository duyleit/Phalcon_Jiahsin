<div class="row">
    <nav>
        <ul class="pager">
            <li class="previous">{{ link_to("role", "Go Back") }}</li>
        </ul>
    </nav>
</div>

<div class="page-header">
    <h1>
        Create role
    </h1>
</div>

{{ content() }}

{{ form("role/create", "method":"post", "autocomplete" : "off", "class" : "form-horizontal") }}

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
    <div class="col-sm-offset-2 col-sm-10">
        {{ submit_button('Save', 'class': 'btn btn-default') }}
    </div>
</div>

</form>
