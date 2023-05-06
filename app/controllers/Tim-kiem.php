<?php
class Timkiem extends Control
{
    public function index()
    {

        if (isset($_POST['submit'])) {
            $search = $_POST['search'];


            $get = $this->model("HomeModels");
            $num = mysqli_fetch_array($get->get_count_search_product($search));
            $numOfCoun = $num['count(*)'];
            $this->view("Client/layoutss/Layout2", [
                "page" => "ShopPage",
                "Kword" => $search,
                "pageContent" => "searchPage",
                "count_search" => $numOfCoun,
                "product_type" => $get->get_productType(),
                "product_featured5" => $get->get_featured_product5(),
                "product_featured6" => $get->get_featured_product6(),
                "product" => $get->get_search_product($search),

            ]);
        }
    }
    public function search()
    {
        if (isset($_POST['search'])) {
            $get = $this->model("HomeModels");
            $result = $get->findProductAjax($_POST['search']);
            $result2 = mysqli_fetch_array($get->findNumProductAjax($_POST['search']));
            $num = $result2['count(*)'];
            if ($num != 0) :
                echo "Sản phẩm gợi ý";
                foreach ($result as $val) :
?>
                    <ul class="list_search">
                        <li>
                            <a href="<?php echo _WEB_ROOT . "/chi-tiet/sanpham/"  . $val['product_id'] ?>">
                                <img src="<?php echo _WEB_ROOT . $val['image'] ?>" alt="" style="width:50px; height:50px">

                                <div class="suggest_item">
                                    <p><?php echo $val['product_name'] ?></p>
                                    <p><?php echo number_format($val['price']) . " VNĐ" ?></p>
                                </div>
                            </a>
                        </li>
                    </ul>
<?php
                endforeach;
            else :
                echo "Không tìm thấy sản phẩm nào";
            endif;
        }
    }
}
?>