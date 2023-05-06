<section class="categories">
    <div class="container">
        <div class="row">
            <div class="categories__slider owl-carousel">
                <?php foreach ($data['product'] as $each) : ?>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="<?php echo _WEB_ROOT . $each['image'] ?>">
                            <h5><a href="<?php echo _WEB_ROOT . "/chi-tiet/sanpham/"  . $each['product_id'] ?>"><?php echo $each['product_name'] ?></a></h5>
                        </div>
                    </div>

                <?php endforeach ?>
            </div>
        </div>
    </div>
</section>
<!-- Categories Section End -->

<!-- Featured Section Begin -->
<section class="featured spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h2>Sản phẩm nổi bật</h2>
                </div>
                <div class="featured__controls">
                    <ul>
                        <li class="active" data-filter="*">Tất cả</li>
                        <li data-filter=".fresh-meat">Gia vị Tây Bắc</li>
                        <li data-filter=".oranges">Thịt gác bếp</li>
                        <li data-filter=".vegetables">Thực phẩm</li>
                        <li data-filter=".fastfood">Quà Tết</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row featured__filter">
            <?php foreach ($data['product_featured1'] as $each) : ?>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<?php echo _WEB_ROOT . $each['image'] ?>">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="<?php echo _WEB_ROOT . "/Cart/store?id=" . $each['product_id'] ?>"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="<?php echo _WEB_ROOT . "/chi-tiet/sanpham/"  . $each['product_id'] ?>"><?php echo $each['product_name'] ?></a></h6>
                            <h5><?php echo number_format($each['price']) . " VNĐ" ?></h5>
                        </div>
                    </div>
                </div>
            <?php endforeach ?>

            <?php foreach ($data['product_featured2'] as $each) : ?>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<?php echo _WEB_ROOT . $each['image'] ?>">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="<?php echo _WEB_ROOT . "/Cart/store?id=" . $each['product_id'] ?>"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="<?php echo _WEB_ROOT . "/chi-tiet/sanpham/"  . $each['product_id'] ?>"><?php echo $each['product_name'] ?></a></h6>
                            <h5><?php echo number_format($each['price']) . " VNĐ" ?></h5>
                        </div>
                    </div>
                </div>
            <?php endforeach ?>
            <?php foreach ($data['product_featured3'] as $each) : ?>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<?php echo _WEB_ROOT . $each['image'] ?>">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="<?php echo _WEB_ROOT . "/Cart/store?id=" . $each['product_id'] ?>"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="<?php echo _WEB_ROOT . "/chi-tiet/sanpham/"  . $each['product_id'] ?>"><?php echo $each['product_name'] ?></a></h6>
                            <h5><?php echo number_format($each['price']) . " VNĐ" ?></h5>
                        </div>
                    </div>
                </div>
            <?php endforeach ?>
            <?php foreach ($data['product_featured4'] as $each) : ?>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<?php echo _WEB_ROOT . $each['image'] ?>">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="<?php echo _WEB_ROOT . "/Cart/store?id=" . $each['product_id'] ?>"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="<?php echo _WEB_ROOT . "/chi-tiet/sanpham/"  . $each['product_id'] ?>"><?php echo $each['product_name'] ?></a></h6>
                            <h5><?php echo number_format($each['price']) . " VNĐ" ?></h5>
                        </div>
                    </div>
                </div>
            <?php endforeach ?>


        </div>
    </div>
</section>
<!-- Featured Section End -->

<!-- Banner Begin -->
<div class="banner">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="img/banner/banner-1.jpg" alt="">
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="img/banner/banner-2.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Banner End -->

<!-- Latest Product Section Begin -->

<!-- Latest Product Section End -->

<!-- Blog Section Begin -->
<section class="from-blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title from-blog__title">
                    <h2>Blogs</h2>
                </div>
            </div>
        </div>

        <div class="row">
            <?php foreach ($data['blog_featured'] as $each) : ?>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="<?php echo _WEB_ROOT . $each['image'] ?>" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> <?php echo date("M j,Y", strtotime((string)$each['posted_at'])) ?></li>
                                <li><i class="fa fa-comment-o"></i> 5</li>
                            </ul>
                            <h5><a href="<?php echo _WEB_ROOT . "/chi-tiet/blog/" . $each['blog_id'] ?>"><?php echo $each['blog_title'] ?></a></h5>
                            <p><?php echo substr($each['blog_content'], 0, 122) ?></p>
                            <a href="<?php echo _WEB_ROOT . "/chi-tiet/blog/" . $each['blog_id'] ?>" class="blog__btn">READ MORE <span class="arrow_right"></span></a>
                        </div>
                    </div>
                </div>
            <?php endforeach ?>
        </div>


    </div>
</section>