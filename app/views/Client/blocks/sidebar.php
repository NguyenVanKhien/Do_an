<div class="col-lg-3 col-md-5">
    <div class="sidebar">
        <div class="sidebar__item">
            <h4>DANH MỤC</h4>
            <ul>
                <?php foreach ($data['product_type'] as $each) : ?>
                    <li><a href="<?php echo _WEB_ROOT . "/cua-hang/danh-muc/" . $each['productType_name'] ?>"><?php echo $each['productType_name'] ?></a></li>
                <?php endforeach ?>
            </ul>
        </div>
        <div class="sidebar__item">
            <h4>Giá</h4>
            <div class="price-range-wrap">
                <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content" data-min="10" data-max="540">
                    <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                    <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                    <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                </div>
                <div class="range-slider">
                    <div class="price-input">
                        <input type="text" id="minamount">
                        <input type="text" id="maxamount">
                    </div>
                </div>
            </div>
        </div>
        <div class="sidebar__item sidebar__item__color--option">

        </div>
        <div class="sidebar__item">
            <h4>Trạng thái</h4>
            <div class="sidebar__item__size">
                <label for="large">
                    Nổi bật
                    <input type="radio" id="large">
                </label>
            </div>
            <div class="sidebar__item__size">
                <label for="medium">
                    Giảm giá
                    <input type="radio" id="medium">
                </label>
            </div>
            <!-- <div class="sidebar__item__size">
                <label for="small">
                    Small
                    <input type="radio" id="small">
                </label>
            </div> -->

        </div>
        <div class="sidebar__item">
            <div class="latest-product__text">
                <h4>Sản phẩm mới</h4>
                <div class="latest-product__slider owl-carousel">
                    <div class="latest-prdouct__slider__item">
                        <?php foreach ($data['product_featured5'] as $each) : ?>
                            <a href="<?php echo _WEB_ROOT . "/chi-tiet/sanpham/"  . $each['product_id'] ?>" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img style="width: 100px; height:100px" src="<?php echo _WEB_ROOT . $each['image'] ?>" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6><?php echo $each['product_name'] ?></h6>
                                    <span><?php echo number_format($each['price']) . " VNĐ" ?></span>
                                </div>
                            </a>
                        <?php endforeach ?>
                    </div>
                    <div class="latest-prdouct__slider__item">
                        <?php foreach ($data['product_featured6'] as $each) : ?>
                            <a href="<?php echo _WEB_ROOT . "/chi-tiet/sanpham/"  . $each['product_id'] ?>" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img style="width: 100px; height:100px" src="<?php echo _WEB_ROOT . $each['image'] ?>" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6><?php echo $each['product_name'] ?></h6>
                                    <span><?php echo number_format($each['price']) . " VNĐ" ?></span>
                                </div>
                            </a>
                        <?php endforeach ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>