


<div class="page-header">
    <h3>
        Edit Post
    </h3>
</div>

{{ content() }}

{{ form("posts/save", "method":"post", "autocomplete" : "off", "class" : "form-horizontal") }}


<div class="form-group">
    <label for="fieldTitle" class="col-sm-2 control-label">Title</label>
    <div class="col-sm-10">
        {{ text_field("title", "size" : 30, "required":"required", "class" : "form-control", "id" : "fieldTitle" ) }}
    </div>
</div>


<div class="form-group">
    <label for="fieldContent" class="col-sm-2 control-label">Content</label>
    <div class="col-sm-10">
        {{ text_area("content", "cols": "30", "rows": "4", "class" : "ckeditor", "id" : "fieldContent") }}
    </div>
</div>
{#<div class="form-group">#}
    {#<label for="fieldCategory" class="col-sm-2 control-label">Category</label>#}
    {#<div class="col-sm-10">#}
        {#{{ select("category_code", categories, "using":["id","name"], "required":"required", "useEmpty":true, "emptyText":"Select...", "class" : "form-control", "id" : "fieldCategoryCode") }}#}
        {#{{ select("categoriesId", categories, "using":["id","name"],  "class" : "form-control", "id" : "fieldcategoriesId") }}#}
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

{{ hidden_field("id") }}
{#<input type="hidden" value="{{ post.id }}" name="id">#}

<div class="form-group">
    <div class="col-sm-offset   -2 col-sm-10">
        {{ submit_button('Save', 'class': 'btn btn-default') }}
    </div>
</div>

</form>

