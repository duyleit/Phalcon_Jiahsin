

<?= $this->getContent() ?>

<div class="row">
    <table class="table table-bordered table-hover">
        <thead>
        <tr>

            <th>Id</th>
            <th>Name</th>
            <th>Slug</th>

            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <?php if (isset($page->items)) { ?>
            <?php foreach ($page->items as $cate) { ?>
                <tr>
                    <td><?= $cate->id ?></td>
                    <td><?= $cate->name ?></td>
                    <td><?= $cate->slug ?></td>


                    <td><?= $this->tag->linkTo(['categories/edit/' . $cate->id, '<i class="fa fa-edit" aria-hidden="true"></i> Edit', 'class' => 'btn btn-xs btn-default']) ?></td>
                    <td><?= $this->tag->linkTo(['onclick' => 'return confirm(\'Are you sure to DELETE?\')', 'categories/delete/' . $cate->id, '<i class="fa fa-trash-o" aria-hidden="true"></i> Delete', 'class' => 'btn btn-xs btn-danger', 'onClick' => 'return confirm("Are you sure to DELETE?");']) ?></td>
                </tr>
            <?php } ?>
        <?php } ?>
        </tbody>
    </table>
</div>

<div class="row">
    <div class="col-sm-1">
        <p class="pagination" style="line-height: 1.42857;padding: 6px 12px;">
            <?= $page->current . '/' . $page->total_pages ?>
        </p>
    </div>
    <div class="col-sm-11">
        <nav>
            <ul class="pagination">
                <li><?= $this->tag->linkTo(['categories/search', 'First']) ?></li>
                <li><?= $this->tag->linkTo(['categories/search?page=' . $page->before, 'Previous']) ?></li>
                <li><?= $this->tag->linkTo(['categories/search?page=' . $page->next, 'Next']) ?></li>
                <li><?= $this->tag->linkTo(['categories/search?page=' . $page->last, 'Last']) ?></li>
            </ul>
        </nav>
    </div>
</div>
