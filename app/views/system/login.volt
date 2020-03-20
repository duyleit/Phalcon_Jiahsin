<div class="row">
    <div class="col-sm-6 col-sm-offset-3">

        <div class="row">
            <div class="col-xs-4 col-xs-offset-4">
                <img class="img-responsive" src="{{ url('img/system/padlock-icon.png') }}">
            </div>
        </div>


        <hr>


        <div class="page-header">
            <h1>
                Login
            </h1>
        </div>

        {#{{ content() }}#}

        {{ form("system/login", "method":"post", "autocomplete" : "off", "class" : "form-horizontal") }}

        <div class="form-group">
            <label for="fieldUser" class="col-sm-3 control-label">User</label>
            <div class="col-sm-9">
                {{ text_field("user", "size" : 30, "class" : "form-control", "id" : "fieldUser", 'autofocus' : true, "required" : true) }}
            </div>
        </div>

        <div class="form-group">
            <label for="fieldPass" class="col-sm-3 control-label">Password</label>
            <div class="col-sm-9">
                {{ password_field("pass", "size" : 30, "class" : "form-control", "id" : "fieldPass", "required" : true) }}
            </div>
        </div>

        <input type='hidden' name='<?php echo $this->security->getTokenKey() ?>'
               value='<?php echo $this->security->getToken() ?>'/>

        <div class="form-group">
            <div class="col-sm-offset-3 col-sm-9">
                {{ submit_button('Login', 'class': 'btn btn-default') }}
            </div>
        </div>

        </form>

        {#<hr>#}
        {#<p class="large text-justify">#}
            {#Hoan nghênh bạn sử dụng hệ thống APP của công ty, hệ thống này bao gồm thông tin cá nhân quan trọng hoặc bí mật kinh doanh, hãy dựa theo quyền hạn trách nhiệm được giao lưu giữ, tuân thủ các quy định liên quan và cẩn thận khi thao tác sử dụng, tránh các hành vi vi phạm pháp luật. Nếu có hành vi vi phạm các quyền hạn và trách nhiệm được công ty trao về việc thu thập, xử lý không đúng, lợi dụng quyền hạn từ đó gây ra bất kỳ thiệt hại nào cho công ty hoặc KH, sẽ căn cứ theo chính sách của công ty và pháp luật có liên quan tiến hành xử phạt. Khi sử dụng nếu bạn có bất kỳ câu hỏi nào về chương trình này, xin vui lòng liên hệ với bộ phận IT phần mềm, số nội bộ JHV 1159 , chúc bạn sử dụng vui vẻ.#}
        {#</p>#}

    </div>
</div>