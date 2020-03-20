<?php

$router = $di->getRouter();

// Define your routes here

$router->add(
    '/aaa',
    [
        'controller' => 'user',
        'action'     => 'test',
    ]
);
/*
$router->add(
    '/admin/user/:action/:params',
    [
        'controller' => 'user',
        'action'     => 1,
        'params'     => 2,
    ]
);
*/

$router->handle();


