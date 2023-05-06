<?php
class Manage extends Control
{
    public function orders($temp = [])
    {
        if (empty($temp)) {
            $get = $this->model("Admin/AccountModel");
            $this->view("Admin/layoutss/mainLayout", [
                "page" => "OrdersPage",
                "order" => $get->get_order(),
            ]);
        } else if ($temp == "detail") {
            $key = $_GET['key'];
            $get = $this->model("Admin/AccountModel");
            $this->view("Admin/layoutss/mainLayout", [
                "page" => "OrdersDetail",
                "order_detail" => $get->get_orderDetail($key),
            ]);
        } else if ($temp == "delete") {
            $key = $_GET['key'];
            $get = $this->model("Admin/AccountModel");
            $get->delete_orders($key);

            header('Location:' . _WEB_ROOT . "/Admin/Manage/orders");
        } else if ($temp == "accept") {
            $key = $_GET['key'];
            $status = 1;
            $get = $this->model("Admin/AccountModel");
            $get->update_orders($key, $status);

            header('Location:' . _WEB_ROOT . "/Admin/Manage/orders");
        } else if ($temp == "cancel") {
            $key = $_GET['key'];
            $status = 2;
            $get = $this->model("Admin/AccountModel");
            $get->update_orders($key, $status);

            header('Location:' . _WEB_ROOT . "/Admin/Manage/orders");
        }
    }

    public function product($temp = [])
    {
        if (empty($temp)) {
            $get = $this->model("Admin/ProductModel");
            $this->view("Admin/layoutss/mainLayout", [
                "page" => "ProductPage",
                "sp" => $get->get_product(),
            ]);
        } else if ($temp == "insert") {

            $get = $this->model("Admin/ProductModel");
            if (isset($_POST['submit'])) {

                $product_name = $_POST['product_name'];
                $price = $_POST['price'];
                $information = $_POST['information'];
                $description = $_POST['description'];
                $availability = $_POST['availability'];
                $productType_id = $_POST['productType_id'];
                $fileUpLoad = $_FILES['file-upload'];
                $from = $fileUpLoad['tmp_name'];
                $date=$_POST['date'];
                $ndate=$_POST['ndate'];
                $hdbq=$_POST['hdbq'];
                $path_file =  './public/img/product/' . $fileUpLoad['name'];
                move_uploaded_file($from, $path_file);

                $path_file = '/public/img/product/' . $fileUpLoad['name'];


                $get->insert_product($product_name, $path_file, $price, $description, $productType_id, $availability, $information, $date, $ndate, $hdbq);



                header('Location:' . _WEB_ROOT . "/Admin/Manage/product");
            }

            $this->view("Admin/layoutss/mainLayout", [
                "page" => "InsertProduct",
                "pro_Type" => $get->get_productType(),
            ]);
        } else if ($temp == "update") {
            $key = $_GET['key'];
            $get_proID = $this->model("Admin/ProductModel");
            $get = $this->model("Admin/ProductModel");
            if (isset($_POST['submit'])) {
                $product_id = $_POST['product_id'];
                $product_name = $_POST['product_name'];
                $price = $_POST['price'];
                $information = $_POST['information'];
                $description = $_POST['description'];
                $availability = $_POST['availability'];
                $productType_id = $_POST['productType_id'];
                $date=$_POST['date'];
                $ndate=$_POST['ndate'];
                $hdbq=$_POST['hdbq'];
                $fileUpLoad = $_FILES['image_new'];
                if ($fileUpLoad['name'] != null) {
                    $from = $fileUpLoad['tmp_name'];
                    $path_file = "./public/img/product/" . $fileUpLoad['name'];
                    move_uploaded_file($from, $path_file);
                    $path_file = '/public/img/product/' . $fileUpLoad['name'];
                } else {
                    $path_file = $_POST['image_old'];
                }

                $get->update_product($product_id, $product_name, $path_file, $price, $description, $productType_id, $availability, $information, $date, $ndate, $hdbq);

                header('Location:' . _WEB_ROOT . "/Admin/Manage/product");
            }

            $this->view("Admin/layoutss/mainLayout", [
                "page" => "UpdateProduct",
                "product" => $get_proID->get_productID($key),
                "pro_Type" => $get->get_productType(),
            ]);
        } else if ($temp == "delete") {
            $key = $_GET['key'];
            $get = $this->model("Admin/ProductModel");
            $get->delete_product($key);

            header('Location:' . _WEB_ROOT . "/Admin/Manage/product");
        }
    }

    public function productType($temp = [])
    {
        if (empty($temp)) {
            $get = $this->model("Admin/ProductModel");
            $this->view("Admin/layoutss/mainLayout", [
                "page" => "ProductType",
                "type" => $get->get_productType(),
            ]);
        } else if ($temp == "insert") {
            $get = $this->model("Admin/BlogModel");
            if (isset($_POST['submit'])) {
                $productType_name = $_POST['productType_name'];
                $get->insert_productType($productType_name);
                header('Location:' . _WEB_ROOT . "/Admin/Manage/productType");
            }
            $this->view("Admin/layoutss/mainLayout", [
                "page" => "InsertProType",
            ]);
        } else if ($temp == "delete") {
            $key = $_GET['key'];
            $get = $this->model("Admin/BlogModel");
            $get->delete_productType($key);

            header('Location:' . _WEB_ROOT . "/Admin/Manage/productType");
        } else if ($temp == "update") {
            $key = $_GET['key'];
            $get = $this->model("Admin/ProductModel");
            if (isset($_POST['submit'])) {
                $productType_id = $_POST['productType_id'];
                $productType_name = $_POST['productType_name'];

                $get->update_productType($productType_id, $productType_name);

                header('Location:' . _WEB_ROOT . "/Admin/Manage/productType");
            }

            $this->view("Admin/layoutss/mainLayout", [
                "page" => "UpdateProductType",
                "productTypeID" => $get->get_productTypeID($key),

            ]);
        }
    }
    public function blogs($temp = [])
    {
        if (empty($temp)) {
            $get = $this->model("Admin/BlogModel");
            $this->view("Admin/layoutss/mainLayout", [
                "page" => "BlogPage",
                "blogs" => $get->get_blogs(),
            ]);
        } else if ($temp == "insert") {
            $get = $this->model("Admin/BlogModel");
            if (isset($_POST['submit'])) {

                $blog_title = $_POST['blog_title'];
                $blog_content = $_POST['blog_content'];
                $categorieBlog_id = $_POST['categorieBlog_id'];

                $fileUpLoad = $_FILES['file-upload'];
                $from = $fileUpLoad['tmp_name'];

                $path_file =  './public/img/blog/' . $fileUpLoad['name'];
                move_uploaded_file($from, $path_file);

                $path_file = '/public/img/blog/' . $fileUpLoad['name'];


                $get->insert_blog($blog_title, $blog_content, $path_file, $categorieBlog_id);
                header('Location:' . _WEB_ROOT . "/Admin/Manage/blogs");
            }
            $this->view("Admin/layoutss/mainLayout", [
                "page" => "InsertBlog",
                "cata_blog" => $get->get_categorie_blog(),
            ]);
        } else if ($temp == "update") {
            $key = $_GET['key'];
            $get_blogID = $this->model("Admin/BlogModel");
            $get = $this->model("Admin/ProductModel");
            if (isset($_POST['submit'])) {
                $blog_id = $_POST['blog_id'];
                $blog_title = $_POST['blog_title'];
                $blog_content = $_POST['blog_content'];
                $categorieBlog_id = $_POST['categorieBlog_id'];

                $fileUpLoad = $_FILES['image_new'];
                if ($fileUpLoad['name'] != null) {
                    $from = $fileUpLoad['tmp_name'];
                    $path_file = "./public/img/blog/" . $fileUpLoad['name'];
                    move_uploaded_file($from, $path_file);
                    $path_file = '/public/img/blog/' . $fileUpLoad['name'];
                } else {
                    $path_file = $_POST['image_old'];
                }

                $get_blogID->update_blog($blog_id, $blog_title, $blog_content, $path_file, $categorieBlog_id);

                header('Location:' . _WEB_ROOT . "/Admin/Manage/blogs");
            }

            $this->view("Admin/layoutss/mainLayout", [
                "page" => "UpdateBlog",
                "blog" => $get_blogID->get_blogID($key),
                "pro_Type" => $get->get_productType(),
                "cata_blog" => $get_blogID->get_categorie_blog(),
            ]);
        } else if ($temp == "delete") {
            $key = $_GET['key'];
            $get = $this->model("Admin/BlogModel");
            $get->delete_blog($key);

            header('Location:' . _WEB_ROOT . "/Admin/Manage/blogs");
        }
    }
    public function clients($temp = [])
    {
        if (empty($temp)) {
            $get = $this->model("Admin/ProductModel");
                $this->view("Admin/layoutss/mainLayout", [
                    "page" => "ClientPage",
                    "clients" => $get->get_clients(),
            ]);
        }
    }
    
    public function statistic($temp = []) {
        $get = $this->model("Admin/ProductModel");
        $reusilt_numberOfClient = mysqli_fetch_array( $get->get_numberClient())['count(*)'];
        $reusilt_numberOfProduct = mysqli_fetch_array( $get->get_numberProduct())['count(*)'];
        $reusilt_numberOfOrder = mysqli_fetch_array( $get->get_numberOrder())['count(*)'];
        $reusilt_numberOfMoney = mysqli_fetch_array( $get->get_money())['sum(total_price)'];
        $this->view("Admin/layoutss/mainLayout", [
            "page" => "StatisticPage",
            "number_client" => $reusilt_numberOfClient,
            "number_order" => $reusilt_numberOfOrder,
            "number_product" => $reusilt_numberOfProduct,
            "money" =>  $reusilt_numberOfMoney,
        ]);
    }
}
