
<div class="page-header">
    <h3>
        Edit
    </h3>
</div>

{{ content() }}

{{ form("meeting_room_booking/save", "method":"post", "autocomplete" : "off", "class" : "form-horizontal") }}

<div class="form-group">
    <label for="fieldUserCode" class="col-sm-2 control-label">User Code</label>
    <div class="col-sm-10">
        {{ text_field("user_code", "type" : "numeric", "readonly":true, "class" : "form-control", "id" : "fieldUserCode") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldComCode" class="col-sm-2 control-label">Company</label>
    <div class="col-sm-10">
        {{ select("com_code", company, "using":["code","name"], "required":"required", "class" : "form-control", "id" : "fieldComCode") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldDeptCode" class="col-sm-2 control-label">Department</label>
    <div class="col-sm-10">
        {{ select("dept_code", department, "using":["code","name"], "required":"required", "class" : "form-control", "id" : "fieldDeptCode") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldRoomCode" class="col-sm-2 control-label">Meeting Room</label>
    <div class="col-sm-10">
        {{ select("room_code", room, "using":["code","name"], "required":"required", "class" : "form-control", "id" : "fieldRoomCode") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldPresiding" class="col-sm-2 control-label">Presiding</label>
    <div class="col-sm-10">
        {{ text_field("presiding", "size" : 30, "class" : "form-control", "id" : "fieldPresiding") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldTitle" class="col-sm-2 control-label">Title</label>
    <div class="col-sm-10">
        {{ text_field("title", "size" : 30, "class" : "form-control", "id" : "fieldTitle") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldContent" class="col-sm-2 control-label">Content</label>
    <div class="col-sm-10">
        {{ text_area("content", "cols": "30", "rows": "4", "class" : "form-control", "id" : "fieldContent") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldStart" class="col-sm-2 control-label">Start</label>
    <div class="col-sm-10">
        {{ text_field("start", "size" : 30, "class" : "form-control", "id" : "fieldStart") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldEnd" class="col-sm-2 control-label">End</label>
    <div class="col-sm-10">
        {{ text_field("end", "size" : 30, "class" : "form-control", "id" : "fieldEnd") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldStatus" class="col-sm-2 control-label">Status</label>
    <div class="col-sm-10">
        {{ select_static("status", ['1':'Active','0':'Disable'], "class" : "form-control", "id" : "fieldStatus") }}
    </div>
</div>


{{ hidden_field("id") }}

<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        {{ submit_button('Send', 'class': 'btn btn-default') }}
    </div>
</div>

</form>
