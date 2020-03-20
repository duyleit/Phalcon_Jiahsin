<?php
 
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;


class MedicineStockController extends ControllerBase
{
    private $user;

    public function initialize()
    {
        $this->auth();
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
     * Searches for medicine_stock
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
     * Displays the creation form
     */
    public function newAction()
    {
        $this->tag->setDefault("user_code", $this->session->get('user-code'));
        $this->tag->setDefault("min_stock", '0');

    }

    /**
     * Edits a medicine_stock
     *
     * @param string $id
     */
    public function editAction($id)
    {
        if (!$this->request->isPost()) {

            $medicine_stock = MedicineStock::findFirstByid($id);
            if (!$medicine_stock) {
                $this->flash->error("medicine stock was not found");

                $this->dispatcher->forward([
                    'controller' => "medicine_stock",
                    'action' => 'index'
                ]);

                return;
            }

            $this->view->id = $medicine_stock->id;

            $this->tag->setDefault("id", $medicine_stock->id);
            $this->tag->setDefault("user_code", $medicine_stock->user_code);
            $this->tag->setDefault("code", $medicine_stock->code);
            $this->tag->setDefault("name", $medicine_stock->name);
            $this->tag->setDefault("category", $medicine_stock->category);
            $this->tag->setDefault("unit_code", $medicine_stock->unit_code);
            $this->tag->setDefault("quantity", $medicine_stock->quantity);
            $this->tag->setDefault("price", $medicine_stock->price);
            $this->tag->setDefault("amount", $medicine_stock->amount);
            $this->tag->setDefault("specification", $medicine_stock->specification);
            $this->tag->setDefault("approval_no", $medicine_stock->approval_no);
            $this->tag->setDefault("mfg_date", $medicine_stock->mfg_date);
            $this->tag->setDefault("exp_date", $medicine_stock->exp_date);
            $this->tag->setDefault("min_stock", $medicine_stock->min_stock);
            $this->tag->setDefault("forbidden", $medicine_stock->forbidden);
            $this->tag->setDefault("special", $medicine_stock->special);
            $this->tag->setDefault("manufactory", $medicine_stock->manufactory);
            $this->tag->setDefault("note", $medicine_stock->note);
            
        }
    }

    /**
     * Creates a new medicine_stock
     */
    public function createAction()
    {
        if (!$this->request->isPost()) {
            $this->dispatcher->forward([
                'controller' => "medicine_stock",
                'action' => 'index'
            ]);

            return;
        }

        $medicineBasic = MedicineBasic::findFirst([
            'columns' => 'code,unit_code,specification,approval_no,manufactory',
            'conditions' => 'name = "' . $this->request->getPost("name") . '"',
        ]);

        $medicine_stock = new MedicineStock();
        $medicine_stock->user_code = $this->session->get('user-code');
        $medicine_stock->code = $medicineBasic->code ;
        $medicine_stock->name = $this->request->getPost("name");
        //$medicine_stock->category = $this->request->getPost("category");
        $medicine_stock->unit_code = $medicineBasic->unit_code ;
        $medicine_stock->quantity = $this->request->getPost("quantity");
        $medicine_stock->price = $this->request->getPost("price");
        $medicine_stock->amount = $medicine_stock->quantity * $medicine_stock->price;
        $medicine_stock->specification = $medicineBasic->specification;
        $medicine_stock->approval_no = $medicineBasic->approval_no;
        $medicine_stock->mfg_date = $this->request->getPost("mfg_date");
        $medicine_stock->exp_date = $this->request->getPost("exp_date");
        //$medicine_stock->min_stock = $this->request->getPost("min_stock");
        $medicine_stock->forbidden = $this->request->getPost("forbidden");
        $medicine_stock->special = $this->request->getPost("special");
        $medicine_stock->manufactory = $medicineBasic->manufactory;
        $medicine_stock->note = $this->request->getPost("note");
        

        if (!$medicine_stock->save()) {
            foreach ($medicine_stock->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "medicine_stock",
                'action' => 'new'
            ]);

            return;
        }

        $this->flash->success("medicine stock was created successfully");

        $this->dispatcher->forward([
            'controller' => "medicine_stock",
            'action' => 'index'
        ]);
    }

    /**
     * Saves a medicine_stock edited
     *
     */
    public function saveAction()
    {

        if (!$this->request->isPost()) {
            $this->dispatcher->forward([
                'controller' => "medicine_stock",
                'action' => 'index'
            ]);

            return;
        }

        $id = $this->request->getPost("id");
        $medicine_stock = MedicineStock::findFirstByid($id);

        if (!$medicine_stock) {
            $this->flash->error("medicine stock does not exist " . $id);

            $this->dispatcher->forward([
                'controller' => "medicine_stock",
                'action' => 'index'
            ]);

            return;
        }

        $medicine_stock->user_code = $this->request->getPost("user_code");
        $medicine_stock->code = $this->request->getPost("code");
        $medicine_stock->name = $this->request->getPost("name");
        $medicine_stock->category = $this->request->getPost("category");
        $medicine_stock->unit = $this->request->getPost("unit");
        $medicine_stock->quantity = $this->request->getPost("quantity");
        $medicine_stock->price = $this->request->getPost("price");
        $medicine_stock->amount = $this->request->getPost("amount");
        $medicine_stock->specification = $this->request->getPost("specification");
        $medicine_stock->approval_no = $this->request->getPost("approval_no");
        $medicine_stock->mfg_date = $this->request->getPost("mfg_date");
        $medicine_stock->exp_date = $this->request->getPost("exp_date");
        $medicine_stock->min_stock = $this->request->getPost("min_stock");
        $medicine_stock->forbidden = $this->request->getPost("forbidden");
        $medicine_stock->special = $this->request->getPost("special");
        $medicine_stock->manufactory = $this->request->getPost("manufactory");
        $medicine_stock->note = $this->request->getPost("note");
        

        if (!$medicine_stock->save()) {

            foreach ($medicine_stock->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "medicine_stock",
                'action' => 'edit',
                'params' => [$medicine_stock->id]
            ]);

            return;
        }

        $this->flash->success("medicine stock was updated successfully");

        $this->dispatcher->forward([
            'controller' => "medicine_stock",
            'action' => 'index'
        ]);
    }

    /**
     * Deletes a medicine_stock
     *
     * @param string $id
     */
    public function deleteAction($id)
    {
        $medicine_stock = MedicineStock::findFirstByid($id);
        if (!$medicine_stock) {
            $this->flash->error("medicine stock was not found");

            $this->dispatcher->forward([
                'controller' => "medicine_stock",
                'action' => 'index'
            ]);

            return;
        }

        if (!$medicine_stock->delete()) {

            foreach ($medicine_stock->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "medicine_stock",
                'action' => 'search'
            ]);

            return;
        }

        $this->flash->success("medicine stock was deleted successfully");

        $this->dispatcher->forward([
            'controller' => "medicine_stock",
            'action' => "index"
        ]);
    }

}
