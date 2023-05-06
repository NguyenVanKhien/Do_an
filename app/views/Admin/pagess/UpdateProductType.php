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

    <?php
    $resuilt1 = mysqli_fetch_array($data['productTypeID']);
    ?>
    <h1>Sửa loại sản phẩm</h1>
    <form action="" method="post">
        <input type="hidden" name="productType_id" value="<?php echo $resuilt1['productType_id'] ?>">
        <br>
        <input type=" text" name="productType_name" value="<?php echo $resuilt1['productType_name'] ?>">
        <br>
        <input type="submit" name="submit" value="Sửa">
    </form>
</body>

</html>