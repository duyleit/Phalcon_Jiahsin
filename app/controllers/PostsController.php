<?php

use Phalcon\Paginator\Adapter\Model as Paginator;
use Phalcon\Mvc\Model\Criteria;


class PostsController extends ControllerBase
{
    public function initialize()
    {
        $this->view->categories = Categories::find([
            'columns' => 'id,name',
            'order' => 'name ASC'
        ]);
    }

    public function indexAction()
    {
     //   $posts = Posts::findFirstById(2);
     //   $posts = Posts::find("id = 2");
          $posts=Posts::find();
     //   $posts->setTitle("test 16032019");
          $this->view->posts=$posts;

//        $db = $this->db;
//        $sql="select * from posts";
//        $posts= $db->fetchAll($sql);
//        foreach ($posts as $post)
//        {
//            echo 'id: ' . $post->id. 'title: ' . $post->title;
//        }
//        $this->view->disable();


    }

    public  function uploadAction()
    {
        if (empty($_FILES['file']))
        {
            exit();
        }
        $newfilename=$_FILES["file"]["name"];
        $destinationFilePath = './upload/blog/images/'.$newfilename;
        if(!move_uploaded_file($_FILES['file']['tmp_name'], $destinationFilePath)){
          echo 'error';
        }
        else{
            echo $destinationFilePath;

        }

    }

    public function searchAction()
    {
        $this->auth();
        $numberPage = 1;
        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, 'Posts', $_POST);
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

        $post = Posts::find($parameters);
        if (count($post) == 0) {
            $this->flash->notice("The search did not find any user");

            $this->dispatcher->forward([
                "controller" => "posts",
                "action" => "index"
            ]);

            return;
        }

        $paginator = new Paginator([
            'data' => $post,
            'limit'=> 4,
            'page' => $numberPage
        ]);

        $this->view->page = $paginator->getPaginate();
    }
    public function newAction()
    {
        //$this->view->form = PostsForm();

    }

    public function editAction($id)
    {
         $post = Posts::findFirstById($id);
        if (!$post) {
            return $this->response->redirect('jiahsin/posts/search');
        }
        $this->view->post = $post;
        $this->tag->setDefault("id", $post->id);
        $this->tag->setDefault("title", $post->title);
        $this->tag->setDefault("content", $post->content);
//      $this->tag->setDefault("category_code", $post->categoriesId);
//      $this->tag->setDefault("slug", $post->slug);
//      $this->tag->setDefault("tags", $post->tags);


    }

    public function deleteAction($id)
    {

        $post = Posts::findFirstByid($id);
        if (!$post) {
            $this->flash->error("post was not found");

            $this->dispatcher->forward([
                'controller' => "posts",
                'action' => 'index'
            ]);

            return;
        }

        if (!$post->delete()) {

            foreach ($post->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "posts",
                'action' => 'search'
            ]);

            return;
        }

        $this->flash->success("post was deleted successfully");

        $this->dispatcher->forward([
            'controller' => "posts",
            'action' => "search"
        ]);

    }

    public function createAction()
    {
        if (!$this->request->isPost()) {
            $this->dispatcher->forward([
                'controller' => "posts",
                'action' => 'index'
            ]);

            return;
        }

        $post = new Posts();
// bo vi bao loi
//        $post->title = $this->request->getPost("title");
//        $post->content = $this->request->getPost("content");
//        $post->setCategoriesId($this->request->getPost("categoriesId"));
//        $post->slug = $this->request->getPost("slug");
//        $post->tags = $this->request->getPost("tags");
//        $post->numberViews=1;
//        $post->setCreated(time());
//        $post->userId = $this->session->get('user-code');



        if (!$post->save()) {
            foreach ($post->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "posts",
                'action' => 'new'
            ]);

            return;
        }

        $this->flash->success("post was created successfully");

        $this->dispatcher->forward([
            'controller' => "posts",
            'action' => 'search'
        ]);

    }
    public function saveAction()
    {

        if (!$this->request->isPost()) {
            $this->dispatcher->forward([
                'controller' => "posts",
                'action' => 'index'
            ]);

            return;
        }

        $id = $this->request->getPost("id");
        $post = Posts::findFirstByid($id);

        if (!$post) {
            $this->flash->error("post does not exist " . $id);

            $this->dispatcher->forward([
                'controller' => "post",
                'action' => 'index'
            ]);

            return;
        }

/*        $user->code = $this->request->getPost("code");
        if ($this->request->getPost("pass") != '')
            $user->pass = $this->security->hash($this->request->getPost("pass"));
        $user->fullname = $this->request->getPost("fullname");
        $user->role_code = $this->request->getPost("role_code");
        $user->com_code = $this->request->getPost("com_code");
        $user->dept_code = $this->request->getPost("dept_code");
        $user->posi_code = $this->request->getPost("posi_code");
        $user->email = $this->request->getPost("email", "email");
        $user->phone_extend = $this->request->getPost("phone_extend");
        $user->about = $this->request->getPost("about");
        $user->status = $this->request->getPost("status");*/

        $post->title = $this->request->getPost("title");
        $post->content = $this->request->getPost("content");
//        $post->setCategoriesId($this->request->getPost("categoriesId"));
//        $post->slug = $this->request->getPost("slug");
//        $post->tags = $this->request->getPost("tags");
        //$post->numberViews=2;
       // $post->setCreated(time());
       // $post->userId = $this->session->get('user-code');

        if (!$post->save()) {

            foreach ($post->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "posts",
                'action' => 'search'
                //'params' => [$user->id]
            ]);

            return;
        }
        $this->flash->success("post was updated successfully");

        $this->dispatcher->forward([
            'controller' => "posts",
            'action' => 'search'
        ]);

    }
}

