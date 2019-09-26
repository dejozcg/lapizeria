<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Lapizeria</title>
    <?php wp_head(); ?>
</head>
<header class="site-header">
    <div class="container">
        <div class="logo">
            <a href="<?php echo esc_url(home_url('/')); ?>">
                <img src="<?php echo get_template_directory_uri(); ?>/img/logo.svg" class="logoimage" alt="">
            </a>
        </div><!-- logo -->
        <div class="header-information">
            <div class="social-menu">
                <?php 
                    $args = array(
                        'theme_location'  => 'social-menu',
                        'container'       => 'nav',
                        'container_class' => 'social',
                        'container_id'    => 'social',
                        'link_before'     => '<span class="sr-text">',
                        'link_after'      => '</span>'
                    );
                    wp_nav_menu($args);
                ?>
            </div><!--Social-->
            <div class="address">
                <p>Podgorica, ul. Slobode br. 2423</p>
                <p>Phone Numbe: +38267256456</p>
            </div>
        </div><!--Header information-->
    </div><!--.container-->
</header>
<div class="main-menu">
    <div class="mobile-menu">
        <a href="#" class="mobile"><i class="fa fa-bars"></i> Menu</a>
    </div>
    
    <div class="navigation container">
        <?php 
            $args = array(
                'theme_location'  => 'header-menu',
                'container'       => 'nav',
                'container_class' => 'site-nav'
            );
            wp_nav_menu($args);
            // wp_nav_menu('Header Menu');
        ?>
    </div>
</div>
<body <?php body_class(); ?>>