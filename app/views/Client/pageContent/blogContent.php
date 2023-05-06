<div class="col-lg-8 col-md-7">
    <div class="row">
        <?php foreach ($data['blog'] as $each) : ?>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="<?php echo _WEB_ROOT . $each['image'] ?>" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> <?php echo date("M j,Y", strtotime((string)$each['posted_at'])) ?></li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="<?php echo _WEB_ROOT . "/chi-tiet/blog/" . $each['blog_id'] ?>"><?php echo $each['blog_title'] ?></a></h5>
                        <p><?php echo substr($each['blog_content'], 0, 122) ?></p>
                        <a href="<?php echo _WEB_ROOT . "/chi-tiet/blog/" . $each['blog_id'] ?>" class="blog__btn">READ MORE <span class="arrow_right"></span></a>
                    </div>
                </div>
            </div>
        <?php endforeach ?>
        <div class="col-lg-12">
            <div class="product__pagination blog__pagination">

                <?php for ($i = 1; $i <= $data['numberPageBlog']; $i++) : ?>
                    <?php if (isset($data['nameType'])) { ?>
                        <a href="<?php echo _WEB_ROOT . "/Blog/the-loai/" . $data['nameType'] . "/?page=" . $i ?>"><?php echo $i ?></a>
                    <?php } else { ?>
                        <a href="<?php echo _WEB_ROOT . "/Blog?page=" . $i ?>"><?php echo $i ?></a>
                    <?php } ?>
                <?php endfor ?>

            </div>
        </div>
    </div>
</div>