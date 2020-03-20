


<div class="page-header">
    <h3>
        Edit Post
    </h3>
</div>

<?= $this->getContent() ?>

<?= $this->tag->form(['posts/save', 'method' => 'post', 'autocomplete' => 'off', 'class' => 'form-horizontal']) ?>


<div class="form-group">
    <label for="fieldTitle" class="col-sm-2 control-label">Title</label>
    <div class="col-sm-10">
        <?= $this->tag->textField(['title', 'size' => 30, 'required' => 'required', 'class' => 'form-control', 'id' => 'fieldTitle']) ?>
    </div>
</div>


<div class="form-group">
    <label for="fieldContent" class="col-sm-2 control-label">Content</label>
    <div class="col-sm-10">
        <?= $this->tag->textArea(['content', 'cols' => '30', 'rows' => '4', 'class' => 'ckeditor', 'id' => 'fieldContent']) ?>
    </div>
</div>

    
    
        
        
    


    
    
        
    



    
    
        
    


<?= $this->tag->hiddenField(['id']) ?>


<div class="form-group">
    <div class="col-sm-offset   -2 col-sm-10">
        <?= $this->tag->submitButton(['Save', 'class' => 'btn btn-default']) ?>
    </div>
</div>

</form>

