<div class="row">
    <div class="col-sm-6 col-sm-offset-3">

        <div class="row">
            <div class="col-xs-4 col-xs-offset-4">
                <img class="img-responsive" src="<?= $this->url->get('img/system/padlock-icon.png') ?>">
            </div>
        </div>


        <hr>


        <div class="page-header">
            <h1>
                Login
            </h1>
        </div>

        

        <?= $this->tag->form(['system/login', 'method' => 'post', 'autocomplete' => 'off', 'class' => 'form-horizontal']) ?>

        <div class="form-group">
            <label for="fieldUser" class="col-sm-3 control-label">User</label>
            <div class="col-sm-9">
                <?= $this->tag->textField(['user', 'size' => 30, 'class' => 'form-control', 'id' => 'fieldUser', 'autofocus' => true, 'required' => true]) ?>
            </div>
        </div>

        <div class="form-group">
            <label for="fieldPass" class="col-sm-3 control-label">Password</label>
            <div class="col-sm-9">
                <?= $this->tag->passwordField(['pass', 'size' => 30, 'class' => 'form-control', 'id' => 'fieldPass', 'required' => true]) ?>
            </div>
        </div>

        <input type='hidden' name='<?php echo $this->security->getTokenKey() ?>'
               value='<?php echo $this->security->getToken() ?>'/>

        <div class="form-group">
            <div class="col-sm-offset-3 col-sm-9">
                <?= $this->tag->submitButton(['Login', 'class' => 'btn btn-default']) ?>
            </div>
        </div>

        </form>

        
        
            
        

    </div>
</div>