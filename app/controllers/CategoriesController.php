<?php

use Phalcon\Paginator\Adapter\Model as Paginator;
use Phalcon\Mvc\Model\Criteria;


class CategoriesController extends ControllerBase
{

    public function initialize()
    {
        $this->auth();
    }
    public function indexAction()
    {
    }

    public function searchAction()
    {

   //     $this->auth();
        $numberPage = 1;
        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, 'Categories', $_POST);
            $this->persistent->parameters = $query->getParams();
        }
        else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = [];
        }
        $parameters["order"] = "id DESC";

       // $cate = Categories::find($parameters);
        $cate = Categories::find();
        if (count($cate) == 0) {
            $this->flash->notice("The search did not find any user");

            $this->dispatcher->forward([
                "controller" => "Categories",
                "action" => "index"
            ]);

            return;
        }

        $paginator = new Paginator([
            'data' => $cate,
            'limit'=> 5,
            'page' => $numberPage
        ]);

        $this->view->page = $paginator->getPaginate();

    }

    public function newAction()
    {

    }

    public function deleteAction($id)
    {

        $cate = Categories::findFirstByid($id);
        if (!$cate) {
            $this->flash->error("category was not found");

            $this->dispatcher->forward([
                'controller' => "Categories",
                'action' => 'index'
            ]);

            return;
        }

        if (!$cate->delete()) {

            foreach ($cate->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "Categories",
                'action' => 'search'
            ]);

            return;
        }

        $this->flash->success("category was deleted successfully");

        $this->dispatcher->forward([
            'controller' => "Categories",
            'action' => "search"
        ]);

    }

    public function createAction()
    {
        if (!$this->request->isPost()) {
            $this->dispatcher->forward([
                'controller' => "Categories",
                'action' => 'index'
            ]);

            return;
        }

        $cate = new Categories();

        $cate->setName($this->request->getPost("name")) ;
        $cate->setSlug($this->request->getPost("slug")) ;




        if (!$cate->save()) {
            foreach ($cate->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "Categories",
                'action' => 'new'
            ]);

            return;
        }

        $this->flash->success("Category was created successfully");

        $this->dispatcher->forward([
            'controller' => "Categories",
            'action' => 'search'
        ]);

    }

    public function editAction($id)
    {
        $cate = Categories::findFirstById($id);
        if (!$cate) {
            return $this->response->redirect('jiahsin/Categories/search');
        }
        $this->view->category = $cate;
        $this->tag->setDefault("name", $cate->name);
        $this->tag->setDefault("slug", $cate->slug);



    }

    public function saveAction()
    {

        if (!$this->request->isPost()) {
            $this->dispatcher->forward([
                'controller' => "Categories",
                'action' => 'index'
            ]);

            return;
        }

        $id = $this->request->getPost("id");
        $cate = Categories::findFirstByid($id);

        if (!$cate) {
            $this->flash->error("category does not exist " . $id);

            $this->dispatcher->forward([
                'controller' => "Categories",
                'action' => 'index'
            ]);

            return;
        }

        $cate->name = $this->request->getPost("name");
        $cate->slug = $this->request->getPost("slug");


        if (!$cate->save()) {

            foreach ($cate->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "Categories",
                'action' => 'search'
                //'params' => [$user->id]
            ]);

            return;
        }
        $this->flash->success("category was updated successfully");

        $this->dispatcher->forward([
            'controller' => "Categories",
            'action' => 'search'
        ]);
    }

}

