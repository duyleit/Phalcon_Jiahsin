{{ content() }}
<div class="page-header">

    <h3>
        <div style="margin-left: 430px;color:purple">
            QUẢN LÝ BÁO CƠM <br />
         </div>
        <hr style="width: 400px; height: 2px; background-color: blue; text-align: left" />
    </h3>
    {#<form method="POST" action="" class="form-horizontal">#}
    <div style="margin-left: 450px;color:cadetblue ;border: 2px dashed #ff0000;width: 20%;padding-left: 10px; ">
        <label  class="segment-item"><input type="radio"  name="chk_group" checked="true" value="1" onclick="document.location.href='addtrua'">1. Đặt Suất Ăn Trưa</label><br />
        <label  class="segment-item"><input type="radio"  name="chk_group" value="2" onclick="document.location.href='addchieu'">2. Đặt Suất Ăn Chiều</label><br />
        <label  class="segment-item"><input type="radio"  name="chk_group" value="3" onclick="document.location.href='adddem'">3. Đặt Suất Ăn Đêm</label><br />
        <label  class="segment-item"><input type="radio"  name="chk_group" value="4" onclick="document.location.href='addcomkhach'">4. Đặt Suất Ăn Cơm Khách</label><br />
    </div>
    {#</form>#}
    <hr>
    <div>
        <p style="color: red; font-size: large;text-decoration: underline;"> Lưu Ý:</p>
        <marquee style="color:yellowgreen"> Bộ phận nào không ăn cơm vui lòng nhập số 0 vào đúng vị trí của bộ phần mình và ghi chú cắt cơm ở dòng ghi chú.Đối với các bộ phận không báo cơm đúng thời gian quy định nhà ăn sẽ không phục vụ phần cơm của bộ phận đó.</marquee>

    </div>

</div>
