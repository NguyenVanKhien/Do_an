<?php
class Dashboard extends Control
{
    public function index()
    {
        if (isset($_POST['submit'])) {
            $password = $_POST['password'];
            $email = $_POST['email'];

            $get = $this->model("Admin/AccountModel");
            $resuilt = $get->log($email, $password);
            $num = mysqli_num_rows($resuilt);

            if ($num == 1) {
                $each = mysqli_fetch_array($resuilt);
                $_SESSION['admin_id'] = $each['admin_id'];
                $_SESSION['admin_name'] = $each['admin_name'];
                header('Location:' . _WEB_ROOT . "/Admin/Manage/product");
            } else {
                header('Location:' . _WEB_ROOT . "/Admin/Dashboard");
            }
        }

        $this->view("Admin/layoutss/loginLayout");
    }

    public function logout()
    {
        unset($_SESSION['admin_id']);
        unset($_SESSION['admin_name']);

        header('Location:' . _WEB_ROOT . "/Admin/Dashboard");
    }
}
