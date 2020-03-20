                                                                        <?php
// 180331 - Add by John - check load page time
$time = microtime();
$time = explode(' ', $time);
$time = $time[1] + $time[0];
$start = $time;
// 180331 - Add by John - check load page time


use Phalcon\Di\FactoryDefault;

error_reporting(E_ALL);

define('BASE_PATH', dirname(__DIR__));
define('APP_PATH', BASE_PATH . '/app');

try {

    /**
     * The FactoryDefault Dependency Injector automatically registers
     * the services that provide a full stack framework.
     dùng để chưa những service khác */

    $di = new FactoryDefault();

    include APP_PATH . '/config/services.php';
 //   $config = $di->getConfig();
    /**
     * Handle routes
     */
 //   include APP_PATH . '/config/router.php';

    /**
     * Read services
     */


    /**
     * Get config service for use in inline setup below
     */


    /**
     * Include Autoloader
     */
    include APP_PATH . '/config/loader.php';

    /**
     * Handle the request: dùng để build chương trình
     */
    //$application = new \Phalcon\Mvc\Application($di);
    $application = new \Phalcon\Mvc\Application($di);

    echo str_replace(["\n","\r","\t"], '', $application->handle()->getContent());

} catch (\Exception $e) {
    echo $e->getMessage() . '<br>';
    echo '<pre>' . $e->getTraceAsString() . '</pre>';
}


