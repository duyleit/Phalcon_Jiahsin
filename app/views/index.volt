<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Jiahsin Application Server</title>
    <link rel="stylesheet" href="{{ url('vendor/bootstrap/css/bootstrap.min.css') }}">
    {#<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">#}

    <link rel="stylesheet" href="{{ url('vendor/jquery-ui/jquery.css') }}">
    <link rel="stylesheet" href="{{ url('vendor/font-awesome/css/font-awesome.min.css') }}">
    <link rel="stylesheet" href="{{ url('vendor/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css') }}">
    <link rel="stylesheet" href="{{ url('css/style.css') }}">
    <link rel="stylesheet" href="{{ url('vendor/summernote/summernote.css') }}">
    {{ assets.outputCss() }}
    <link rel="shortcut icon" type="image/x-icon" href="{{ url('img/favicon.ico') }}"/>

    <!-- Add mousewheel plugin (this is optional) -->
    {#<script type="text/javascript" src="vendor/fancybox/jquery.mousewheel.pack.js"></script>#}

    <!-- Add fancyBox main JS and CSS files -->
    {#<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>#}
    {#<script src="{{ url('vendor/jquery/jquery.min.js') }}"></script>#}

    {#<script type="text/javascript" src="{{url('vendor/fancybox/jquery.fancybox.pack.js')  }}"></script>#}
    {#<link rel="stylesheet" type="text/css" href="{{ url('vendor/fancybox/jquery.fancybox.css')  }}" media="screen" />#}

</head>
<body>

{#<div class="container">#}

    {#<?php  $this->flash->success('this is success message');  ?>#}
    {#<div class="row">#}
        {#<div class="col-lg-4">#}
            {#<a href="img/blog/top-bg.jpg" class="fancybox_1">#}
                {#<img src="img/blog/top-bg.jpg" alt="">#}
            {#</a>#}
        {#</div>#}
        {#<div class="col-lg-4">#}
            {#<a href="img/blog/top-bg.jpg" class="fancybox_1">#}
                {#<img src="img/blog/top-bg.jpg" alt="">#}
            {#</a>#}
        {#</div>#}
        {#<div class="col-lg-4">#}
            {#<a href="img/blog/top-bg.jpg" class="fancybox_1">#}
                {#<img src="img/blog/top-bg.jpg" alt="">#}
            {#</a>#}
        {#</div>#}

    {#</div>#}
    {#<a href="menu.jpg" class="fancybox" title="Sample title"><img src="img/blog/top-bg.jpg" /></a>#}

{#</div>#}
{#<a class="btn btn-primary" data-toggle="modal" href="#modal-id">Trigger modal</a>#}
{#<div class="modal fade" id="modal-id">#}
    {#<div class="modal-dialog">#}
        {#<div class="modal-content">#}
            {#<div class="modal-header">#}
                {#<button type="button" class="close" data-dismiss="modal">&times;</button>#}
                {#<h4 class="modal-title">Modal title</h4>#}
            {#</div>#}
            {#<div class="modal-body">#}
                {#<a href="https://google.com" class="btn btn-default"><i class="fa fa-download"></i>Download here</a>#}
            {#</div>#}
            {#<div class="modal-footer">#}
                {#<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>#}
                {#<button type="button" class="btn btn-primary">Save changes</button>#}
            {#</div>#}
        {#</div><!-- /.modal-content -->#}
    {#</div><!-- /.modal-dialog -->#}
{#</div><!-- /.modal -->#}



{#<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">#}
    {#<div class="carousel-inner">#}
        {#<div class="carousel-item active">#}
            {#<img class="d-block w-100" src="..." alt="First slide">#}
        {#</div>#}
        {#<div class="carousel-item">#}
            {#<img class="d-block w-100" src="..." alt="Second slide">#}
        {#</div>#}
        {#<div class="carousel-item">#}
            {#<img class="d-block w-100" src="..." alt="Third slide">#}
        {#</div>#}
    {#</div>#}
    {#<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">#}
        {#<span class="carousel-control-prev-icon" aria-hidden="true"></span>#}
        {#<span class="sr-only">Previous</span>#}
    {#</a>#}
    {#<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">#}
        {#<span class="carousel-control-next-icon" aria-hidden="true"></span>#}
        {#<span class="sr-only">Next</span>#}
    {#</a>#}
{#</div>#}
    <div class="container-fluid jhv-top1">
        <ul class="nav pull-right small">
            <a href="{{ url('system/lang/en') }}"><img src="{{ url('img/flags/en.png') }}" title="English"></a>
            <a href="{{ url('system/lang/zh-hans') }}"><img src="{{ url('img/flags/zh-hans.png') }}" title="中文"></a>
            <a href="{{ url('system/lang/vi') }}"><img src="{{ url('img/flags/vi.png') }}" title="Tiếng Việt"></a>

            {% if session.has('user-code') %}
                {{ link_to("system/profile", session.get('user-code')) }}
                {{ link_to("system/logout", "Logout") }}
            {% else %}
                {{ link_to("system/login", "Login") }}
            {% endif %}

        </ul>
    </div>
     <div class="container-fluid jhv-top2">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="{{ url('') }}"><img src="{{ url('img/logo.png') }}"></a>
                    {#<a class="navbar-brand" href="{{ url('') }}"><img src="img/logo.png"></a>#}
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="{{ url('') }}">Home</a></li>
                        <!--li><a href="#">Page 2</a></li-->
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">App
                                <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="{{ url('meeting_room_booking') }}">Meeting Room Booking</a></li>
                                <li><a href="{{ url('medicine_basic') }}">Infirmary</a></li>
                                <li><a href="{{ url('user') }}">User</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>

 {{ content() }}

{#<nav class="navbar navbar-expand-lg navbar-light bg-light" id="header-menu">#}
    {#<div class="container">#}
        {#<div class="collapse navbar-collapse">#}
            {#<ul class="navbar-nav ml-auto small">#}
                {#<li class="nav-item nav-link"> item 1</li>#}
                {#<li class="nav-item"> <a class="nav-link{% if dispatcher.getControllerName()=='index' %} active{% endif %}" href="{{ url('') }}">Trang Chủ<br />首頁<span class="sr-only">(current)</span></a></li>#}
            {#</ul>#}
        {#</div>#}
    {#</div>#}
{#</nav>#}

{#<div id="slider">#}
    {#<div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-ride="carousel">#}
        {#<ol class="carousel-indicators">#}
            {#<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>#}
            {#<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>#}
        {#</ol>#}
        {#<div class="carousel-inner">#}
            {#<div class="carousel-item active">#}
                {#<img src="{{ url('img/b1.jpg') }}" class="d-block w-100" alt="...">#}
                {#<div class="carousel-caption d-none d-md-block">#}

                {#</div>#}
            {#</div>#}
            {#<div class="carousel-item">#}
                {#<img src="{{ url('img/b2.jpg') }}" class="d-block w-100" alt="...">#}
            {#</div>#}
        {#</div>#}
    {#</div>#}

{#</div>#}

    <footer>
        <hr>
        <div class="container">
            <p class="small text-justify">
                Hoan nghênh bạn sử dụng hệ thống APP của công ty, hệ thống này bao gồm thông tin cá nhân quan trọng hoặc bí mật kinh doanh, hãy dựa theo quyền hạn trách nhiệm được giao lưu giữ, tuân thủ các quy định liên quan và cẩn thận khi thao tác sử dụng, tránh các hành vi vi phạm pháp luật. Nếu có hành vi vi phạm các quyền hạn và trách nhiệm được công ty trao về việc thu thập, xử lý không đúng, lợi dụng quyền hạn từ đó gây ra bất kỳ thiệt hại nào cho công ty hoặc KH, sẽ căn cứ theo chính sách của công ty và pháp luật có liên quan tiến hành xử phạt. Khi sử dụng nếu bạn có bất kỳ câu hỏi nào về chương trình này, xin vui lòng liên hệ với bộ phận IT phần mềm, số nội bộ JHV 1159 , chúc bạn sử dụng vui vẻ.
            </p>
        </div>
        <hr>

        {#<div class="container" style="background: #0c5460;">#}
            {#<div class="row">#}
                {#<div class="nava" style="margin-bottom: 50px">#}
                    {#<p>Trand dieu huong.</p>#}
                {#</div>#}
                {#<div class="copywright" style="clear:both;font-size:0.3rem">#}
                    {#<p>CopyWrite@2019 JHVIT Khong duoc phan phoi va sao chep.</p>#}
                {#</div>#}

            {#</div>#}

        {#</div>#}


        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <p class="small">
                        Copyright &copy;2017 by <strong>Jia Hsin Co.,LTD</strong>. All right reserved.
                    </p>
                </div>
                <div class="col-md-4">
                    <p class="small text-center">
                        <?php // 180331 - Add by John - check load page time - Request by
                        $time = microtime();
                        $time = explode(' ', $time);
                        $time = $time[1] + $time[0];
                        $finish = $time;
                        $total_time = round(($finish - $start), 4)*1000;
                        echo 'Page generated in '.$total_time.' ms.';
                        // 180331 - Add by John - check load page time
                        ?>
                    </p>
                </div>
                <div class="col-md-4">
                    <p class="text-right small">
                        Version <strong>1.0.1</strong> - Developed by <strong>Jia Hsin IT Department</strong>.
                    </p>
                </div>
            </div>
        </div>
    </footer>

    <script src="{{ url('vendor/jquery/jquery.min.js') }}"></script>
    <script src="{{ url('vendor/bootstrap/js/bootstrap.min.js') }}"></script>
    {#<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>#}
    <script type="text/javascript" src="{{ url('vendor/jQuery-Waterwheel-Carousel/js/waterwheelCar.min.js') }}"></script>

    <script src="{{ url('vendor/moment/min/moment.min.js') }}"></script>
    <script src="{{ url('vendor/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js') }}"></script>

    <script src="{{ url('vendor/summernote/summernote.min.js') }}"></script>
    {#<script src="{{ url('vendor/ckeditor/ckeditor.js') }}"></script>   180505 - Edit by Duy - Reason.. - Request by..#}
    {#<script src="{{ url('vendor/ckfinder/ckfinder.js') }}"></script>    180505 - Edit by Duy - Reason.. - Request by..#}
     {{ assets.outputJs() }}



<script type="text/javascript">

    $(function () {

        $('#fieldEnd,#fieldStart').datetimepicker({
            sideBySide: true,
            format: 'YYYY-MM-DD HH:mm:ss'
        });

        $('#fieldDate').datetimepicker({
            sideBySide: true,
            format: 'YYYY-MM-DD'
        });

        $('#fieldExpDate,#fieldMfgDate').datetimepicker({
            sideBySide: true,
            format: 'YYYY-MM-DD'
        });

        $("#fieldComManTrua,#fieldPhuManTrua,#fieldComChayTrua,#fieldChaoTrua,#fieldPhuChayTrua,#fieldComManChieu,#fieldPhuManChieu,#fieldPhuChayChieu,#fieldManSuatDem,#fieldChaySuatDem,#fieldDonBanRieng,#fieldAnBuffet").forceNumeric();

    });

    jQuery.fn.forceNumeric = function () {
        return this.each(function () {
            $(this).keydown(function (e) {
                var key = e.which || e.keyCode;

                if (!e.shiftKey && !e.altKey && !e.ctrlKey &&
                    key >= 48 && key <= 57 ||
                    key >= 96 && key <= 105 ||
                    key == 190 || key == 188 || key == 109 || key == 110 ||
                    key == 8 || key == 9 || key == 13 ||
                    key == 35 || key == 36 ||
                    key == 37 || key == 39 ||
                    key == 46 || key == 45)
                    return true;

                return false;
            });
        });
    };

    $(document).ready(function() {
        $('.lentop').click(function (){
            $('html,body').animate({
                scrollTop: $('#div1').offset().top
            }, 1000);
        });

        $(".fancybox_1").fancybox({
            padding: 0,

            openEffect : 'elastic',
            openSpeed  : 150,

            closeEffect : 'elastic',
            closeSpeed  : 150,

            closeClick : true,

            helpers : {
                overlay : null
            }
        });


        $("#fieldContent").summernote({
            placeholder: 'enter directions here...',
            height: 300,
            callbacks: {
                onImageUpload : function(files) {
                    for(var i =0 ; i <=files.length-1 ; i++) {
                        sendFile(files[i], this);
                    }
                }
            }
        });
    });

    function sendFile(file) {
        var form_data = new FormData();
        form_data.append('file', file);
        $.ajax({
            data: form_data,
            type: "POST",
            url: 'http://localhost/jiahsin/posts/upload/',
            cache: false,
            contentType: false,
            processData: false,
            success: function() {
                $("#fieldContent").summernote('insertImage', "/jiahsin/upload/blog/images/" +  file.name);
            }
        });
    }


    $("#fieldNameMedicineAutoComplete").autocomplete({
        source: function (request, response) {
            var matcher = new RegExp( $.ui.autocomplete.escapeRegex(request.term), "i" );
            $.ajax({
                url: "{{ url('AutoComplete/MedicineStock') }}",
                dataType: "json",
                success: function (data) {
                    response($.map(data, function(v,i){
                        var text = v.name;
                        if ( text && ( !request.term || matcher.test(text) ) ) {
                            return {
                                label: v.name,
                                value: v.name
                            };
                        }
                    }));
                }
            });
        }
    });
</script>
</body>
</html>

