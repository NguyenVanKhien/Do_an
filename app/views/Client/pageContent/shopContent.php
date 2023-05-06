<div class="col-lg-9 col-md-7">
    <div class="filter__item">
        <div class="row">
            <div class="col-lg-4 col-md-5">
                <div class="filter__sort">
                    <!-- <span>Sắp xếp</span> -->

                    <ul class="sort">
                        <li class="coc">
                            <div style="justify-content:space-between; display:flex">
                                <div><?php if (isset($_SESSION['type_sort'])) {
                                            echo $_SESSION['type_sort'];
                                        } else {
                                            echo "Mặc định";
                                        } ?></div>
                                <div><span class="arrow_carrot-down"></span></div>
                            </div>
                            <ul class="sub_item">
                                <!-- <li><a href="">Mặc định</a></li> -->
                                <li><a href="?sort=name-asc">Sắp xếp theo tên</a></li>
                                <li><a href="?sort=price-asc">Giá từ thấp đến cao</a></li>
                                <li><a href="?sort=price-desc">Giá từ cao đến thấp</a></li>
                            </ul>
                        </li>
                    </ul>

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
    <?php if (isset($data['numberPagePro'])) { ?>
        <div class="product__pagination">
            <?php for ($i = 1; $i <= $data['numberPagePro']; $i++) : ?>
                <?php if (isset($data['nameType'])) { ?>
                    <a href="<?php if (isset($_SESSION['sos'])) {
                                    echo _WEB_ROOT . "/cua-hang/danh-muc/" . $data['nameType'] . "?sort=" . $_SESSION['sos'] . "&page=" . $i;
                                } else {
                                    echo _WEB_ROOT . "/cua-hang/danh-muc/" . $data['nameType'] . "?page=" . $i;
                                } ?>"><?php echo $i ?></a>
                <?php } else { ?>
                    <a href="<?php if (isset($_SESSION['sos'])) {
                                    echo _WEB_ROOT . "/cua-hang?sort=" . $_SESSION['sos'] . "&page=" . $i;
                                } else {
                                    echo _WEB_ROOT . "/cua-hang?page=" . $i;
                                } ?>"><?php echo $i ?></a>
                <?php } ?>
            <?php endfor ?>
            <!-- <a href="#"><i class="fa fa-long-arrow-right"></i></a> -->
        </div>
    <?php } ?>
</div>