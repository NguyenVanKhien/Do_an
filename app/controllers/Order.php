<?php
class Order extends Control
{
  public function user($temp = [])
  {
    if (empty($temp)) {
      if (isset($_SESSION['id'])) {
        $customer_id = $_SESSION['id'];
        $get = $this->model("HomeModels");
        $this->view("Client/layoutss/Layout2", [
          "page" => "OrderPageUser",
          "order_user" => $get->get_order_user($customer_id),
        ]);
      }
    } else if ($temp == "detail") {
      $key = $_GET['key'];
      $get = $this->model("HomeModels");
      $this->view("Client/layoutss/Layout2", [
        "page" => "OrderPageUserDetail",
        "order_detail" => $get->get_order_user_detail($key),
      ]);
    }
  }

// public function detail($temp = [])
// {
//   if ($temp == "detail") {
//     $key = $_GET['key'];
//     $get = $this->model("HomeModels");
//     $this->view("Client/layoutss/Layout2", [
//       "page" => "OrderPageUserDetail",
//       "order_detail" => $get->get_order_user_detail($key),
//     ]);
//   }
// }
}