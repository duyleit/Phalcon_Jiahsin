
{{ content() }}

<div class="row table-responsive">
    <table class="table table-bordered table-hover">
        <thead>
            <tr>
                <th>Id</th>
                <th>User</th>
                <th>Company</th>
                <th>Department</th>
                <th>Room</th>
                <th>Presiding</th>
                <th>Title</th>
                <th>Start</th>
                <th>End</th>
                <th>Status</th>

                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
        {% if page.items is defined %}
        {% for meeting_room_booking in page.items %}
            <tr>
                <td>{{ meeting_room_booking.id }}</td>
                <td>{{ meeting_room_booking.user_code }}</td>
                <td>{{ meeting_room_booking.com_code }}</td>
                <td>{{ meeting_room_booking.dept_code }}</td>
                <td>{{ meeting_room_booking.room_code }}</td>
                <td>{{ meeting_room_booking.presiding }}</td>
                <td>{{ meeting_room_booking.title }}</td>
                <td class="small">{{ meeting_room_booking.start }}</td>
                <td class="small">{{ meeting_room_booking.end }}</td>
                <td>{{ meeting_room_booking.status }}</td>

                <td>{{ link_to("meeting_room_booking/edit/"~meeting_room_booking.id, '<i class="fa fa-edit" aria-hidden="true"></i> Edit', 'class':'btn btn-xs btn-default') }}</td>
                <td>{{ link_to("meeting_room_booking/delete/"~meeting_room_booking.id, '<i class="fa fa-trash-o" aria-hidden="true"></i> Delete', 'class':'btn btn-xs btn-danger', 'onClick': 'return confirm("Are you sure to DELETE?");') }}</td>
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
                <li>{{ link_to("meeting_room_booking/search", "First") }}</li>
                <li>{{ link_to("meeting_room_booking/search?page="~page.before, "Previous") }}</li>
                <li>{{ link_to("meeting_room_booking/search?page="~page.next, "Next") }}</li>
                <li>{{ link_to("meeting_room_booking/search?page="~page.last, "Last") }}</li>
            </ul>
        </nav>
    </div>
</div>
