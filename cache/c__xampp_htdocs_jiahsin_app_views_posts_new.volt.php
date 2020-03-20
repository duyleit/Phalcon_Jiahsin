
    
    
    
    
    





<div class="page-header">
    <h3>
        Create Post
    </h3>
</div>

<?= $this->getContent() ?>

    <?= $this->tag->form(['posts/create', 'method' => 'post', 'autocomplete' => 'off', 'class' => 'form-horizontal', 'enctype' => 'multipart/form-data']) ?>
        


    <div class="form-group">
        <label for="fieldTitle" class="col-sm-2 control-label">Title</label>
        <div class="col-sm-10">
            <?= $this->tag->textField(['title', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'id' => 'fieldTitle']) ?>
        </div>
    </div>

        <div class="form-group">
        <label for="fieldContent" class="col-sm-2 control-label">Content</label>
        <div class="col-sm-10">
        <?= $this->tag->textArea(['content', 'cols' => '30', 'rows' => '4', 'class' => 'form-control', 'id' => 'fieldContent']) ?>
        </div>
        </div>


    
        
        
            
        
    
    
        
        
            
        
    

    
        
        
            
        
    

    <div class="form-group">
        <div class="col-sm-offset   -2 col-sm-10">
            <?= $this->tag->submitButton(['Save', 'class' => 'btn btn-default']) ?>
        </div>
    </div>
    </form>




