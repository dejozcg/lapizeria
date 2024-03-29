<?php get_header(); ?>

<?php while (have_posts()) : the_post(); ?>
    <div class="hero" style="background-image:url(<?php echo get_the_post_thumbnail_url(); ?>)">
        <div class="hero-content">
            <div class="hero-text">
                <?php //the_post_thumbnail(); 
                    ?>
                <h2><?php echo esc_html(get_bloginfo('description')); ?></h2>
                <?php the_content(); ?>
                <?php $url = get_page_by_title('About us'); ?>
                <a class="button secondary" href="<?php echo get_permalink($url); ?>">more info</a>
            </div>
        </div>
    </div>

<?php endwhile; ?>

<div class="main-content container">
    <main class="container-grid clear">
        <h2 class="primary-text text-center">Our Specialties!</h2>

        <?php $args = array(
            'posts_per_page'      => 3,
            'post_type'     => 'specialties',
            'category_name'    => 'pizzas',
            'orderby'       => 'rand'
        );

        $specialties = new WP_Query($args);

        while ($specialties->have_posts()) : $specialties->the_post(); ?>

            <div class="specialty columns1-3">
                <div class="specialty-content">
                    <?php the_post_thumbnail('specialty-portret'); ?>
                    <div class="information">
                        <?php the_title('<h3>', '</h3>'); ?>
                        <?php the_content();  ?>
                        <p class="price">$ <?php the_field('price'); ?></p>
                        <a class="button primary" href="<?php the_permalink(); ?>">read more</a>
                    </div>
                </div>
            </div>
        <?php endwhile;
        wp_reset_query(); ?>
    </main>
</div>

<section class="ingrediants">
    <div class="container">
        <div class="container-grid">
            <?php while (have_posts()) : the_post(); ?>
                <div class="columns2-4">
                    <h3><?php the_field('fresh_title'); ?></h3>
                    <?php the_field('ingrident_text'); ?>
                    <?php $url = get_page_by_title('About us'); ?>
                    <a class="button primary" href="<?php echo get_permalink($url); ?>">read more</a>
                </div>
                <div class="columns2-4">
                    <img class="image" src="<?php the_field('ingridient_image'); ?>" alt="<?php the_field('fresh_title'); ?>">
                </div>
            <?php endwhile; ?>
        </div>
    </div>
</section>

<section class="container clear">
    <h2 class="text-center primary-text">Galery</h2>
    <?php
    $url = get_page_by_title('Galery');
    echo $url->post_content;
    // echo '<p>';
    // echo '<pre>';
    // var_dump($url);
    // echo '</pre>';
    // echo '</p';
    ?>
</section>

<section class="location-reservation clear container">
    <div class="container-grid">
        <div class="columns2-4">
            <div id='map'>
                LOCATION

            </div>
        </div>
        <div class="columns2-4">
            <?php get_template_part('templates/reservation-form'); ?>
        </div>
    </div>
</section>

<?php get_footer(); ?>