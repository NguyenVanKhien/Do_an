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
    $resuilt1 = mysqli_fetch_array($data['blog']);
    ?>
    <h1>Sửa blog</h1>
    <form action="" method="post" enctype="multipart/form-data">
        <input type="hidden" name="blog_id" value="<?php echo $resuilt1['blog_id'] ?>">
        <label>Tiêu đề:</label>
        <textarea style="resize:horizontal;" name="blog_title"><?php echo $resuilt1['blog_title'] ?></textarea>
        <br>
        <label>Nội dung:</label>
        <textarea style="resize: both;" name="blog_content"><?php echo $resuilt1['blog_content'] ?></textarea>
        <br>
        <!-- <label>Ảnh:</label>
        <input type="file" name="file-upload"> -->

        <label>Đổi ảnh mới:</label>
        <input type="file" name="image_new">
        <br>
        <label>Hoặc giữ ảnh cũ:</label>
        <img src="<?php echo _WEB_ROOT . $resuilt1['image'] ?>" height="100" style="margin-bottom: 15px;" alt="">
        <input type="hidden" name="image_old" value="<?php echo $resuilt1['image'] ?>">


        <br>
        <label>Thể loại:</label>
        <select name="categorieBlog_id">
            <?php
            foreach ($data['cata_blog'] as $each) { ?>
                <option value="<?php echo $each['categorieBlog_id'] ?>" <?php if ($each['categorieBlog_id'] == $resuilt1['categorieBlog_id']) { ?> selected <?php } ?>>
                    <?php echo $each['categorieBlog_name']  ?>
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