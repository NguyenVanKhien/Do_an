<?php
class HomeModels extends DB
{
    public function get_Product_Sort($offset, $numberPostPerPage, $sort)
    {
        $sql = "select * from products order by $sort limit $numberPostPerPage offset $offset";
        return mysqli_query($this->con, $sql);
    }
    public function get_Product($offset, $numberPostPerPage)
    {
        $sql = "select * from products limit $numberPostPerPage offset $offset";
        return mysqli_query($this->con, $sql);
    }

    public function get_Product_byType_Sort($offset, $numberPostPerPage, $temp, $sort)
    {

        $sql = "select * from products INNER JOIN producttype ON products.productType_id=producttype.productType_id where productType_name = '$temp' order by $sort limit $numberPostPerPage offset $offset";

        return mysqli_query($this->con, $sql);
    }
    public function get_Product_byType($offset, $numberPostPerPage, $temp)
    {

        $sql = "select * from products INNER JOIN producttype ON products.productType_id=producttype.productType_id where productType_name = '$temp' limit $numberPostPerPage offset $offset";

        return mysqli_query($this->con, $sql);
    }
    public function get_Blog_byType($offset, $numberPostPerPage, $temp)
    {

        $sql = "select * from blogs INNER JOIN categorieblog ON blogs.categorieBlog_id=categorieblog.categorieBlog_id where categorieBlog_name = '$temp' limit $numberPostPerPage offset $offset";

        return mysqli_query($this->con, $sql);
    }

    public function get_Blog($offset, $numberPostPerPage)
    {
        $sql = "select * from blogs limit $numberPostPerPage offset $offset";
        return mysqli_query($this->con, $sql);
    }
    public function get_categorie_blog()
    {
        $sql = "SELECT categorieblog.categorieBlog_name,COUNT(*) AS 'sl' FROM blogs INNER JOIN categorieblog ON blogs.categorieBlog_id = categorieblog.categorieBlog_id GROUP BY categorieblog.categorieBlog_name;";
        return mysqli_query($this->con, $sql);
    }

    public function get_count_product($temp = [])
    {
        if (empty($temp)) {
            $sql = "select count(*) from products";
        } else {
            $sql = "select count(*) from products INNER JOIN producttype ON products.productType_id=producttype.productType_id WHERE productType_name = '$temp'";
        }

        return mysqli_query($this->con, $sql);
    }
    public function get_count_blog($temp = [])
    {
        if (empty($temp)) {
            $sql = "select count(*) from blogs";
        } else {
            $sql = "select count(*) from blogs INNER JOIN categorieblog ON blogs.categorieBlog_id=categorieblog.categorieBlog_id WHERE categorieBlog_name = '$temp'";
        }

        return mysqli_query($this->con, $sql);
    }
    public function get_count_blogs()
    {
        $sql = "select count(*) from blogs";
        return mysqli_query($this->con, $sql);
    }

    public function get_blog_featured()
    {
        $sql = "select * from blogs limit 3";
        return mysqli_query($this->con, $sql);
    }

    public function get_productType()
    {
        $sql = "select * from producttype";
        return mysqli_query($this->con, $sql);
    }

    public function get_top_product()
    {
        $sql = "select * from products limit 10";
        return mysqli_query($this->con, $sql);
    }

    public function get_detail_product($item)
    {
        $sql = "select * from products where product_id = '$item' ";
        return mysqli_query($this->con, $sql);
    }
    public function get_detail_blog($item)
    {;
        $sql = "SELECT * FROM blogs INNER JOIN categorieblog ON blogs.categorieBlog_id = categorieblog.categorieBlog_id WHERE blog_id = '$item'";
        return mysqli_query($this->con, $sql);
    }

    public function get_related_product($proType_id, $proId)
    {
        $sql = "SELECT * FROM products WHERE productType_id = '$proType_id' AND NOT product_id='$proId' limit 4";

        return mysqli_query($this->con, $sql);
    }

    public function get_new_blog()
    {
        $sql = "SELECT * FROM blogs ORDER BY posted_at DESC limit 3 ";
        return mysqli_query($this->con, $sql);
    }


    public function get_featured_product1()
    {
        $sql = "select * from products where productType_id = '1' ";
        return mysqli_query($this->con, $sql);
    }

    public function get_featured_product2()
    {
        $sql = "select * from products where productType_id = '2' limit 3 ";
        return mysqli_query($this->con, $sql);
    }
    public function get_featured_product3()
    {
        $sql = "select * from products where productType_id = '3' limit 2 ";
        return mysqli_query($this->con, $sql);
    }
    public function get_featured_product4()
    {
        $sql = "select * from products where productType_id = '9' limit 3 ";
        return mysqli_query($this->con, $sql);
    }
    public function get_featured_product5()
    {
        $sql = "select * from products where productType_id = '8' limit 3 ";
        return mysqli_query($this->con, $sql);
    }
    public function get_featured_product6()
    {
        $sql = "select * from products where productType_id = '6' limit 3 ";
        return mysqli_query($this->con, $sql);
    }
    public function findbyID($key)
    {
        $sql = "select * from products where product_id = '$key' ";
        return mysqli_fetch_array(mysqli_query($this->con, $sql), MYSQLI_ASSOC);
    }

    public function insert_customer($first_name, $last_name, $email, $password, $phone_number, $address)
    {
        $sql = "insert into customers(first_name,last_name,email,password,phone_number,address) values('$first_name','$last_name','$email','$password','$phone_number','$address')";
        return mysqli_query($this->con, $sql);
    }
    public function get_customer($email, $password)
    {
        $sql = "select * from customers where email = '$email' and password = '$password'";
        return mysqli_query($this->con, $sql);
    }
    public function get_inforCustomer($customer_id)
    {
        $sql = "select * from customers where id = '$customer_id'";
        return mysqli_query($this->con, $sql);
    }
    public function insert_order($customer_id, $name_receiver, $phone_receiver, $address_receiver, $email_receiver, $status, $note_receiver, $total_price)
    {
        $sql = "insert into orders (customer_id, name_receiver, phone_receiver, address_receiver, email_receiver, status, note,total_price) 
            values ('$customer_id', '$name_receiver', '$phone_receiver', '$address_receiver', '$email_receiver', '$status', '$note_receiver','$total_price')";
        return mysqli_query($this->con, $sql);
    }
    public function get_order($customer_id)
    {
        $sql = "select max(order_id) from orders where customer_id = '$customer_id'";
        return mysqli_query($this->con, $sql);
    }
    public function insert_orderProduct($order_id, $product_id, $quantity)
    {
        $sql = "insert into orders_product(order_id,product_id,quantity) values('$order_id','$product_id','$quantity')";
        return mysqli_query($this->con, $sql);
    }
    public function get_count_search_product($search)
    {
        $sql = "select count(*) from products where product_name LIKE '%$search%'";
        return mysqli_query($this->con, $sql);
    }
    public function get_search_product($search)
    {
        $sql = "select * from products where product_name LIKE '%$search%'";
        return mysqli_query($this->con, $sql);
    }
    public function findProductAjax($search)
    {
        $sql = "select * from products where product_name LIKE '%$search%' limit 5 ";
        return mysqli_query($this->con, $sql);
    }
    public function findNumProductAjax($search)
    {
        $sql = "select count(*) from products where product_name LIKE '%$search%'";
        return mysqli_query($this->con, $sql);
    }
    public function update_customer($id, $first_name, $last_name, $email, $phone_number, $address)
    {
        $sql = "update customers
        set
        first_name = '$first_name',
        last_name = '$last_name',
        email = '$email',
        phone_number = '$phone_number',
        address = '$address'
        where id = '$id' ";
        return mysqli_query($this->con, $sql);
    }
    public function get_order_user($customer_id)
    {
        $sql = "select orders.* from orders join customers on orders.customer_id = customers.id where customer_id = '$customer_id' ";
        return mysqli_query($this->con, $sql);
    }
    public function get_order_user_detail($key)
    {
        $sql = "select * from orders_product join products on orders_product.product_id = products.product_id where order_id = '$key' ";
        return mysqli_query($this->con, $sql);
    }

}
