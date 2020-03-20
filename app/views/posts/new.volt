
    {#<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">#}
    {#<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>#}
    {#<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>#}
    {#<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">#}
    {#<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>#}





<div class="page-header">
    <h3>
        Create Post
    </h3>
</div>

{{ content() }}

    {{ form("posts/create", "method":"post", "autocomplete" : "off", "class" : "form-horizontal","enctype":"multipart/form-data") }}
        {#<textarea id="summernote"></textarea>#}


    <div class="form-group">
        <label for="fieldTitle" class="col-sm-2 control-label">Title</label>
        <div class="col-sm-10">
            {{ text_field("title", "size" : 30, "required":"required", "class" : "form-control", "id" : "fieldTitle") }}
        </div>
    </div>

        <div class="form-group">
        <label for="fieldContent" class="col-sm-2 control-label">Content</label>
        <div class="col-sm-10">
        {{ text_area("content", "cols": "30", "rows": "4", "class" : "form-control", "id" : "fieldContent") }}
        </div>
        </div>


    {#<div class="form-group">#}
        {#<label for="fieldCategory" class="col-sm-2 control-label">Category</label>#}
        {#<div class="col-sm-10">#}
            {#{{ select("categoriesId", categories, "using":["id","name"], "required":"required", "useEmpty":true, "emptyText":"Select...", "class" : "form-control", "id" : "fieldcategoriesId") }}#}
        {#</div>#}
    {#</div>#}
    {#<div class="form-group">#}
        {#<label for="fieldSlug" class="col-sm-2 control-label">Slug</label>#}
        {#<div class="col-sm-10">#}
            {#{{ text_field("slug", "size" : 30, "required":"required", "class" : "form-control", "id" : "fieldSlug") }}#}
        {#</div>#}
    {#</div>#}

    {#<div class="form-group">#}
        {#<label for="fieldTags" class="col-sm-2 control-label">Tags</label>#}
        {#<div class="col-sm-10">#}
            {#{{ text_field("tags", "size" : 30, "required":"required", "class" : "form-control", "id" : "fieldTags") }}#}
        {#</div>#}
    {#</div>#}

    <div class="form-group">
        <div class="col-sm-offset   -2 col-sm-10">
            {{ submit_button('Save', 'class': 'btn btn-default') }}
        </div>
    </div>
    </form>




