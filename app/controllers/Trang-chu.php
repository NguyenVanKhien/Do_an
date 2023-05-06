<?php
class Trangchu extends Control
{
    public function index()
    {
        $get = $this->model("HomeModels");
        $this->view("Client/layoutss/Layout1", [
            "page" => "HomePage",
            "product_type" => $get->get_productType(),
            "product" => $get->get_top_product(),
            "product_featured1" => $get->get_featured_product1(),
            "product_featured2" => $get->get_featured_product2(),
            "product_featured3" => $get->get_featured_product3(),
            "product_featured4" => $get->get_featured_product4(),
            "blog_featured" => $get->get_blog_featured(),
        ]);
    }
}
