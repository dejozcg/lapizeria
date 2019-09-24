<?php get_header(); ?>

    <?php while(have_posts()): the_post(); ?>
        <div class="hero" style="background-image:url(<?php echo get_the_post_thumbnail_url(); ?>)">
            <div class="hero-content">
                <div class="hero-text">
                    <?php //the_post_thumbnail(); ?>
                    <h2><?php the_title(); ?></h2>    
                </div>
            </div>
        </div>

        <div class="main-content container">
            <main class="text-center content-text">
                <?php the_content(); ?>
            </main>
        </div>

        <div class="box-information container">
            <div class="single-box">
                <?php 
                    $id_image = get_field('image1');
                    $image = wp_get_attachment_image_src($id_image, 'boxes');
                ?>
                <img src="<?php echo $image[0]; ?>" alt="">
                <div class="content-box">
                    <?php the_field('description1'); ?>
                </div>
            </div>
            <div class="single-box">
                <?php 
                    $id_image = get_field('image2');
                    $image = wp_get_attachment_image_src($id_image, 'boxes');
                ?>
                <img src="<?php echo $image[0]; ?>" alt="">
                <div class="content-box">
                    <?php the_field('description2'); ?>
                </div>
            </div>
            <div class="single-box">
                <?php 
                    $id_image = get_field('image3');
                    $image = wp_get_attachment_image_src($id_image, 'boxes');
                ?>
                <img src="<?php echo $image[0]; ?>" alt="">
                <div class="content-box">
                    <?php the_field('description3'); ?>
                </div>
            </div>
        </div>

    <?php endwhile; ?>


<?php get_footer(); ?>