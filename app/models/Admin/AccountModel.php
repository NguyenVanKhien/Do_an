<?php
class AccountModel extends DB
{
    public function log($email, $password)
    {
        $sql = "select * from admin where email = '$email' and password = '$password'";
        return mysqli_query($this->con, $sql);
    }
    public function get_order()
    {
        $sql = "select orders.* from orders join customers on orders.customer_id = customers.id";
        return mysqli_query($this->con, $sql);
    }
    public function get_orderDetail($key)
    {
        $sql = "select * from orders_product join products on orders_product.product_id = products.product_id where order_id = '$key' ";
        return mysqli_query($this->con, $sql);
    }
    public function delete_orders($key)
    {
        $sql = "delete from orders_product where order_id = '$key' ";
        mysqli_query($this->con, $sql);
        $sql = "delete from orders where order_id = '$key' ";
        return mysqli_query($this->con, $sql);
    }
    public function update_orders($key, $status)
    {
        $sql = "update orders
        set
        status = $status
        where order_id = '$key' ";
        return mysqli_query($this->con, $sql);
    }
}
