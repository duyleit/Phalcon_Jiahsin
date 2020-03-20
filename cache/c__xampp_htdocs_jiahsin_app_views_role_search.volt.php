<div class="row">
    <nav>
        <ul class="pager">
            <li class="previous"><?= $this->tag->linkTo(['role/index', 'Go Back']) ?></li>
            <li class="next"><?= $this->tag->linkTo(['role/new', 'Create ']) ?></li>
        </ul>
    </nav>
</div>

<div class="page-header">
    <h1>Search result</h1>
</div>

<?= $this->getContent() ?>

<div class="row">
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Id</th>
            <th>Code</th>
            <th>Name</th>

                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
        <?php if (isset($page->items)) { ?>
        <?php foreach ($page->items as $role) { ?>
            <tr>
                <td><?= $role->id ?></td>
            <td><?= $role->code ?></td>
            <td><?= $role->name ?></td>

                <td><?= $this->tag->linkTo(['role/edit/' . $role->id, 'Edit']) ?></td>
                <td><?= $this->tag->linkTo(['role/delete/' . $role->id, 'Delete']) ?></td>
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
                <li><?= $this->tag->linkTo(['role/search', 'First']) ?></li>
                <li><?= $this->tag->linkTo(['role/search?page=' . $page->before, 'Previous']) ?></li>
                <li><?= $this->tag->linkTo(['role/search?page=' . $page->next, 'Next']) ?></li>
                <li><?= $this->tag->linkTo(['role/search?page=' . $page->last, 'Last']) ?></li>
            </ul>
        </nav>
    </div>
</div>
