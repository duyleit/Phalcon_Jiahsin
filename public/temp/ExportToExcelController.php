<?php
//namespace App\Controllers;
//require '\vendor\php-excel\PHPExcel\IOFactory.php';
//require './vendor/php-excel/PHPExcel/IOFactory.php';
//require_once BASE_PATH . '/vendor/php-excel/PHPExcel/Autoloader.php';
//use App\PHPExcel\PHPExcel;
use Phalcon\Mvc\Model\Resultset\Simple;

class ExportToExcelController extends ControllerBase
{

    public function indexAction()
    {

        $excel = new PHPExcel();
        $styleTitle = array(
            'font'  => array(
                'bold'  => true,
//                'color' => array('rgb' => 'FF0000'),
                'size'  => 20,
                'name'  => 'Times New Roman'
               ),
          'alignment' => array(
        'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER
           )
        );

        $styleVer = array(
            'font'  => array(
//                'bold'  => true,
//                'color' => array('rgb' => 'FF0000'),
//                'size'  => 20,
                'name'  => 'Times New Roman'
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
           $excel->getActiveSheet()->setCellValue('B'.$x,$f->Name);
           $excel->getActiveSheet()->setCellValue('C'.$x,$f->getTrolydat());

           $excel->getActiveSheet()->setCellValue('D'.$x,$f->getCommanTrua());
           $excel->getActiveSheet()->setCellValue('E'.$x,$f->getPhumanTrua());
           $excel->getActiveSheet()->setCellValue('F'.$x,$f->getComchayTrua());
           $excel->getActiveSheet()->setCellValue('G'.$x,$f->getChaoTrua());
           $excel->getActiveSheet()->setCellValue('H'.$x,$f->getPhuchayTrua());
           $sum_trua=$f->getCommanTrua()+ $f->getPhumanTrua() + $f->getComchayTrua() +$f->getChaoTrua() +$f->getPhuchayTrua() ;
           $excel->getActiveSheet()->setCellValue('I'.$x,$sum_trua);

           $excel->getActiveSheet()->setCellValue('J'.$x,$f->getCommanChieu());
           $excel->getActiveSheet()->setCellValue('K'.$x,$f->getPhumanChieu());
           $excel->getActiveSheet()->setCellValue('L'.$x,$f->getPhuchayChieu());

           $excel->getActiveSheet()->setCellValue('M'.$x,$f->getManDem());
           $excel->getActiveSheet()->setCellValue('N'.$x,$f->getChayDem());

           $excel->getActiveSheet()->setCellValue('O'.$x,$f->getDonbanrieng());
           $excel->getActiveSheet()->setCellValue('P'.$x,$f->getBuffet());

           $excel->getActiveSheet()->setCellValue('Q'.$x,$f->getGhichu());

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

        $count=FoodOrderDepartment::count();
        $date=$this->request->getPost("date");
        if($i<$count)
        {
            if($date == '') {
                $date= date('Y-m-d');
            }
            $missdept="select NAME from food_order_department where Id not in(select distinct food_order_department.Id  from food_order_department,food_quantity where food_order_department.Id=food_quantity.Id_dept and Ngaydat = '".$date."')";

//         $foodorderdept = new FoodOrderDepartment();
           $arrDept =$this->db->query($missdept)->fetchAll();
        }

        $x=$x+1;
        foreach ($arrDept as $dept)
        {
            $excel->getActiveSheet()->setCellValue('A'.$x,$dept[0]);
            $x=$x+1;
        }

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



}

