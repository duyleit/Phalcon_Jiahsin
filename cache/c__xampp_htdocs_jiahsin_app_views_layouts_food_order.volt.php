
<div class="container-fluid jhv-top3" style="background: url(<?= $this->url->get('img/food_order/top-bg.jpg') ?>) no-repeat center center; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
    <h1 class="text-center text-shadow">Food Order</h1>
</div>

<?php if ($this->session->has('user-code')) { ?>
    <div class="container-fluid navbar-sub text-center">
        <div class="btn-group">
            <a href="<?= $this->url->get('food_order/search') ?>" class="btn btn-primary"><i class="fa fa-shopping-basket"></i> Food Order</a>
            
        </div>
    </div>

    <div class="container">

        <div class="row" style="margin-bottom: 15px;">

            <div class="col-sm-5">
                
                
                    
                    
                            
                            
                        
                
                
                <a href="<?= $this->url->get('food_order/new') ?>" class="btn btn-default btn-sm"><i class="fa fa-home"></i> Home</a>
            </div>

            <div class="col-sm-7 text-right">
                <a href="<?= $this->url->get('food_order') ?>" class="btn btn-default btn-sm"><i class="fa fa-search"></i> Advanced Search</a>
                <a href="<?= $this->url->get('food_order/search') ?>" class="btn btn-default btn-sm"><i class="fa fa-list"></i> List</a>
                <a href="<?= $this->url->get('food_order/new') ?>" class="btn btn-default btn-sm"><i class="fa fa-plus"></i> Add</a>
                
            </div>
           
            
                
            

        </div>

    </div>
<?php } ?>

<div class="container">
    
    <?= $this->getContent() ?>
</div>