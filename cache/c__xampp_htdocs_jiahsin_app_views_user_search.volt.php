

<?= $this->getContent() ?>

<div class="row">
    <table class="table table-bordered table-hover">
        <thead>
            <tr>
                <th>User</th>
                <th>Fullname</th>
                <th>Role</th>
                <th>Company</th>
                <th>Department</th>
                <th>Position</th>
                <th>Email</th>
                <th>Phone Extend</th>
                <th>Status</th>

                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
        <?php if (isset($page->items)) { ?>
        <?php foreach ($page->items as $user) { ?>
            <tr>
                <td><?= $user->code ?></td>
                <td><?= $user->fullname ?></td>
                <td><?= $user->role_code ?></td>
                <td><?= $user->com_code ?></td>
                <td><?= $user->dept_code ?></td>
                <td><?= $user->posi_code ?></td>
                <td><?= $user->email ?></td>
                <td><?= $user->phone_extend ?></td>
                <td><?= $user->status ?></td>

                <td><?= $this->tag->linkTo(['user/edit/' . $user->id, '<i class="fa fa-edit" aria-hidden="true"></i> Edit', 'class' => 'btn btn-xs btn-default']) ?></td>
                <td><?= $this->tag->linkTo(['user/delete/' . $user->id, '<i class="fa fa-trash-o" aria-hidden="true"></i> Delete', 'class' => 'btn btn-xs btn-danger', 'onClick' => 'return confirm("Are you sure to DELETE?");']) ?></td>
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
                <li><?= $this->tag->linkTo(['user/search', 'First']) ?></li>
                <li><?= $this->tag->linkTo(['user/search?page=' . $page->before, 'Previous']) ?></li>
                <li><?= $this->tag->linkTo(['user/search?page=' . $page->next, 'Next']) ?></li>
                <li><?= $this->tag->linkTo(['user/search?page=' . $page->last, 'Last']) ?></li>
            </ul>
        </nav>
    </div>
</div>
