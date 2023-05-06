<h1>Quản lý danh mục các sản phẩm</h1>
<br>
<div>
    <a href="<?php echo _WEB_ROOT . "/Admin/Manage/productType/insert" ?>">Thêm loại sản phẩm</a>
</div>
<br>
<table border="1" width="100%" style="text-align: center;">
    <tr>
        <th>Mã loại</th>
        <th>Tên loại sản phẩm</th>
        <th>Sửa</th>
        <th>Xóa</th>

    </tr>
    <?php
    foreach ($data["type"] as $prod) { ?>
        <tr>
            <td><?php echo $prod['productType_id'] ?></td>
            <td><?php echo $prod['productType_name'] ?></td>
            <td><a href="<?php echo _WEB_ROOT . "/Admin/Manage/productType/update?key=" . $prod['productType_id'] ?>">Sửa</a></td>
            <td><a href="<?php echo _WEB_ROOT . "/Admin/Manage/productType/delete?key=" . $prod['productType_id'] ?>">Xóa</a></td>
        </tr>
    <?php
    }
    ?>


</table>