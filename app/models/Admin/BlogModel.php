<?php
class BlogModel extends DB
{
    public function get_categorie_blog()
    {
        $sql = "select * from categorieblog";
        return mysqli_query($this->con, $sql);
    }

    public function get_blogs()
    {
        $sql = "select * from blogs";
        return mysqli_query($this->con, $sql);
    }

    public function insert_blog($blog_title, $blog_content, $path_file, $categorieBlog_id)
    {
        $sql = "insert into blogs(blog_title,blog_content,image,categorieBlog_id) values('$blog_title','$blog_content','$path_file','$categorieBlog_id')";
        return mysqli_query($this->con, $sql);
    }
    public function delete_productType($key)
    {
        $sql = "delete from producttype where productType_id = '$key'";
        return mysqli_query($this->con, $sql);
    }
    public function delete_blog($key)
    {
        $sql = "delete from blogs where blog_id = '$key'";
        return mysqli_query($this->con, $sql);
    }

    public function get_blogID($key)
    {
        $sql = "select * from blogs where blog_id = '$key'";
        return mysqli_query($this->con, $sql);
    }
    public function update_blog($blog_id, $blog_title, $blog_content, $path_file, $categorieBlog_id)
    {
        $sql = "update blogs
        set
        blog_title = '$blog_title',
        image = '$path_file',
        blog_content = '$blog_content',
        categorieBlog_id = '$categorieBlog_id'
        where blog_id = '$blog_id' ";
        return mysqli_query($this->con, $sql);
    }

    public function insert_productType($productType_name)
    {
        $sql = "insert into producttype(productType_name) values('$productType_name')";
        return mysqli_query($this->con, $sql);
    }
}
