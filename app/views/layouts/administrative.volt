
<div class="container-fluid jhv-top3" style="background: url({{ url('img/administrative/top-bg.jpg') }}) no-repeat center center; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
    <h1 class="text-center text-shadow">Administrative</h1>
</div>

{% if session.has('user-code') %}
    <div class="container-fluid navbar-sub text-center">
        <div class="btn-group">
            <!--button type="button" class="btn btn-primary">Apple</button>
            <button type="button" class="btn btn-primary">Samsung</button-->
            <div class="btn-group">
                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                    Infirmary <span class="caret"></span></button>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="{{ url('administrative/medicine_report') }}">Medicine</a></li>
                </ul>
            </div>

        </div>
    </div>

    <div class="container">

        <div class="row" style="margin-bottom: 15px;">

            <div class="col-sm-5">
                {{ form( "medicine_basic/search", "method":"post", "autocomplete" : "on", "class" : "form-horizontal") }}
                <div class="input-group input-group-sm">
                    <input type="text" class="form-control" name="name" placeholder="Search...">
                    <span class="input-group-btn">
                            <button class="btn btn-default" type="submit"><i class="fa fa-search" aria-hidden="true"></i>
                            </button>
                        </span>
                </div>
                </form>
            </div>

            <div class="col-sm-7 text-right">
                <a href="{{ url('medicine_basic/') }}" class="btn btn-default btn-sm"><i class="fa fa-search"></i> Advanced Search</a>
                <a href="{{ url('medicine_basic/search') }}" class="btn btn-default btn-sm"><i class="fa fa-list"></i> List</a>
                <a href="{{ url('medicine_basic/new') }}" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i> Add</a>
            </div>

        </div>

    </div>
{% endif %}

<div class="container">
    <hr>
    {{ content() }}
</div>
