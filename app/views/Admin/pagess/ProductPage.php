<h1>Quản lý các sản phẩm</h1>
<br>
<div>
    <a href="<?php echo _WEB_ROOT . "/Admin/Manage/product/insert" ?>">Thêm sản phẩm</a>
</div>
<br>
<table border="1" width="100%" style="text-align: center;">
    <tr>
        <th>Mã</th>
        <th>Tên sản phẩm</th>
        <th>Ảnh</th>
        <th>Giá</th>
        <th>Mã loại</th>
        <th>Tình trạng</th>
        <th>Hạn sử dụng</th>
        <th>Ngày sản xuất</th>
        <th>Hướng dẫn bảo quản</th>
        <th>Sửa</th>
        <th>Xóa</th>
    </tr>
    <?php
    foreach ($data["sp"] as $key => $prod) { ?>
        <tr>
            <td><?php echo $prod['product_id'] ?></td>
            <td><?php echo $prod['product_name'] ?></td>
            <td><img width="100" src="<?php echo _WEB_ROOT . $prod['image'] ?>" alt=""></td>
            <td><?php echo number_format($prod['price']) ?></td>
            <td><?php echo $prod['productType_id'] ?></td>
            <td><?php echo $prod['availability'] ?></td>
            <td><?php echo $prod['date'] ?></td>
            <td><?php echo $prod['ndate'] ?></td>
            <td><?php echo $prod['hdbq'] ?></td>
            <td><a href="<?php echo _WEB_ROOT . "/Admin/Manage/product/update?key=" . $prod['product_id'] ?>">Sửa</a></td>
            <td><a href="<?php echo _WEB_ROOT . "/Admin/Manage/product/delete?key=" . $prod['product_id'] ?>">Xóa</a></td>
        </tr>
    <?php
    }
    ?>


</table>