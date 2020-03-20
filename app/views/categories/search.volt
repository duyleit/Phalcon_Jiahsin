

{{ content() }}

<div class="row">
    <table class="table table-bordered table-hover">
        <thead>
        <tr>

            <th>Id</th>
            <th>Name</th>
            <th>Slug</th>

            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        {% if page.items is defined %}
            {% for cate in page.items %}
                <tr>
                    <td>{{ cate.id }}</td>
                    <td>{{ cate.name }}</td>
                    <td>{{ cate.slug }}</td>


                    <td>{{ link_to("categories/edit/"~cate.id, '<i class="fa fa-edit" aria-hidden="true"></i> Edit', 'class':'btn btn-xs btn-default') }}</td>
                    <td>{{ link_to("onclick":"return confirm('Are you sure to DELETE?')","categories/delete/"~cate.id, '<i class="fa fa-trash-o" aria-hidden="true"></i> Delete', 'class':'btn btn-xs btn-danger', 'onClick': 'return confirm("Are you sure to DELETE?");') }}</td>
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
                <li>{{ link_to("categories/search", "First") }}</li>
                <li>{{ link_to("categories/search?page="~page.before, "Previous") }}</li>
                <li>{{ link_to("categories/search?page="~page.next, "Next") }}</li>
                <li>{{ link_to("categories/search?page="~page.last, "Last") }}</li>
            </ul>
        </nav>
    </div>
</div>
