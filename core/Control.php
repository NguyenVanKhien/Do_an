<?php
class Control
{
    public function model($model)
    {
        $temp = '';
        $modelArr = explode('/', $model);
        foreach ($modelArr as $key => $item) {
            $temp .= $item . '/';
            $fileCheck = rtrim($temp, '/');

            if (!empty($modelArr[$key - 1])) {
                unset($modelArr[$key - 1]);
                //die($urlArr[$key - 1]);
            }

            if (file_exists("./app/models/" . $fileCheck . ".php")) {

                break;
            }
        }



        $modelArr = array_values($modelArr);


        require_once "./app/models/" . $fileCheck . ".php";
        return new $modelArr[0];
    }

    public function view($view, $data = [])
    {
        require_once "./app/views/" . $view . ".php";
    }
}
