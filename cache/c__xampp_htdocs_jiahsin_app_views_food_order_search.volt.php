<?= $this->getContent() ?>
<form style="float:right" method="POST" action="exportexcel">
<a href="<?= $this->url->get('food_order/exportexcel') ?>" class="btn btn-default btn-sm"><i class="fa fa-file-excel-o"></i> Print(Excel)</a>

  </form>
<br>
<hr>



<div class="row">
    <table class="table table-bordered table-hover">
        <thead>
        <tr>
            <th>STT</th>
            <th>Ngày Đặt</th>
            <th>Người Đặt</th>
            <th>Bộ Phận</th>
            <th>Cơm Mặn Trưa</th>
            <th>Phụ Mặn Trưa</th>
            <th>Cơm Chay Trưa</th>
            <th>Cháo Trưa</th>
            <th>Phụ Chay Trưa</th>
            <th>Cơm Mặn Chiều</th>
            <th>Phụ Mặn Chiều</th>
            <th>Phụ Chay Chiều</th>
            <th>Mặn Suất Đêm</th>
            <th>Chay Suất Đêm</th>
            <th>Dọn Bàn Riêng</th>
            <th>Ăn Buffet</th>
            <th>Ghi Chú</th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <?php if (isset($page->items)) { ?>
            <?php foreach ($page->items as $mealorder) { ?>
                <tr>
                    <td><?= $mealorder->bm_id ?></td>
                    <td><?= $mealorder->date ?></td>
                    <td><?= $mealorder->user_code ?></td>
                    <td><?= $mealorder->name ?></td>
                    <td><?= $mealorder->lunch ?></td>
                    <td><?= $mealorder->lunch_add ?></td>
                    <td><?= $mealorder->lunch_veg ?></td>
                    <td><?= $mealorder->lunch_soup ?></td>
                    <td><?= $mealorder->lunch_veg_add ?></td>
                    <td><?= $mealorder->dinner ?></td>
                    <td><?= $mealorder->dinner_add ?></td>
                    <td><?= $mealorder->dinner_veg_add ?></td>
                    <td><?= $mealorder->supper ?></td>
                    <td><?= $mealorder->supper_veg ?></td>
                    <td><?= $mealorder->separate_table ?></td>
                    <td><?= $mealorder->buffet ?></td>
                    <td><?= $mealorder->note ?></td>

                    <td><?= $this->tag->linkTo(['food_order/edit/' . $mealorder->bm_id, '<i class="fa fa-edit" aria-hidden="true"></i> Edit', 'class' => 'btn btn-xs btn-default']) ?></td>
                   <td><?= $this->tag->linkTo(['onclick' => 'return confirm(\'Are you sure to DELETE?\')', 'food_order/delete/' . $mealorder->bm_id, '<i class="fa fa-trash-o" aria-hidden="true"></i> Delete', 'class' => 'btn btn-xs btn-danger', 'onClick' => 'return confirm("Are you sure to DELETE?");']) ?></td>
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
                <li><?= $this->tag->linkTo(['food_order/search', 'First']) ?></li>
                <li><?= $this->tag->linkTo(['food_order/search?page=' . $page->before, 'Previous']) ?></li>
                <li><?= $this->tag->linkTo(['food_order/search?page=' . $page->next, 'Next']) ?></li>
                <li><?= $this->tag->linkTo(['food_order/search?page=' . $page->last, 'Last']) ?></li>
            </ul>
        </nav>
    </div>
</div>

