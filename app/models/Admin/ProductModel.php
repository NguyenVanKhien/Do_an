<?php
class ProductModel extends DB
{
    public function get_product()
    {
        $sql = "select * from products";
        return mysqli_query($this->con, $sql);
    }
    public function get_productID($key)
    {
        $sql = "select * from products where product_id = '$key'";
        return mysqli_query($this->con, $sql);
    }

    public function get_productTypeID($key)
    {
        $sql = "select * from producttype where productType_id = '$key'";
        return mysqli_query($this->con, $sql);
    }

    public function insert_product($product_name, $path_file, $price, $description, $productType_id, $availability, $information, $date, $ndate, $hdbq)
    {
        $sql = "insert into products(product_name,image,price,description,productType_id,availability,information,date,ndate,hdbq) values('$product_name','$path_file','$price','$description','$productType_id','$availability','$information', '$date', '$ndate', '$hdbq')";
        return mysqli_query($this->con, $sql);
    }

    public function get_productType()
    {
        $sql = "select * from producttype";
        return mysqli_query($this->con, $sql);
    }

    public function update_product($product_id, $product_name, $path_file, $price, $description, $productType_id, $availability, $information, $date, $ndate, $hdbq)
    {
        $sql = "update products
        set
        product_name = '$product_name',
        image = '$path_file',
        price = '$price',
        description = '$description',
        productType_id = '$productType_id',
        availability = '$availability',
        information = '$information',
        date='$date',
        ndate='$ndate',
        hdbq='$hdbq'
        where product_id = '$product_id' ";
        return mysqli_query($this->con, $sql);
    }

    public function update_productType($productType_id, $productType_name)
    {
        $sql = "update producttype
        set
        productType_name = '$productType_name'
        where productType_id = '$productType_id'";
        return mysqli_query($this->con, $sql);
    }

    public function delete_product($key)
    {
        $sql = "delete from products where product_id = '$key'";
        return mysqli_query($this->con, $sql);
    }
    public function get_client()
    {
        $sql = "select * from customers";
        return mysqli_query($this->con, $sql);
        
    }
   
    public function get_numberClient()
    {
        $sql = "select count(*) from customers";
        return mysqli_query($this->con, $sql);
    }

    public function get_numberOrder()
    {
        $sql = "select count(*) from orders";
        return mysqli_query($this->con, $sql);
    }

    public function get_numberProduct()
    {
        $sql = "select count(*) from products";
        return mysqli_query($this->con, $sql);
    }

    public function get_money()
    {
        $sql = "select sum(total_price) from orders";
        return mysqli_query($this->con, $sql);
    }
    public function get_clients()
    {
        $sql = "select * from customers";
        return mysqli_query($this->con, $sql);
    }
    // public function get_product_apple($name)
    // {
    //     $sql = "select * 
    //     from product inner join manufacture on product.manufacture_code = manufacture.manufacture_code where manufacture_name = '$name' ";
    //     return mysqli_query($this->con, $sql);
    // }
    // public function get_detail_product($key)
    // {
    //     $sql = "select * 
    //     from product where code = '$key' ";
    //     return mysqli_query($this->con, $sql);
    // }
    // public function findbyID($key)
    // {
    //     $sql = "select * 
    //     from product where code = '$key' ";
    //     return mysqli_fetch_array(mysqli_query($this->con, $sql), MYSQLI_ASSOC);
    // }
}
