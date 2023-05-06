<h1>Đây là trang chủ quản lý  khách hàng</h1>

<br>
<table border="1" width="100%" style="text-align: center;">
    <tr>
        <th>Tên khách hàng</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Address</th>
    </tr>
    <?php
    foreach ($data["clients"] as $key => $prod) { ?>
        <tr>
            <td><?php echo $prod['first_name'] . $prod['last_name'] ?></td>
            <td><?php echo $prod['email'] ?></td>
            <td><?php echo $prod['phone_number'] ?></td>
            <td><?php echo $prod['address'] ?></td>
        </tr>
    <?php
    }
    ?>


</table>
