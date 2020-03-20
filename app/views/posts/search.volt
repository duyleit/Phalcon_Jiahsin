<div class="row">
    <table class="table table-bordered table-hover">
        <thead>
        <tr>

            <th>Id</th>
            <th>Title</th>
            <th>Content</th>
            {#<th>CategoriesId</th>#}
            {#<th>Slug</th>#}
            {#<th>Tag</th>#}
            <th>Date</th>
            {#<th>UserId</th>#}
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
         {% if page.items is defined %}
            {% for post in page.items %}
                <tr>
                    <td>{{ post.id }}</td>
                    <td>{{ post.title }}</td>
                    <td>{{ post.content }}</td>
                    {#<td>{{ substr(post.content, 0, 20) }}</td>#}
                    {#<td>{{ post.categoriesid }}</td>#}
                    {#<td>{{ post.slug }}</td>#}
                    {#<td>{{ post.tags }}</td>#}
                    {#<td>{{ date('M d/Y H:i',post.created) }}</td>#}
                    <td>  {{post.created_at }}</td>
                    {#<td>{{ post.userid }}</td>#}

                    <td>{{ link_to("posts/edit/"~post.id, '<i class="fa fa-edit" aria-hidden="true"></i> Edit', 'class':'btn btn-xs btn-default') }}</td>
                    <td>{{ link_to("onclick":"return confirm('Are you sure to DELETE?')","posts/delete/"~post.id, '<i class="fa fa-trash-o" aria-hidden="true"></i> Delete', 'class':'btn btn-xs btn-danger', 'onClick': 'return confirm("Are you sure to DELETE?");') }}</td>
                </tr>
            {% endfor %}
        {% endif %}
        </tbody>
    </table>
</div>

<div class="row">
    <div class="col-sm-1">
        <p class="pagination" style="line-height: 1.42857;padding: 6px 12px;">
            {{ page.current~"/"~page.total_pages }}
        </p>
    </div>
    <div class="col-sm-11">
        <nav>
            <ul class="pagination">
                <li>{{ link_to("posts/search", "First") }}</li>
                <li>{{ link_to("posts/search?page="~page.before, "Previous") }}</li>
                <li>{{ link_to("posts/search?page="~page.next, "Next") }}</li>
                <li>{{ link_to("posts/search?page="~page.last, "Last") }}</li>
            </ul>
        </nav>
    </div>
</div>


