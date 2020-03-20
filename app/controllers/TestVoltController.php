<?php

class TestVoltController extends ControllerBase
{

    public function indexAction()
    {
        $posts= Posts::find("id=2");

        $posts->setTitle("test 16032019");
         var_dump($posts);
    }



}

