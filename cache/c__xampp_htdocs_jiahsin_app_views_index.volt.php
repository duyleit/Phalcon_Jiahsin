<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Jiahsin Application Server</title>
    <link rel="stylesheet" href="<?= $this->url->get('vendor/bootstrap/css/bootstrap.min.css') ?>">
    

    <link rel="stylesheet" href="<?= $this->url->get('vendor/jquery-ui/jquery.css') ?>">
    <link rel="stylesheet" href="<?= $this->url->get('vendor/font-awesome/css/font-awesome.min.css') ?>">
    <link rel="stylesheet" href="<?= $this->url->get('vendor/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css') ?>">
    <link rel="stylesheet" href="<?= $this->url->get('css/style.css') ?>">
    <link rel="stylesheet" href="<?= $this->url->get('vendor/summernote/summernote.css') ?>">
    <?= $this->assets->outputCss() ?>
    <link rel="shortcut icon" type="image/x-icon" href="<?= $this->url->get('img/favicon.ico') ?>"/>

    <!-- Add mousewheel plugin (this is optional) -->
    

    <!-- Add fancyBox main JS and CSS files -->
    
    

    
    

</head>
<body>



    
    
        
            
                
            
        
        
            
                
            
        
        
            
                
            
        

    
    




    
        
            
                
                
            
            
                
            
            
                
                
            
        
    





    
        
            
        
        
            
        
        
            
        
    
    
        
        
    
    
        
        
    

    <div class="container-fluid jhv-top1">
        <ul class="nav pull-right small">
            <a href="<?= $this->url->get('system/lang/en') ?>"><img src="<?= $this->url->get('img/flags/en.png') ?>" title="English"></a>
            <a href="<?= $this->url->get('system/lang/zh-hans') ?>"><img src="<?= $this->url->get('img/flags/zh-hans.png') ?>" title="中文"></a>
            <a href="<?= $this->url->get('system/lang/vi') ?>"><img src="<?= $this->url->get('img/flags/vi.png') ?>" title="Tiếng Việt"></a>

            <?php if ($this->session->has('user-code')) { ?>
                <?= $this->tag->linkTo(['system/profile', $this->session->get('user-code')]) ?>
                <?= $this->tag->linkTo(['system/logout', 'Logout']) ?>
            <?php } else { ?>
                <?= $this->tag->linkTo(['system/login', 'Login']) ?>
            <?php } ?>

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
                    <a class="navbar-brand" href="<?= $this->url->get('') ?>"><img src="<?= $this->url->get('img/logo.png') ?>"></a>
                    
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="<?= $this->url->get('') ?>">Home</a></li>
                        <!--li><a href="#">Page 2</a></li-->
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">App
                                <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="<?= $this->url->get('meeting_room_booking') ?>">Meeting Room Booking</a></li>
                                <li><a href="<?= $this->url->get('medicine_basic') ?>">Infirmary</a></li>
                                <li><a href="<?= $this->url->get('user') ?>">User</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>

 <?= $this->getContent() ?>


    
        
            
                
                
            
        
    



    
        
            
            
        
        
            
                
                

                
            
            
                
            
        
    



    <footer>
        <hr>
        <div class="container">
            <p class="small text-justify">
                Hoan nghênh bạn sử dụng hệ thống APP của công ty, hệ thống này bao gồm thông tin cá nhân quan trọng hoặc bí mật kinh doanh, hãy dựa theo quyền hạn trách nhiệm được giao lưu giữ, tuân thủ các quy định liên quan và cẩn thận khi thao tác sử dụng, tránh các hành vi vi phạm pháp luật. Nếu có hành vi vi phạm các quyền hạn và trách nhiệm được công ty trao về việc thu thập, xử lý không đúng, lợi dụng quyền hạn từ đó gây ra bất kỳ thiệt hại nào cho công ty hoặc KH, sẽ căn cứ theo chính sách của công ty và pháp luật có liên quan tiến hành xử phạt. Khi sử dụng nếu bạn có bất kỳ câu hỏi nào về chương trình này, xin vui lòng liên hệ với bộ phận IT phần mềm, số nội bộ JHV 1159 , chúc bạn sử dụng vui vẻ.
            </p>
        </div>
        <hr>

        
            
                
                    
                
                
                    
                

            

        


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

    <script src="<?= $this->url->get('vendor/jquery/jquery.min.js') ?>"></script>
    <script src="<?= $this->url->get('vendor/bootstrap/js/bootstrap.min.js') ?>"></script>
    
    <script type="text/javascript" src="<?= $this->url->get('vendor/jQuery-Waterwheel-Carousel/js/waterwheelCar.min.js') ?>"></script>

    <script src="<?= $this->url->get('vendor/moment/min/moment.min.js') ?>"></script>
    <script src="<?= $this->url->get('vendor/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js') ?>"></script>

    <script src="<?= $this->url->get('vendor/summernote/summernote.min.js') ?>"></script>
    
    
     <?= $this->assets->outputJs() ?>



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
                url: "<?= $this->url->get('AutoComplete/MedicineStock') ?>",
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

