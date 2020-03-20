<?php
 
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;


class MeetingRoomBookingController extends ControllerBase
{
    private $user;

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

        $this->view->room = Room::find([
            'columns' => 'code,name',
            'order' => 'name ASC'
        ]);

        $this->user = User::findFirstByCode($this->session->get('user-code'));

        //$this->assets->addCss("");
        //$this->assets->addJs("");
    }

    /**
     * Index action
     */
    public function indexAction()
    {
        $this->persistent->parameters = null;
    }

    /**
     * Searches for meeting_room_booking
     */
    public function searchAction()
    {
        $numberPage = 1;
        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, 'MeetingRoomBooking', $_POST);
            $this->persistent->parameters = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = [];
        }
        $parameters["order"] = "id DESC";
        $extendConditions = 'com_code LIKE "' . $this->session->get('user-com_code') . '" AND status >= 1';

       $meeting_room_booking = MeetingRoomBooking::find($this->addConditions($parameters, $extendConditions));
       //   $meeting_room_booking = MeetingRoomBooking::find($parameters);
        if (count($meeting_room_booking) == 0) {
            $this->flash->notice("The search did not find any meeting room booking");

            $this->dispatcher->forward([
                "controller" => "meeting_room_booking",
                "action" => "index"
            ]);

            return;
        }

        $paginator = new Paginator([
            'data' => $meeting_room_booking,
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
        $this->tag->setDefault("user_code", $this->user->code);
        $this->tag->setDefault("com_code", $this->user->com_code);
        $this->tag->setDefault("dept_code", $this->user->dept_code);
    }

    /**
     * Edits a meeting_room_booking
     *
     * @param string $id
     */
    public function editAction($id)
    {
        if (!$this->request->isPost()) {

            $meeting_room_booking = MeetingRoomBooking::findFirstByid($id);
            if (!$meeting_room_booking) {
                $this->flash->error("meeting_room_booking was not found");

                $this->dispatcher->forward([
                    'controller' => "meeting_room_booking",
                    'action' => 'index'
                ]);

                return;
            }

            $this->view->id = $meeting_room_booking->id;

            $this->tag->setDefault("id", $meeting_room_booking->id);
            $this->tag->setDefault("user_code", $meeting_room_booking->user_code);
            $this->tag->setDefault("com_code", $meeting_room_booking->com_code);
            $this->tag->setDefault("dept_code", $meeting_room_booking->dept_code);
            $this->tag->setDefault("room_code", $meeting_room_booking->room_code);
            $this->tag->setDefault("presiding", $meeting_room_booking->presiding);
            $this->tag->setDefault("title", $meeting_room_booking->title);
            $this->tag->setDefault("content", $meeting_room_booking->content);
            $this->tag->setDefault("start", $meeting_room_booking->start);
            $this->tag->setDefault("end", $meeting_room_booking->end);
            $this->tag->setDefault("status", $meeting_room_booking->status);
            
        }
    }

    /**
     * Creates a new meeting_room_booking
     */
    public function createAction()
    {
        if (!$this->request->isPost()) {
            $this->dispatcher->forward([
                'controller' => "meeting_room_booking",
                'action' => 'index'
            ]);

            return;
        }

        $meeting_room_booking = new MeetingRoomBooking();
        $meeting_room_booking->user_code = $this->session->get("user-code");
        $meeting_room_booking->com_code = $this->request->getPost("com_code");
        $meeting_room_booking->dept_code = $this->request->getPost("dept_code");
        $meeting_room_booking->room_code = $this->request->getPost("room_code");
        $meeting_room_booking->presiding = $this->request->getPost("presiding");
        $meeting_room_booking->title = $this->request->getPost("title");
        $meeting_room_booking->content = $this->request->getPost("content");
        $meeting_room_booking->start = $this->request->getPost("start");
        $meeting_room_booking->end = $this->request->getPost("end");
        $meeting_room_booking->status = $this->request->getPost("status");
        

        if (!$meeting_room_booking->save()) {
            foreach ($meeting_room_booking->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "meeting_room_booking",
                'action' => 'new'
            ]);

            return;
        }

        $this->flash->success("Meeting room booking was created successfully");

        $this->dispatcher->forward([
            'controller' => "meeting_room_booking",
            'action' => 'index'
        ]);
    }

    /**
     * Saves a meeting_room_booking edited
     *
     */
    public function saveAction()
    {

        if (!$this->request->isPost()) {
            $this->dispatcher->forward([
                'controller' => "meeting_room_booking",
                'action' => 'index'
            ]);

            return;
        }

        $id = $this->request->getPost("id");
        $meeting_room_booking = MeetingRoomBooking::findFirstByid($id);

        if (!$meeting_room_booking) {
            $this->flash->error("meeting_room_booking does not exist " . $id);

            $this->dispatcher->forward([
                'controller' => "meeting_room_booking",
                'action' => 'index'
            ]);

            return;
        }

        $meeting_room_booking->user_code = $this->request->getPost("user_code");
        $meeting_room_booking->com_code = $this->request->getPost("com_code");
        $meeting_room_booking->dept_code = $this->request->getPost("dept_code");
        $meeting_room_booking->room_code = $this->request->getPost("room_code");
        $meeting_room_booking->presiding = $this->request->getPost("presiding");
        $meeting_room_booking->title = $this->request->getPost("title");
        $meeting_room_booking->content = $this->request->getPost("content");
        $meeting_room_booking->start = $this->request->getPost("start");
        $meeting_room_booking->end = $this->request->getPost("end");
        $meeting_room_booking->status = $this->request->getPost("status");
        

        if (!$meeting_room_booking->save()) {

            foreach ($meeting_room_booking->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "meeting_room_booking",
                'action' => 'edit',
                'params' => [$meeting_room_booking->id]
            ]);

            return;
        }

        $this->flash->success("Meeting room booking was updated successfully");

        $this->dispatcher->forward([
            'controller' => "meeting_room_booking",
            'action' => 'index'
        ]);
    }

    /**
     * Deletes a meeting_room_booking
     *
     * @param string $id
     */
    public function deleteAction($id)
    {
        $meeting_room_booking = MeetingRoomBooking::findFirstByid($id);
        if (!$meeting_room_booking) {
            $this->flash->error("This meeting room booking was not found");

            $this->dispatcher->forward([
                'controller' => "meeting_room_booking",
                'action' => 'index'
            ]);

            return;
        }

        if (!$meeting_room_booking->delete()) {

            foreach ($meeting_room_booking->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "meeting_room_booking",
                'action' => 'search'
            ]);

            return;
        }

        $this->flash->success("meeting_room_booking was deleted successfully");

        $this->dispatcher->forward([
            'controller' => "meeting_room_booking",
            'action' => "index"
        ]);
    }

}
