
<div class="page-header">
    <h3>Search result</h3>
</div>

<?= $this->getContent() ?>

<div class="row table-responsive">
    <table class="table table-bordered table-hover">
        <thead>
            <tr>
                <th>Id</th>
            <th>Code</th>
            <th>Name</th>
            <th>Unit</th>
            <th>Quantity</th>
            <!--th>Price</th>
            <th>Amount</th-->
            <th>Specification</th>
            <!--th>Approval No.</th>
            <th>Mfg Date</th-->
            <th>Exp Date</th>
            <!--th>Min Stock</th>
            <th>Forbidden</th>
            <th>Special</th>
            <th>Manufactory</th-->
            </tr>
        </thead>
        <tbody>
        <?php if (isset($page->items)) { ?>
        <?php foreach ($page->items as $medicine_stock) { ?>
            <tr<?php if ($medicine_stock->exp_date <= date('Y-m-d')) { ?> class="danger" title="Warning: Out of date!"<?php } ?>>
                <td><?= $medicine_stock->id ?></td>
            <td><?= $medicine_stock->code ?></td>
            <td><?= $medicine_stock->name ?></td>
            <td><?= $medicine_stock->unit_code ?></td>
            <td><?= $medicine_stock->quantity ?></td>
            <!--td><?= $medicine_stock->price ?></td>
            <td><?= $medicine_stock->amount ?></td-->
            <td><?= $medicine_stock->specification ?></td>
            <!--td><?= $medicine_stock->approval_no ?></td>
            <td><?= $medicine_stock->mfg_date ?></td-->
            <td><?= $medicine_stock->exp_date ?></td>
            <!--td><?= $medicine_stock->min_stock ?></td>
            <td><?= $medicine_stock->forbidden ?></td>
            <td><?= $medicine_stock->special ?></td>
            <td><?= $medicine_stock->manufactory ?></td-->
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
                <li><?= $this->tag->linkTo(['medicine_stock/search', 'First']) ?></li>
                <li><?= $this->tag->linkTo(['medicine_stock/search?page=' . $page->before, 'Previous']) ?></li>
                <li><?= $this->tag->linkTo(['medicine_stock/search?page=' . $page->next, 'Next']) ?></li>
                <li><?= $this->tag->linkTo(['medicine_stock/search?page=' . $page->last, 'Last']) ?></li>
            </ul>
        </nav>
    </div>
</div>
