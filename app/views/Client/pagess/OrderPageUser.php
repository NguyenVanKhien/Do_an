<section class="shoping-cart spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="shoping__cart__table">

          <table>
            <thead>
              <tr>
                <th>Đơn Hàng</th>
                <th>Thời gian đặt</th>
                <th>Thông tin người nhận</th>
                <th>Ghi chú</th>
                <th>Trạng thái</th>
                <th>Tổng tiền</th>
                
              </tr>
            </thead>
            <tbody>
              <?php foreach ($data["order_user"] as $key => $each) { ?>
                <tr>
                  <td>
                  <a href="<?php echo _WEB_ROOT . "/order/user/detail?key=" . $each['order_id'] ?>"><?php echo $each['order_id'] ?></a>
                  </td>
                  <td>
                  <?php echo $each['created_at'] ?>
                  </td>
                  <td>
                  <?php echo $each['name_receiver'] ?> <br>
                <?php echo $each['phone_receiver'] ?> <br>
                <?php echo $each['address_receiver'] ?> <br>
                  </td>
                  <td>
                  <?php echo $each['note'] ?>
                  </td>
                  <td>
                  <?php
                switch ($each['status']) {
                    case '0':
                        echo "Mới đặt";
                        break;
                    case '1';
                        echo "Đang vận chuyển";
                        break;
                    case '2';
                        echo "Đã hủy";
                        break;
                }
                ?>
                  </td>
                  <td>
                  <?php echo number_format($each['total_price']) . " VNĐ" ?>
                  </td>
                  
                </tr>
              <?php
              }
              ?>

            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>