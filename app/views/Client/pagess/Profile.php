<section class="checkout spad">
    <div class="container">
        <!-- <div class="row">
                <div class="col-lg-12">
                    <h6><span class="icon_tag_alt"></span> Have a coupon? <a href="#">Click here</a> to enter your code
                    </h6>
                </div>
            </div> -->
        <div class="checkout__form">
            <?php
            $resuilt = mysqli_fetch_array($data['old_infor']);

            ?>
            <h4>Thay đổi thông tin cá nhân</h4>
            <form action="" method="post">
                <div class="row">
                    <div class="col-lg-8 col-md-6">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Họ<span>*</span></p>
                                    <input type="text" name="first_name" value="<?php echo $resuilt['first_name'] ?>">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Tên<span>*</span></p>
                                    <input type="text" name="last_name" value="<?php echo $resuilt['last_name'] ?>">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Số điện thoại<span>*</span></p>
                                    <input type="text" name="phone_number" value="<?php echo $resuilt['phone_number'] ?>">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Email<span>*</span></p>
                                    <input type="text" name="email" value="<?php echo $resuilt['email'] ?>">
                                </div>
                            </div>
                        </div>
                        <div class="checkout__input">
                            <p>Địa chỉ<span>*</span></p>
                            <input type="text" name="address" value="<?php echo $resuilt['address'] ?>">
                        </div>
                        <button type="submit" name="submit" class="site-btn">Lưu thay đổi</button>

                    </div>

                </div>
            </form>
        </div>
    </div>
</section>