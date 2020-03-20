<div class="page-header">
    <h3>
        Search meeting room booking
    </h3>
</div>

{{ content() }}

{{ form("meeting_room_booking/search", "method":"post", "autocomplete" : "off", "class" : "form-horizontal") }}

<div class="form-group">
    <label for="fieldId" class="col-sm-2 control-label">Id</label>
    <div class="col-sm-10">
        {{ text_field("id", "type" : "numeric", "class" : "form-control", "id" : "fieldId") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldUserCode" class="col-sm-2 control-label">User Code</label>
    <div class="col-sm-10">
        {{ text_field("user_code", "type" : "numeric", "class" : "form-control", "id" : "fieldUserCode") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldComCode" class="col-sm-2 control-label">Company</label>
    <div class="col-sm-10">
        {{ select("com_code", company, "using":["code","name"], "useEmpty":true, "emptyText":"Select...", "class" : "form-control", "id" : "fieldComCode") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldDeptCode" class="col-sm-2 control-label">Department</label>
    <div class="col-sm-10">
        {{ select("dept_code", department, "using":["code","name"], "useEmpty":true, "emptyText":"Select...", "class" : "form-control", "id" : "fieldDeptCode") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldRoomCode" class="col-sm-2 control-label">Room</label>
    <div class="col-sm-10">
        {{ select("room_code", room, "using":["code","name"], "useEmpty":true, "emptyText":"Select...", "class" : "form-control", "id" : "fieldRoomCode") }}
    </div>
</div>

<div class="form-group">
    <label for="fieldTitle" class="col-sm-2 control-label">Title</label>
    <div class="col-sm-10">
        {{ text_field("title", "size" : 30, "class" : "form-control", "id" : "fieldTitle") }}
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


<div class="form-group">
    <div class=" col-sm-10 col-sm-offset-2">
        {{ submit_button('Search', 'class': 'btn btn-default') }}
    </div>
</div>

</form>
