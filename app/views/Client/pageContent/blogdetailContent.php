<div class="col-lg-8 col-md-7 order-md-1 order-1">
    <?php foreach ($data['detail'] as $each) : ?>
        <div class="blog__details__text">
            <img src="<?php echo _WEB_ROOT . $each['image'] ?>" alt="">
            <h3><?php echo $each['blog_title'] ?></h3>
            <p><?php echo nl2br($each['blog_content']) ?></p>


        </div>

        <div class="blog__details__content">
            <div class="row">
                <div class="col-lg-6">
                    <div class="blog__details__author">
                        <div class="blog__details__author__pic">
                            <img src="<?php echo _WEB_ROOT . "/public/img/blog/admin.jpg" ?>" alt="">
                        </div>
                        <div class="blog__details__author__text">
                            <h6>Khiên Nguyễn</h6>
                            <span>Admin</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="blog__details__widget">
                        <ul>
                            <li><span>Thể loại:</span> <?php echo $each['categorieBlog_name'] ?></li>
                            <li><span>Tags:</span> All, Trending, Cooking, Healthy Food, Life Style</li>
                        </ul>
                        <div class="blog__details__social">
                            <a href="https://www.facebook.com/khien.nguyen.507027/"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-envelope"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php endforeach ?>
</div>