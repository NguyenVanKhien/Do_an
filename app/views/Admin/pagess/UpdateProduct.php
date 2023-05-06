<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    label {
        width: 150px;
        height: 30px;
        display: inline-block;
    }
</style>

<body>
    <?php
    $resuilt1 = mysqli_fetch_array($data['product']);

    ?>
    <h1>Sửa sản phẩm</h1>
    <form action="" method="post" enctype="multipart/form-data">
        <input type="hidden" name="product_id" value="<?php echo $resuilt1['product_id'] ?>">
        <label>Tên sản phẩm:</label>
        <input type=" text" name="product_name" value="<?php echo $resuilt1['product_name'] ?>">
        <br>
        <label>Giá:</label>
        <input type="text" name="price" value="<?php echo $resuilt1['price'] ?>">
        <br>
        <label>Đổi ảnh mới:</label>
        <input type="file" name="image_new">
        <br>
        <label>Hoặc giữ ảnh cũ:</label>
        <img src="<?php echo _WEB_ROOT . $resuilt1['image'] ?>" height="100" style="margin-bottom: 15px;" alt="">
        <input type="hidden" name="image_old" value="<?php echo $resuilt1['image'] ?>">
        <br>
        <label>Thông tin:</label>
        <textarea style="resize: both;" name="information"><?php echo $resuilt1['information'] ?></textarea>
        <br>
        <label>Mô tả:</label>
        <textarea style="resize: both;" name="description"><?php echo $resuilt1['description'] ?></textarea>
        <br>
        <label>Tình trạng:</label>
        <input type="text" name="availability" value="<?php echo $resuilt1['availability'] ?>">
        <br>
        <label>Hạn sử dụng:</label>
        <input type="text" name="date" value="<?php echo $resuilt1['date'] ?>">
        <br>
        <label>Ngày sản xuất:</label>
        <input type="date" name="ndate" value="<?php echo $resuilt1['ndate'] ?>">
        <br>
        <label>Hướng dẫn bảo quản:</label>
        <input type="text" name="hdbq" value="<?php echo $resuilt1['hdbq'] ?>">
        <br>
        <label>Nhà sản xuất</label>
        <select name="productType_id">
            <?php
            foreach ($data['pro_Type'] as $each) { ?>
                <option value="<?php echo $each['productType_id'] ?>" <?php if ($each['productType_id'] == $resuilt1['productType_id']) { ?> selected <?php } ?>>
                    <?php echo $each['productType_name'] ?>
                </option>
            <?php
            }

            ?>
        </select>
        <br>
        <input type="submit" name="submit" value="Sửa">

    </form>

</body>

</html>