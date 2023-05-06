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

    <h1>Thêm blog</h1>
    <form action="" method="post" enctype="multipart/form-data">
        <label>Tiêu đề:</label>
        <textarea style="resize:horizontal;" name="blog_title"></textarea>
        <br>
        <label>Nội dung:</label>
        <textarea style="resize: both;" name="blog_content"></textarea>
        <br>
        <label>Ảnh:</label>
        <input type="file" name="file-upload">
        <br>
        <label>Thể loại:</label>
        <select name="categorieBlog_id">
            <?php
            foreach ($data['cata_blog'] as $each) { ?>
                <option value="<?php echo $each['categorieBlog_id'] ?>">
                    <?php echo $each['categorieBlog_name']  ?>
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