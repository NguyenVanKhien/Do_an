<?php
class Cart extends Control
{
    public function index()
    {
        $product = !empty($_SESSION['cart_tb']) ? $_SESSION['cart_tb'] : null;
        $get = $this->model("HomeModels");
        $this->view("Client/layoutss/Layout2", [
            "page" => "CartPage",
            "product_type" => $get->get_productType(),
            "sp" => $product,
        ]);
    }
    public function store()
    {

        if (isset($_POST['submit'])) {
            $quantity = $_POST['quantity'];
            $id = $_POST['product_id'];
        }

        if (isset($_GET['id'])) {
            $id = $_GET["id"];
        }

        $product = $this->model("HomeModels")->findbyID($id);

        if (empty($_SESSION['cart_tb'][$id])) {
            $_SESSION['cart_tb'][$id]['name'] = $product['product_name'];
            $_SESSION['cart_tb'][$id]['image'] = $product['image'];
            $_SESSION['cart_tb'][$id]['price'] = $product['price'];
            $_SESSION['cart_tb'][$id]['quantity'] = 1;
            if (isset($_POST['submit'])) {

                $_SESSION['cart_tb'][$id]['quantity'] = $quantity;
            }
        } else {
            if (isset($_POST['submit'])) {

                $_SESSION['cart_tb'][$id]['quantity'] += $quantity;
            } else {
                $_SESSION['cart_tb'][$id]['quantity']++;
            }
        }




        header('Location:' . _WEB_ROOT . "/Cart");
    }
    public function delete()
    {
        if (isset($_GET['id'])) {
            $id = $_GET["id"];
        }

        unset($_SESSION['cart_tb'][$id]);
        header('Location:' . _WEB_ROOT . "/Cart");
    }

    public function minus()
    {
        $id = $_GET["id"];
        if ($_SESSION['cart_tb'][$id]['quantity'] > 1) {
            $_SESSION['cart_tb'][$id]['quantity']--;
        }

        header('Location:' . _WEB_ROOT . "/Cart");
    }
    public function plus()
    {
        $id = $_GET["id"];
        $_SESSION['cart_tb'][$id]['quantity']++;

        header('Location:' . _WEB_ROOT . "/Cart");
    }
}
