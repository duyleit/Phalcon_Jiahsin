
<div class="container-fluid jhv-top3" style="background: url(<?= $this->url->get('img/blog/top-bg.jpg') ?>) no-repeat center center; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
    <h1 class="text-center text-shadow">Categories</h1>
</div>

<?php if ($this->session->has('user-code')) { ?>
    <div class="container-fluid navbar-sub text-center">
        <div class="btn-group">
            <a href="<?= $this->url->get('categories/search') ?>" class="btn btn-primary"><i class="fa fa-list"></i> Categories</a>
            
        </div>
    </div>

    <div class="container">

        <div class="row" style="margin-bottom: 15px;">

            <div class="col-sm-5">
                <?= $this->tag->form(['categories/search', 'method' => 'post', 'autocomplete' => 'off', 'class' => 'form-horizontal']) ?>
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
                <a href="<?= $this->url->get('categories') ?>" class="btn btn-default btn-sm"><i class="fa fa-search"></i> Advanced Search</a>
                <a href="<?= $this->url->get('categories/search') ?>" class="btn btn-default btn-sm"><i class="fa fa-list"></i> List</a>
                <a href="<?= $this->url->get('categories/new') ?>" class="btn btn-default btn-sm"><i class="fa fa-plus"></i> Add</a>
            </div>

            <div class="col-sm-5">
                <a href="<?= $this->url->get('posts/search') ?>" class="btn btn-default btn-sm"><i class="fa fa-home"></i> Home</a>
                <a href="<?= $this->url->get('categories/new') ?>" class="btn btn-default btn-sm"><i class="fa fa-plus"></i> Add Category</a>
            </div>

        </div>

    </div>
<?php } ?>

<div class="container">
    <hr>
    <?= $this->getContent() ?>
</div>