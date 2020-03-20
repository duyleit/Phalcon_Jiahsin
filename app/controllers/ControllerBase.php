<?php

use Phalcon\Mvc\Controller;
//use Phalcon\Translate\Adapter\NativeArray;

class ControllerBase extends Controller
{
    public function initialize()
    {
        // init functions
        //$locale = Locale::acceptFromHttp($_SERVER['HTTP_ACCEPT_LANGUAGE']);
    }

    public function addConditions($parameters = null, $extendConditions = null)
    {
        // Filter company and status
        if (isset($parameters["conditions"])) {
            $parameters["conditions"] = $parameters["conditions"] . ' AND '.$extendConditions;
        }else{
            $parameters["conditions"] = $extendConditions;
        }

        return $parameters;
    }

    public function auth()
    {
        if (!$this->session->has('user-code')){
            return $this->response->redirect('system/login');
        }

    }

}
