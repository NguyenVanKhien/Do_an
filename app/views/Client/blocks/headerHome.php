<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Humberger Begin -->

<!-- Humberger End -->

<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 banner__left">
                    <div class="header__top__left">
                        <ul class=>
                            <li><i class="fa fa-envelope"></i> khiennguyenbn2501@gmail.com</li>
                            <li>Miễn Ship toàn quốc với mọi đơn hàng từ 500.000 vnđ
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 banner__right">
                    <div class="header__top__right">
                        <div class="header__top__right__social">
                            <a href="https://www.facebook.com/khien.nguyen.507027/"><i class="fa fa-facebook"></i></a>
                            <a href="https://www.tiktok.com/@nguyenkhien0125"><i class="fa-brands fa-tiktok"></i></a>
                            <a href="https://www.instagram.com/kh0251002/"><i class="fa fa-instagram"></i></a>
                            <a href="https://zalo.me/363981299"><i class="fa fa-phone"></i></a>
                        </div>
                        <div class="header__top__right__language">
                            <img style="width: 27px; height: 14px;" src="<?php echo _WEB_ROOT . "/public/img/vn.png" ?>"
                                alt="">
                            <div>Việt Nam</div>
                            <span class="arrow_carrot-down"></span>
                            <ul>
                                <li><a href="#">Việt Nam</a></li>
                                <li><a href="#">English</a></li>
                            </ul>
                        </div>
                        <div class="header__top__right__auth">
                            <?php if (!isset($_SESSION['fullname'])) { ?>
                                <ul class="login">
                                    <li id="dn">
                                        <a href="<?php echo _WEB_ROOT . "/member/login" ?>"><i class=" fa fa-user"></i> Đăng
                                            nhập </a>
                                    </li>
                                    <li id="gach"> | </li>
                                    <li id="dk">
                                        <a href="<?php echo _WEB_ROOT . "/member/register" ?>"><i class="fa fa-user"></i>
                                            Đăng ký </a>
                                    </li>
                                </ul>
                            <?php } else { ?>
                                <ul class="account">
                                    <li id="coc_account">
                                        <a><i class=" fa fa-user"></i> Xin chào,
                                            <?php echo $_SESSION['fullname'] ?>
                                        </a>

                                        <ul class="sub_account">
                                            <li><a href="<?php echo _WEB_ROOT . "/member/profile" ?>">Thông tin</a></li>
                                            <li><a href="<?php echo _WEB_ROOT . "/member/logout" ?>">Đăng xuất</a></li>
                                        </ul>
                                    </li>

                                </ul>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row header__tablet">
            <div class="col-lg-3 header__tablet-logo">
                <div class="header__logo">
                    <a href="<?php echo _WEB_ROOT ?>"><img src="<?php echo _WEB_ROOT . "/public/img/logo11.png" ?>"
                            alt=""></a>
                </div>
            </div>
            <div class="col-lg-6 hide-on-mobile">
                <nav class="header__menu">
                    <ul>
                        <li><a href="<?php echo _WEB_ROOT ?>">Trang chủ</a></li>
                        <li><a href="<?php echo _WEB_ROOT . "/cua-hang" ?>">Cửa hàng</a></li>
                        <li><a href="">Trang</a>
                            <ul class="header__menu__dropdown">
                                <li><a href="<?php echo _WEB_ROOT . "/cart" ?>">Giỏ hàng</a></li>
                                <li><a href="<?php echo _WEB_ROOT . "/checkout" ?>">Thanh toán</a></li>
                            </ul>
                        </li>
                        <li><a href="<?php echo _WEB_ROOT . "/Blog" ?>">Blog</a></li>
                        <li><a href="./contact.html">Liên hệ</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3 tablet__cart">
                <div class="header__cart">
                    <ul>
                        <li><a href="<?php echo _WEB_ROOT . "/order/user" ?>"><i class="fa-solid fa-file-invoice"></i></a></li>
                        <li><a href="<?php echo _WEB_ROOT . "/cart" ?>"><i class="fa fa-shopping-bag"></i> <span>
                                    <?php
                                    if (!empty($_SESSION['cart_tb'])) {
                                        $cart = $_SESSION['cart_tb'];
                                        $t = 0;
                                        foreach ($cart as $key => $value) {
                                            $t += $value['quantity'];
                                        }
                                        echo $t;
                                    } else {
                                        echo 0;
                                    } ?>
                                </span></a></li>

                    </ul>
                    <div class="header__cart__price">item: <span>
                            <?php
                            if (!empty($_SESSION['cart_tb'])) {
                                $cart = $_SESSION['cart_tb'];
                                $money = 0;
                                foreach ($cart as $key => $value) {
                                    $money += $value['quantity'] * $value['price'];
                                }
                                echo number_format($money) . " VNĐ";
                            } else {
                                echo '0' . " VNĐ";
                            } ?>
                        </span></div>
                </div>
            </div>
        </div>
        <!-- <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div> -->
    </div>
</header>
<!-- Header Section End -->

<!-- Hero Section Begin -->
<section class="hero">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>Sản phẩm</span>
                    </div>
                    <ul>
                        <?php foreach ($data['product_type'] as $each): ?>
                            <li><a href="<?php echo _WEB_ROOT . "/cua-hang/danh-muc/" . $each['productType_name'] ?>"><?php echo $each['productType_name'] ?></a></li>
                        <?php endforeach ?>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="hero__search">
                    <div class="hero__search__form">

                        <form action="<?php echo _WEB_ROOT . "/tim-kiem" ?>" method="POST">
                            <div class="hero__search__categories">
                                Tất cả sản phẩm
                                <span class="arrow_carrot-down"></span>
                            </div>
                            <input type="text" name="search" id="search_name" placeholder="Bạn đang cần gì?">
                            <button type="submit" name="submit" class="site-btn">Tìm kiếm</button>
                        </form>

                    </div>
                    <div class="wrap_suggest" id="show_search">
                        <!-- <ul class="list_search">
                            <li>

                                <a href="">
                                    <img src="https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.timeoutdubai.com%2Fattraction%2Fimg-worlds-of-adventure&psig=AOvVaw1UiiE1HSRFIr5-7AJrd46S&ust=1648140117356000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCOCr2MbW3PYCFQAAAAAdAAAAABAD" alt="" style="width:50px; height:50px">
                                </a>

                                <div class="suggest_item">
                                    <p>Set Quà 02_Thịt Trâu Gác Bếp 05 & Chẳm Chéo & Hạt</p>
                                    <p>850,000 VNĐ</p>
                                </div>
                            </li>
                            <li>

                                <a href="">
                                    <img src="https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.timeoutdubai.com%2Fattraction%2Fimg-worlds-of-adventure&psig=AOvVaw1UiiE1HSRFIr5-7AJrd46S&ust=1648140117356000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCOCr2MbW3PYCFQAAAAAdAAAAABAD" alt="" style="width:50px; height:50px">
                                </a>

                                <div class="suggest_item">
                                    <p>Set Quà 02_Thịt Trâu Gác Bếp 05 & Chẳm Chéo & Hạt</p>
                                    <p>850,000 VNĐ</p>
                                </div>
                            </li>
                        </ul>  -->
                    </div>

                    <div class="hero__search__phone">
                        <div class="hero__search__phone__icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="hero__search__phone__text">
                            <h5>+84 363981299</h5>
                            <span>Support 24/7 Time</span>
                        </div>
                    </div>
                </div>
                <div class="hero__item set-bg" style="height: 431px;"
                    data-setbg="<?php echo _WEB_ROOT . "/public/img/hero/banner.jpg" ?>">
                </div>
            </div>
        </div>
    </div>
</section>