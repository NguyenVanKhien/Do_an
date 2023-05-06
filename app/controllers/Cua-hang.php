<?php
class Cuahang extends Control
{
    public function index()
    {
        if (isset($_GET['sort'])) {
            $_SESSION['sos'] = $_GET['sort'];
            if ($_GET['sort'] == "name-asc") {
                $sort = "product_name asc";
                $_SESSION['type_sort'] = "Sắp xếp theo tên";
            } else if ($_GET['sort'] == "price-asc") {
                $sort = "price asc";
                $_SESSION['type_sort'] = "Giá từ thấp đến cao";
            } else if ($_GET['sort'] == "price-desc") {
                $sort = "price desc";
                $_SESSION['type_sort'] = "Giá từ cao đến thấp";
            }

            $page = 1;

            if (isset($_GET['page'])) {
                $page = $_GET['page'];
            }


            $get = $this->model("HomeModels");

            $reusilt_numberOfProduct = mysqli_fetch_array($get->get_count_product());
            $numberOfProduct = $reusilt_numberOfProduct['count(*)'];
            $numberPostPerPage = 9;
            $numberPagePro = ceil($numberOfProduct / $numberPostPerPage);
            $offset = $numberPostPerPage * ($page - 1);


            $this->view("Client/layoutss/Layout2", [
                "page" => "ShopPage",
                "numberPagePro" => $numberPagePro,
                "product" => $get->get_Product_Sort($offset, $numberPostPerPage, $sort),
                "pageContent" => "shopContent",
                "product_type" => $get->get_productType(),
                "product_featured5" => $get->get_featured_product5(),
                "product_featured6" => $get->get_featured_product6(),


            ]);
        } else {
            unset($_SESSION['sos']);
            unset($_SESSION['type_sort']);
            $page = 1;

            if (isset($_GET['page'])) {
                $page = $_GET['page'];
            }


            $get = $this->model("HomeModels");

            $reusilt_numberOfProduct = mysqli_fetch_array($get->get_count_product());
            $numberOfProduct = $reusilt_numberOfProduct['count(*)'];
            $numberPostPerPage = 9;
            $numberPagePro = ceil($numberOfProduct / $numberPostPerPage);
            $offset = $numberPostPerPage * ($page - 1);


            $this->view("Client/layoutss/Layout2", [
                "page" => "ShopPage",
                "numberPagePro" => $numberPagePro,
                "product" => $get->get_Product($offset, $numberPostPerPage),
                "pageContent" => "shopContent",
                "product_type" => $get->get_productType(),
                "product_featured5" => $get->get_featured_product5(),
                "product_featured6" => $get->get_featured_product6(),


            ]);
        }
    }
    public function danhmuc($temp)
    {

        if (isset($_GET['sort'])) {
            $_SESSION['sos'] = $_GET['sort'];
            if ($_GET['sort'] == "name-asc") {
                $sort = "product_name asc";
                $_SESSION['type_sort'] = "Sắp xếp theo tên";
            } else if ($_GET['sort'] == "price-asc") {
                $sort = "price asc";
                $_SESSION['type_sort'] = "Giá từ thấp đến cao";
            } else if ($_GET['sort'] == "price-desc") {
                $sort = "price desc";
                $_SESSION['type_sort'] = "Giá từ cao đến thấp";
            }




            $page = 1;

            if (isset($_GET['page'])) {
                $page = $_GET['page'];
            }


            $get = $this->model("HomeModels");

            $reusilt_numberOfProduct = mysqli_fetch_array($get->get_count_product($temp));
            $numberOfProduct = $reusilt_numberOfProduct['count(*)'];

            $numberPostPerPage = 3;
            $numberPagePro = ceil($numberOfProduct / $numberPostPerPage);
            $offset = $numberPostPerPage * ($page - 1);

            // $abc = $get->get_Product_byType($offset, $numberPostPerPage, $temp);
            // print_r(mysqli_fetch_array($abc));
            // die();

            $this->view("Client/layoutss/Layout2", [
                "nameType" => $temp,
                "page" => "ShopPage",
                "pageContent" => "shopContent",
                "numberPagePro" => $numberPagePro,
                "product" => $get->get_Product_byType_Sort($offset, $numberPostPerPage, $temp, $sort),

                "product_featured5" => $get->get_featured_product5(),
                "product_featured6" => $get->get_featured_product6(),
                "product_type" => $get->get_productType(),
            ]);
        } else {
            
            unset($_SESSION['sos']);
            unset($_SESSION['type_sort']);
            $page = 1;

            if (isset($_GET['page'])) {
                $page = $_GET['page'];
            }


            $get = $this->model("HomeModels");

            $reusilt_numberOfProduct = mysqli_fetch_array($get->get_count_product($temp));
            $numberOfProduct = $reusilt_numberOfProduct['count(*)'];

            $numberPostPerPage = 3;
            $numberPagePro = ceil($numberOfProduct / $numberPostPerPage);
            $offset = $numberPostPerPage * ($page - 1);

            // $abc = $get->get_Product_byType($offset, $numberPostPerPage, $temp);
            // print_r(mysqli_fetch_array($abc));
            // die();

            $this->view("Client/layoutss/Layout2", [
                "nameType" => $temp,
                "page" => "ShopPage",
                "pageContent" => "shopContent",
                "numberPagePro" => $numberPagePro,
                "product" => $get->get_Product_byType($offset, $numberPostPerPage, $temp),

                "product_featured5" => $get->get_featured_product5(),
                "product_featured6" => $get->get_featured_product6(),
                "product_type" => $get->get_productType(),
            ]);
        }
    }
}
