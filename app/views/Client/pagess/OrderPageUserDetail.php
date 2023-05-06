<section class="shoping-cart spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="shoping__cart__table">

          <table>
            <thead>
              <tr>
                <th>Ảnh sản phẩm</th>
                <th>Tên sản phẩm</th>
                <th>Đơn giá</th>
                <th>Số lượng</th>
                <th>Thành tiền</th>
              </tr>
            </thead>
            <tbody>
              <?php 
               $sum = 0;
              foreach ($data["order_detail"] as $key => $each) {

              ?>

                <tr>
                  <td><img width="100" src="<?php echo _WEB_ROOT . $each['image'] ?>" alt=""></td>
                  <td><?php echo $each['product_name'] ?></td>
                  <td><?php echo number_format($each['price']) . " VNĐ"; ?></td>
                  <td><?php echo $each['quantity'] ?></td>
                  <td><?php $resuilt =  $each['price'] * $each['quantity'];
                      echo number_format($resuilt) . " VNĐ";
                      $sum += $resuilt;

                      ?></td>

                </tr>


              <?php
              }
              ?>

            </tbody>
            <tfoot align="right" style="height: 90px;">
              <tr>
                <td colspan="6">Tổng tiền:

                  <?php //$t = 0;
                  // foreach ($cart as $key => $value) {
                  //     $t += $value['tien'];
                  // }                               
                  echo number_format($sum) . " VNĐ";
                  ?>

                </td>
              </tr>
            </tfoot>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>