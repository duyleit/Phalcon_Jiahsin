<?php

use Phalcon\Paginator\Adapter\Model as Paginator;
//use Phalcon\Mvc\Model\Criteria;
//use Phalcon\Forms\Element\Radio;
use Phalcon\Mvc\Model\Resultset\Simple;


class FoodOrderController extends ControllerBase
{
    public function initialize()
    {
        //$this->auth();
        $this->view->foodorderdept = Department::find   ([
            'columns' => 'id,name',
            'order' => 'name ASC'
        ]);
    }

    public function indexAction()
    {


    }

    public function searchAction()
    {
//        $numberPage = 1;
//        if ($this->request->isPost()) {
//            $query = Criteria::fromInput($this->di, 'FoodQuantity', $_POST);
//            $this->persistent->parameters = $query->getParams();
//        }
//        else {
//        }
//
//        $parameters = $this->persistent->parameters;
//        if (!is_array($parameters)) {
//            $parameters = [];
//        }
//
//        $parameters["order"] = "id DESC";
//        $foodquantity = FoodQuantity::find($parameters);
//        $foodquantity = FoodQuantity::find([
//          'columns' => 'Ngaydat,Trolydat,Id,Comman_trua,Phuman_trua,Comchay_trua,Chao_trua,Phuchay_trua,Comman_chieu,Phuman_chieu,Phuchay_chieu,Man_dem,Chay_dem,Donbanrieng,Buffet,Ghichu',
//         'conditions'  => ''
//        ]);

            $numberPage = $this->request->getQuery("page", "int");
           $date = $this->request->getPost("date");
            if($date == '')
            {
                $date=date(  'Y/m/d');
            }

            $foodorderdeptId = $this->request->getPost("foodorderdeptId");
            $nguoidat = $this->request->getPost("nguoidat");

              $sql = "SELECT bookmeal.bm_id,date,user_code,dept_code,department.name,lunch,lunch_add,lunch_veg,lunch_soup,lunch_veg_add,dinner,dinner_add,dinner_veg_add,supper,supper_veg,separate_table,buffet,note FROM bookmeal,department where bookmeal.dept_code= department.id ";
            //$sql = "SELECT food_quantity.Id,Ngaydat,Trolydat,Id_dept,food_order_department.Name,Comman_trua,Phuman_trua,Comchay_trua,Chao_trua,Phuchay_trua,Comman_chieu,Phuman_chieu,Phuchay_chieu,Man_dem,Chay_dem,Donbanrieng,Buffet,Ghichu FROM food_quantity,food_order_department where food_quantity.Id_dept= food_order_department.Id "; // and Ngaydat= '".$date. "' and Id_dept=".$foodorderdeptId;

//  FOR TEST       if ($date != '') {
//                $sql = $sql . " and date= '" . $date . "'";
//            }
//            else {
//                $sql = $sql . " and Ngaydat= '" . date('Y-m-d') . "'";
//            }
//   FOR TEST         if ($foodorderdeptId != '') {
//                $sql = $sql . " and dept_code = " . $foodorderdeptId;
//            }
//   FOR TEST         if ($nguoidat != '') {
//                $sql = $sql . " and user_code like '%" . $nguoidat . "%'";
//            }
            $meal_order = new Bookmeal();
            $result = new Simple(
                null,
                $meal_order,
                $meal_order->getReadConnection()->query($sql)
            );


            if (count($result) == 0) {
                $this->flash->notice("Không Tìm thấy suất đặt cơm nào !!!");

                $this->dispatcher->forward([
                    "controller" => "food_order",
                    "action" => "index"
                ]);

                return;
            }
            $this->session->set('tblfood', $result);
            $paginator = new Paginator([
                'data' => $result,
                'limit' => 5,
                'page' => $numberPage
            ]);

            $this->view->page = $paginator->getPaginate();

        }

    public function addtruaAction()
    {

//        if (!$this->request->isPost()) {  xem lai file new.volt co can dung form ko
//            $this->dispatcher->forward([
//                'controller' => "food_order",
//                'action' => 'new'
//            ]);
//
//            return;
//        }

//        if (!$post->save()) {
//            foreach ($post->getMessages() as $message) {
//                $this->flash->error($message);
//            }
//
//            $this->dispatcher->forward([
//                'controller' => "posts",
//                'action' => 'new'
//            ]);
//
//            return;
//        }
//        $foodquantity = new FoodQuantity();

        if ($this->request->isPost()) {

            $nguoidat = get_current_user();
            $foodorderdeptId = $this->request->getPost("foodorderdeptId");
            $date = $this->request->getPost("date");

            $commantrua = $this->request->getPost("commantrua");
            $phumantrua = $this->request->getPost("phumantrua");
            $comchaytrua = $this->request->getPost("comchaytrua");
            $chaotrua = $this->request->getPost("chaotrua");
            $phuchaytrua = $this->request->getPost("phuchaytrua");
            $ghichu = $this->request->getPost("ghichu");

            if ($date < date('Y-m-d')) {
                $this->flash->warning("Bạn không được thêm dữ liệu vào ngày quá khứ");
                $this->dispatcher->forward([
                    'controller' => "food_order",
                    'action' => "new"
                ]);

            }
            else {
                $asql = "select * from bookmeal where date= '" . $date . "' and dept_code = $foodorderdeptId";
                $data = $this->db->query($asql)->numRows();
                if ($data != 0) {
                    $sql = "Update bookmeal SET lunch= $commantrua ,lunch_add=$phumantrua, lunch_veg=$comchaytrua,lunch_soup=$chaotrua,lunch_veg_add=$phuchaytrua,note='" . $ghichu . "' where date= '" . $date . "' and dept_code=$foodorderdeptId ";
                    //$sql = "Update food_quantity SET Comman_trua= $commantrua ,Phuman_trua=$phumantrua, Comchay_trua=$comchaytrua,Chao_trua=$chaotrua,Phuchay_trua=$phuchaytrua,Ghichu='" . $ghichu . "' where Ngaydat= '" . $date . "' and Id_dept=$foodorderdeptId ";
                } else {
                    $sql = "INSERT INTO bookmeal(date,user_code,dept_code,lunch,lunch_add,lunch_veg,lunch_soup,lunch_veg_add,note) VALUES  ('" . $date . "', '" . $nguoidat . "',$foodorderdeptId,$commantrua ,$phumantrua,$comchaytrua,$chaotrua,$phuchaytrua,'" . $ghichu . "')";
                    //$sql = "INSERT INTO food_quantity(Ngaydat,Trolydat,Id_dept,Comman_trua,Phuman_trua,Comchay_trua,Chao_trua,Phuchay_trua,Ghichu) VALUES  ('" . $date . "', '" . $nguoidat . "',$foodorderdeptId,$commantrua ,$phumantrua,$comchaytrua,$chaotrua,$phuchaytrua,'" . $ghichu . "')";
                }
                $this->db->execute($sql);
                $this->flash->success("Meal was created successfully");
                $this->dispatcher->forward([
                    'controller' => "food_order",
                    'action' => 'search'
                ]);
            }
        }

    }

    public function addchieuAction()
    {
        if ($this->request->isPost()) {
            $date = $this->request->getPost("date");
            $nguoidat = get_current_user();
            $foodorderdeptId = $this->request->getPost("foodorderdeptId");

            $commanchieu = $this->request->getPost("commanchieu");
            $phumanchieu = $this->request->getPost("phumanchieu");
            $phuchaychieu = $this->request->getPost("phuchaychieu");
             $ghichu = $this->request->getPost("ghichu");

            $asql = "select * from bookmeal where date= '" .$date. "' and dept_code = $foodorderdeptId";
            $data=$this->db->query($asql)->numRows();
            if ($data != 0)
            {
                $sql = "Update bookmeal SET dinner= $commanchieu ,dinner_add=$phumanchieu, dinner_veg_add=$phuchaychieu,note='".$ghichu."' where date= '" .$date. "' and dept_code=$foodorderdeptId " ;
            }
            else {
                $sql = "INSERT INTO bookmeal(date,user_code,dept_code,dinner,dinner_add,dinner_veg_add,note) VALUES  ('" . $date . "', '" . $nguoidat . "',$foodorderdeptId,$commanchieu ,$phumanchieu,$phuchaychieu,'" . $ghichu . "')";
            }
            $this->db->execute($sql);


            $this->flash->success("Meal was created successfully");

            $this->dispatcher->forward([
                'controller' => "food_order",
                'action' => 'search'
            ]);
        }

    }
    public function adddemAction()
    {

        if ($this->request->isPOST()) {
            $date = $this->request->getPost("date");
            $nguoidat = get_current_user();
            $foodorderdeptId = $this->request->getPost("foodorderdeptId");

            $mansuatdem = $this->request->getPost("mansuatdem");
            $chaysuatdem = $this->request->getPost("chaysuatdem");

            $ghichu = $this->request->getPost("ghichu");


            $asql = "select * from bookmeal where date= '" .$date. "' and dept_code = $foodorderdeptId";
            $data=$this->db->query($asql)->numRows();
            if ($data != 0)
            {
                $sql = "Update bookmeal SET supper= $mansuatdem ,supper_veg=$chaysuatdem,note='".$ghichu."' where date= '" .$date. "' and dept_code=$foodorderdeptId " ;
            }
            else {

                $sql = "INSERT INTO bookmeal(date,user_code,dept_code,supper,supper_veg,note) VALUES  ('" . $date . "', '" . $nguoidat . "',$foodorderdeptId,$mansuatdem ,$chaysuatdem,'" . $ghichu . "')";
            }
            $this->db->execute($sql);


            $this->flash->success("Meal was created successfully");
            $this->dispatcher->forward([
                'controller' => "food_order",
                'action' => 'search'
            ]);

        }

    }
    public function addcomkhachAction()
    {
               if ($this->request->isPost()) {
            $date = $this->request->getPost("date");
            $nguoidat = get_current_user();
            $foodorderdeptId = $this->request->getPost("foodorderdeptId");

            $donbanrieng = $this->request->getPost("donbanrieng");
            $anbuffet = $this->request->getPost("anbuffet");

            $ghichu = $this->request->getPost("ghichu");

            $asql = "select * from bookmeal where date= '" .$date. "' and dept_code = $foodorderdeptId";
            $data=$this->db->query($asql)->numRows();
            if ($data != 0)
            {
                $sql = "Update bookmeal SET separate_table= $donbanrieng ,buffet=$anbuffet,note='".$ghichu."' where date= '" .$date. "' and dept_code=$foodorderdeptId " ;
            }
            else {

                $sql = "INSERT INTO bookmeal(date,user_code,dept_code,separate_table,buffet,note) VALUES  ('" . $date . "', '" . $nguoidat . "',$foodorderdeptId,$donbanrieng ,$anbuffet,'" . $ghichu . "')";
            }
            $this->db->execute($sql);


            $this->flash->success("Meal was created successfully");

            $this->dispatcher->forward([
                'controller' => "food_order",
                'action' => 'search'
            ]);
        }

/*        $db = $this->db;
        $query = "SELECT  *  from meal_order";
        var_dump($db->fetchAll($query));
        $mealorder = new MealOrder();
        $result = new Simple(
            NULL,
            $mealorder,
            $mealorder->getReadConnection()->query($query)
        );
        var_dump($result[10]->getNote());

        try {
            $pdo = new PDO('mysql:host=127.0.0.1;dbname=jiahsin_app', 'root', '');
        } catch (Exception $ex) {
            echo "<h3> can not connect sql by PDO </h3>";
        }
        $query = "SELECT  *  from meal_order";
        $result = $pdo->query($query);
        var_dump($result->fetchAll());
        die();*/

    }
    public function phqlAction()
    {

        $sql="SELECT  *  from MealOrder";
        $query =$this->modelsManager->createQuery($sql);
        $result= $query->execute();
       //var_dump($result);
        foreach ( $result as $data  )
        {
           // var_dump($data->getDeptcode())+ "<br/>";
            echo $data->getDeptcode().'<br>';
        }


        die();
    }
    public function newAction()
    {

    }

    public function deleteAction($id)
    {

        $foodquantity = MealOrder::findFirstById($id);
        if (!$foodquantity) {
            $this->flash->error("Meal was not found");

            $this->dispatcher->forward([
                'controller' => "food_order",
                'action' => 'search'
            ]);

            return;
        }

        if (!$foodquantity->delete()) {

            foreach ($foodquantity->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "food_order",
                'action' => 'search'
            ]);

            return;
        }


//        $sql = "Delete FROM meal_order where meal_order.id= ".$id;
//        $this->db->execute($sql);


        $this->flash->success("Meal was deleted successfully");

        $this->dispatcher->forward([
            'controller' => "food_order",
            'action' => "search"
        ]);

/*        tap viet code

        $mealorder = MealOrder::findFirstbyId($id);
        if (!$mealorder) {
            $this->flash->error("Meal was not found !!! ");
            $this->dispatcher([
                "controller" => "food_order",
                "action" => "search"
            ]);
            return;
        }
        if (!$mealorder->delete()) {
            foreach ($mealorder->getMessages() as $message) {
                $this->flash->error();
            }

            $this->dispatcher->forward([
                'controler' => '',
                'action' => ''
            ]);
            return;
        }
        $this->flash->successful("deleteo OK");
        $this->dispatch->forward();*/

    }

    public function editAction($id)
    {

        //   $foodquantity = FoodQuantity::findFirstById($id);
        $mealorder = Bookmeal::findFirstByBm_id($id);
        if (!$mealorder) {
            return $this->response->redirect('jiahsin/food_order/search');
        }

/*        FOR TEST      if ($mealorder->date < date('Y-m-d')) {
            $this->flash->warning("Bạn không được chỉnh sửa dữ liệu của ngày quá khứ");

            $this->dispatcher->forward([
                'controller' => "food_order",
            ]);
        }*/

       $this->view->foodquantity = $mealorder;

        $this->tag->setDefault("foodorderdeptId", $mealorder->dept_code);
        $this->tag->setDefault("date", $mealorder->date);
        $this->tag->setDefault("nguoidat", $mealorder->user_code);

        $this->tag->setDefault("commantrua", $mealorder->lunch);
        $this->tag->setDefault("phumantrua", $mealorder->lunch_add);
        $this->tag->setDefault("comchaytrua", $mealorder->lunch_veg);
        $this->tag->setDefault("chaotrua", $mealorder->lunch_soup);
        $this->tag->setDefault("phuchaytrua", $mealorder->lunch_veg_add);
        $this->tag->setDefault("commanchieu", $mealorder->dinner);
        $this->tag->setDefault("phumanchieu", $mealorder->dinner_add);
        $this->tag->setDefault("phuchaychieu", $mealorder->dinner_veg_add);
        $this->tag->setDefault("mansuatdem", $mealorder->supper);
        $this->tag->setDefault("chaysuatdem", $mealorder->supper_veg);
        $this->tag->setDefault("donbanrieng", $mealorder->separate_table);
        $this->tag->setDefault("anbuffet", $mealorder->buffet);
        $this->tag->setDefault("ghichu", $mealorder->note);

    }

    public function exportexcelAction()
    {
        $excel = new PHPExcel();
        $styleTitle = array(
            'font' => array(
                'bold' => true,
//                'color' => array('rgb' => 'FF0000'),
                'size' => 20,
                'name' => 'Times New Roman'
            ),
            'alignment' => array(
                'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER
            )
        );

        $styleVer = array(
            'font' => array(
//                'bold'  => true,
//                'color' => array('rgb' => 'FF0000'),
//                'size'  => 20,
                'name' => 'Times New Roman'
            ),
            'alignment' => array(
                'vertical' => PHPExcel_Style_Alignment::VERTICAL_CENTER
            )
        );

        $styleHor = array(
            'font'  => array(
//                'bold'  => true,
//                'color' => array('rgb' => 'FF0000'),
//                'size'  => 20,
                'name'  => 'Times New Roman'
            ),
            'alignment' => array(
                'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER
            )
        );

        $styleBor = array(
            'borders' => array(
                'allborders' => array(
                    'style' => PHPExcel_Style_Border::BORDER_THIN
                )
            )
        );

        $excel->setActiveSheetIndex(0);
        $excel->getActiveSheet()->setTitle('FoodOrder');

        $excel->getActiveSheet()->setCellValue('A1', 'SỐ LƯỢNG SUẤT ĂN NGÀY '.date(  'd/m/Y'));
        $excel->getActiveSheet()->mergeCells('A1:Q1');
        $excel->getActiveSheet()->getStyle('A1:Q1')->applyFromArray($styleTitle);

        $excel->getActiveSheet()->setCellValue('A2', 'STT');
        $excel->getActiveSheet()->mergeCells('A2:A3');
        $excel->getActiveSheet()->getStyle('A2:A3')->applyFromArray($styleVer);
        $excel->getActiveSheet()->setCellValue('B2', 'Bộ Phận');
        $excel->getActiveSheet()->mergeCells('B2:B3');
        $excel->getActiveSheet()->getStyle('B2:B3')->applyFromArray($styleVer);
        $excel->getActiveSheet()->setCellValue('C2', 'Trợ Lý Báo Cơm');
        $excel->getActiveSheet()->mergeCells('C2:C3');
        $excel->getActiveSheet()->getStyle('C2:C3')->applyFromArray($styleVer);

        $excel->getActiveSheet()->setCellValue('D2', 'Trưa');
        $excel->getActiveSheet()->mergeCells('D2:I2');
        $excel->getActiveSheet()->getStyle('D2:I2')->applyFromArray($styleHor);
        $excel->getActiveSheet()->setCellValue('D3', 'Cơm Mặn');
        $excel->getActiveSheet()->setCellValue('E3', 'Phụ Mặn');
        $excel->getActiveSheet()->setCellValue('F3', 'Cơm Chay');
        $excel->getActiveSheet()->setCellValue('G3', 'Cháo');
        $excel->getActiveSheet()->setCellValue('H3', 'Phụ Chay');
        $excel->getActiveSheet()->setCellValue('I3', 'Tổng Cộng');

        $excel->getActiveSheet()->setCellValue('J2', 'Chiều');
        $excel->getActiveSheet()->mergeCells('J2:L2');
        $excel->getActiveSheet()->getStyle('J2:L2')->applyFromArray($styleHor);
        $excel->getActiveSheet()->setCellValue('J3', 'Cơm Mặn');
        $excel->getActiveSheet()->setCellValue('K3', 'Phụ Mặn');
        $excel->getActiveSheet()->setCellValue('L3', 'Phụ Chay');

        $excel->getActiveSheet()->setCellValue('M2', 'Đêm');
        $excel->getActiveSheet()->mergeCells('M2:N2');
        $excel->getActiveSheet()->getStyle('M2:N2')->applyFromArray($styleHor);
        $excel->getActiveSheet()->setCellValue('M3', ' Mặn');
        $excel->getActiveSheet()->setCellValue('N3', ' Chay');
        $excel->getActiveSheet()->setCellValue('O2', 'Cơm Khách');
        $excel->getActiveSheet()->mergeCells('O2:P2');
        $excel->getActiveSheet()->getStyle('O2:P2')->applyFromArray($styleHor);
        $excel->getActiveSheet()->setCellValue('O3', 'Dọn Bàn Riêng');
        $excel->getActiveSheet()->setCellValue('P3', 'Buffet');
        $excel->getActiveSheet()->setCellValue('Q2', 'Ghi chú');
        $excel->getActiveSheet()->mergeCells('Q2:Q3');
        $excel->getActiveSheet()->getStyle('Q2:Q2')->applyFromArray($styleVer);

        $excel->getActiveSheet()->getColumnDimension('A')->setWidth(4);
        $excel->getActiveSheet()->getColumnDimension('B')->setWidth(18);
        $excel->getActiveSheet()->getColumnDimension('C')->setWidth(15);

        $excel->getActiveSheet()->getColumnDimension('D')->setWidth(10);
        $excel->getActiveSheet()->getColumnDimension('E')->setWidth(10);
        $excel->getActiveSheet()->getColumnDimension('F')->setWidth(10);
        $excel->getActiveSheet()->getColumnDimension('G')->setWidth(10);
        $excel->getActiveSheet()->getColumnDimension('H')->setWidth(10);


        $excel->getActiveSheet()->getColumnDimension('I')->setWidth(10);
        $excel->getActiveSheet()->getColumnDimension('J')->setWidth(10);
        $excel->getActiveSheet()->getColumnDimension('K')->setWidth(10);
        $excel->getActiveSheet()->getColumnDimension('L')->setWidth(10);

        $excel->getActiveSheet()->getColumnDimension('M')->setWidth(6);
        $excel->getActiveSheet()->getColumnDimension('N')->setWidth(6);

        $excel->getActiveSheet()->getColumnDimension('O')->setWidth(14);
        $excel->getActiveSheet()->getColumnDimension('P')->setWidth(7);

        $excel->getActiveSheet()->getColumnDimension('Q')->setWidth(30);

        $x=4;
        $i=1;

//        for ($i=4; $i<10; $i++)
//        {
//            $excel->getActiveSheet()->setCellValue('A'.$i,$x);
//            $x++;
//        }

//        $foodquantity = FoodQuantity::find();s
        $foodquantity = $this->session->get('tblfood');
        foreach (  $foodquantity as $f)
        {
            $excel->getActiveSheet()->setCellValue('A'.$x,$i);
            $excel->getActiveSheet()->setCellValue('B'.$x,$f->name);
            $excel->getActiveSheet()->setCellValue('C'.$x,$f->getUserCode());

            $excel->getActiveSheet()->setCellValue('D'.$x,$f->getLunch());
            $excel->getActiveSheet()->setCellValue('E'.$x,$f->getLunchAdd());
            $excel->getActiveSheet()->setCellValue('F'.$x,$f->getLunchVeg());
            $excel->getActiveSheet()->setCellValue('G'.$x,$f->getLunchSoup());
            $excel->getActiveSheet()->setCellValue('H'.$x,$f->getLunchVegAdd());
            $sum_trua=$f->getLunch()+ $f->getLunchAdd() + $f->getLunchVeg() +$f->getLunchSoup() +$f->getLunchVegAdd() ;
            $excel->getActiveSheet()->setCellValue('I'.$x,$sum_trua);

            $excel->getActiveSheet()->setCellValue('J'.$x,$f->getDinner());
            $excel->getActiveSheet()->setCellValue('K'.$x,$f->getDinnerAdd());
            $excel->getActiveSheet()->setCellValue('L'.$x,$f->getDinnerVegAdd());

            $excel->getActiveSheet()->setCellValue('M'.$x,$f->getSupper());
            $excel->getActiveSheet()->setCellValue('N'.$x,$f->getSupperVeg());

            $excel->getActiveSheet()->setCellValue('O'.$x,$f->getSeparateTable());
            $excel->getActiveSheet()->setCellValue('P'.$x,$f->getBuffet());

            $excel->getActiveSheet()->setCellValue('Q'.$x,$f->getNote());

            $x++;
            $i++;
        }

        $excel->getActiveSheet()->setCellValue('A'.$x, 'Tổng Cột:');
        $excel->getActiveSheet()->mergeCells('A'.$x.':C'.$x);
        $excel->getActiveSheet()->setCellValue('D'.$x,'=SUM(D4:D'.($x-1).')');
        $excel->getActiveSheet()->getStyle('D'.$x,'=SUM(D4:D'.($x-1).')')->applyFromArray(
            [
                'font'  => array(
                    'bold'  => true,
                    'color' => array('rgb' => 'FF0000'),
//                'size'  => 20,
                    'name'  => 'Times New Roman'
                ),
            ]
        );
        $excel->getActiveSheet()->setCellValue('E'.$x,'=SUM(E4:E'.($x-1).')');
        $excel->getActiveSheet()->getStyle('E'.$x,'=SUM(E4:E'.($x-1).')')->applyFromArray(
            [
                'font'  => array(
                    'bold'  => true,
                    'color' => array('rgb' => 'FF0000'),
//                'size'  => 20,
                    'name'  => 'Times New Roman'
                ),
            ]
        );
        $excel->getActiveSheet()->setCellValue('F'.$x,'=SUM(F4:F'.($x-1).')');
        $excel->getActiveSheet()->getStyle('F'.$x,'=SUM(F4:F'.($x-1).')')->applyFromArray(
            [
                'font'  => array(
                    'bold'  => true,
                    'color' => array('rgb' => 'FF0000'),
//                'size'  => 20,
                    'name'  => 'Times New Roman'
                ),
            ]
        );
        $excel->getActiveSheet()->setCellValue('G'.$x,'=SUM(G4:G'.($x-1).')');
        $excel->getActiveSheet()->getStyle('G'.$x,'=SUM(G4:G'.($x-1).')')->applyFromArray(
            [
                'font'  => array(
                    'bold'  => true,
                    'color' => array('rgb' => 'FF0000'),
//                'size'  => 20,
                    'name'  => 'Times New Roman'
                ),
            ]
        );
        $excel->getActiveSheet()->setCellValue('H'.$x,'=SUM(H4:H'.($x-1).')');
        $excel->getActiveSheet()->getStyle('H'.$x,'=SUM(H4:H'.($x-1).')')->applyFromArray(
            [
                'font'  => array(
                    'bold'  => true,
                    'color' => array('rgb' => 'FF0000'),
//                'size'  => 20,
                    'name'  => 'Times New Roman'
                ),
            ]
        );

        $excel->getActiveSheet()->setCellValue('J'.$x,'=SUM(J4:J'.($x-1).')');
        $excel->getActiveSheet()->getStyle('J'.$x,'=SUM(J4:J'.($x-1).')')->applyFromArray(
            [
                'font'  => array(
                    'bold'  => true,
                    'color' => array('rgb' => 'FF0000'),
//                'size'  => 20,
                    'name'  => 'Times New Roman'
                ),
            ]
        );
        $excel->getActiveSheet()->setCellValue('K'.$x,'=SUM(K4:K'.($x-1).')');
        $excel->getActiveSheet()->getStyle('K'.$x,'=SUM(K4:K'.($x-1).')')->applyFromArray(
            [
                'font'  => array(
                    'bold'  => true,
                    'color' => array('rgb' => 'FF0000'),
//                'size'  => 20,
                    'name'  => 'Times New Roman'
                ),
            ]
        );
        $excel->getActiveSheet()->setCellValue('L'.$x,'=SUM(L4:L'.($x-1).')');
        $excel->getActiveSheet()->getStyle('L'.$x,'=SUM(L4:L'.($x-1).')')->applyFromArray(
            [
                'font'  => array(
                    'bold'  => true,
                    'color' => array('rgb' => 'FF0000'),
//                'size'  => 20,
                    'name'  => 'Times New Roman'
                ),
            ]
        );

        $excel->getActiveSheet()->setCellValue('M'.$x,'=SUM(M4:M'.($x-1).')');
        $excel->getActiveSheet()->getStyle('M'.$x,'=SUM(M4:M'.($x-1).')')->applyFromArray(
            [
                'font'  => array(
                    'bold'  => true,
                    'color' => array('rgb' => 'FF0000'),
//                'size'  => 20,
                    'name'  => 'Times New Roman'
                ),
            ]
        );
        $excel->getActiveSheet()->setCellValue('N'.$x,'=SUM(N4:N'.($x-1).')');
        $excel->getActiveSheet()->getStyle('N'.$x,'=SUM(N4:N'.($x-1).')')->applyFromArray(
            [
                'font'  => array(
                    'bold'  => true,
                    'color' => array('rgb' => 'FF0000'),
//                'size'  => 20,
                    'name'  => 'Times New Roman'
                ),
            ]
        );

        $excel->getActiveSheet()->getStyle('A'.$x)->applyFromArray(
            [
                'font'  => array(
                    'bold'  => true,
                    'color' => array('rgb' => 'FF0000'),
//                'size'  => 20,
                    'name'  => 'Times New Roman'
                ),
            ]
        );
        $x++;

        $excel->getActiveSheet()->setCellValue('A'.$x, 'Tổng Chung:');
        $excel->getActiveSheet()->mergeCells('A'.$x.':C'.$x);

        $excel->getActiveSheet()->mergeCells('D'.$x.':H'.$x);
        $excel->getActiveSheet()->getStyle('D'.$x.':H'.$x)->applyFromArray(
            [
                'font'  => array(
                    'bold'  => true,
                    'color' => array('rgb' => 'FF0000'),
//                'size'  => 20,
                    'name'  => 'Times New Roman'
                ),
                'alignment' => array(
                    'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER
                )
            ]
        );
        $excel->getActiveSheet()->mergeCells('J'.$x.':L'.$x);
        $excel->getActiveSheet()->getStyle('J'.$x.':L'.$x)->applyFromArray(
            [
                'font'  => array(
                    'bold'  => true,
                    'color' => array('rgb' => 'FF0000'),
//                'size'  => 20,
                    'name'  => 'Times New Roman'
                ),
                'alignment' => array(
                    'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER
                )
            ]
        );
        $excel->getActiveSheet()->mergeCells('M'.$x.':N'.$x);
        $excel->getActiveSheet()->getStyle('M'.$x.':N'.$x)->applyFromArray(
            [
                'font'  => array(
                    'bold'  => true,
                    'color' => array('rgb' => 'FF0000'),
//                'size'  => 20,
                    'name'  => 'Times New Roman'
                ),
                'alignment' => array(
                    'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER
                )
            ]

        );

        $excel->getActiveSheet()->setCellValue('D'.($x),'=SUM(D'.($x-1).':H'.($x-1).')');
        $excel->getActiveSheet()->setCellValue('J'.($x),'=SUM(J'.($x-1).':L'.($x-1).')');
        $excel->getActiveSheet()->setCellValue('M'.($x),'=SUM(M'.($x-1).':N'.($x-1).')');

        $excel->getActiveSheet()->getStyle('I4:I'.($x-1))->applyFromArray(
            [
                'font'  => array(
                    'bold'  => true,
                    'color' => array('rgb' => 'FF0000'),
//                'size'  => 20,
                    'name'  => 'Times New Roman'
                ),
            ]
        );
        $excel->getActiveSheet()->getStyle('A'.$x)->applyFromArray(
            [
                'font'  => array(
                    'bold'  => true,
                    'color' => array('rgb' => 'FF0000'),
//                'size'  => 20,
                    'name'  => 'Times New Roman'
                ),
            ]
        );
        $x++;

        //       $excel->getActiveSheet()->getStyle('A1')->getFill()->getStartColor()->setRGB('F28A8C');
        $excel->getActiveSheet()->getStyle('A1')->applyFromArray(
            array(
                'fill' => array(
                    'type' => PHPExcel_Style_Fill::FILL_SOLID,
                    'color' => array('rgb' => '83C75D')
                )
            )
        );


        $excel->getActiveSheet()->getStyle('D2:I3')->applyFromArray(
            array(
                'fill' => array(
                    'type' => PHPExcel_Style_Fill::FILL_SOLID,
                    'color' => array('rgb' => 'F9F400')
                )
            )
        );

        $excel->getActiveSheet()->getStyle('J2:L3')->applyFromArray(
            array(
                'fill' => array(
                    'type' => PHPExcel_Style_Fill::FILL_SOLID,
                    'color' => array('rgb' => '007F54')
                )
            )
        );


        $excel->getActiveSheet()->getStyle('M2:N3')->applyFromArray(
            array(
                'fill' => array(
                    'type' => PHPExcel_Style_Fill::FILL_SOLID,
                    'color' => array('rgb' => 'FF9933')
                )
            )
        );

        $excel->getActiveSheet()->getStyle('Q2:Q3')->applyFromArray(
            array(
                'fill' => array(
                    'type' => PHPExcel_Style_Fill::FILL_SOLID,
                    'color' => array('rgb' => 'D7D7D7')
                )
            )
        );

        $excel->getActiveSheet()->getStyle('O2:P3')->applyFromArray(
            array(
                'fill' => array(
                    'type' => PHPExcel_Style_Fill::FILL_SOLID,
                    'color' => array('rgb' => 'AF4A92')
                )
            )
        );

//      $excel->getActiveSheet()->getStyle('A2:Q9')->applyFromArray($styleBor);
        $excel->getActiveSheet()->getStyle(
            'A2:' .
            $excel->getActiveSheet()->getHighestColumn() .
            $excel->getActiveSheet()->getHighestRow()
        )->applyFromArray($styleBor);
        unset($styleBor);

        $x=$x+2;

        $excel->getActiveSheet()->setCellValue('A'.$x, 'Những Bộ Phận Chưa Đặt Cơm:');
        $excel->getActiveSheet()->mergeCells('A'.$x.':C'.$x);
        $excel->getActiveSheet()->getStyle('A'.$x.':C'.$x)->applyFromArray(
            [
                'font'  => array(
                    'bold'  => true,
                    'color' => array('rgb' => 'FF0000'),
//                'size'  => 20,
                    'name'  => 'Times New Roman'
                ),
                'alignment' => array(
                    'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER
                )
            ]
        );

        $count=Department::count();
        $date=$f->getDate();
   //     $date= $foodquantity->getDate();
        if($i<=$count) {
            if ($date == '') {
                $date = date('Y-m-d');
            }
            $missdept = "select name from department where id not in(select distinct department.id  from department,bookmeal where department.id = bookmeal.dept_code and date = '" . $date . "')";

//         $foodorderdept = new FoodOrderDepartment();
            $arrDept = $this->db->query($missdept)->fetchAll();


            $x = $x + 1;
            $stt = 1;
            foreach ($arrDept as $dept) {
                $excel->getActiveSheet()->setCellValue('B' . $x, $stt . ' ' . $dept[0]);
                $x = $x + 1;
                $stt++;
            }
        } //13082018
        $naziv = date("Ymd_his").".xlsx";

        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="' . $naziv . '"');
        header('Cache-Control: max-age=0');

//      $objWriter = PHPExcel_IOFactory::createWriter($excel, 'Excel5');
        $objWriter = new PHPExcel_Writer_Excel2007($excel);
        $objWriter->save('php://output'); // quan trong de mo len xem dc
//      $objWriter->save('./upload/'.$naziv);
        exit; // quan trong de mo len xem dc

        $this->session->remove('tblfood');

    }

//    public function requestAction()
//    {
//
//        $this->response->setJsonContent([
//        'frameword' =>'phalconphp',
//            'version' => [
//                '1',
//                '2',
//                '3'
//            ]
//
//        ]);
//        $this->flash->success("Meal was created successfully");
//        return $this->response->send();
//    }
    public function saveAction()
    {

        if (!$this->request->isPost()) {
            $this->dispatcher->forward([
                'controller' => "food_order",
                'action' => 'search'
            ]);

            return;
        }

        $id = $this->request->getPost("id");
        $foodquantity = MealOrder::findFirstById($id);

        if (!$foodquantity) {
            $this->flash->error("Meal does not exist " . $id);

            $this->dispatcher->forward([
                'controller' => "food_order",
                'action' => 'search'
            ]);

            return;
        }
//        $foodquantity->Ngaydat = $this->request->getPost("date");
//        $foodquantity->Trolydat = $this->request->getPost("nguoidat");
//        $foodquantity->Id_dept=$this->request->getPost("foodorderdeptId");

        $foodquantity->Comman_trua = $this->request->getPost("commantrua");
        $foodquantity->Phuman_trua = $this->request->getPost("phumantrua");
        $foodquantity->Comchay_trua=$this->request->getPost("comchaytrua");
        $foodquantity->Chao_trua = $this->request->getPost("chaotrua");
        $foodquantity->Phuchay_trua = $this->request->getPost("phuchaytrua");
        $foodquantity->Comman_chieu = $this->request->getPost("commanchieu");
        $foodquantity->Phuman_chieu = $this->request->getPost("phumanchieu");
        $foodquantity->Phuchay_chieu=$this->request->getPost("phuchaychieu");
        $foodquantity->Man_dem = $this->request->getPost("mansuatdem");
        $foodquantity->Chay_dem = $this->request->getPost("chaysuatdem");
        $foodquantity->Donbanrieng=$this->request->getPost("donbanrieng");
        $foodquantity->Buffet = $this->request->getPost("anbuffet");
        $foodquantity->Ghichu = $this->request->getPost("ghichu");

//
//        if (!$foodquantity->save()) {
//
//            foreach ($foodquantity->getMessages() as $message) {
//                $this->flash->error($message);
//            }
//
//            $this->dispatcher->forward([
//                'controller' => "food_order",
//                'action' => 'search'
//                //'params' => [$user->id]
//            ]);
//
//            return;
//        }
//
//        $date=$this->request->getPost("date");
//        $nguoidat=$this->request->getPost("nguoidat");
//        $foodorderdeptId=$this->request->getPost("foodorderdeptId");

     //   FOR TEST
//        $commantrua = $this->request->getPost("commantrua");
//        $phumantrua = $this->request->getPost("phumantrua");
//        $comchaytrua =$this->request->getPost("comchaytrua");
//        $chaotrua = $this->request->getPost("chaotrua");
//        $phuchaytrua = $this->request->getPost("phuchaytrua");
//        $commanchieu = $this->request->getPost("commanchieu");
//        $phumanchieu = $this->request->getPost("phumanchieu");
//        $phuchaychieu=$this->request->getPost("phuchaychieu");
//        $mansuatdem = $this->request->getPost("mansuatdem");
//        $chaysuatdem = $this->request->getPost("chaysuatdem");
//        $donbanrieng=$this->request->getPost("donbanrieng");
//        $anbuffet = $this->request->getPost("anbuffet");
//        $ghichu = $this->request->getPost("ghichu");

//      //  $sql = "Update food_quantity SET Ngaydat='2018-05-10',Trolydat='adsa',Id_dept=21,Comman_trua=$commantrua,Phuman_trua=$phumantrua,Comchay_trua=$comchaytrua,Chao_trua=$chaotrua,Phuchay_trua=$phuchaytrua,Comman_chieu=$commanchieu,Phuman_chieu=$phumanchieu,Phuchay_chieu=$phuchaychieu,Man_dem=$mansuatdem,Chay_dem=$chaysuatdem,Donbanrieng=$donbanrieng,Buffet=$anbuffet,Ghichu=$ghichu WHERE Id= ".$id;

        //$sql = "Update food_quantity SET Comman_trua= $commantrua ,Phuman_trua=$phumantrua, Comchay_trua=$comchaytrua,Chao_trua=$chaotrua,Phuchay_trua=$phuchaytrua,Comman_chieu=$commanchieu,Phuman_chieu=$phumanchieu,Phuchay_chieu=$phuchaychieu,Man_dem=$mansuatdem,Chay_dem=$chaysuatdem,Donbanrieng=$donbanrieng,Buffet=$anbuffet,Ghichu='".$ghichu."' WHERE Id= ".$id;
 //FOR TEST       $sql = "Update meal_order SET lunch= $commantrua ,lunch_add=$phumantrua, lunch_veg=$comchaytrua,lunch_soup=$chaotrua,lunch_veg_add=$phuchaytrua,dinner=$commanchieu,dinner_add=$phumanchieu,dinner_veg_add=$phuchaychieu,supper=$mansuatdem,supper_veg=$chaysuatdem,separate_table=$donbanrieng,buffet=$anbuffet,note='".$ghichu."' WHERE id= ".$id;
//        $this->db->update('food_quantity','Comman_trua,Phuman_trua,Comchay_trua,Chao_trua,Phuchay_trua,Comman_chieu,Phuman_chieu,Phuchay_chieu,Man_dem,Chay_dem,Donbanrieng,Buffet,Ghichu','\'$commantrua,$phumantrua,$comchaytrua,$chaotrua,$phuchaytrua,$commanchieu,$phumanchieu,$phuchaychieu,$mansuatdem,$chaysuatdem,$donbanrieng,$anbuffet,$ghichu\'');

 // FOR TEST       $this->db->execute($sql);

                if (!$foodquantity->save()) {

            foreach ($foodquantity->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "food_order",
                'action' => 'search'
                //'params' => [$user->id]
            ]);

            return;
        }

        $this->flash->success("Meal was updated successfully");

        $this->dispatcher->forward([
            'controller' => "food_order",
            'action' => 'search'
        ]);
    }
}

