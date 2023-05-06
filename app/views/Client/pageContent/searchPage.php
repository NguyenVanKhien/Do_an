<div class="col-lg-9 col-md-7">
    <div class="filter__item">
        <div class="row">
            <div class="col-lg-4 col-md-5">
                <div class="filter__sort">
                    <h5 style="color: green;">Tìm thấy <?php echo $data['count_search'] ?> sản phẩm</h5>

                </div>
            </div>

        </div>
    </div>
    <div class="row">
        <?php foreach ($data['product'] as $each) : ?>
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="<?php echo _WEB_ROOT . $each['image'] ?>">
                        <ul class="product__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="<?php echo _WEB_ROOT . "/Cart/store?id=" . $each['product_id'] ?>"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="<?php echo _WEB_ROOT . "/chi-tiet/sanpham/"  . $each['product_id'] ?>"><?php echo $each['product_name'] ?></a></h6>
                        <h5><?php echo number_format($each['price']) . " VNĐ" ?></h5>
                    </div>
                </div>
            </div>
        <?php endforeach ?>


    </div>
</div>