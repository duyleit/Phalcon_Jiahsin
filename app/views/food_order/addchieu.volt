
{{ content() }}
<div class="col-md-8">

    {#<div id="myCarousel" class="carousel slide" data-ride="carousel">#}


        {#<!-- Wrapper for slides -->#}
        {#<div class="carousel-inner" role="listbox">#}
            {#<div class="item active">#}
                {#<img src="{{ url('img/food_order/menu.png')}}" alt=""></img>#}
                {#<div class="carousel-caption">#}
                    {#<h3>Chania</h3>#}
                    {#<p>The atmosphere in Chania has a touch of Florence and Venice.</p>#}
                {#</div>#}
            {#</div>#}

            {#<div class="item">#}
                {#<img src="{{ url('img/food_order/menu.png')}}" alt=""></img>#}
                {#<div class="carousel-caption">#}
                    {#<h3>Chania</h3>#}
                    {#<p>The atmosphere in Chania has a touch of Florence and Venice.</p>#}
                {#</div>#}
            {#</div>#}

            {#<div class="item">#}
                {#<img src="{{ url('img/food_order/menu.png')}}" alt=""></img>#}
                {#<div class="carousel-caption">#}
                    {#<h3>Flowers</h3>#}
                    {#<p>Beautiful flowers in Kolymbari, Crete.</p>#}
                {#</div>#}
            {#</div>#}

            {#<div class="item">#}
                {#<img src="{{ url('img/food_order/menu.png')}}" alt=""></img>#}
                {#<div class="carousel-caption">#}
                    {#<h3>Flowers</h3>#}
                    {#<p>Beautiful flowers in Kolymbari, Crete.</p>#}
                {#</div>#}
            {#</div>#}
        {#</div>#}

        {#<!-- Left and right controls -->#}
        {#<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">#}
            {#<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>#}
            {#<span class="sr-only">Previous</span>#}
        {#</a>#}
        {#<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">#}
            {#<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>#}
            {#<span class="sr-only">Next</span>#}
        {#</a>#}
    {#</div>#}
    <h3>
        <div style="margin-left:170px ;color:orangered">  Suất Ăn Chiều </div>
    </h3>
<form method="POST" action="addchieu" class="form-horizontal">

    <div class="form-group">
        <label for="fieldFoodOrderDeptId" class="col-sm-3 control-label">Bộ Phận: </label>
        <div class="col-sm-5">
            {{ select("foodorderdeptId", foodorderdept, "using":["id","name"], "required":"required", "useEmpty":true, "class" : "form-control", "id" : "fieldFoodOrderDeptId") }}
        </div>
    </div>

    <div class="form-group">
        <label for="fieldDate" class="col-sm-3 control-label">Ngày Đặt: </label>
        <div class="col-sm-5">
            {{ text_field("date", "size" : 30, "required":"required", "class" : "form-control", "id" : "fieldDate") }}
        </div>
    </div>

    <div class="form-group">
        <label for="fieldComManChieu" class="col-sm-3 control-label">Cơm Mặn Chiều: </label>
        <div class="col-sm-2">
            {{ text_field("commanchieu", "size" : 30, "required":"required", "class" : "form-control","value":0 ,"id" : "fieldComManChieu") }}
        </div>
    </div>
    <div class="form-group">
        <label for="fieldPhuManChieu" class="col-sm-3 control-label">Phụ Mặn Chiều: </label>
        <div class="col-sm-2">
            {{ text_field("phumanchieu", "size" : 30, "required":"required", "class" : "form-control", "value":0,"id" : "fieldPhuManChieu") }}
        </div>
    </div>
    <div class="form-group">
        <label for="fieldPhuChayChieu" class="col-sm-3 control-label">Phụ Chay Chiều: </label>
        <div class="col-sm-2">
            {{ text_field("phuchaychieu", "size" : 30, "required":"required", "class" : "form-control", "value":0,"id" : "fieldPhuChayChieu") }}
        </div>
    </div>

    <div class="form-group">
        <label for="fieldGhiChu" class="col-sm-3 control-label">Ghi Chú: </label>
        <div class="col-sm-7">
            {{ text_area("ghichu", "cols": "30", "rows": "4", "class" : "form-control", "id" : "fieldGhiChu") }}
        </div>
    </div>


    <div class="form-group">
        <div class="col-sm-offset-3 col-sm-10">
            {{ submit_button('Add', 'class': 'btn btn-default') }}
        </div>
    </div>

</form>
</div>
<div class="col-sm-4">
    <h3>
        <div style="margin-left:120px; color:orangered">  Thực Đơn Mỗi Ngày  </div>
    </h3>

    <div>
        <img src="{{ url('img/food_order/menu.png')}}" alt=""></img>
    </div>


</div>


