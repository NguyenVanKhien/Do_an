<div class="col-lg-4 col-md-5">
    <div class="blog__sidebar">
        <div class="blog__sidebar__search">
            <form action="#">
                <input type="text" placeholder="Search...">
                <button type="submit"><span class="icon_search"></span></button>
            </form>
        </div>
        <div class="blog__sidebar__item">
            <h4>Thể loại</h4>
            <ul>
                <li><a href="<?php echo _WEB_ROOT . "/Blog" ?>">All</a></li>
                <?php foreach ($data['categorie_blog'] as $each) : ?>
                    <li><a href="<?php echo _WEB_ROOT . "/Blog/the-loai/" . $each['categorieBlog_name'] ?>"><?php echo $each['categorieBlog_name'] . "(" . $each['sl'] . ")" ?></a></li>
                <?php endforeach ?>


            </ul>
        </div>
        <div class="blog__sidebar__item">
            <h4>Blogs gần đây</h4>
            <div class="blog__sidebar__recent">
                <?php foreach ($data['new_blog'] as $each) : ?>
                    <a href="<?php echo _WEB_ROOT . "/chi-tiet/blog/" . $each['blog_id'] ?>" class="blog__sidebar__recent__item">
                        <div class="blog__sidebar__recent__item__pic">
                            <img src="<?php echo _WEB_ROOT . $each['image'] ?>" alt="">
                        </div>
                        <div class="blog__sidebar__recent__item__text">
                            <h6><?php echo $each['blog_title'] ?></h6>
                            <span><?php echo date("M j,Y", strtotime((string)$each['posted_at'])) ?></span>
                        </div>
                    </a>
                <?php endforeach ?>

            </div>
        </div>
        <div class="blog__sidebar__item">
            <h4>Tìm kiếm nhiều nhất</h4>
            <div class="blog__sidebar__item__tags">
                <a href="#">Apple</a>
                <a href="#">Beauty</a>
                <a href="#">Vegetables</a>
                <a href="#">Fruit</a>
                <a href="#">Healthy Food</a>
                <a href="#">Lifestyle</a>
            </div>
        </div>
    </div>
</div>