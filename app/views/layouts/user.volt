
<div class="container-fluid jhv-top3" style="background: url({{ url('img/user/top-bg.jpg') }}) no-repeat center center; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
    <h1 class="text-center text-shadow">User</h1>
</div>

{% if session.has('user-code') %}
    <div class="container-fluid navbar-sub text-center">
        <div class="btn-group">
            <a href="{{ url('user/search') }}" class="btn btn-primary"><i class="fa fa-users"></i> User</a>
            <a href="{{ url('role/search') }}" class="btn btn-primary"><i class="fa fa-user-circle"></i> Role</a>
        </div>
    </div>

    <div class="container">

        <div class="row" style="margin-bottom: 15px;">

            <div class="col-sm-5">
                {{ form( "user/search", "method":"post", "autocomplete" : "off", "class" : "form-horizontal") }}
                <div class="input-group input-group-sm">
                    <input type="text" class="form-control" name="code" placeholder="Search...">
                    <span class="input-group-btn">
                            <button class="btn btn-default" type="submit"><i class="fa fa-search" aria-hidden="true"></i>
                            </button>
                        </span>
                </div>
                </form>
            </div>

            <div class="col-sm-7 text-right">
                <a href="{{ url('user') }}" class="btn btn-default btn-sm"><i class="fa fa-search"></i> Advanced Search</a>
                <a href="{{ url('user/search') }}" class="btn btn-default btn-sm"><i class="fa fa-list"></i> List</a>
                <a href="{{ url('user/new') }}" class="btn btn-default btn-sm"><i class="fa fa-plus"></i> Add</a>
            </div>

        </div>

    </div>
{% endif %}

<div class="container">
    <hr>
    {{ content() }}
</div>