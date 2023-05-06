<div class="container">
    <div class="form1">
        <div style="width:50%;">
            <?php foreach ($data['inforCustomer'] as $each): ?>
                <form class="infor_form" id="infor_form" action="" method="post">
                    <h3 style="font-weight: bold; color: black; margin-bottom:15px;">Thông tin mua hàng</h3>
                    <label for="">Phương thức thanh toán</label>
                    <select id="payment-method" class="form-select" onchange="changeAction()">
                        <option selected value="/TayBacFood/checkout">Thanh toán khi nhận hàng</option>
                        <option value="/TayBacFood/checkout/bank">Thanh toán qua VNpay</option>
                    </select>
                    <br>

                    <?php
                    $total_price = 0; foreach ($cart as $value) {
                        $total_price += $value['price'] * $value['quantity'];
                    }

                    ?>

                    <input type="hidden" name="amount" value="<?php echo (isset($total_price)) ? $total_price : 0; ?>" />

                    <label for="">Email</label>
                    <input id="inp" type="text" name="email_receiver" value="<?php echo $each['email'] ?>"
                        placeholder="Email">
                    <br>
                    <label for="">Họ và tên</label>
                    <input id="inp" type="text" name="name_receiver"
                        value="<?php echo $each['first_name'] . " " . $each['last_name'] ?>" placeholder="Họ và tên">
                    <br>
                    <label for="">Số điện thoại</label>
                    <input id="inp" type="text" name="phone_receiver" value="<?php echo $each['phone_number'] ?>"
                        placeholder="Số điện thoại">
                    <br>
                    <label for="">Địa chỉ</label>
                    <input id="inp" type="text" name="address_receiver" value="<?php echo $each['address'] ?>"
                        placeholder="Địa chỉ">
                    <br>
                    <label for="">Ghi chú</label>
                    <textarea id="note" name="note_receiver" placeholder="Ghi chú"></textarea>
                    <br>
                    <input id="btn" name="submit" type="submit" value="Đặt hàng">

                </form>
            <?php endforeach ?>
        </div>
        <?php if (!empty($_SESSION['cart_tb'])) { ?>
            <div class="order">
                <h3 style="font-weight: bold;">Đơn hàng(
                    <?php $t = 0;
                    foreach ($cart as $key => $value) {
                        $t += $value['quantity'];
                    }
                    echo $t;
                    ?> sản phẩm)
                </h3>
                <?php foreach ($cart as $key => $value) { ?>
                    <div class="order_item">
                        <div><img src="<?php echo _WEB_ROOT . $value['image'] ?>" width="50px" height="50px" alt=""></div>

                        <div class="order_name">
                            <p>
                                <?php echo $value['name'] ?>
                            </p>
                            <p>x
                                <?php echo $value['quantity'] ?>
                            </p>
                        </div>
                        <div class="order_price">
                            <p>
                                <?php echo number_format($value['price']) . " VNĐ" ?>
                            </p>
                        </div>
                    </div>
                <?php } ?>
                <div style="font-weight: bold;" class="total_price">Tổng tiền: <span>
                        <?php
                        $total_price = 0;
                        foreach ($cart as $value) {
                            $total_price += $value['price'] * $value['quantity'];
                        }
                        echo number_format($total_price) . " VNĐ";
                        ?>
                </div></span>
            </div>
        <?php } ?>
    </div>
</div>

<script>
    function changeAction() {
        var form = document.getElementById("infor_form");
        var select = document.getElementById("payment-method");
        form.action = select.value;
    }

</script>