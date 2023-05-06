<h1>Quản lý blogs</h1>
<br>
<div>
    <a href="<?php echo _WEB_ROOT . "/Admin/Manage/blogs/insert" ?>">Thêm blog</a>
</div>
<br>
<table border="1" width="100%" style="text-align: center;">
    <tr>
        <th>Mã blog</th>
        <th>Tiêu đề</th>
        <th>Ảnh</th>
        <th>Mã thể loại</th>
        <th>Sửa</th>
        <th>Xóa</th>
    </tr>
    <?php
    foreach ($data["blogs"] as $key => $prod) { ?>
        <tr>
            <td><?php echo $prod['blog_id'] ?></td>
            <td><?php echo $prod['blog_title'] ?></td>
            <td><img width="100" src="<?php echo _WEB_ROOT . $prod['image'] ?>" alt=""></td>
            <td><?php echo $prod['categorieBlog_id'] ?></td>
            <td><a href="<?php echo _WEB_ROOT . "/Admin/Manage/blogs/update?key=" . $prod['blog_id'] ?>">Sửa</a></td>
            <td><a href="<?php echo _WEB_ROOT . "/Admin/Manage/blogs/delete?key=" . $prod['blog_id'] ?>">Xóa</a></td>
        </tr>
    <?php
    }
    ?>


</table>