<?php
class App
{
    private $controller;
    private $action;
    private $param;
    function __construct()
    {
        $this->controller = "Trang-chu";
        $this->action = "index";
        $this->param = [];
        $this->handleUrl();
    }
    function getUrl()
    {
        if (!empty($_SERVER['PATH_INFO'])) {

            $url = $_SERVER['PATH_INFO'];
        } else {
            $url = '/';
        }
        return $url;
    }
    function handleUrl()
    {
        $url = $this->getUrl();
        $urlArr = array_filter(explode('/', $url));
        $urlArr = array_values($urlArr);
        // echo '<pre>';
        // print_r($urlArr);
        // echo '</pre>';
        $urlCheck = $this->controller;
        if (!empty($urlArr)) {
            $urlCheck = '';
            foreach ($urlArr as $key => $item) {
                $urlCheck .= ucfirst($item) . '/';
                $fileCheck = rtrim($urlCheck, '/');

                if (!empty($urlArr[$key - 1])) {
                    unset($urlArr[$key - 1]);
                }

                if (file_exists("./app/controllers/" . $fileCheck . ".php")) {
                    $urlCheck = $fileCheck;
                    break;
                }
            }

            $urlArr = array_values($urlArr);
        }


        // echo '<pre>';
        // print_r($urlArr);
        // echo '</pre>';
        //die($urlCheck);
        //$urlCheck = rtrim($urlCheck, '/');

        //xu ly controllers
        if (!empty($urlArr[0])) {
            $this->controller = ucfirst($urlArr[0]);
        } else {
            $this->controller = ucfirst($this->controller);
        }
        $this->controller = str_replace("-", "", $this->controller);
        //die($this->controller);
        if (file_exists("./app/controllers/" . $urlCheck . ".php")) {
            require_once("./app/controllers/" . $urlCheck . ".php");
            //kiem tra class this->controller ton tai

            if (class_exists($this->controller)) {
                $this->controller = new $this->controller;
                unset($urlArr[0]);
            } else {
                require_once("./app/errors/404.php");
            }
        } else {
            require_once("./app/errors/404.php");
        }


        //xy ly action
        if (!empty($urlArr[1])) {
            $urlArr[1] = str_replace("-", "", $urlArr[1]);
            $this->action = $urlArr[1];
            unset($urlArr[1]);
        }


        //xy ly param
        $this->param = array_values($urlArr);


        //kiem tra method ton tai
        if (method_exists($this->controller, $this->action)) {
            call_user_func_array(array($this->controller, $this->action), $this->param);
        } else {
            require_once("./app/errors/404.php");
        }
    }
}
