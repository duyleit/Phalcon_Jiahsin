<?php
 
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Mvc\View;


class AutoCompleteController extends ControllerBase
{
    public function initialize()
    {
        $this->auth();
        parent::initialize();
    }

    public function MedicineStockAction($input = null)
    {
        $this->view->disableLevel(
            View::LEVEL_MAIN_LAYOUT
        );

        $medicineBasics = MedicineBasic::find([
            //'columns' => 'code,name,unit_code,specification,approval_no,manufactory',
            'columns' => 'code,name',
            'conditions' => 'name LIKE "%' . $input . '%"',
            'order' => 'name ASC',
            "limit" => 5,
        ]);

        if ($medicineBasics){
            //    this code assumes that you have the ajax json_encoding handled elsewhere.

            $data = [];

            foreach ($medicineBasics as $medicineBasic) {
                $data[] = [
                    'name' => $medicineBasic->name,
                ];
            }

            echo json_encode($data);
        }

    }

}
