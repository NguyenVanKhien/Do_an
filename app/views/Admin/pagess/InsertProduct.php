<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<style>
    label {
        width: 200px;
        height: 30px;


    }
</style>

<body>

    <h1>Thêm sản phẩm</h1>
    <form action="" method="post" enctype="multipart/form-data">
        <label>Tên sản phẩm:</label>
        <input type="text" name="product_name">
        <br>
        <label>Giá:</label>
        <input type="text" name="price">
        <br>
        <label>Thông tin:</label>
        <textarea style="resize: both;" name="information"></textarea>
        <br>
        <label>Mô tả:</label>
        <textarea style="resize: both;" name="description"></textarea>
        <br>
        <label>Ảnh:</label>
        <input type="file" name="file-upload">
        <br>
        <label>Tình trạng:</label>
        <input type="text" name="availability">
        <br>
        <label>Hạn sử dụng:</label>
        <input type="text" name="date">
        <br>
        <label>Ngày sản xuất:</label>
        <input type="date" name="ndate">
        <br>
        <label>Hướng dẫn bảo quản:</label>
        <input type="text" name="hdbq">
        <br>
        <label>Loại sản phẩm:</label>
        <select name="productType_id">
            <?php
            foreach ($data['pro_Type'] as $each) { ?>
                <option value="<?php echo $each['productType_id'] ?>">
                    <?php echo $each['productType_name']  ?>
                </option>


            <?php
            }
            ?>
        </select>
        <br>
        <input type="submit" name="submit" value="Thêm">
    </form>
</body>

</html>