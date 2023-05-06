<h1>Đây là trang chủ quản lý đơn hàng</h1>
<br>

<table border="1" width="100%" style="text-align: center;">
    <tr>
        <th>Mã đơn</th>
        <th>Thời gian đặt</th>
        <th>Thông tin người nhận</th>
        <th>Ghi chú</th>
        <th>Trạng thái</th>
        <th>Tổng tiền</th>
        <th>Xem</th>
        <th>Xóa</th>
        <th>Duyệt</th>
        <th>Hủy</th>
    </tr>
    <?php
    foreach ($data["order"] as $key => $each) { ?>
        <tr>
            <td><?php echo $each['order_id'] ?></td>
            <td><?php echo $each['created_at'] ?></td>
            <td>
                <?php echo $each['name_receiver'] ?> <br>
                <?php echo $each['phone_receiver'] ?> <br>
                <?php echo $each['address_receiver'] ?> <br>
            </td>
            <td><?php echo $each['note'] ?></td>
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
            <td><?php echo number_format($each['total_price']) . " VNĐ" ?></td>
            <td><a href="<?php echo _WEB_ROOT . "/Admin/Manage/orders/detail?key=" . $each['order_id'] ?>">Xem</a></td>
            <td><a href="<?php echo _WEB_ROOT . "/Admin/Manage/orders/delete?key=" . $each['order_id'] ?>">Xóa</a></td>
            <?php
            if ($each['status'] != 1 && $each['status'] != 2) { ?>
                <td><a href="<?php echo _WEB_ROOT . "/Admin/Manage/orders/accept?key=" . $each['order_id'] ?>">Duyệt</a></td>
            <?php
            }
            ?>
            <?php
            if ($each['status'] != 1 && $each['status'] != 2) { ?>
                <td><a href="<?php echo _WEB_ROOT . "/Admin/Manage/orders/cancel?key=" . $each['order_id'] ?>">Hủy</a></td>
            <?php
            }
            ?>

        </tr>
    <?php
    }
    ?>


</table>