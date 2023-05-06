<?php
class Blog extends Control
{

    public function index()
    {

        $page = 1;
        if (isset($_GET['page'])) {
            $page = $_GET['page'];
        }
        $get = $this->model("HomeModels");

        $reusilt_numberOfBlog = mysqli_fetch_array($get->get_count_blogs());
        $numberOfBlog = $reusilt_numberOfBlog['count(*)'];

        $numberPostPerPage = 4;
        $numberPageBlog = ceil($numberOfBlog / $numberPostPerPage);
        $offset = $numberPostPerPage * ($page - 1);

        $this->view("Client/layoutss/Layout2", [
            "page" => "BlogPage",
            "numberPageBlog" => $numberPageBlog,
            "blog" => $get->get_Blog($offset, $numberPostPerPage),
            "pageContent" => "blogContent",
            "product_type" => $get->get_productType(),
            "categorie_blog" => $get->get_categorie_blog(),
            "new_blog" => $get->get_new_blog(),
        ]);
    }

    public function theloai($temp)
    {

        $page = 1;

        if (isset($_GET['page'])) {
            $page = $_GET['page'];
        }

        $get = $this->model("HomeModels");

        $reusilt_numberOfBlog = mysqli_fetch_array($get->get_count_blog($temp));
        $numberOfBlog = $reusilt_numberOfBlog['count(*)'];

        $numberPostPerPage = 4;
        $numberPageBlog = ceil($numberOfBlog / $numberPostPerPage);
        $offset = $numberPostPerPage * ($page - 1);


        // $abc = $get->get_Product_byType($offset, $numberPostPerPage, $temp);
        // print_r(mysqli_fetch_array($abc));
        // die();

        $this->view("Client/layoutss/Layout2", [
            "nameType" => $temp,
            "page" => "BlogPage",
            "pageContent" => "blogContent",
            "numberPageBlog" => $numberPageBlog,
            "blog" => $get->get_Blog_byType($offset, $numberPostPerPage, $temp),
            "product_type" => $get->get_productType(),
            "categorie_blog" => $get->get_categorie_blog(),
            "new_blog" => $get->get_new_blog(),
        ]);
    }
}
