<?php
define('_DIR_ROOT', str_replace('\\', '/', __DIR__));
//echo _DIR_ROOT;

//echo '</br>';
//Xy ly http root
$web_root = 'http://' . $_SERVER['HTTP_HOST'];
//echo $web_root;
//echo '</br>';
//echo $_SERVER['DOCUMENT_ROOT'];
//echo '</br>';

$folder = str_replace($_SERVER['DOCUMENT_ROOT'], "", _DIR_ROOT);
//echo $folder;
$web_root = $web_root . $folder;
//echo '</br>';
//echo $web_root;
define('_WEB_ROOT', $web_root);
require_once "./core/App.php";
require_once "./core/Control.php";
require_once "./core/DBconfig.php";
