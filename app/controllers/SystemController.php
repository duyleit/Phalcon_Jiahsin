<?php
 
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;


class SystemController extends ControllerBase
{
    public function initialize()
    {
        parent::initialize();
    }
    /**
     * Index action
     */
    public function indexAction()
    {
        $this->persistent->parameters = null;
    }

    // Add by John
    public function loginAction()
    {
        if ($this->request->isPost()) {
            if ($this->security->checkToken()) {
                // The token is OK
                $user_code    = $this->request->getPost('user');
                $pass = $this->request->getPost('pass');

          $user = User::findFirstByCode($user_code);
                if ($user) {
                  //  if ($this->security->checkHash($pass, $user->pass) && $user->status) {
                        // The password is valid
                        $this->session->set('user-code',$user->code);
                        $this->session->set('user-com_code',$user->com_code);
                  //  }
                 //   else{
//                        $this->flash->error("Wrong user or password!");
                 //       $this->flash->error("Wrong password!");
                 //   }
                } else {
                    $this->security->hash(rand());  /*y nghia cua lenh nay -> https://phalcontip.com/discussion/58/protect-log-in-against-timing-attacks*/
//                    $this->flash->error("Please enter user and password!");
                    $this->flash->error("Wrong user!");
                }

                // The validation has failed
            }
        }

        if ($this->session->has('user-code')){
            return $this->response->redirect('');
        }

    }

    // Add by John
    public function logoutAction()
    {
        $this->session->remove('user-code');
        $this->session->remove('user-com_code');
        return $this->response->redirect('system/login');
    }

}
