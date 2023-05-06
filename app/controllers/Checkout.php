<?php
class Checkout extends Control
{
    public function index()
    {

        if (!isset($_SESSION['id'])) {
            header('Location:' . _WEB_ROOT . "/member/login");
        } else {
            $customer_id = $_SESSION['id'];
            $get = $this->model("HomeModels");
            if (isset($_POST['submit'])) {
                $email_receiver = $_POST['email_receiver'];
                $name_receiver = $_POST['name_receiver'];
                $phone_receiver = $_POST['phone_receiver'];
                $address_receiver = $_POST['address_receiver'];
                $note_receiver = $_POST['note_receiver'];


                $cart = $_SESSION['cart_tb'];
                $total_price = 0;
                foreach ($cart as $value) {
                    $total_price += $value['price'] * $value['quantity'];
                }
                $status = 0;

                $get->insert_order($customer_id, $name_receiver, $phone_receiver, $address_receiver, $email_receiver, $status, $note_receiver, $total_price);

                $resuilt = $get->get_order($customer_id);

                $order_id = mysqli_fetch_array($resuilt)['max(order_id)'];


                foreach ($cart as $product_id => $value) {
                    $quantity = $value['quantity'];
                    $product_id=$product_id;
                    $get->insert_orderProduct($order_id, $product_id, $quantity);
                }
                unset($_SESSION['cart_tb']);
                header('Location:' . _WEB_ROOT);
            }



            $this->view("Client/layoutss/Layout2", [
                "page" => "CheckoutPage",
                "product_type" => $get->get_productType(),
                "inforCustomer" => $get->get_inforCustomer($customer_id),

            ]);
        }
    }

    public function bank()
    {

        if (!isset($_SESSION['id'])) {
            header('Location:' . _WEB_ROOT . "/member/login");
        } else {
            
            $this->view("Client/pagess/VNPayCreate");
        }
    }

    public function result()
    {

        if (!isset($_SESSION['id'])) {
            header('Location:' . _WEB_ROOT . "/member/login");
        } else {
            $this->view("Client/layoutss/Layout2", [
                "page" => "ResultPayment",
            ]);
        }
    }
}
