<?php
class Member extends Control
{
    public function register()
    {

        $get = $this->model("HomeModels");
        if (isset($_POST['submit'])) {
            $first_name = $_POST['first_name'];
            $last_name = $_POST['last_name'];
            $password =$_POST['password'];
            $confirm_password =$_POST['confirm_password'];
            $phone_number = $_POST['phone_number'];
            $email = $_POST['email'];
            $address = $_POST['address'];
            if (strcmp($password, $confirm_password) != 0) {
                header('Location:' . _WEB_ROOT . "/member/register");
                exit();
            } else {

                $get->insert_customer($first_name, $last_name, $email, $password, $phone_number, $address);
                header('Location:' . _WEB_ROOT . "/member/login");
            }
        }


        $this->view("Client/layoutss/Layout2", [
            "page" => "Register",
            "product_type" => $get->get_productType(),
        ]);
    }

    public function login()
    {
        $get = $this->model("HomeModels");

        if (isset($_POST['submit'])) {
            $password = $_POST['password'];
            $email = $_POST['email'];


            $resuilt = $get->get_customer($email, $password);
            $number_row = mysqli_num_rows($resuilt);

            if ($number_row == 1) {
                $each = mysqli_fetch_array($resuilt);
                $_SESSION['id'] = $each['id'];
                $_SESSION['fullname'] =  $each['first_name'] . " " . $each['last_name'];
                header('Location:' . _WEB_ROOT);
            } else {
                header('Location:' . _WEB_ROOT . "/member/login");
            }
        }




        $this->view("Client/layoutss/Layout2", [
            "page" => "Login",
            "product_type" => $get->get_productType(),
        ]);
    }
    public function logout()
    {
        unset($_SESSION['id']);
        unset($_SESSION['fullname']);

        header('Location:' . _WEB_ROOT);
    }
    public function profile()
    {
        $id = $_SESSION['id'];
        $get = $this->model("HomeModels");

        if (isset($_POST['submit'])) {
            $first_name = $_POST['first_name'];
            $last_name = $_POST['last_name'];
            $phone_number = $_POST['phone_number'];
            $email = $_POST['email'];
            $address = $_POST['address'];

            $get->update_customer($id, $first_name, $last_name, $email, $phone_number, $address);
            $resuilt = $get->get_inforCustomer($id);
            $number_row = mysqli_num_rows($resuilt);

            if ($number_row == 1) {
                $each = mysqli_fetch_array($resuilt);
                $_SESSION['fullname'] =  $each['first_name'] . " " . $each['last_name'];
            }
            echo '<script>alert("Cập nhập thông tin thành công")</script>';
        }

        $this->view("Client/layoutss/Layout2", [
            "page" => "Profile",
            "old_infor" => $get->get_inforCustomer($id),
            "product_type" => $get->get_productType(),
        ]);
    }

public function hdmh()
    {
        $get = $this->model("HomeModels");
        $this->view("Client/layoutss/Layout2", [
            "page" => "hdmh",
            "product_type" => $get->get_productType(),
        ]);
    }

public function cstt()
    {
        $get = $this->model("HomeModels");
        $this->view("Client/layoutss/Layout2", [
            "page" => "cstt",
            "product_type" => $get->get_productType(),
        ]);
    }

public function csgh()
    {
        $get = $this->model("HomeModels");
        $this->view("Client/layoutss/Layout2", [
            "page" => "csgh",
            "product_type" => $get->get_productType(),
        ]);
    }

public function csdh()
    {
        $get = $this->model("HomeModels");
        $this->view("Client/layoutss/Layout2", [
            "page" => "csdh",
            "product_type" => $get->get_productType(),
        ]);
    }

public function csth()
    {
        $get = $this->model("HomeModels");
        $this->view("Client/layoutss/Layout2", [
            "page" => "csth",
            "product_type" => $get->get_productType(),
        ]);
    }
}