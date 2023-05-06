<?php
class Chitiet extends Control
{
    public function sanpham($item)
    {


        $get = $this->model("HomeModels");
        $proType_id = mysqli_fetch_array($get->get_detail_product($item));

        $this->view("Client/layoutss/Layout2", [
            "page" => "DetailPage",
            "detail" => $get->get_detail_product($item),
            "product_type" => $get->get_productType(),
            "related_product" => $get->get_related_product($proType_id['productType_id'], $proType_id['product_id']),
        ]);
    }

    public function blog($item)
    {
        $get = $this->model("HomeModels");
        $blog_id = mysqli_fetch_array($get->get_detail_product($item));

        $this->view("Client/layoutss/Layout2", [
            "page" => "BlogPage",
            "pageContent" => "blogdetailContent",
            "detail" => $get->get_detail_blog($item),
            "categorie_blog" => $get->get_categorie_blog(),
            "new_blog" => $get->get_new_blog(),
            "product_type" => $get->get_productType(),
        ]);
    }
}
