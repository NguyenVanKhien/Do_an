<?php
$cart = $data["sp"];
$sum = 0;
?>

<!-- <style>
    label {
        width: 80px;

    }

    .form1 {

        background-color: #c9c7c7;
        width: 100%;
        height: auto;
        text-align: left;
        margin: auto;
        display: flex;
        justify-content: center;
    }

    form {
        margin-top: 150px;
    }

    #btn {
        width: 160px;
        height: 46px;
        border: none;
        background: #fe4c50;
        color: #FFFFFF;
        font-size: 14px;
        font-weight: 500;
        text-transform: uppercase;
        cursor: pointer;
        margin-top: 15px;

    }

    #inp {
        width: 40%;
        height: 30px;
        background: #FFFFFF;
        border: none;
        font-size: 14px;
        padding-left: 20px;
        margin-bottom: 10px;

    }

    #note {
        width: 40%;
        border: none;
        font-size: 14px;
        padding-left: 20px;
    }

    .order {
        margin-top: 150px;
    }

    .order_item {
        display: flex;
        margin: 5px;
        width: 85%;
    }

    .order_name {
        margin: 0 10px 0 7px;
        width: 55%;
        color: #fe4c50;
    }

    .order_name>p {
        color: black;
    }

    .order_price>p {
        color: #fe4c50;
    }

    .total_price {
        font-size: 25px;
        font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    }

    .total_price>span {
        color: #fe4c50;
        margin-left: 150px;
    }
</style> -->
<section class="shoping-cart spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="shoping__cart__table">
                    <?php
                    if (!empty($_SESSION['cart_tb'])) {
                    ?>
                        <table>
                            <thead>
                                <tr>
                                    <th class="shoping__product">Sản phẩm</th>
                                    <th>Giá</th>
                                    <th>Số lượng</th>
                                    <th>Tổng</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($cart as $key => $value) : ?>
                                    <tr>
                                        <td class="shoping__cart__item">
                                            <img src="<?php echo _WEB_ROOT . $value['image'] ?>" alt="">
                                            <h5><?php echo $value['name'] ?></h5>
                                        </td>
                                        <td class="shoping__cart__price">
                                            <?php echo number_format($value['price']) . " VNĐ" ?>
                                        </td>
                                        <td>
                                            <span class="minus"><a style="color: black;" href="<?php echo _WEB_ROOT . "/Cart/minus?id=" . $key; ?>"><i class="fa fa-minus" aria-hidden="true"></i></a></span>
                                            <?php echo $value['quantity'] ?>
                                            <span class="plus"><a style="color: black;" href="<?php echo _WEB_ROOT . "/Cart/plus?id=" . $key; ?>"><i class=" fa fa-plus" aria-hidden="true"></i></a></span>

                                        </td>
                                        <td class="shoping__cart__total">
                                            <?php $resuilt =  $value['price'] * $value['quantity'];
                                            echo number_format($resuilt) . " VNĐ";
                                            $sum += $resuilt;
                                            ?>
                                        </td>
                                        <td class="shoping__cart__item__close">
                                            <span class="plus"><a style="color: black;" onclick="return confirm('Are you sure you want to delete this item?');" href="<?php echo _WEB_ROOT . "/Cart/delete?id=" . $key ?>"><i class="fa-solid fa-xmark"></i></a></span>

                                        </td>
                                    </tr>
                                <?php endforeach ?>

                            </tbody>
                        </table>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="shoping__cart__btns">
                                    <a href="<?php echo _WEB_ROOT . "/cua-hang" ?>" class="primary-btn cart-btn">Tiếp tục mua hàng</a>

                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="shoping__checkout">
                                    <h5>Cart Total</h5>
                                    <ul>
                                        <li>Subtotal <span><?php echo number_format($sum) . " VNĐ" ?></span></li>
                                        <li>Total <span><?php echo number_format($sum) . " VNĐ" ?></span></li>
                                    </ul>
                                    <a href="<?php echo _WEB_ROOT . "/checkout" ?>" class="primary-btn">Thực hiện thanh toán</a>
                                </div>
                            </div>
                        </div>
                    <?php } else { ?>
                        <p>Không có sản phẩm nào trong giỏ hàng. Quay lại cửa hàng để tiếp tục mua sắm.</p>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</section>