<?php
 
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;


class MedicineBasicController extends ControllerBase
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
     * Searches for medicine_basic
     */
    public function searchAction()
    {
        $numberPage = 1;
        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, 'MedicineBasic', $_POST);
            $this->persistent->parameters = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = [];
        }
        $parameters["order"] = "id";

        $medicine_basic = MedicineBasic::find($parameters);
        if (count($medicine_basic) == 0) {
            $this->flash->notice("The search did not find any medicine basic");

            $this->dispatcher->forward([
                "controller" => "medicine_basic",
                "action" => "index"
            ]);

            return;
        }

        $paginator = new Paginator([
            'data' => $medicine_basic,
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

    }

    /**
     * Edits a medicine_basic
     *
     * @param string $id
     */
    public function editAction($id)
    {
        if (!$this->request->isPost()) {

            $medicine_basic = MedicineBasic::findFirstByid($id);
            if (!$medicine_basic) {
                $this->flash->error("medicine basic was not found");

                $this->dispatcher->forward([
                    'controller' => "medicine_basic",
                    'action' => 'index'
                ]);

                return;
            }

            $this->view->id = $medicine_basic->id;

            $this->tag->setDefault("id", $medicine_basic->id);
            $this->tag->setDefault("code", $medicine_basic->code);
            $this->tag->setDefault("name", $medicine_basic->name);
            $this->tag->setDefault("unit_code", $medicine_basic->unit_code);
            $this->tag->setDefault("specification", $medicine_basic->specification);
            $this->tag->setDefault("approval_no", $medicine_basic->approval_no);
            $this->tag->setDefault("manufactory", $medicine_basic->manufactory);
            $this->tag->setDefault("min_stock", $medicine_basic->min_stock);

        }
    }

    /**
     * Creates a new medicine_basic
     */
    public function createAction()
    {
        if (!$this->request->isPost()) {
            $this->dispatcher->forward([
                'controller' => "medicine_basic",
                'action' => 'index'
            ]);

            return;
        }

        $medicine_basic = new MedicineBasic();
        $medicine_basic->code = $this->request->getPost("code");
        $medicine_basic->name = $this->request->getPost("name");
        $medicine_basic->unit_code = $this->request->getPost("unit_code");
        $medicine_basic->specification = $this->request->getPost("specification");
        $medicine_basic->approval_no = $this->request->getPost("approval_no");
        $medicine_basic->manufactory = $this->request->getPost("manufactory");
        $medicine_basic->min_stock = $this->request->getPost("min_stock");
        

        if (!$medicine_basic->save()) {
            foreach ($medicine_basic->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "medicine_basic",
                'action' => 'new'
            ]);

            return;
        }

        $this->flash->success("Medicine basic was created successfully");

        $this->dispatcher->forward([
            'controller' => "medicine_basic",
            'action' => 'index'
        ]);
    }

    /**
     * Saves a medicine_basic edited
     *
     */
    public function saveAction()
    {

        if (!$this->request->isPost()) {
            $this->dispatcher->forward([
                'controller' => "medicine_basic",
                'action' => 'index'
            ]);

            return;
        }

        $id = $this->request->getPost("id");
        $medicine_basic = MedicineBasic::findFirstByid($id);

        if (!$medicine_basic) {
            $this->flash->error("medicine_basic does not exist " . $id);

            $this->dispatcher->forward([
                'controller' => "medicine_basic",
                'action' => 'index'
            ]);

            return;
        }

        $medicine_basic->code = $this->request->getPost("code");
        $medicine_basic->name = $this->request->getPost("name");
        $medicine_basic->unit_code = $this->request->getPost("unit_code");
        $medicine_basic->specification = $this->request->getPost("specification");
        $medicine_basic->approval_no = $this->request->getPost("approval_no");
        $medicine_basic->manufactory = $this->request->getPost("manufactory");
        

        if (!$medicine_basic->save()) {

            foreach ($medicine_basic->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "medicine_basic",
                'action' => 'edit',
                'params' => [$medicine_basic->id]
            ]);

            return;
        }

        $this->flash->success("medicine basic was updated successfully");

        $this->dispatcher->forward([
            'controller' => "medicine_basic",
            'action' => 'index'
        ]);
    }

    /**
     * Deletes a medicine_basic
     *
     * @param string $id
     */
    public function deleteAction($id)
    {
        $medicine_basic = MedicineBasic::findFirstByid($id);
        if (!$medicine_basic) {
            $this->flash->error("medicine basic was not found");

            $this->dispatcher->forward([
                'controller' => "medicine_basic",
                'action' => 'index'
            ]);

            return;
        }

        if (!$medicine_basic->delete()) {

            foreach ($medicine_basic->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "medicine_basic",
                'action' => 'search'
            ]);

            return;
        }

        $this->flash->success("medicine basic was deleted successfully");

        $this->dispatcher->forward([
            'controller' => "medicine_basic",
            'action' => "index"
        ]);
    }

}
