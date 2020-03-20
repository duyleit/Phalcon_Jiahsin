
<div class="page-header">
    <h3>Search result</h3>
</div>

{{ content() }}

<div class="row table-responsive">
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Id</th>
                <th>Code</th>
                <th>Name</th>
                <th>Unit</th>
                <th>Specification</th>
                <th>Approval No.</th>
                <th>Manufactory</th>

                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
        {% if page.items is defined %}
        {% for medicine_basic in page.items %}
            <tr>
                <td>{{ medicine_basic.id }}</td>
                <td>{{ medicine_basic.code }}</td>
                <td>{{ medicine_basic.name }}</td>
                <td>{{ medicine_basic.unit_code }}</td>
                <td>{{ medicine_basic.specification }}</td>
                <td>{{ medicine_basic.approval_no }}</td>
                <td>{{ medicine_basic.manufactory }}</td>

                <td>{{ link_to("medicine_basic/edit/"~medicine_basic.id, '<i class="fa fa-edit" aria-hidden="true"></i> Edit', 'class':'btn btn-xs btn-default') }}</td>
                <td>{{ link_to("medicine_basic/delete/"~medicine_basic.id, '<i class="fa fa-trash-o" aria-hidden="true"></i> Delete', 'class':'btn btn-xs btn-danger', 'onClick': 'return confirm("Are you sure to DELETE?");') }}</td>
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
                <li>{{ link_to("medicine_basic/search", "First") }}</li>
                <li>{{ link_to("medicine_basic/search?page="~page.before, "Previous") }}</li>
                <li>{{ link_to("medicine_basic/search?page="~page.next, "Next") }}</li>
                <li>{{ link_to("medicine_basic/search?page="~page.last, "Last") }}</li>
            </ul>
        </nav>
    </div>
</div>
