<?php
 
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;


class AdministrativeController extends ControllerBase
{
    private $user;

    public function initialize()
    {
    //    $this->auth();
        parent::initialize();

        $this->view->unit = Unit::find([
            'columns' => 'code,name',
            'order' => 'name ASC'
        ]);

        $this->user = User::findFirstByCode($this->session->get('user-code'));

    }

    /**
     * Index action
     */
    public function indexAction()
    {
        $this->persistent->parameters = null;
    }

    /**
     * Searches for medicine_report
     */
    public function searchAction()
    {
        $numberPage = 1;
        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, 'MedicineStock', $_POST);
            $this->persistent->parameters = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = [];
        }
        $parameters["order"] = "id DESC";
        $extendConditions = 'quantity > 0';

        $medicine_stock = MedicineStock::find($this->addConditions($parameters, $extendConditions));
        if (count($medicine_stock) == 0) {
            $this->flash->notice("The search did not find any medicine stock");

            $this->dispatcher->forward([
                "controller" => "medicine_stock",
                "action" => "index"
            ]);

            return;
        }

        $paginator = new Paginator([
            'data' => $medicine_stock,
            'limit'=> 10,
            'page' => $numberPage
        ]);

        $this->view->page = $paginator->getPaginate();
    }

    /**
     * Create medicine_report_export
     */
    public function medicine_report_exportAction()
    {
        $this->view->disable();

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = [];
        }
        $parameters["order"] = "id DESC";
        $extendConditions = 'quantity > 0';

        $rez['rez'] = MedicineStock::find($this->addConditions($parameters, $extendConditions));
        $html = $this->view->getRender('reports', 'pdf_report', $rez);

        $pdf = new mPDF();

        $pdf->WriteHTML($html, 2);
        $br = rand(0, 100000);
        $ispis = "Medicine Report-".$br;

        $pdf->Output($ispis, "I");
    }

}
