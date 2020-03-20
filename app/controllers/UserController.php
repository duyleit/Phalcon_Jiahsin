<?php
 
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;


class UserController extends ControllerBase
{
    public function initialize()
    {
        $this->auth();
        parent::initialize();

        $this->view->role = Role::find([
            'columns' => 'code,name',
            'order' => 'name ASC'
        ]);

        $this->view->company = Company::find([
            'columns' => 'code,name',
            'order' => 'name ASC'
        ]);

        $this->view->department = Department::find([
            'columns' => 'code,name',
            'order' => 'name ASC'
        ]);

        $this->view->position = Position::find([
            'columns' => 'code,name',
            'order' => 'name ASC'
        ]);
    }

    /**
     * Index action
     */
    public function indexAction()
    {
        $this->persistent->parameters = null;
    }

    /**
     * Searches for user
     */
    public function searchAction()
    {
        $numberPage = 1;
        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, 'User', $_POST);
            $this->persistent->parameters = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = [];
        }
        $parameters["order"] = "id DESC";

        $user = User::find($parameters);
        if (count($user) == 0) {
            $this->flash->notice("The search did not find any user");

            $this->dispatcher->forward([
                "controller" => "user",
                "action" => "index"
            ]);

            return;
        }

        $paginator = new Paginator([
            'data' => $user,
            'limit'=> 10,
            'page' => $numberPage
        ]);

        $this->view->page = $paginator->getPaginate();
    }

    /**
    *  Area test
    **/
    public  function testAction()
    {
          var_dump(1111);die;
    }


    /**
     * Displays the creation form
     */
    public function newAction()
    {

    }

    /**
     * Edits a user
     *
     * @param string $id
     */
    public function editAction($id)
    {
        if (!$this->request->isPost()) {

            $user = User::findFirstByid($id);
            if (!$user) {
                $this->flash->error("user was not found");

                $this->dispatcher->forward([
                    'controller' => "user",
                    'action' => 'index'
                ]);

                return;
            }

            $this->view->id = $user->id;

            $this->tag->setDefault("id", $user->id);
            $this->tag->setDefault("code", $user->code);
            $this->tag->setDefault("pass", '');
            $this->tag->setDefault("fullname", $user->fullname);
            $this->tag->setDefault("role_code", $user->role_code);
            $this->tag->setDefault("com_code", $user->com_code);
            $this->tag->setDefault("dept_code", $user->dept_code);
            $this->tag->setDefault("posi_code", $user->posi_code);
            $this->tag->setDefault("email", $user->email);
            $this->tag->setDefault("phone_extend", $user->phone_extend);
            $this->tag->setDefault("about", $user->about);
            $this->tag->setDefault("status", $user->status);
            
        }
    }

    /**
     * Creates a new user
     */
    public function createAction()
    {
        if (!$this->request->isPost()) {
            $this->dispatcher->forward([
                'controller' => "user",
                'action' => 'index'
            ]);

            return;
        }

        $user = new User();
        $user->code = $this->request->getPost("code");
        $user->pass = $this->security->hash($this->request->getPost("pass"));
        $user->fullname = $this->request->getPost("fullname");
        $user->role_code = $this->request->getPost("role_code");
        $user->com_code = $this->request->getPost("com_code");
        $user->dept_code = $this->request->getPost("dept_code");
        $user->posi_code = $this->request->getPost("posi_code");
        $user->email = $this->request->getPost("email", "email");
        $user->phone_extend = $this->request->getPost("phone_extend");
        $user->about = $this->request->getPost("about");
        $user->status = $this->request->getPost("status");
        

        if (!$user->save()) {
            foreach ($user->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "user",
                'action' => 'new'
            ]);

            return;
        }

        $this->flash->success("user was created successfully");

        $this->dispatcher->forward([
            'controller' => "user",
            'action' => 'index'
        ]);
    }

    /**
     * Saves a user edited
     *
     */
    public function saveAction()
    {

        if (!$this->request->isPost()) {
            $this->dispatcher->forward([
                'controller' => "user",
                'action' => 'index'
            ]);

            return;
        }

        $id = $this->request->getPost("id");
        $user = User::findFirstByid($id);

        if (!$user) {
            $this->flash->error("user does not exist " . $id);

            $this->dispatcher->forward([
                'controller' => "user",
                'action' => 'index'
            ]);

            return;
        }

        $user->code = $this->request->getPost("code");
        if ($this->request->getPost("pass")!='')
            $user->pass = $this->security->hash($this->request->getPost("pass"));
        $user->fullname = $this->request->getPost("fullname");
        $user->role_code = $this->request->getPost("role_code");
        $user->com_code = $this->request->getPost("com_code");
        $user->dept_code = $this->request->getPost("dept_code");
        $user->posi_code = $this->request->getPost("posi_code");
        $user->email = $this->request->getPost("email", "email");
        $user->phone_extend = $this->request->getPost("phone_extend");
        $user->about = $this->request->getPost("about");
        $user->status = $this->request->getPost("status");
        

        if (!$user->save()) {

            foreach ($user->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "user",
                'action' => 'edit',
                'params' => [$user->id]
            ]);

            return;
        }

        $this->flash->success("user was updated successfully");

        $this->dispatcher->forward([
            'controller' => "user",
            'action' => 'index'
        ]);
    }

    /**
     * Deletes a user
     *
     * @param string $id
     */
    public function deleteAction($id)
    {
        $user = User::findFirstByid($id);
        if (!$user) {
            $this->flash->error("user was not found");

            $this->dispatcher->forward([
                'controller' => "user",
                'action' => 'index'
            ]);

            return;
        }

        if (!$user->delete()) {

            foreach ($user->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "user",
                'action' => 'search'
            ]);

            return;
        }

        $this->flash->success("user was deleted successfully");

        $this->dispatcher->forward([
            'controller' => "user",
            'action' => "search"
        ]);
    }

}
