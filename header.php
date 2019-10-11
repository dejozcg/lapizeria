<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- MAKE this iOS compatible -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-title" content="La Pizzeria Restaurant">
    <link rel="apple-touch-icon" href="<?php get_template_directory_uri(); ?>/img/apple-touch-icon.jpg">
    
    <!-- MAKE this Android compatible -->
    <meta name="theme-color" content="#a61206">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="aplication-name" content="La Pizzeria Restaurant">
    <link rel="icon" type="image/png" href="<?php get_template_directory_uri(); ?>/img/icon.png" size="192x192">
    
    
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- <title>Lapizeria</title> -->
    <?php wp_head(); ?>
</head>
<header class="site-header">
    <div class="container">
        <div class="logo">
            <a href="<?php echo esc_url(home_url('/')); ?>">
                <?php 
                    if(function_exists('the_custom_logo')){
                        the_custom_logo();
                    }
                ?>
               <!-- <img src="<?php // echo get_template_directory_uri(); ?>/img/logo.svg" class="logoimage" alt=""> -->
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
                <p><?php echo esc_html(get_option('lapizeria_location')); ?></p>
                <p>Phone Numbe: <?php echo esc_html(get_option('lapizeria_phonenumber')); ?></p>
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