<div class="container-fluid jhv-top3" style="background: url({{ url('img/index/top-bg.jpg') }}) no-repeat center center; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
    <h1 class="text-center text-shadow">Company Applications</h1>
</div>

<style>
    .btn-app a{
        width: 100%;
        padding: 35px 0px;
        font-size: 24px;
    }
    .btn-app a:hover{
        color: #fff;
        background: #337ab7;
    }
</style>

<div class="container">

    <div class="page-header">
        <h1></h1>
    </div>

    <div class="row">
        <div class="col-md-4 btn-app text-center main-layout-btn">
            {{ link_to("meeting_room_booking/search", "Meeting Room Booking", 'class':'btn btn-default') }}
        </div>
        <div class="col-md-4 btn-app text-center main-layout-btn">
            {{ link_to("medicine_basic/search", "Infirmary", 'class':'btn btn-default') }}
        </div>
        <div class="col-md-4 btn-app text-center main-layout-btn">
            {{ link_to("administrative/search", "Administrative", 'class':'btn btn-default') }}
        </div>
        <div class="col-md-4 btn-app text-center main-layout-btn">
            {{ link_to("user/search", "User", 'class':'btn btn-default') }}
        </div>
        {# 180505 - Edit by Duy - Reason.. - Request by.. #}
         <div class="col-md-4 btn-app text-center main-layout-btn">
            {{ link_to("posts/search", "Blog", 'class':'btn btn-default') }}
        </div>
        {# 180522 - Edit by Duy - Reason.. - Request by.. #}
        <div class="col-md-4 btn-app text-center main-layout-btn">
            {{ link_to("food_order/search", "Food Order", 'class':'btn btn-default') }}
        </div>

    </div>
    
    <img class="thumbnail img-responsive" src="{{ url('img/index/jiahsin-company.jpg') }}">

</div>