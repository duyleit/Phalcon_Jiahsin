<div class="container-fluid jhv-top3" style="background: url(<?= $this->url->get('img/index/top-bg.jpg') ?>) no-repeat center center; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
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
            <?= $this->tag->linkTo(['meeting_room_booking/search', 'Meeting Room Booking', 'class' => 'btn btn-default']) ?>
        </div>
        <div class="col-md-4 btn-app text-center main-layout-btn">
            <?= $this->tag->linkTo(['medicine_basic/search', 'Infirmary', 'class' => 'btn btn-default']) ?>
        </div>
        <div class="col-md-4 btn-app text-center main-layout-btn">
            <?= $this->tag->linkTo(['administrative/search', 'Administrative', 'class' => 'btn btn-default']) ?>
        </div>
        <div class="col-md-4 btn-app text-center main-layout-btn">
            <?= $this->tag->linkTo(['user/search', 'User', 'class' => 'btn btn-default']) ?>
        </div>
        
         <div class="col-md-4 btn-app text-center main-layout-btn">
            <?= $this->tag->linkTo(['posts/search', 'Blog', 'class' => 'btn btn-default']) ?>
        </div>
        
        <div class="col-md-4 btn-app text-center main-layout-btn">
            <?= $this->tag->linkTo(['food_order/search', 'Food Order', 'class' => 'btn btn-default']) ?>
        </div>

    </div>
    
    <img class="thumbnail img-responsive" src="<?= $this->url->get('img/index/jiahsin-company.jpg') ?>">

</div>